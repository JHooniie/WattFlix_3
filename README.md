# 🍿 Wattflix

> 사용자 선호도 기반 영화 추천 웹사이트

#### 목차

1. [개요](#개요)
2. [기획](#기획)
3. [주요 기능과 로직](#주요-기능과-로직)
4. [서비스 구조](#서비스-구조)
5. [기술 스택](#기술-스택)
6. [담당 역활 및 성과](#담당-역할-및-성과)
7. [프로젝트 회고](#프로젝트-회고)

---

<br>

![](readme_assets/gethertown.png)

## 개요

- 개발기간 및 인원
  - 1차 : 22. 6. 22 ~ 27 (프론트엔드)
  - 2차 : 22. 7. 18 ~ 22 (프론트엔드 + 백엔드)

- 개발 인원 : 6명<br>
  (@ddowoogi, @ksh950609, @SaehimLee, @slowlyseo, @YR SHIN, @JHooniie)

<br>

---

<br>

## 기획

### 기획 의도<br> : 영화 정보, 사용자의 선호도를 분석하여 영화 콘텐츠를 소개해주는 서비스를 개발한다.

- 영화에 관한 정보 전달
- 사용자 영화 선호도를 저장하고, 사용자 개개인의 취향에 맞는 콘텐츠 추천
- 사용자 영화 관람 기록을 저장하고, 다른 사용자와 커뮤니케이션 할 수 있는 플랫폼 제공

### 기대 효과

- 사용자가 편리하게 영화 정보에 접근 가능
- 사용자가 새로운 영화 콘텐츠를 선택하는 데 효율적인 방법 제시

<br>

---

<br>

## 기획 & 설계

- [기능 명세서](https://www.notion.so/saehim/04c2d031096b497f976ccb22a97619db)
- [페이지 기획서](https://whimsical.com/wattflix-TLM6JwRAMdSt9bEB4PFwvA)
- [DB 명세서](https://www.notion.so/saehim/DB-3da90124c57240b88479a3cdbdc14678)
- [work flow](https://miro.com/welcomeonboard/dkdKVHRNdjJTRVl1REZRZWsyeUl6SWpFeUM5UEkwa2xhaE45TkowSFRPSTJtdXpmb091VDFCd2Mzemd5RHJxc3wzNDU4NzY0NTI5NTk0ODMwNjk3?share_link_id=39786382272)

<br>

---

<br>

## 주요 기능과 로직

- 영화 검색 : 영화명 등 각종 키워드 기반 검색 기능
- 영화 상세 정보 조회 : 영화 포스터, 정보, 감독, 배우 등 상세 정보 조회
- 영화 평점 및 댓글 기록 : 사용자가 영화에 대한 평점 및 댓글 저장 가능
- 좋아하는 영화 저장 : 사용자가 선호하는 영화 저장
- 로그인/회원가입/회원 정보 수정
- 내가 매긴 별점, 코멘트 모아 보기 : 마이페이지에서 모아보기 기능
- 박스오피스 순위 조회

![WatFlix](readme_assets/WattFlix.gif)

[영상 더보기](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/c889c63e-4d0b-4edb-9b09-97a38f577261/WattFlix_-_Chrome_2022-07-31_23-49-54_YouTube.mp4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220731%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220731T151819Z&X-Amz-Expires=86400&X-Amz-Signature=b57f00663d12d8b41ebf91e1dd5d0690ddfd60cbc7d05c3e14f5ced461d7e5d4&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22WattFlix%2520-%2520Chrome%25202022-07-31%252023-49-54_YouTube.mp4%22&x-id=GetObject)

<br>

### 🚩 메인 로직1 : 영화 검색

1. 영화명, 감독, 배우, 장르 키워드 기반 검색
2. 출력된 검색 결과를 통해 상세 조회 페이지 접근, 좋아하는 영화 저장 가능

<br>

### 🚩 메인 로직2 : 영화 별점 저장 및 조회

1. 영화 상세페이지에서 개인별 영화 별점 저장 가능
2. 마이페이지를 통해 내가 매긴 영화 별점 통합 조회

<br>

### 🚩 메인 로직3 : 좋아하는 영화 저장 및 조회

1. 메인페이지, 영화검색 결과에서 좋아하는 영화 저장
2. 사용자별로 '좋아하는 영화' 모아서 보기 가능
3. '좋아하는 영화' 페이지에서 삭제 가능
4. 해당 영화 키워드를 기반으로 영화 추천페이지에 노출

<br>

---

<br>

## 서비스 구조

![](readme_assets/service-structure.png)

<br>

## 기술 스택

- 개발언어 : Java, Html/CSS, JavaScript
- 개발환경 : STS, eclipse, Visual Studio Code, JDK11, Tomcat 9
- 데이터베이스 : MySQL
- 형상관리 : Github
- 협업 : Notion, GatherTown

<br>

---

<br>

## 담당 역할 및 성과

(나의 포지션과 어떤 기능을 구현했는지 간단히 작성)

<br>

## 프로젝트 회고

(개인 평가 작성)
