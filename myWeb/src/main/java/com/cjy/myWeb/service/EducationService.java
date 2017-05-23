package com.cjy.myWeb.service;

import java.util.List;

import com.cjy.myWeb.po.Education;

public interface EducationService {
	public List<Education> getEducationByUserId(String userId);
}
