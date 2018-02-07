package com.logic.system.wsdl.utils;

import com.logic.common.enums.ToshibaApplyType;
import com.logic.common.enums.ToshibaTaskTypeEnum;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.toshiba.PDRequestDiagDTO;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.common.ws.dto.toshiba.PDRequestOverallCheckDTO;
import com.logic.system.wsdl.model.*;
import com.sun.org.apache.xml.internal.serialize.OutputFormat;
import com.sun.org.apache.xml.internal.serialize.XMLSerializer;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * Author: omer 
 * Date  : 02-03-2016
 */
public class WritebackStatusCreator {

    private Marshaller marshaller;
    private Unmarshaller unmarshaller;

    private static WritebackStatusCreator INSTANCE;

    private WritebackStatusCreator() throws JAXBException{
        JAXBContext context = JAXBContext.newInstance(
                // Request Models
                WritebackStatusData.class,
                Tables.class,
                Table.class,
                TableHead.class,
                TableDetail.class,
                TableMachine.class,
                TableDataBase.class,
                MachineData.class,
                HeadData.class,
                DetailData.class,
                // Response Models
                ResponseRet.class,
                ResponseRetItem.class
        );
        marshaller = context.createMarshaller();
        unmarshaller = context.createUnmarshaller();
        marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
    }

    public static WritebackStatusCreator getInstance() throws JAXBException{
        if (INSTANCE == null){
            INSTANCE = new WritebackStatusCreator();
        }

        return INSTANCE;
    }

    private static XMLSerializer getXMLSerializer(ByteArrayOutputStream outputStream) {

        // configure an OutputFormat to handle CDATA
        OutputFormat of = new OutputFormat();
        // set the CData elements
        of.setCDataElements(CDataTags.getValues());

        // set any other options you'd like
        //of.setPreserveSpace(true);
        of.setIndenting(true);

        of.setIndent(4);
//        of.setStandalone(true);
        //of.setLineSeparator("\n");


        // create the serializer
        XMLSerializer serializer = new XMLSerializer(of);
        serializer.setOutputByteStream(outputStream);

        return serializer;
    }

    /**
     * unmarshall the response from toshiba wdsl
     *
     * @param response The response string
     * @return The unmarshalled element from the response string
     * @throws JAXBException
     */
    public ResponseRet unmarshallResponse(String response) throws JAXBException {
        if (response == null){
            return null;
        }
        InputStream stream = new ByteArrayInputStream(response.getBytes(StandardCharsets.UTF_8));
        return (ResponseRet) unmarshaller.unmarshal(stream);
    }

    private String generateXML(WritebackStatusData data)throws JAXBException, UnsupportedEncodingException{
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        XMLSerializer serializer = getXMLSerializer(outputStream);
        marshaller.marshal(data, serializer);

        return new String(outputStream.toByteArray(), "UTF-8");
    }

    /**
     * generate xml string for sending to toshiba wsdl for writeback status
     * @param taskDTO
     * @return
     * @throws JAXBException
     * @throws UnsupportedEncodingException
     */
    public String generateWritebackStatusData(TaskDTO taskDTO) throws JAXBException, UnsupportedEncodingException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        HeadData headData = new HeadData();
        headData.setProjectId(taskDTO.getProject_no());
        headData.setProjectName(taskDTO.getProject_name());
        headData.setInstallCompany(taskDTO.getInstall_subcompany_name());

        DetailData detailData = new DetailData();
        MachineData machineData = new MachineData();

        if (taskDTO.getTask_type().equalsIgnoreCase(ToshibaTaskTypeEnum.MIDDLE_CHECK.getCode())){
            PDRequestMiddleCheckDTO middleCheckDTO = ((List<PDRequestMiddleCheckDTO>)taskDTO.getTask_details()).get(0);
            headData.setInstallDirector(middleCheckDTO.getInstall_director());
            headData.setDirectorTel(middleCheckDTO.getHalf_install_director_phone());// TODO maybe wrong

            if (middleCheckDTO.getApply_type_code().equalsIgnoreCase(ToshibaApplyType.MIDDLE_CHECK_FIRST.getCode())){
                detailData.setCheckType("1");
                //中检员ID
                if (middleCheckDTO.getR_mid_quality_person_id() != null) {
                    machineData.setrMidQualityPersonId(middleCheckDTO.getR_mid_quality_person_id());
                }else{
                    machineData.setrMidQualityPersonId("0");
                }
                //中检结果
                if (middleCheckDTO.getR_mid_check_result() != null) {
                    machineData.setrMidCheckResult(String.valueOf(middleCheckDTO.getR_mid_check_result().intValue()));
                }else{
                    machineData.setrMidCheckResult("");
                }
//
                if (middleCheckDTO.getMachine_seqid() != null) {
                    machineData.setSeqId(String.valueOf(middleCheckDTO.getMachine_seqid()));
                }
                //中检验收日
                if (middleCheckDTO.getR_mid_acceptance_date() != null) {
                    machineData.setrMidAcceptanceDate(sdf.format(middleCheckDTO.getR_mid_acceptance_date()));
                }
                //中检完成日
                if (middleCheckDTO.getR_mid_end_date() != null) {
                    machineData.setrMidEndDate(sdf.format(middleCheckDTO.getR_mid_end_date()));
                }
                //中检员
                if (middleCheckDTO.getR_mid_quality_person() != null) {
                    machineData.setrMidQualityPersonName(middleCheckDTO.getR_mid_quality_person());
                }
                //中检分数
                if (middleCheckDTO.getR_mid_quality_score() != null) {
                    machineData.setrMidRecheckScore(String.valueOf(middleCheckDTO.getR_mid_quality_score().intValue()));
                    machineData.setrCheckScore(String.valueOf(middleCheckDTO.getR_mid_quality_score().intValue()));
                }


                //中检整改天数
                if (middleCheckDTO.getR_mid_rectification_days() != null) {
                    machineData.setrSndRectificationDays(String.valueOf(middleCheckDTO.getR_mid_rectification_days().intValue()));
                }
                //中检检查日
                if (middleCheckDTO.getR_mid_start_date() != null) {
                    machineData.setrMidStartDate(sdf.format(middleCheckDTO.getR_mid_start_date()));
                }

            }else if(middleCheckDTO.getApply_type_code().equalsIgnoreCase(ToshibaApplyType.MIDDLE_CHECK_SECOND.getCode())){
                detailData.setCheckType("2");

//                if (middleCheckDTO.getR_mid_quality_person_id() != null) {
//                    machineData.setrMidQualityPersonId(middleCheckDTO.getR_mid_quality_person_id());
//                }else{
//                    machineData.setrMidQualityPersonId("0");
//                }
//
//                // TODO Must set this one
//                if (middleCheckDTO.getR_mid_check_result() != null) {
//                    machineData.setrMidCheckResult(String.valueOf(middleCheckDTO.getR_mid_check_result().intValue()));
//                }else{
//                    machineData.setrMidCheckResult("0");
//                }
                if (middleCheckDTO.getMachine_seqid() != null) {
                    machineData.setSeqId(String.valueOf(middleCheckDTO.getMachine_seqid()));
                }
                //中检复查员ID
                if (middleCheckDTO.getR_mid_recheck_inspector_id() != null) {
                    machineData.setrMidRecheckInspectorId(middleCheckDTO.getR_mid_recheck_inspector_id());
                }
                //中检复查员
                if (middleCheckDTO.getR_mid_recheck_inspector() != null) {
                    machineData.setrMidRecheckInspectorName(middleCheckDTO.getR_mid_recheck_inspector());
                }
                //中检复查日
                if (middleCheckDTO.getR_mid_recheck_date() != null) {
                    machineData.setrMidRecheckDate(sdf.format(middleCheckDTO.getR_mid_recheck_date()));
                }
                //中检复检分数
                if (middleCheckDTO.getR_mid_recheck_score() != null) {
                    machineData.setrMidRecheckScore(String.valueOf(middleCheckDTO.getR_mid_recheck_score().intValue()));
                }
                //中检复检结果
                if (middleCheckDTO.getR_mid_recheck_result() != null) {
                    machineData.setrMidRecheckResult(String.valueOf(middleCheckDTO.getR_mid_recheck_result().intValue()));
                }

                //中检完成日
                if (middleCheckDTO.getR_mid_end_date() != null) {
                    machineData.setrMidEndDate(sdf.format(middleCheckDTO.getR_mid_end_date()));
                }
//                if (middleCheckDTO.getR_mid_quality_person() != null) {
//                    machineData.setrMidQualityPersonName(middleCheckDTO.getR_mid_quality_person());
//                }
//                if (middleCheckDTO.getR_mid_start_date() != null) {
//                    machineData.setrMidStartDate(sdf.format(middleCheckDTO.getR_mid_start_date()));
//                }
//                if (middleCheckDTO.getR_mid_acceptance_date() != null) {
//                    machineData.setrMidAcceptanceDate(sdf.format(middleCheckDTO.getR_mid_acceptance_date()));
//                }
//                if (middleCheckDTO.getR_mid_quality_score() != null) {
//                    machineData.setrMidQualityScore(String.valueOf(middleCheckDTO.getR_mid_quality_score().intValue()));
//                }
//                if (middleCheckDTO.getR_mid_rectification_days() != null) {
//                    machineData.setrMidRectificationDays(String.valueOf(middleCheckDTO.getR_mid_rectification_days().intValue()));
//                }

            }
        }else if (taskDTO.getTask_type().equalsIgnoreCase(ToshibaTaskTypeEnum.OVERALL_CHECK.getCode())){
            PDRequestOverallCheckDTO overallCheckDTO = ((List<PDRequestOverallCheckDTO>)taskDTO.getTask_details()).get(0);
            headData.setInstallDirector(overallCheckDTO.getInstall_director());
            headData.setDirectorTel(overallCheckDTO.getInstall_director_phone());
            if (overallCheckDTO.getApply_type_code().equalsIgnoreCase(ToshibaApplyType.OVERALL_CHECK_FIRST.getCode())){
                detailData.setCheckType("3");

                if (overallCheckDTO.getMachine_seqid() != null) {
                    machineData.setSeqId(String.valueOf(overallCheckDTO.getMachine_seqid()));
                }
                //预排检查开始日期
                if (overallCheckDTO.getR_check_start_date_schedule() != null) {
                    detailData.setrCheckStartDateSchedule(sdf.format(overallCheckDTO.getR_check_start_date_schedule()));
                }
                //预排检查结束日期
                if (overallCheckDTO.getR_check_end_date_schedule() != null) {
                    detailData.setrCheckEndDateSchedule(sdf.format(overallCheckDTO.getR_check_end_date_schedule()));
                }
                //实际检查开始日
                if (overallCheckDTO.getR_check_start_date_real() != null) {
                    detailData.setrCheckStartDateReal(sdf.format(overallCheckDTO.getR_check_start_date_real()));
                }
                //实际检查结束日
                if (overallCheckDTO.getR_check_end_date_real() != null) {
                    detailData.setrCheckEndDateReal(sdf.format(overallCheckDTO.getR_check_end_date_real()));
                }
                //一次社检日
                if (overallCheckDTO.getR_check_date() != null) {
                    machineData.setrCheckDate(sdf.format(overallCheckDTO.getR_check_date()));
                }
                //一检结果
                //TODO must set this one
                if (overallCheckDTO.getR_check_result() != null) {
                    machineData.setrCheckResult(String.valueOf(overallCheckDTO.getR_check_result().intValue()));
                }else{
                    machineData.setrCheckResult("0");
                }
                //一次质检员
                if (overallCheckDTO.getR_quality_person() != null) {
                    machineData.setrQualityPerson(overallCheckDTO.getR_quality_person());
                }
                //一次质检员ID
                if (overallCheckDTO.getR_quality_person_id() != null) {
                    machineData.setrQualityPersonId(overallCheckDTO.getR_quality_person_id());
                }else{
                    machineData.setrQualityPersonId("0");
                }

//                if (overallCheckDTO.getR_quality_person() != null) {
//                    machineData.setrMidQualityPersonName(overallCheckDTO.getR_quality_person());// TODO maybe wrong
//                }
//                if (overallCheckDTO.getR_check_start_date_real() != null) {
//                    machineData.setrMidStartDate(sdf.format(overallCheckDTO.getR_check_start_date_real()));// TODO probably wrong
//                }
//                if (overallCheckDTO.getR_acceptance_date() != null) {
//                    machineData.setrMidAcceptanceDate(sdf.format(overallCheckDTO.getR_acceptance_date()));// TODO maybe wrong
//                }
//
//                machineData.setrMidQualityScore(String.valueOf(0)); // TODO wrong

                //整改天数
                if (overallCheckDTO.getR_rectification_days() != null) {
                    machineData.setrRectificationDays(String.valueOf(overallCheckDTO.getR_rectification_days().intValue()));
                    //machineData.setrMidRectificationDays(String.valueOf(overallCheckDTO.getR_snd_rectification_days().intValue()));// TODO maybe wrong
                }

                //一次社检分数
                if(overallCheckDTO.getR_check_score() != null){
                    machineData.setrCheckScore(String.valueOf(overallCheckDTO.getR_check_score()));
                    machineData.setrMidRecheckScore(String.valueOf(overallCheckDTO.getR_check_score()));
                }

//                if (overallCheckDTO.getR_check_end_date_real() != null) {
//                    machineData.setrMidEndDate(sdf.format(overallCheckDTO.getR_check_end_date_real()));// TODO probably wrong
//                }
            }else if(overallCheckDTO.getApply_type_code().equalsIgnoreCase(ToshibaApplyType.OVERALL_CHECK_SECCOND.getCode())){
                detailData.setCheckType("4");

                if (overallCheckDTO.getMachine_seqid() != null) {
                    machineData.setSeqId(String.valueOf(overallCheckDTO.getMachine_seqid()));
                }

                // 整机第二次检查日
                if (overallCheckDTO.getR_check_date() != null) {
                    machineData.setrCheckDate(sdf.format(overallCheckDTO.getR_check_date()));
                }
                //二次质检员ID
                if (overallCheckDTO.getR_recheck_inspector_id() != null) {
                    machineData.setrRecheckInspectorId(overallCheckDTO.getR_recheck_inspector_id());
                }
                //二检结果
                if (overallCheckDTO.getR_recheck_result() != null) {
                    machineData.setrRecheckResult(String.valueOf(overallCheckDTO.getR_recheck_result().intValue()));
                }
                //二次整改天数
                if (overallCheckDTO.getR_snd_rectification_days() != null) {
                    machineData.setrSndRectificationDays(String.valueOf(overallCheckDTO.getR_snd_rectification_days().intValue()));
                }

                //二次质检员
                if(overallCheckDTO.getR_recheck_inspector() != null){
                    machineData.setrRecheckInspector(overallCheckDTO.getR_recheck_inspector());
                }

                //TODO must set this one
//                if (overallCheckDTO.getR_check_result() != null) {
//                    machineData.setrCheckResult(String.valueOf(overallCheckDTO.getR_check_result().intValue()));
//                }else{
//                    machineData.setrCheckResult("0");
//                }
//
//                if (overallCheckDTO.getR_quality_person_id() != null) {
//                    machineData.setrQualityPersonId(overallCheckDTO.getR_quality_person_id());
//                }else{
//                    machineData.setrQualityPersonId("0");
//                }


//                if (overallCheckDTO.getR_check_end_date_real() != null) {
//                    machineData.setrMidQualityPersonName(overallCheckDTO.getR_quality_person());// TODO maybe wrong
//                }
//                if (overallCheckDTO.getR_check_start_date_real() != null) {
//                    machineData.setrMidStartDate(sdf.format(overallCheckDTO.getR_check_start_date_real()));// TODO probably wrong
//                }
//                if (overallCheckDTO.getR_acceptance_date() != null) {
//                    machineData.setrMidAcceptanceDate(sdf.format(overallCheckDTO.getR_acceptance_date()));// TODO maybe wrong
//                }
//
//                machineData.setrMidQualityScore(String.valueOf(0)); // TODO wrong
//
//                if (overallCheckDTO.getR_snd_rectification_days() != null) {
//                    machineData.setrMidRectificationDays(String.valueOf(overallCheckDTO.getR_snd_rectification_days().intValue()));// TODO maybe wrong
//                }
//                if (overallCheckDTO.getR_check_end_date_real() != null) {
//                    machineData.setrMidEndDate(sdf.format(overallCheckDTO.getR_check_end_date_real()));// TODO probably wrong
//                }
            }else if(overallCheckDTO.getApply_type_code().equalsIgnoreCase(ToshibaApplyType.OVERALL_CHECK_3RD.getCode())){
                detailData.setCheckType("5");// TODO what is others?
//                if (overallCheckDTO.getR_snd_rectification_end_date() != null) {
//                    machineData.setrSndRectificationEndDate(sdf.format(overallCheckDTO.getR_snd_rectification_end_date()));
//                }

                if (overallCheckDTO.getMachine_seqid() != null) {
                    machineData.setSeqId(String.valueOf(overallCheckDTO.getMachine_seqid()));
                }

                //三次质检员ID
                if (overallCheckDTO.getR_trd_check_inspector_id() != null) {
                    machineData.setrTrdCheckInspectorId(overallCheckDTO.getR_trd_check_inspector_id());
                }
                //整机第三次检查日
                if (overallCheckDTO.getR_trd_check_date() != null) {
                    machineData.setrTrdCheckDate(sdf.format(overallCheckDTO.getR_trd_check_date()));
                }
                //三次检结果
                if (overallCheckDTO.getR_trd_check_result() != null) {
                    machineData.setrTrdCheckResult(String.valueOf(overallCheckDTO.getR_trd_check_result().intValue()));
                }
                //三次质检员
                if (overallCheckDTO.getR_trd_check_inspector() != null) {
                    machineData.setrTrdCheckInspector(overallCheckDTO.getR_trd_check_inspector());
                }
                //TODO must set this one
//                if (overallCheckDTO.getR_check_result() != null) {
//                    machineData.setrCheckResult(String.valueOf(overallCheckDTO.getR_check_result().intValue()));
//                }else{
//                    machineData.setrCheckResult("0");
//                }
//
//                if (overallCheckDTO.getR_quality_person_id() != null) {
//                    machineData.setrQualityPersonId(overallCheckDTO.getR_quality_person_id());
//                }else{
//                    machineData.setrQualityPersonId("0");
//                }

//                if (overallCheckDTO.getR_quality_person() != null) {
//                    machineData.setrMidQualityPersonName(overallCheckDTO.getR_quality_person());// TODO maybe wrong
//                }
//                if (overallCheckDTO.getR_check_start_date_real() != null) {
//                    machineData.setrMidStartDate(sdf.format(overallCheckDTO.getR_check_start_date_real()));// TODO probably wrong
//                }
//                if (overallCheckDTO.getR_acceptance_date() != null) {
//                    machineData.setrMidAcceptanceDate(sdf.format(overallCheckDTO.getR_acceptance_date()));// TODO maybe wrong
//                }
//
//                machineData.setrMidQualityScore(String.valueOf(0)); // TODO wrong
//
//                if (overallCheckDTO.getR_snd_rectification_days() != null) {
//                    machineData.setrMidRectificationDays(String.valueOf(overallCheckDTO.getR_snd_rectification_days().intValue()));// TODO maybe wrong
//                }
//                if (overallCheckDTO.getR_check_end_date_real() != null) {
//                    machineData.setrMidEndDate(sdf.format(overallCheckDTO.getR_check_end_date_real()));// TODO probably wrong
//                }
            }
        }else if (taskDTO.getTask_type().equalsIgnoreCase(ToshibaTaskTypeEnum.DIAGNOSE.getCode())){
            // TODO seems we do not have write back flow for diagnose currently?
            PDRequestDiagDTO diag = ((List<PDRequestDiagDTO>)taskDTO.getTask_details()).get(0);
            //PDRequestDiag diag = (PDRequestDiag)taskDTO.getTask_details();
        }



        TableHead headTable = new TableHead();
        headTable.setData(headData);

        TableDetail detailTable = new TableDetail();
        detailTable.setData(detailData);

        TableMachine machineTable = new TableMachine();
        machineTable.setData(machineData);

        Tables tables = new Tables();
        tables.setHead(headTable);
        tables.setDetail(detailTable);
        tables.setMachine(machineTable);

        WritebackStatusData writebackStatusData = new WritebackStatusData();
        writebackStatusData.setTaskId(taskDTO.getId());


        writebackStatusData.setTables(tables);

        return generateXML(writebackStatusData);
    }
}
