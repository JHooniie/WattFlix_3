package com.spring_boot_wattflix.project.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MemberVO {
	private String memNo;
	private String memId;
	private String memPwd;
	private String memNickname;
	@DateTimeFormat(pattern="yyyy.MM.dd")
	private Date memBirth;
	private String memHp;
	private String memZipcode;
	private String memAddress1;
	private String memAddress2;
	private String memGenre;
	
	public String getMemNo() {
		return memNo;
	}
	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPwd() {
		return memPwd;
	}
	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}
	public String getMemNickname() {
		return memNickname;
	}
	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}
	public Date getMemBirth() {
		return memBirth;
	}
	public void setMemBirth(Date memBirth) {
		this.memBirth = memBirth;
	}
	public String getMemHp() {
		return memHp;
	}
	public void setMemHp(String memHp) {
		this.memHp = memHp;
	}
	public String getMemZipcode() {
		return memZipcode;
	}
	public void setMemZipcode(String memZipcode) {
		this.memZipcode = memZipcode;
	}
	public String getMemAddress1() {
		return memAddress1;
	}
	public void setMemAddress1(String memAddress1) {
		this.memAddress1 = memAddress1;
	}
	public String getMemAddress2() {
		return memAddress2;
	}
	public void setMemAddress2(String memAddress2) {
		this.memAddress2 = memAddress2;
	}
	public String getMemGenre() {
		return memGenre;
	}
	public void setMemGenre(String memGenre) {
		this.memGenre = memGenre;
	}
	
	
	public MemberVO(String memNo, String memId, String memPwd, String memNickname, Date memBirth, String memHp,
			String memZipcode, String memAddress1, String memAddress2, String memGenre) {
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memNickname = memNickname;
		this.memBirth = memBirth;
		this.memHp = memHp;
		this.memZipcode = memZipcode;
		this.memAddress1 = memAddress1;
		this.memAddress2 = memAddress2;
		this.memGenre = memGenre;
	}

}
