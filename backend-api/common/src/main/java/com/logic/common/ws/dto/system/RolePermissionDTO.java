package com.logic.common.ws.dto.system;

import java.lang.reflect.Method;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(description = "Role Permission DTO, every module have 16 functions, 0-15")
public class RolePermissionDTO {

	@ApiModelProperty(value = "Role ID, need when add role permission", position = 1)
	private String roleId;

	@ApiModelProperty(value = "Module ID, need when add role permission", position = 2)
	private String moduleId;

	@ApiModelProperty(value = "The role whether have the permission", position = 3)
	private String p0;

	@ApiModelProperty(position = 4)
	private String p1;

	@ApiModelProperty(position = 5)
	private String p2;

	@ApiModelProperty(position = 6)
	private String p3;

	@ApiModelProperty(position = 7)
	private String p4;

	@ApiModelProperty(position = 8)
	private String p5;

	@ApiModelProperty(position = 9)
	private String p6;

	@ApiModelProperty(position = 10)
	private String p7;

	@ApiModelProperty(position = 11)
	private String p8;

	@ApiModelProperty(position = 12)
	private String p9;

	@ApiModelProperty(position = 13)
	private String p10;

	@ApiModelProperty(position = 14)
	private String p11;

	@ApiModelProperty(position = 15)
	private String p12;

	@ApiModelProperty(position = 16)
	private String p13;

	@ApiModelProperty(position = 17)
	private String p14;

	@ApiModelProperty(position = 18)
	private String p15;

	@ApiModelProperty(value = "The module whether have the function", hidden = true, position = 19)
	private String enabled0;

	@ApiModelProperty(hidden = true, position = 20)
	private String enabled1;

	@ApiModelProperty(hidden = true, position = 21)
	private String enabled2;

	@ApiModelProperty(hidden = true, position = 22)
	private String enabled3;

	@ApiModelProperty(hidden = true, position = 23)
	private String enabled4;

	@ApiModelProperty(hidden = true, position = 24)
	private String enabled5;

	@ApiModelProperty(hidden = true, position = 25)
	private String enabled6;

	@ApiModelProperty(hidden = true, position = 26)
	private String enabled7;

	@ApiModelProperty(hidden = true, position = 27)
	private String enabled8;

	@ApiModelProperty(hidden = true, position = 28)
	private String enabled9;

	@ApiModelProperty(hidden = true, position = 29)
	private String enabled10;

	@ApiModelProperty(hidden = true, position = 30)
	private String enabled11;

	@ApiModelProperty(hidden = true, position = 31)
	private String enabled12;

	@ApiModelProperty(hidden = true, position = 32)
	private String enabled13;

	@ApiModelProperty(hidden = true, position = 33)
	private String enabled14;

	@ApiModelProperty(hidden = true, position = 34)
	private String enabled15;

	@ApiModelProperty(hidden = true, position = 35)
	private String labelEn0;
	@ApiModelProperty(hidden = true, position = 36)
	private String labelZh0;
	@ApiModelProperty(hidden = true, position = 37)
	private String labelEn1;
	@ApiModelProperty(hidden = true, position = 38)
	private String labelZh1;
	@ApiModelProperty(hidden = true, position = 39)
	private String labelEn2;
	@ApiModelProperty(hidden = true, position = 40)
	private String labelZh2;
	@ApiModelProperty(hidden = true, position = 41)
	private String labelEn3;
	@ApiModelProperty(hidden = true, position = 42)
	private String labelZh3;
	@ApiModelProperty(hidden = true, position = 43)
	private String labelEn4;
	@ApiModelProperty(hidden = true, position = 44)
	private String labelZh4;
	@ApiModelProperty(hidden = true, position = 45)
	private String labelEn5;
	@ApiModelProperty(hidden = true, position = 46)
	private String labelZh5;
	@ApiModelProperty(hidden = true, position = 47)
	private String labelEn6;
	@ApiModelProperty(hidden = true, position = 48)
	private String labelZh6;
	@ApiModelProperty(hidden = true, position = 49)
	private String labelEn7;
	@ApiModelProperty(hidden = true, position = 50)
	private String labelZh7;
	@ApiModelProperty(hidden = true, position = 51)
	private String labelEn8;
	@ApiModelProperty(hidden = true, position = 52)
	private String labelZh8;
	@ApiModelProperty(hidden = true, position = 53)
	private String labelEn9;
	@ApiModelProperty(hidden = true, position = 54)
	private String labelZh9;
	@ApiModelProperty(hidden = true, position = 55)
	private String labelEn10;
	@ApiModelProperty(hidden = true, position = 56)
	private String labelZh10;
	@ApiModelProperty(hidden = true, position = 57)
	private String labelEn11;
	@ApiModelProperty(hidden = true, position = 58)
	private String labelZh11;
	@ApiModelProperty(hidden = true, position = 59)
	private String labelEn12;
	@ApiModelProperty(hidden = true, position = 60)
	private String labelZh12;
	@ApiModelProperty(hidden = true, position = 61)
	private String labelEn13;
	@ApiModelProperty(hidden = true, position = 62)
	private String labelZh13;
	@ApiModelProperty(hidden = true, position = 63)
	private String labelEn14;
	@ApiModelProperty(hidden = true, position = 64)
	private String labelZh14;
	@ApiModelProperty(hidden = true, position = 65)
	private String labelEn15;
	@ApiModelProperty(hidden = true, position = 66)
	private String labelZh15;

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getModuleId() {
		return moduleId;
	}

	public void setModuleId(String moduleId) {
		this.moduleId = moduleId;
	}

	public String getP0() {
		return p0;
	}

	public void setP0(String p0) {
		this.p0 = p0;
	}

	public String getP1() {
		return p1;
	}

	public void setP1(String p1) {
		this.p1 = p1;
	}

	public String getP2() {
		return p2;
	}

	public void setP2(String p2) {
		this.p2 = p2;
	}

	public String getP3() {
		return p3;
	}

	public void setP3(String p3) {
		this.p3 = p3;
	}

	public String getP4() {
		return p4;
	}

	public void setP4(String p4) {
		this.p4 = p4;
	}

	public String getP5() {
		return p5;
	}

	public void setP5(String p5) {
		this.p5 = p5;
	}

	public String getP6() {
		return p6;
	}

	public void setP6(String p6) {
		this.p6 = p6;
	}

	public String getP7() {
		return p7;
	}

	public void setP7(String p7) {
		this.p7 = p7;
	}

	public String getP8() {
		return p8;
	}

	public void setP8(String p8) {
		this.p8 = p8;
	}

	public String getP9() {
		return p9;
	}

	public void setP9(String p9) {
		this.p9 = p9;
	}

	public String getP10() {
		return p10;
	}

	public void setP10(String p10) {
		this.p10 = p10;
	}

	public String getP11() {
		return p11;
	}

	public void setP11(String p11) {
		this.p11 = p11;
	}

	public String getP12() {
		return p12;
	}

	public void setP12(String p12) {
		this.p12 = p12;
	}

	public String getP13() {
		return p13;
	}

	public void setP13(String p13) {
		this.p13 = p13;
	}

	public String getP14() {
		return p14;
	}

	public void setP14(String p14) {
		this.p14 = p14;
	}

	public String getP15() {
		return p15;
	}

	public void setP15(String p15) {
		this.p15 = p15;
	}

	public String getEnabled0() {
		return enabled0;
	}

	public void setEnabled0(String enabled0) {
		this.enabled0 = enabled0;
	}

	public String getEnabled1() {
		return enabled1;
	}

	public void setEnabled1(String enabled1) {
		this.enabled1 = enabled1;
	}

	public String getEnabled2() {
		return enabled2;
	}

	public void setEnabled2(String enabled2) {
		this.enabled2 = enabled2;
	}

	public String getEnabled3() {
		return enabled3;
	}

	public void setEnabled3(String enabled3) {
		this.enabled3 = enabled3;
	}

	public String getEnabled4() {
		return enabled4;
	}

	public void setEnabled4(String enabled4) {
		this.enabled4 = enabled4;
	}

	public String getEnabled5() {
		return enabled5;
	}

	public void setEnabled5(String enabled5) {
		this.enabled5 = enabled5;
	}

	public String getEnabled6() {
		return enabled6;
	}

	public void setEnabled6(String enabled6) {
		this.enabled6 = enabled6;
	}

	public String getEnabled7() {
		return enabled7;
	}

	public void setEnabled7(String enabled7) {
		this.enabled7 = enabled7;
	}

	public String getEnabled8() {
		return enabled8;
	}

	public void setEnabled8(String enabled8) {
		this.enabled8 = enabled8;
	}

	public String getEnabled9() {
		return enabled9;
	}

	public void setEnabled9(String enabled9) {
		this.enabled9 = enabled9;
	}

	public String getEnabled10() {
		return enabled10;
	}

	public void setEnabled10(String enabled10) {
		this.enabled10 = enabled10;
	}

	public String getEnabled11() {
		return enabled11;
	}

	public void setEnabled11(String enabled11) {
		this.enabled11 = enabled11;
	}

	public String getEnabled12() {
		return enabled12;
	}

	public void setEnabled12(String enabled12) {
		this.enabled12 = enabled12;
	}

	public String getEnabled13() {
		return enabled13;
	}

	public void setEnabled13(String enabled13) {
		this.enabled13 = enabled13;
	}

	public String getEnabled14() {
		return enabled14;
	}

	public void setEnabled14(String enabled14) {
		this.enabled14 = enabled14;
	}

	public String getEnabled15() {
		return enabled15;
	}

	public void setEnabled15(String enabled15) {
		this.enabled15 = enabled15;
	}

	public String getLabelEn0() {
		return labelEn0;
	}

	public void setLabelEn0(String labelEn0) {
		this.labelEn0 = labelEn0;
	}

	public String getLabelZh0() {
		return labelZh0;
	}

	public void setLabelZh0(String labelZh0) {
		this.labelZh0 = labelZh0;
	}

	public String getLabelEn1() {
		return labelEn1;
	}

	public void setLabelEn1(String labelEn1) {
		this.labelEn1 = labelEn1;
	}

	public String getLabelZh1() {
		return labelZh1;
	}

	public void setLabelZh1(String labelZh1) {
		this.labelZh1 = labelZh1;
	}

	public String getLabelEn2() {
		return labelEn2;
	}

	public void setLabelEn2(String labelEn2) {
		this.labelEn2 = labelEn2;
	}

	public String getLabelZh2() {
		return labelZh2;
	}

	public void setLabelZh2(String labelZh2) {
		this.labelZh2 = labelZh2;
	}

	public String getLabelEn3() {
		return labelEn3;
	}

	public void setLabelEn3(String labelEn3) {
		this.labelEn3 = labelEn3;
	}

	public String getLabelZh3() {
		return labelZh3;
	}

	public void setLabelZh3(String labelZh3) {
		this.labelZh3 = labelZh3;
	}

	public String getLabelEn4() {
		return labelEn4;
	}

	public void setLabelEn4(String labelEn4) {
		this.labelEn4 = labelEn4;
	}

	public String getLabelZh4() {
		return labelZh4;
	}

	public void setLabelZh4(String labelZh4) {
		this.labelZh4 = labelZh4;
	}

	public String getLabelEn5() {
		return labelEn5;
	}

	public void setLabelEn5(String labelEn5) {
		this.labelEn5 = labelEn5;
	}

	public String getLabelZh5() {
		return labelZh5;
	}

	public void setLabelZh5(String labelZh5) {
		this.labelZh5 = labelZh5;
	}

	public String getLabelEn6() {
		return labelEn6;
	}

	public void setLabelEn6(String labelEn6) {
		this.labelEn6 = labelEn6;
	}

	public String getLabelZh6() {
		return labelZh6;
	}

	public void setLabelZh6(String labelZh6) {
		this.labelZh6 = labelZh6;
	}

	public String getLabelEn7() {
		return labelEn7;
	}

	public void setLabelEn7(String labelEn7) {
		this.labelEn7 = labelEn7;
	}

	public String getLabelZh7() {
		return labelZh7;
	}

	public void setLabelZh7(String labelZh7) {
		this.labelZh7 = labelZh7;
	}

	public String getLabelEn8() {
		return labelEn8;
	}

	public void setLabelEn8(String labelEn8) {
		this.labelEn8 = labelEn8;
	}

	public String getLabelZh8() {
		return labelZh8;
	}

	public void setLabelZh8(String labelZh8) {
		this.labelZh8 = labelZh8;
	}

	public String getLabelEn9() {
		return labelEn9;
	}

	public void setLabelEn9(String labelEn9) {
		this.labelEn9 = labelEn9;
	}

	public String getLabelZh9() {
		return labelZh9;
	}

	public void setLabelZh9(String labelZh9) {
		this.labelZh9 = labelZh9;
	}

	public String getLabelEn10() {
		return labelEn10;
	}

	public void setLabelEn10(String labelEn10) {
		this.labelEn10 = labelEn10;
	}

	public String getLabelZh10() {
		return labelZh10;
	}

	public void setLabelZh10(String labelZh10) {
		this.labelZh10 = labelZh10;
	}

	public String getLabelEn11() {
		return labelEn11;
	}

	public void setLabelEn11(String labelEn11) {
		this.labelEn11 = labelEn11;
	}

	public String getLabelZh11() {
		return labelZh11;
	}

	public void setLabelZh11(String labelZh11) {
		this.labelZh11 = labelZh11;
	}

	public String getLabelEn12() {
		return labelEn12;
	}

	public void setLabelEn12(String labelEn12) {
		this.labelEn12 = labelEn12;
	}

	public String getLabelZh12() {
		return labelZh12;
	}

	public void setLabelZh12(String labelZh12) {
		this.labelZh12 = labelZh12;
	}

	public String getLabelEn13() {
		return labelEn13;
	}

	public void setLabelEn13(String labelEn13) {
		this.labelEn13 = labelEn13;
	}

	public String getLabelZh13() {
		return labelZh13;
	}

	public void setLabelZh13(String labelZh13) {
		this.labelZh13 = labelZh13;
	}

	public String getLabelEn14() {
		return labelEn14;
	}

	public void setLabelEn14(String labelEn14) {
		this.labelEn14 = labelEn14;
	}

	public String getLabelZh14() {
		return labelZh14;
	}

	public void setLabelZh14(String labelZh14) {
		this.labelZh14 = labelZh14;
	}

	public String getLabelEn15() {
		return labelEn15;
	}

	public void setLabelEn15(String labelEn15) {
		this.labelEn15 = labelEn15;
	}

	public String getLabelZh15() {
		return labelZh15;
	}

	public void setLabelZh15(String labelZh15) {
		this.labelZh15 = labelZh15;
	}

	public Integer generateRolePermission() {
		StringBuffer bf = new StringBuffer();
		try {
			for (int i = 0; i < 16; i++) {
				Method getMethod = this.getClass().getMethod("getP" + i);
				Object obj = getMethod.invoke(this);
				if (obj != null) {
					// Boolean value = Boolean.valueOf(obj.toString());
					Boolean value = (obj.toString().equals("1") || obj.toString().equals("true"));
					if (value) {
						bf.append("1");
					} else {
						bf.append("0");
					}
				} else {
					bf.append("0");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		String result = bf.toString();
		int intResult = Integer.valueOf(result, 2);
		return intResult;
	}

	/**
	 * DTO updated permission.
	 */
	public void updateRolePermission(RolePermissionDTO originalRolePermissionDTO) {
		if (originalRolePermissionDTO != null) {
			for (int i = 0; i < 16; i++) {
				Method getMethod;
				try {
					getMethod = this.getClass().getMethod("getP" + i);
					Object obj = getMethod.invoke(this);
					if (obj != null) {
						Method setMethod = originalRolePermissionDTO.getClass().getMethod("setP" + i, String.class);
						setMethod.invoke(originalRolePermissionDTO, String.valueOf(obj));
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

}
