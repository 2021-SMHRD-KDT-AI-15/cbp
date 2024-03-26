![header](https://capsule-render.vercel.app/api?type=slice&height=120&color=b1ddab&text=금연여행&fontAlign=85&fontSize=40&fontColor=ffffff)
# :pushpin: 금연 여행
> 캘린더 API를 활용한 금연 일정 관리 서비스 </br>
> Challenge Point : 캘린더 API 사용, 지도 API 사용, 애니메이션 효과

</br>

## 📅  제작 기간 & 참여 인원
- 2023년 11월 28일 ~ 12월 13일
- :crown: 팀장 - 정연희 PM / DB 설계및 구축 / Back-end Fullcalendar API 활용한 DB데이터 연동 / 문서 작성<br>
  :green_heart: 팀원 - 강치원 Back-end 인공지능 챗봇 서비스 구현 / 크롤링(뉴스, 가이드, 신체변화) 및 DB 저장 / 문서 작성<br>
  :green_heart: 팀원 - 김병훈 Back-end 카카오맵 API 활용한 마커 기능, 프로그레스바 기능 구현 / 크롤링(명언,뉴스) 및 DB 저장 / Front-end 표지 디자인 작성 <br>
  :green_heart: 팀원 - 오푸른 Front-end 메인페이지 설계 및 구현, 마이페이지 등산 애니메이션 구현, 페이지 디자인 수정 / Back-end 회원가입, 로그인 구현 / 문서 작성 <br>
  :green_heart: 팀원 - 이상현 Front-end 서브페이지 설계 및 구현, 표지 디자인 작성 / Back-end 비회원 접근제한 기능 구현, 흡연 체크 버튼 설계 

</br>

## 🔨 개발환경

<table>
    <tr>
        <th>구분</th>
        <th>내용</th>
    </tr>
    <tr>
        <td>Back-end</td>
        <td>
            <img src="https://img.shields.io/badge/Java-007396?style=for-the-badge&logo=java&logoColor=white"/>
            <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
          <img src="https://img.shields.io/badge/Apache%20Maven-C71A36?style=for-the-badge&logo=Apache%20Maven&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>Front-end</td>
        <td>
            <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">
            <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
            <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
        </td>
    </tr>
    <tr>
        <td>Database</td>
        <td>
            <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">
        </td>
    </tr>
    <tr>
        <td>Server</td>
        <td>
            <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
        </td>
    </tr>
   <tr>
        <td>Distribution</td>
        <td>
            <img src="https://img.shields.io/badge/AWS ec2-FF9900?style=for-the-badge&logo=amazonec2&logoColor=white">
            <img src="https://img.shields.io/badge/AWS s3-569A31?style=for-the-badge&logo=amazons3&logoColor=white">
        </td>
    </tr>
    <tr>
        <td>Library & API</td>
        <td>
            <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
	    <img src="https://img.shields.io/badge/Spring Data JPA-bcae79?style=for-the-badge&logo=&logoColor=white"/>
            <img src="https://img.shields.io/badge/Canvas-007CE2?style=for-the-badge&logo=Canvs&logoColor=white">
            <img src="https://img.shields.io/badge/chart.js-F5788D?style=for-the-badge&logo=chart.js&logoColor=white">
            <img src="https://img.shields.io/badge/kakaoMap API-FFCD00?style=for-the-badge&logo=kakao&logoColor=white">
			<img src="https://img.shields.io/badge/pytorch-EE4C2C?style=for-the-badge&logo=pytorch&logoColor=white">
			<img src="https://img.shields.io/badge/opencv-5C3EE8?style=for-the-badge&logo=opencv&logoColor=white">
        </td>
    </tr>
    <tr>
        <td>IDT</td>
        <td>
            <img src="https://img.shields.io/badge/eclipse-2C2255?style=for-the-badge&logo=eclipseide&logoColor=white">
            <img src="https://img.shields.io/badge/Visual%20Studio%20Code-0078d7?style=for-the-badge&logo=visual-studio-code&logoColor=white"/>
            <img src="https://img.shields.io/badge/SQL Developer-777777?style=for-the-badge&logo=&logoColor=white"/>
            <img src="https://img.shields.io/badge/AWS-%23FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white"/>
        </td>
    </tr>
    <tr>
        <td>Etc.</td>
        <td>
            <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">
            <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
        </td>
    </tr>
    
</table>

</br>

## 🎫 ERD 설계
![image](https://github.com/2021-SMHRD-KDT-AI-15/cbp/assets/144203952/731e278b-c76d-4df5-8bff-4875dd6b21dc)


## 🔌 구성 및 흐름도
![서비스흐름도](https://github.com/2021-SMHRD-KDT-AI-15/cbp/assets/150218741/98f5b1a6-96b0-418a-ab3d-7ec487a47f85)
</br>


## 📚 핵심 기능
#### - 일정 관리 서비스 : fullcalendar API
#### - 회원가입, 로그인, 로그아웃 기능
#### - 목표 달성도 등을 시각적으로 구현
#### - 금연 후 신체변화(건강 증진) 표현
#### - 금연정보와 금연 관련 뉴스 게시판 제공
#### - 금연지원 기관 위치 안내, kakao maps api
#### - 인공지능 금연 전문가 챗봇 구현 : GetGpt

</br>
</br>


## 🎥 시연 영상
https://github.com/2021-SMHRD-KDT-AI-15/cbp/issues/2#issue-2179218262

</br>

![footer](https://capsule-render.vercel.app/api?type=slice&height=120&color=b1ddab&text=돌아와조&fontAlign=15&fontSize=40&fontColor=ffffff&section=footer&fontAlignY=65)
