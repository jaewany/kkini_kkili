package com.kk.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.AdminVO;

@Repository("AdminDAO")
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	@Override
	// 관리자 메인 페이지
	public List<AdminVO> getAdminMain(AdminVO vo) {
		return null;
	}
	
	@Override
	// 스탭 관리
	public List<AdminVO> getStaff(AdminVO vo) {
		return null;
	}

	@Override
	// 호스트 인증 관리
	public List<Map<String, String>> getHostup() {
		System.out.println("===> Mybatis getHostup() 호출");
		System.out.println(mybatis.selectList("admin.getHostup").size());
		return mybatis.selectList("admin.getHostup");
	}

	@Override
	// 휴먼 계정
	public List<AdminVO> getDormancy(AdminVO vo) {
		return null;
	}

	@Override
	// 이용자 수 조회
	public List<AdminVO> getUsers(AdminVO vo) {
		return null;
	}

	@Override
	// 매칭 현황 조회
	public List<AdminVO> getMatch(AdminVO vo) {
		return null;
	}

	@Override
	// 총 매출 조회
	public List<AdminVO> getSales(AdminVO vo) {
		return null;
	}

	@Override
	// 매출 장부 조회
	public List<AdminVO> getBook(AdminVO vo) {
		return null;
	}
}