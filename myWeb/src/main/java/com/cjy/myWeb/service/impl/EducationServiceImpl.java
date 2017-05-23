package com.cjy.myWeb.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.cjy.myWeb.mapper.EducationMapper;
import com.cjy.myWeb.po.Education;
import com.cjy.myWeb.service.EducationService;

public class EducationServiceImpl implements EducationService {
	@Autowired
	private EducationMapper educationMapper;
	@Override
	public List<Education> getEducationByUserId(String userId) {
		return educationMapper.findEducationByUserId(userId);
	}
}
