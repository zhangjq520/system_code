package com.logic.system.service;

import com.logic.common.exception.BusinessException;
import com.logic.common.ws.dto.system.TaskDTO;
import com.logic.common.ws.dto.toshiba.PDRequestMiddleCheckDTO;
import com.logic.system.AbstractTest;
import com.logic.system.remote.WriteBackStatusClient;
import com.logic.system.wsdl.NotifyResponse;
import com.logic.system.wsdl.model.ResponseRet;
import com.logic.system.wsdl.utils.WritebackStatusCreator;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.xml.bind.JAXBException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Author: omer 
 * Date  : 10-03-2016
 */
public class WritebackStatusServiceTest extends AbstractTest {

    @Autowired
    private WriteBackStatusClient writeBackStatusClient;

    @Before
    public void setUp(){

    }

    @After
    public void tearDown(){

    }

    @Test
    public void testWritebackStatusCall(){
        TaskDTO taskDTO = new TaskDTO();
        taskDTO.setId(100);
        taskDTO.setProject_no("GA121556");
        taskDTO.setProject_name("万科梦想派");
        taskDTO.setInstall_subcompany_name("上海分公司");
        taskDTO.setTask_type("Z31-110");
        PDRequestMiddleCheckDTO middleCheckDTO = new PDRequestMiddleCheckDTO();
        middleCheckDTO.setInstall_director("刘峰");
        middleCheckDTO.setHalf_install_director_phone("15829406771");
        middleCheckDTO.setR_mid_quality_person_id("1");
        middleCheckDTO.setR_mid_check_result(new BigDecimal(1));
        middleCheckDTO.setMachine_seqid(1);
        middleCheckDTO.setR_mid_acceptance_date(new Date());
        middleCheckDTO.setR_mid_end_date(new Date());
        middleCheckDTO.setR_mid_quality_person("陈飞宁");
        middleCheckDTO.setR_mid_quality_score(new BigDecimal(112));
        middleCheckDTO.setR_mid_rectification_days(new BigDecimal(2));
        middleCheckDTO.setR_mid_start_date(new Date());

        List<PDRequestMiddleCheckDTO> list = new ArrayList<>();
        list.add(middleCheckDTO);

        taskDTO.setTask_details(list);



        try {

            String xmlData = WritebackStatusCreator.getInstance().generateWritebackStatusData(taskDTO);
            NotifyResponse response = writeBackStatusClient.notify(xmlData);
            String responseString  = response.getReturn().getValue();
            ResponseRet responseObject = WritebackStatusCreator.getInstance().unmarshallResponse(responseString);

            Assert.assertEquals(responseObject.getRetItem().getMessage(), "S", responseObject.getRetItem().getType());

        } catch (JAXBException e) {
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (BusinessException e) {
            e.printStackTrace();
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
