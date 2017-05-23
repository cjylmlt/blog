package com.cjy.myWeb.mapper;

import java.util.List;

import com.cjy.myWeb.po.Education;

public interface EducationMapper {
	public List<Education> findEducationByUserId(String userId);
}
