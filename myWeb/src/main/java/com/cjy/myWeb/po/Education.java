package com.cjy.myWeb.po;

import java.util.Date;

public class Education {
	private String educationId;
	private String userId;
	private Date startDate;
	private Date endDate;
	private String education;
	private String school;
	private String profession;
	public String getEducationId() {
		return educationId;
	}
	public void setEducationId(String educationId) {
		this.educationId = educationId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	@Override
	public String toString() {
		return "Education [educationId=" + educationId + ", userId=" + userId + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", education=" + education + ", school=" + school + ", profession="
				+ profession + "]";
	}
	
}
