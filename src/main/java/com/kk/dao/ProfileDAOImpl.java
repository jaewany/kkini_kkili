package com.kk.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kk.domain.MemberVO;

@Repository("profileDAO")
public class ProfileDAOImpl implements ProfileDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 프로필 등록
	public void insertProfile(MemberVO vo) {
		System.out.println("===> Mybatis insertProfile() 호출");
		mybatis.insert("ProfileDAO.insertProfile", vo);
	}

	// 프로필 수정
	public void updateProfile(MemberVO vo) {
		System.out.println("===> Mybatis updateProfile() 호출");
		mybatis.update("ProfileDAO.updateProfile", vo);
	}

	// 프로필 삭제
	public void deleteProfile(MemberVO vo) {
		System.out.println("===> Mybatis deleteProfile() 호출");
		mybatis.delete("ProfileDAO.deleteProfile", vo);
	}

	// 프로필 상세 조회
	public MemberVO getProfile(MemberVO vo) {
		System.out.println("===> Mybatis getProfile() 호출");
		return (MemberVO)mybatis.selectOne("ProfileDAO.getProfile", vo);
	}
}