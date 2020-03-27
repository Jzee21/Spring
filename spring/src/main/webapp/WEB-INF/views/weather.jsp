<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="ko">
<head>
	<title>기상청 날씨누리</title>
	
    
    <meta name="decorator" content="bypass" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta charset="euc-kr" />
    <link rel="shortcut icon" href="https://www.kma.go.kr/iphone-shortcut.png" />
    <link rel='apple-touch-icon-precomposed' href='https://www.kma.go.kr/iphone-shortcut.png'/> 
    <link rel="stylesheet" type="text/css" href="/share/css/base.css?ver=2018122404" />
    <link rel="stylesheet" type="text/css" href="/share/css/common.css?ver=20191226" />
    <link rel="stylesheet" type="text/css" href="/home/css/weather-layout.css?ver=201912031" />
    <link rel="stylesheet" type="text/css" href="/home/css/main_2017.css?ver=20200204" />
    <link rel="stylesheet" type="text/css" href="/bangjae_layer/bangjae.css?ver=2018127404" />
	<link rel="stylesheet" type="text/css" href="/share/css/warninglayer.css?ver=20190103" />
	<link rel="stylesheet" type="text/css" href="/home/css/swiper.min.css?ver=20191010" /> 
    
    <script src="/share/js/jquery-1.7.1.min.js"></script>
    <script src="/home/js/flexslider.js"></script>
    <script src="/home/js/weather-common.js?ver=2019082001"></script>
    <script src="/home/js/highcharts.js"></script>
	<script src="/home/js/swiper.min.js"></script>
    
    <meta name="title" content="기상청 " />
    <meta name="author" content="기상청" />
    <meta name="keywords" content="날씨, 기상청" />
    <meta name="description" content="기상청 날씨누리 - 국가기상종합정보" />
  
</head>
<body id="ct" style="background:0;">


    <div class="body-wrapper">
	<div class="menu-bg"></div>
      <div class="header-wrapper">
        <div class="header-wrap-bar"></div>
        <div id="header">
          <dl id="skip">
            <dt>
              <strong class="hid">바로가기 메뉴</strong></dt>
            <dd>
              <a class="golnb" href="#main_menu">메인메뉴 바로가기</a></dd>
          </dl>
          <div id="gnb">
            <div id="goto-kma" class="goto-kma">
              <a href="#content">본문바로가기 (SKIP TO CONTENT) </a></div>
			  <div style="display: inline-block; position: relative; left: 262px; top: 10px;"><a href="http://www.weather.go.kr" target="_blank" style="text-decoration:none; "><p style="width:190px; text-align:center; font-size:14px; font-weight:bold; color:#ffffff; padding: 3px; ">(신)날씨누리 바로가기 ></p></a></div>
            <ul id="area">
              <li class="sitemap">
                <a href="/weather/global/sitemap_weather.jsp">사이트맵</a>
			  </li>
              <li class="wind">
	            <ul class="clearfix" id="unit-option-group">
					<li class="title">풍속단위</li>
					<li><a href="#unit-ms" data-option-windspeed="M">m/s</a></li>
					<li><a href="#unit-kmh" data-option-windspeed="K">km/h</a></li>
				</ul>
              </li>
	      
              <li class="language">
			<ul class="clearfix">
				<li><a href="http://www.kma.go.kr/eng/index.jsp" target="_blank" title="새창열림">ENG</a></li>
				<li><a href="http://www.kma.go.kr/jpn/index.jsp" target="_blank" title="새창열림">JPN</a></li>
				<li><a href="http://www.kma.go.kr/chn/index.jsp" target="_blank" title="새창열림">CHN</a></li>
			</ul>
              </li>
	      
              <li class="search">
                <form name="search_dictionary" method="post" class="global_top_search" action="http://www.kma.go.kr/search/kmaSearch.jsp">
                  <fieldset>
                    <legend>통합 검색</legend>
                    <p class="view">
                      <!-- <select title="통합검색 선택"><option>통합검색</option></select> -->
                      <input type="text" id="input_keyword1" name="keyword" class="inputbase" placeholder="검색어 입력" value="" title="검색어 입력"/>
                      <input type="image" class="button" src="/home/images/search-btn01.gif" alt="검색"></p>
                  </fieldset>
                </form>
              </li>
              <li class="homepage">
			<a href="http://www.kma.go.kr/home/index.jsp" ><span>기상청 행정홈페이지 바로 가기</span></a>
              </li>
            </ul>
          </div>
          <div id="topMenu">
            <h1>
              <a href="/weather/main.jsp"><img src="/images/kma/weather_logo_b.gif" alt="날씨누리 기상청 국가기상종합정보"></a>
            </h1>
			
            



	
	
	
	
	



<div class="notice_9"><a href="https://hrm.kma.go.kr/kma_emp/hr_system/jsp" target="_blank" title="새창 열림">기상9급 원서접수</a></div>



            <div id="main_menu">
              <noscript>하위메뉴선택은 자바스크립트 기능이 있어야 선택하실 수 있습니다.</noscript>
              <a id="golnb"></a>
              <ul id="lnb">
                <li class="div-9" id="top-menu1">
                  <a href="/weather/warning/status.jsp" id="top-menu-head1">특보 · 예보</a>
                  <ul id="top-sub-menu1" style="display: none;">
                    <li id="top-1-1"><a href="/weather/warning/status.jsp" class="addon">특보 · 정보</a>
                      <ul>
                        <li><a href="/weather/warning/status.jsp">특보현황</a></li>
                        <li><a href="/weather/warning/report.jsp">통보문</a></li>
						<!--<li><a href="/weather/warning/heatwave.jsp">폭염영향예보</a></li>-->
						<li><a href="/weather/warning/coldwave.jsp">한파영향예보</a></li>
                        <li><a href="/weather/warning/wtouchqNew.jsp">인터넷기상방송<br/>(날씨ON)</a></li>
                        <li><a href="/weather/warning/standard.jsp">기상특보 발표기준</a></li>
                        <li><a href="/weather/warning/safetyguide_asiandust.jsp">국민행동요령</a></li>
                        <li><a href="/weather/warning/fog_status.jsp">안개정보서비스</a></li>
                      </ul>
                    </li>
                    <li id="top-1-2"><a href="/weather/forecast/timeseries.jsp">육상예보</a>
                      <ul>
                        <li><a href="/weather/forecast/timeseries.jsp">동네예보</a></li>
                        <li><a href="/weather/forecast/mid-term_01.jsp">중기예보(10일 예보)</a></li>
                        <li><a href="/weather/forecast/weekend.jsp">주말예보</a></li>
                        <li><a href="/weather/forecast/long-range1.jsp">1개월전망</a></li>
                        <li><a href="/weather/forecast/long-range3.jsp">3개월전망</a></li>
                        <li><a href="/weather/forecast/season.jsp">기후전망</a></li>
                        <li><a href="/weather/forecast/drought-range1.jsp">기상가뭄예보</a></li>
                      </ul>
                    </li>
                    <li id="top-1-3"><a href="/weather/forecast/marine_daily.jsp">해상예보</a>
                      <ul>
                        <li><a href="/weather/forecast/marine_daily.jsp">일일예보</a></li>
                        <li><a href="/weather/forecast/marine_mid-term.jsp">중기예보(10일 예보)</a></li>
                      </ul>
                    </li>
                    <li id="top-1-4"><a href="/weather/forecast/northkorea01.jsp">북한예보</a>
                      <ul>
                        <li><a href="/weather/forecast/northkorea01.jsp">육상예보</a></li>
                        <li><a href="/weather/forecast/northkorea02.jsp">바다예보</a></li>
                      </ul>
                    </li>
                    <li id="top-1-5"><a href="/weather/forecast/mountain_01.jsp">테마예보</a>
                      <ul>
                        <li><a href="/weather/forecast/mountain_01.jsp">산악기상</a></li>
                        <li><a href="/weather/forecast/theme_beach.jsp">해수욕장 예보</a></li>
                        <li><a href="/weather/forecast/theme_regional.jsp">지역별기상정보</a></li>
					  </ul>
                    </li>
                    <li id="top-1-7">
                      <a href="/weather/forecast/el-la.jsp">엘니뇨<br />·라니냐전망</a>
                      <ul class="ul01 clearfix">
                        <li id="top-1-8" class="mgr0"><a href="/weather/forecast/forecaetevalue_01.jsp">예보평가</a>
                          <ul>
                            <li><a href="/weather/forecast/forecaetevalue_01.jsp">연도별</a></li>
                            <li><a href="/weather/forecast/forecaetevalue_02.jsp">월별</a></li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="http://amo.kma.go.kr/new/html/weather/weather01_04.jsp" target="_blank" title="새창 열림">공항경보<br />(항공기상청)</a></li>						
						<li><a href="http://amo.kma.go.kr/new/html/weather/weather01_03.jsp" target="_blank" title="새창 열림">공항예보<br />(항공기상청)</a></li>
						<li><a href="https://www.airkorea.or.kr" target="_blank" title="새창 열림">미세먼지예보<br />(Air Korea)</a></li>
						<li></li>
						<li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9" id="top-menu2"><a href="/weather/images/rader_integrate.jsp" id="top-menu-head2">날씨영상</a>
                  <ul id="top-sub-menu2" style="display:none; left: -105px;">
                    <li id="top-2-1"><a href="/weather/images/rader_integrate.jsp">레이더</a>
                      <ul>
                        <li><a href="/weather/images/rader_integrate.jsp">합성영상</a></li>
                        <li><a href="/weather/images/rader_02.jsp">눈비영역</a></li>
						<li><a href="/weather/images/rader_04.jsp">우박</a></li>
                        <li><a href="/weather/images/rader_03.jsp">누적강수</a></li>
                        <li><a href="/weather/images/rader_individual.jsp">지점별 영상</a></li>
                        
                      </ul>
                    </li>
                    <li id="top-2-2"><a href="/weather/images/satellite_gk2a.jsp">위성</a>
                      <ul class="clearfix">
                        <li><a href="/weather/images/satellite_gk2a.jsp">기본영상</a></li>
                        <li><a href="/weather/images/satellite_case.jsp">사례영상</a></li>
                      </ul>
                    <li id="top-2-3"><a href="/weather/images/lightning.jsp">낙뢰</a></li>
					<li id="top-2-4"><a href="/weather/images/rader_sat_lgt.jsp">종합영상<br/>(레이더/위성/낙뢰)</a>
						<ul class="ul01 clearfix">
							<li id="top-2-5" class="mgr0"><a href="/weather/images/rader_qpf.jsp">초단기 강수예측</a></li>
						</ul>
					</li>
                    <li id="top-2-6"><a href="/weather/images/analysischart.jsp">일기도</a>
                      <ul>
                        <li><a href="/weather/images/analysischart.jsp">분석일기도</a></li>
                        <li><a href="/weather/images/forecastchart.jsp">육상예상일기도</a></li>
                        <li><a href="/weather/images/wavemodel_r3.jsp">해상예상일기도</a></li>
                        <li><a href="/weather/images/expertchart.jsp">전문가용일기도</a></li>
                      </ul>
                    </li>
			<li id="top-2-7"><a href="/weather/home/earth/index.jsp" target="_blank">비주얼맵</a></li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="http://nmsc.kma.go.kr" target="_blank" title="새창 열림">국가기상위성센터<br>&nbsp;</a></li>
                        <li><a href="http://radar.kma.go.kr" target="_blank" title="새창 열림">기상레이더센터<br>&nbsp;</a></li>
                        <li></li>
                        <li></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9" id="top-menu3"><a href="/mini/marine/marine_integrate.jsp" id="top-menu-head3">바다날씨</a>
                  <ul id="top-sub-menu3" style="display:none; left: -211px;">
                    <li id="top-3-1"><a href="/mini/marine/marine_integrate.jsp">현재바다날씨</a>
                      <ul>
                        <li><a href="/mini/marine/marine_integrate.jsp">해양기상부이</a></li>
                        <li><a href="/mini/marine/marine_beacon.jsp">국내등표</a></li>
                        <li><a href="/mini/marine/marine_buoy_cosmos.jsp">파고부이</a></li>
                        <li><a href="/mini/marine/marine_asia.jsp">아시아연안관측실황</a></li>
                        <li><a href="/mini/marine/marine_onshorewind.jsp">위성영상</a></li>
                      </ul>
                    </li>
                    <li id="top-3-2"><a href="/mini/marine/marine_daily.jsp">해상예보</a>
                      <ul>
                        <li><a href="/mini/marine/marine_daily.jsp">일일예보</a></li>
                        <li><a href="/mini/marine/marine_mid-term.jsp">중기예보(10일예보)</a></li>
                        <li><a href="/mini/marine/marine_zone_rwwsst.jsp">해구별 예측정보</a></li>
                      </ul>
                    </li>
                    <li id="top-3-3"><a href="/mini/marine/wavemodel_r3.jsp">해상수치예측일기도</a>
                      <ul>
                        <li><a href="/mini/marine/wavemodel_r3.jsp">파랑</a></li>
                        <li><a href="/mini/marine/stormsurge.jsp">폭풍해일</a></li>
                        <li><a href="/mini/marine/roms_crnt.jsp">해양순환</a></li>
                        <li><a href="/mini/marine/marine_index_icing.jsp">해양지수</a></li>
                        <li><a href="/mini/marine/marine_route.jsp">항로</a></li>
                      </ul>
                    </li>
                    <li id="top-3-4"><a href="/mini/marine/marine_fax04.jsp">해양기상방송<br />(일기도 FAX방송)</a>
                      <ul>
                        <li><a href="/mini/marine/marine_fax04.jsp">개요</a></li>
                        <li><a href="/mini/marine/marine_fax02.jsp">방송내용 및 제원</a></li>
                        <li><a href="/mini/marine/marine_fax03.jsp">방송시간표</a></li>
                        <li><a href="/mini/marine/marine_fax01.jsp">세계주요지역 기상방송센터</a></li>
                      </ul>
                    </li>
                    <li id="top-3-5"><a href="/mini/marine/marine_summary.jsp">월별 해양기상도</a>
                      <ul>
                        <li><a href="/mini/marine/marine_summary.jsp">개요</a></li>
                        <li><a href="/mini/marine/marine_eastasia.jsp">동아시아</a></li>
                        <li><a href="/mini/marine/marine_northpacific.jsp">태평양</a></li>
                      </ul>
                    </li>
                    <li id="top-3-6"><a href="/mini/marine/marine_vos01.jsp">관측지원선박(VOS)제도</a>
                      <ul>
                        <li><a href="/mini/marine/marine_vos01.jsp">소개</a></li>
                        <li><a href="/mini/marine/marine_shipobserv.jsp">선박관측자료</a></li>
                        <li><a href="/mini/marine/marine_vos02.jsp">선박관측 전문해설</a></li>
                        <li><a href="/mini/marine/marine_vos03.jsp">항만기상관 현황</a></li>
                        <li><a href="/mini/marine/marine_vos04.jsp">관측지원선박 목록</a></li>
                      </ul>
                    </li>
                   
                    <li class="bottom">
                      <ul class="clearfix">
					  <li><a href="http://marine.kma.go.kr" target="_blank" title="새창 열림">해양기상정보포털<br>Sea for you</a></li>
                        <li><a href="http://www.kma.go.kr/communication/webzine/marine.jsp" target="_blank" title="새창 열림">연근해선박기상정보<br />(월간)</a></li>
                        <li><a href="http://www.nifs.go.kr/risa/main.risa" target="_blank" title="새창 열림">연근해수온정보<br />(국립수산과학원)</a></li>
                        <li><a href="http://www.khoa.go.kr/kcom/cnt/selectContentsPage.do?cntId=31304010" target="_blank" title="새창 열림">항해안전정보<br />(국립해양조사원)</a></li>
                        <li><a href="http://www.khoa.go.kr/swtc/main.do" target="_blank" title="새창 열림">물때정보<br />(국립해양조사원)</a></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9" id="top-menu4">
                  <a href="/weather/typoon/report.jsp" id="top-menu-head4">태풍</a>
                  <ul id="top-sub-menu4" style="display:none; left: -316px;">
                    <li id="top-4-1"><a href="/weather/typoon/report.jsp">태풍정보</a>
                      <ul>
                        <li><a href="/weather/typoon/report.jsp">통보문</a></li>
                        <li><a href="/weather/typoon/detail.jsp">상세정보</a></li>
                        <li><a href="/weather/typoon/prediction.jsp">모델예측</a></li>
                      </ul>
                    </li>
                    <li id="top-4-2"><a href="/weather/typoon/typhoon_06_02.jsp">참고정보</a>
                      <ul>
                        <li><a href="/weather/typoon/typhoon_06_02.jsp">발생 감시</a></li>
                        <li><a href="/weather/typoon/statistic.jsp">발생 통계</a></li>
                        <li><a href="/weather/typoon/typhoon_06_01.jsp">태풍 찾아보기</a></li>
                        <li><a href="/weather/typoon/knowledge_01.jsp">기본 지식</a></li>
                      </ul>
                    </li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <!--<li><a href="http://typ.kma.go.kr" target="_blank" title="새창 열림">국가태풍센터<br />&nbsp;</a></li>-->
                        <li><a href="http://www.safekorea.go.kr" target="_blank" title="새창 열림">국민재난안전포탈<br />(행정안전부)</a></li>
                        <li></li>
                        <li></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9" id="top-menu5"><a href="/weather/asiandust/density.jsp" id="top-menu-head5">황사</a>
                  <ul id="top-sub-menu5" style="display:none; left: -422px;">
                    <li id="top-5-1"><a href="/weather/asiandust/density.jsp">황사/부유분진<br />관측값</a></li>
                    <li id="top-5-2"><a href="/weather/asiandust/graph.jsp">황사/부유분진<br/>관측 그래프</a></li>
                    <li id="top-5-3"><a href="/weather/asiandust/prediction.jsp">모델예측</a></li>
                    <li id="top-5-4"><a href="/weather/asiandust/chart.jsp">지상일기도</a></li>
					<li id="top-5-6"><a href="/weather/asiandust/observday.jsp">황사관측일수</a></li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="http://www.kma.go.kr/aboutkma/biz/asiandust01.jsp" target="_blank" title="새창 열림">황사업무소개<br />(행정)</a></li>
                        <li><a href="http://www.safekorea.go.kr" target="_blank" title="새창 열림">국민재난안전포탈<br />(행정안전부)</a></li>
                        <li></li>
                        <li></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9" id="top-menu6"><a href="/weather/earthquake_volcano/report.jsp" id="top-menu-head6">지진 · 화산</a>
                  <ul id="top-sub-menu6" style="display:none; left: -527px;">
                    <li id="top-6-1"><a href="/weather/earthquake_volcano/report.jsp">발표정보</a></li>
                    <li id="top-6-2"><a href="/weather/earthquake_volcano/domesticlist.jsp">지진</a>
                      <ul>
                        <li><a href="/weather/earthquake_volcano/domesticlist.jsp">국내지진 목록</a></li>
                        <li><a href="/weather/earthquake_volcano/internationallist.jsp">국외지진 목록</a></li>
                        <li><a href="/weather/earthquake_volcano/domestictrend.jsp">국내지진 발생추이</a></li>
                        <li><a href="/weather/earthquake_volcano/scalelist.jsp">국내지진 규모별순위</a></li>
                        <li><a href="/weather/earthquake_volcano/major_912.jsp">주요 지진</a></li>
                      </ul>
                    </li>
                    <li id="top-6-3"><a href="/weather/earthquake_volcano/tidalwave_02.jsp">지진해일</a>
                      <ul class="clearfix">
                        <li><a href="/weather/earthquake_volcano/tidalwave_02.jsp">과거 지진해일<br />사례</a></li>
                      </ul>
					</li>
					<li id="top-6-4"><a href="/weather/earthquake_volcano/volcano_01.jsp">화산</a>
					  <ul>
						<li><a href="/weather/earthquake_volcano/volcano_02_1.jsp">과거 화산 사례</a></li>
						<li><a href="/weather/earthquake_volcano/volcano_03.jsp">화산재해 유형</a></li>
					  </ul>
					</li>
                    <li id="top-6-6"><a href="/weather/earthquake_volcano/evacuation_procedure.jsp">교육·홍보</a>
                      <ul>
                        <li><a href="/weather/earthquake_volcano/evacuation_procedure.jsp">지진·화산 대피요령</a></li>
                        <li><a href="/weather/earthquake_volcano/earthquakemovie.jsp">지진·화산 홍보물</a></li>
                        <li><a href="/weather/earthquake_volcano/faq.jsp">FAQ</a></li>
                      </ul>
                    </li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="http://www.kma.go.kr/communication/webzine/earthquakeyearly.jsp" target="_blank" title="새창 열림">지진연보<br />(행정)</a></li>
                        <li><a href="http://www.kma.go.kr/aboutkma/biz/earthquake_volcano_01.jsp" target="_blank" title="새창 열림">지진·화산 업무소개<br />(행정)</a></li>
						<li><a href="http://www.safekorea.go.kr" target="_blank" title="새창 열림">국민재난안전포탈<br />(행정안전부)</a></li>
                        <li></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9" id="top-menu7"><a href="/weather/observation/currentweather.jsp" id="top-menu-head7">관측자료</a>
                  <ul id="top-sub-menu7" style="display:none; left: -633px;">
                    <li id="top-7-1"><a href="/weather/observation/currentweather.jsp">지상관측자료</a>
                      <ul>
                        <li><a href="/weather/observation/currentweather.jsp">도시별 현재날씨</a></li>
                        <li><a href="/weather/observation/dashboard.jsp">날씨상황판</a></li>
                        <li><a href="/weather/climate/past_cal.jsp">과거자료</a></li>
                      </ul>
                    </li>
                    <li id="top-7-2"><a href="http://web.kma.go.kr/weather/observation/flower_photo.jsp">계절관측자료</a>
                      <ul>
                        <li><a href="http://web.kma.go.kr/weather/observation/flower_photo.jsp">봄꽃개화현황<br />(벚꽃,철쭉)</a></li>
                        <li><a href="http://web.kma.go.kr/weather/observation/maple_photo.jsp">유명산 단풍현황</a></li>
                      </ul>
                    </li>
                    <li id="top-7-3"><a href="/weather/observation/marine_buoy.jsp">바다관측자료</a>
                      <ul>
                        <li><a href="/weather/observation/marine_buoy.jsp">국내부이</a></li>
                        <li><a href="/weather/observation/marine_buoy_cosmos.jsp">파고부이</a></li>
                        <li><a href="/weather/observation/marine_beacon.jsp">국내등표</a></li>
                      </ul>
                    </li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="/weather/observation/aws_table_popup.jsp" target="_blank" title="새창열림">지역별 상세관측자료<br />(AWS)</a></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9 left-popup" id="top-menu8"><a href="/weather/climate/average_south.jsp" id="top-menu-head8">기후자료</a>
                  <ul id="top-sub-menu8" style="display:none; left: -738px;">
                    <li id="top-8-1"><a href="/weather/climate/average_south.jsp">국내기후자료</a>
                      <ul>
                        <li><a href="/weather/climate/average_south.jsp">우리나라기후</a></li>
                        <li><a href="/weather/climate/climate_link_guide.jsp">기후자료제공안내</a></li>
                      </ul>
                    </li>
                    <!-- <li id="top-8-6"><a href="http://www.climate.go.kr" target="_blank" title="새창열림">기후정보포털 <i>새창</i></a></li> -->
                    <li id="top-8-3">
                      <a href="/weather/climate/wind_solar_guide.jsp">풍력·태양광기상자원지도 안내</a>
                    </li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="http://www.climate.go.kr" target="_blank" title="새창열림">기후정보포털<br />(기상청)</a></li>
                        <li><a href="https://data.kma.go.kr/" target="_blank" title="새창열림">기상자료개방포털<br />(기상청)</a></li>
                        <li><a href="http://www.greenmap.go.kr/" target="_blank" title="새창열림">고해상도기상자원지도<br />(국립기상과학원)</a></li>
                        <li></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li class="div-9 left-popup" id="top-menu9"><a href="/weather/lifenindustry/life_jisu.jsp" id="top-menu-head9">생활과산업</a>
                  <ul id="top-sub-menu9" style="display:none; left: -844px;">
                    <li id="top-9-1"><a href="/weather/lifenindustry/life_jisu.jsp">생활기상정보</a></li>
                    <li id="top-9-4"><a href="/weather/lifenindustry/disaster_01.jsp">기상재해통계</a>
                          <ul>
                            <li><a href="/weather/lifenindustry/disaster_01.jsp">기상재해현황</a></li>
                            <li><a href="/weather/lifenindustry/disaster_03.jsp">기상재해순위</a></li>
                            <li><a href="/weather/lifenindustry/disaster_04.jsp">태풍피해순위</a></li>
                          </ul>
                    </li>
                    <li id="top-9-5"><a href="/weather/world/cityweather.jsp">세계날씨</a></li>
                    <li id="top-9-6"><a href="/weather/lifenindustry/sevice_website.jsp">서비스</a>
                        <ul>
                          <li><a href="/weather/lifenindustry/sevice_website.jsp">인터넷</a></li>
                          <li><a href="/weather/lifenindustry/sevice_use.jsp">모바일</a></li>
                        </ul>
                      </li>
                    <li class="bottom">
                      <ul class="clearfix">
                        <li><a href="https://data.kma.go.kr/data/grnd/selectAgrList.do" target="_blank" title="새창열림">농업기상정보<br />(국가기후데이터센터)</a></li>
                        <li><a href="https://hydro.kma.go.kr" target="_blank" title="새창열림">가뭄정보<br />(강수현황)</a></li>
                        <li><a href="http://www.safekorea.go.kr" target="_blank" title="새창 열림">국민재난안전포탈<br />(행정안전부)</a></li>
                        <li><a class="last-of-top-menu" href="http://forestfire.nifos.go.kr" target="_blank" title="새창 열림">산불위험예보시스템<br />(국립산림과학원)</a></li>
                        <li></li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
	      	<a href="#more-all" class="menu-more"><img src="/home/images/menu-all.gif" alt="전체메뉴 보기"></a>
		<a href="#more-all-close" class="menu-more-close" ><img src="/home/images/menu-all-close.gif" alt="전체메뉴 닫기"></a>
			   <div class="menu-all-div" tabindex="0">
				  <ul class="lnb">
					<li class="div-9"><a href="/weather/warning/status.jsp">특보 · 예보</a>
					  <ul>
						<li><a href="/weather/warning/status.jsp" class="addon">특보 · 정보</a>
						  <ul>
							<li><a href="/weather/warning/status.jsp">특보현황</a></li>
							<li><a href="/weather/warning/report.jsp">통보문</a></li>
							<!--<li><a href="/weather/warning/heatwave.jsp">폭염영향예보</a></li>-->
							<li><a href="/weather/warning/coldwave.jsp">한파영향예보</a></li>
							<li><a href="/weather/warning/wtouchqNew.jsp">인터넷기상방송<br/>(날씨ON)</a></li>
							<li><a href="/weather/warning/standard.jsp">기상특보 발표기준</a></li>
							<li><a href="/weather/warning/safetyguide_asiandust.jsp">국민행동요령</a></li>
							<li><a href="/weather/warning/fog_status.jsp">안개정보서비스</a></li>
						  </ul>
						</li>
						<li><a href="/weather/forecast/timeseries.jsp" class="addon">육상예보</a>
						  <ul>
							<li><a href="/weather/forecast/timeseries.jsp">동네예보</a></li>
							<li><a href="/weather/forecast/mid-term_01.jsp">중기예보(10일 예보)</a></li>
							<li><a href="/weather/forecast/weekend.jsp">주말예보</a></li>
							<li><a href="/weather/forecast/long-range1.jsp">1개월전망</a></li>
							<li><a href="/weather/forecast/long-range3.jsp">3개월전망</a></li>
							<li><a href="/weather/forecast/season.jsp">기후전망</a></li>
							<li><a href="/weather/forecast/drought-range1.jsp">기상가뭄예보</a></li>
						  </ul>
						</li>
						<li><a href="/weather/forecast/marine_daily.jsp" class="addon">해상예보</a>
						  <ul>
							<li><a href="/weather/forecast/marine_daily.jsp">일일예보</a></li>
							<li><a href="/weather/forecast/marine_mid-term.jsp">중기예보(10일 예보)</a></li>
						  </ul>
						</li>
						<li><a href="/weather/forecast/northkorea01.jsp" class="addon">북한예보</a>
						  <ul>
							<li><a href="/weather/forecast/northkorea01.jsp">육상예보</a></li>
							<li><a href="/weather/forecast/northkorea02.jsp">바다예보</a></li>
						  </ul>
						</li>
						<li><a href="/weather/forecast/mountain_01.jsp" class="addon">테마예보</a>
						  <ul>
							<li><a href="/weather/forecast/mountain_01.jsp">산악기상</a></li>
							<li><a href="/weather/forecast/theme_beach.jsp">해수욕장 예보</a></li>
							<li><a href="/weather/forecast/theme_regional.jsp">지역별기상정보</a></li>
						  </ul>
						</li>
						<li><a href="/weather/forecast/el-la.jsp" class="addon">엘니뇨·라니냐전망</a>
						  <ul class="ul01 clearfix">
							<li class="mgr0"><a href="/weather/forecast/forecaetevalue_01.jsp" class="addon">예보평가</a>
							  <ul>
								<li><a href="/weather/forecast/forecaetevalue_01.jsp">연도별</a></li>
								<li><a href="/weather/forecast/forecaetevalue_02.jsp">월별</a></li>
							  </ul>
							</li>
						  </ul>
						</li>
					  </ul>
					</li>
					<li class="div-9"><a href="/weather/images/rader_integrate.jsp">날씨영상</a>
					  <ul style="height: 210px;">
						<li><a href="/weather/images/rader_integrate.jsp" class="addon">레이더</a>
						  <ul>
							<li><a href="/weather/images/rader_integrate.jsp">합성영상</a></li>
				                        <li><a href="/weather/images/rader_02.jsp">눈비영역</a></li>
										<li><a href="/weather/images/rader_04.jsp">우박</a></li>
				                        <li><a href="/weather/images/rader_03.jsp">누적강수</a></li>
				                        <li><a href="/weather/images/rader_individual.jsp">지점별 영상</a></li>
				                        
						  </ul>
						</li>
						<li><a href="/weather/images/satellite_gk2a.jsp" class="addon">위성</a>
						  <ul class="clearfix">
							<li><a href="/weather/images/satellite_gk2a.jsp">기본영상</a></li>
							<li><a href="/weather/images/satellite_case.jsp">사례영상</a></li>
						  </ul>
						  </li>
						<li><a href="/weather/images/lightning.jsp">낙뢰</a></li>
						<li><a href="/weather/images/rader_sat_lgt.jsp">종합영상<br/>(레이더/위성/낙뢰)</a>
							<ul class="ul01 clearfix">
								<li class="mgr0"><a href="/weather/images/rader_qpf.jsp" class="addon">초단기 강수예측</a></li>
							</ul>
						</li>
						<li><a href="/weather/images/analysischart.jsp" class="addon">일기도</a>
						  <ul>
							<li><a href="/weather/images/analysischart.jsp">분석일기도</a></li>
							<li><a href="/weather/images/forecastchart.jsp">육상예상일기도</a></li>
							<li><a href="/weather/images/wavemodel_r3.jsp">해상예상일기도</a></li>
							<li><a href="/weather/images/expertchart.jsp">전문가용일기도</a></li>
						  </ul>
						</li>
						<li><a href="/weather/home/earth/index.jsp" target="_blank">비주얼맵</a></li>
					  </ul>
					</li>
					<li class="div-9"><a href="/mini/marine/marine_integrate.jsp">바다날씨</a>
					  <ul>
						<li style="height: 210px;"><a href="/mini/marine/marine_integrate.jsp" class="addon">현재바다날씨</a>
						  <ul>
							<li><a href="/mini/marine/marine_integrate.jsp">해양기상부이</a></li>
							<li><a href="/mini/marine/marine_beacon.jsp">국내등표</a></li>
							<li><a href="/mini/marine/marine_buoy_cosmos.jsp">파고부이</a></li>
							<li><a href="/mini/marine/marine_asia.jsp">아시아연안관측실황</a></li>
							<li><a href="/mini/marine/marine_onshorewind.jsp">위성영상</a></li>
						  </ul>
						</li>
						<li style="height: 210px;"><a href="/mini/marine/marine_daily.jsp" class="addon">해상예보</a>
						  <ul>
							<li><a href="/mini/marine/marine_daily.jsp">일일예보</a></li>
							<li><a href="/mini/marine/marine_mid-term.jsp">중기예보(10일예보)</a></li>
							<li><a href="/mini/marine/marine_zone_rwwsst.jsp">해구별 예측정보</a></li>
						  </ul>
						</li>
						<li style="height: 210px;">
						  <a href="/mini/marine/wavemodel_r3.jsp" class="addon">해상수치예측일기도</a>
						  <ul>
							<li><a href="/mini/marine/wavemodel_r3.jsp">파랑</a></li>
							<li><a href="/mini/marine/stormsurge.jsp">폭풍해일</a></li>
							<li><a href="/mini/marine/roms_crnt.jsp">해양순환</a></li>
							<li><a href="/mini/marine/marine_index_icing.jsp">해양지수</a></li>
							<li><a href="/mini/marine/marine_route.jsp">항로</a></li>
						  </ul>
						</li>
						<li style="height: 210px;"><a href="/mini/marine/marine_fax04.jsp" class="addon">해양기상방송<br />(일기도 FAX방송)</a>
						  <ul>
							<li><a href="/mini/marine/marine_fax04.jsp">개요</a></li>
							<li><a href="/mini/marine/marine_fax02.jsp">방송내용 및 제원</a></li>
							<li><a href="/mini/marine/marine_fax03.jsp">방송시간표</a></li>
							<li><a href="/mini/marine/marine_fax01.jsp">세계주요지역 기상방송센터</a></li>
						  </ul>
						</li>
						<li style="height: 210px;"><a href="/mini/marine/marine_summary.jsp" class="addon">월별 해양기상도</a>
						  <ul>
							<li><a href="/mini/marine/marine_summary.jsp">개요</a></li>
							<li><a href="/mini/marine/marine_eastasia.jsp">동아시아</a></li>
							<li><a href="/mini/marine/marine_northpacific.jsp">태평양</a></li>
						  </ul>
						</li>
						<li style="height: 210px;"><a href="/mini/marine/marine_vos01.jsp" class="addon">관측지원선박(VOS)제도</a>
						  <ul>
							<li><a href="/mini/marine/marine_vos01.jsp">소개</a></li>
							<li><a href="/mini/marine/marine_shipobserv.jsp">선박관측자료</a></li>
							<li><a href="/mini/marine/marine_vos02.jsp">선박관측 전문해설</a></li>
							<li><a href="/mini/marine/marine_vos03.jsp">항만기상관 현황</a></li>
							<li><a href="/mini/marine/marine_vos04.jsp">관측지원선박 목록</a></li>
						  </ul>
						</li>
					  </ul>
					</li>
					<li class="div-9"><a href="/weather/typoon/report.jsp">태풍</a>
					  <ul class="active">
						<li style="height: 146px;"><a href="/weather/typoon/report.jsp" class="addon">태풍정보</a>
						  <ul>
							<li><a href="/weather/typoon/report.jsp">통보문</a></li>
							<li><a href="/weather/typoon/detail.jsp">상세정보</a></li>
							<li><a href="/weather/typoon/prediction.jsp">모델예측</a></li>
						  </ul>
						</li>
						<li style="height: 146px;"><a href="/weather/typoon/typhoon_06_02.jsp" class="addon">참고정보</a>
						  <ul>
							<li style="border-right: 1px solid #e5e5e5;"><a href="/weather/typoon/typhoon_06_02.jsp">발생 감시</a></li>
							<li style="border-right: 1px solid #e5e5e5;"><a href="/weather/typoon/statistic.jsp">발생 통계</a></li>
							<li style="position: absolute; left: 158px; top: 36px;"><a href="/weather/typoon/typhoon_06_01.jsp">태풍 찾아보기</a></li>
							<li style="position: absolute; left: 158px; top: 72px;"><a href="/weather/typoon/knowledge_01.jsp">기본 지식</a></li>
						  </ul>
						</li>
					  </ul>
					</li>
					<li class="div-9"><a href="/weather/asiandust/density.jsp">황사</a>
					  <ul>
						<li style="height:57px;margin-bottom: 10px;"><a href="/weather/asiandust/density.jsp">황사/부유분진<br />관측값</a></li>
						<li style="height:57px;margin-bottom: 10px;"><a href="/weather/asiandust/graph.jsp">황사/부유분진<br />관측 그래프</a></li>
						<li style="height:57px;margin-bottom: 10px; border: 0;"><a href="/weather/asiandust/prediction.jsp">모델예측</a></li>
						<li style="height:57px;"><a href="/weather/asiandust/chart.jsp">지상일기도</a></li>
						<li style="height:57px;"><a href="/weather/asiandust/observday.jsp">황사관측일수</a></li>
					  </ul>
					</li>
					<li class="div-9"><a href="/weather/earthquake_volcano/report.jsp">지진 · 화산</a>
					  <ul>
						<li style="height: 168px;"><a href="/weather/earthquake_volcano/report.jsp">발표정보</a></li>
						<li style="height: 168px;"><a href="/weather/earthquake_volcano/domesticlist.jsp" class="addon">지진</a>
						  <ul>
							<li style="border-right: 1px solid #e5e5e5;"><a href="/weather/earthquake_volcano/domesticlist.jsp">국내지진 목록</a></li>
							<li style=" border-right: 1px solid #e5e5e5;"><a href="/weather/earthquake_volcano/internationallist.jsp">국외지진 목록</a></li>
							<li style=" border-right: 1px solid #e5e5e5;"><a href="/weather/earthquake_volcano/domestictrend.jsp">국내지진 발생추이</a></li>
						  </ul>
						</li>
						<li style="height: 168px;"><a class="addon">&nbsp;</a>
						  <ul>
							<li style=" border-right: 1px solid #e5e5e5;"><a href="/weather/earthquake_volcano/scalelist.jsp">국내지진 규모별순위</a></li>
							<li style=" border-right: 1px solid #e5e5e5;"><a href="/weather/earthquake_volcano/major_912.jsp">주요 지진</a></li>
						  </ul>
						</li>
						<li style="height: 168px;"><a href="/weather/earthquake_volcano/tidalwave_02.jsp" class="addon">지진해일</a>
						  <ul class="clearfix">
							<li><a href="/weather/earthquake_volcano/tidalwave_02.jsp">과거 지진해일<br />사례</a></li>
						  </ul>
						</li>
						<li style="height: 168px;"><a href="/weather/earthquake_volcano/volcano_01.jsp" class="addon">화산</a>
							<ul>
						 	  <li><a href="/weather/earthquake_volcano/volcano_02_1.jsp">과거 화산 사례</a></li>
							  <li><a href="/weather/earthquake_volcano/volcano_03.jsp">화산재해 유형</a></li>
							</ul>
					    </li>
						<li style="height: 168px;"><a href="/weather/earthquake_volcano/evacuation_procedure.jsp" class="addon">교육·홍보</a>
						  <ul>
							<li><a href="/weather/earthquake_volcano/evacuation_procedure.jsp">지진·화산 대피요령</a></li>
							<li><a href="/weather/earthquake_volcano/earthquakemovie.jsp">지진·화산 홍보물</a></li>
							<li><a href="/weather/earthquake_volcano/faq.jsp">FAQ</a></li>
						  </ul>
						</li>
					  </ul>
					</li>
					<li class="div-9"><a href="/weather/observation/currentweather.jsp">관측자료</a>
					  <ul class="active">
						<li><a href="/weather/observation/currentweather.jsp" class="addon">지상관측자료</a>
						  <ul>
							<li><a href="/weather/observation/currentweather.jsp">도시별 현재날씨</a></li>
							<li><a href="/weather/observation/dashboard.jsp">날씨상황판</a></li>
							<li><a href="/weather/observation/aws_table_popup.jsp" target="_blank" title="새창열림">지역별상세관측자료(AWS)<i>새창</i></a></li>
							<li><a href="/weather/climate/past_cal.jsp">과거자료</a></li>
						  </ul>
						</li>
						<li><a href="http://web.kma.go.kr/weather/observation/flower_photo.jsp" class="addon">계절관측자료</a>
						  <ul>
							<li><a href="http://web.kma.go.kr/weather/observation/flower_photo.jsp">봄꽃개화현황<br />(벚꽃,철쭉)</a></li>
							<li><a href="http://web.kma.go.kr/weather/observation/maple_photo.jsp">유명산 단풍현황</a></li>
						  </ul>
						</li>
						<li><a href="/weather/observation/marine_buoy.jsp" class="addon">바다관측자료</a>
						  <ul>
							<li><a href="/weather/observation/marine_buoy.jsp">국내부이</a></li>
							<li><a href="/weather/observation/marine_buoy_cosmos.jsp">파고부이</a></li>
							<li><a href="/weather/observation/marine_beacon.jsp">국내등표</a></li>
						  </ul>
						</li>
					  </ul>
					</li>
					<li class="div-9 left-popup"><a href="/weather/climate/average_south.jsp">기후자료</a>
					  <ul>
						<li><a href="/weather/climate/average_south.jsp" class="addon">국내기후자료</a>
						  <ul>
							<li><a href="/weather/climate/average_south.jsp">우리나라기후</a></li>
							<li><a href="/weather/climate/climate_link_guide.jsp">기후자료제공안내</a></li>
						  </ul>
						</li>
						<li><a href="/weather/climate/wind_solar_guide.jsp">풍력·태양광기상자원지도 안내</a></li>
					  </ul>
					</li>
					<li class="div-9 left-popup"><a href="/weather/lifenindustry/life_jisu.jsp">생활과산업</a>
					  <ul>
						<li><a href="/weather/lifenindustry/life_jisu.jsp">생활기상정보</a></li>
						<li><a href="/weather/lifenindustry/disaster_01.jsp" class="addon">기상재해통계</a>
							  <ul>
								<li><a href="/weather/lifenindustry/disaster_01.jsp">기상재해현황</a></li>
								<li><a href="/weather/lifenindustry/disaster_03.jsp">기상재해순위</a></li>
								<li><a href="/weather/lifenindustry/disaster_04.jsp">태풍피해순위</a></li>
							  </ul>
						</li>
						<li><a href="/weather/world/cityweather.jsp">세계날씨</a>
						</li>
						<li><a href="/weather/lifenindustry/sevice_website.jsp" class="addon">서비스</a>
							<ul>
							  <li><a href="/weather/lifenindustry/sevice_website.jsp">인터넷</a></li>
							  <li><a href="/weather/lifenindustry/sevice_use.jsp" onblur="$('.menu-more-close').trigger('focus');">모바일</a></li>
							</ul>
						  </li>
					  </ul>
					</li>
				  </ul>
			    </div>
		      </div>
            </div>
		  </div>
		<div class="menu-all-bg" ></div>
      </div>
      <hr>
      <div id="visual-map" class="head-map" style="visibility: visible;">
		<iframe data-src="earth/index.jsp#current/wind/surface/level/orthographic=-233.64,32.19,966" src="about:blank" style="width: 100%; height: 400px;" height="400" title="Nullschool wind map"></iframe>
      </div>
      <!-- content :Start -->
      <div id="container_weather_main2">
        <div id="wrap_content" class="weather_main">
			
          <div id="content">
            <div class="weather_main_content hei572">
              <div class="weather_main_content_left">
                <div id="weather_info2">
				  <div class="main_weather_area_bg"><div class="main_weather_area_bg_head"></div></div>
                  <div id="weather_title">					  
                      <h3 class="first-tab w117"><a href="#">어제날씨</a></h3>
					  <div id="weather_area0" class="main_weather_area" style="overflow:hidden; display:none;">
						<!--[if IE]>
						  <iframe src="about:blank" name="iframe_weather_panel0" id="iframe_weather_panel0" width="524" height="625" frameborder="0" title="어제날씨"></iframe>
						<![endif]-->
						<!--[if !IE]>-->
						  <iframe src="about:blank" name="iframe_weather_panel0" id="iframe_weather_panel0" style="width: 100%; height:100%;" title="어제날씨"></iframe>
						<!-- <![endif]-->
					  </div>
                      <h3 class="w117"><a href="#">1시간 관측</a></h3>
					  <div id="weather_area1" class="main_weather_area" style="overflow: hidden; display: none;">
                        <!--[if IE]>
                          <iframe src="about:blank" name="iframe_weather_panel1" id="iframe_weather_panel1" width="524" height="625" frameborder="0" title="현재날씨"></iframe>
                        <![endif]-->
                        <!--[if !IE]>-->
                          <iframe src="about:blank" name="iframe_weather_panel1" id="iframe_weather_panel1" style="width: 100%; height:100%;" title="정시관측"></iframe>
                        <!-- <![endif]-->
					  </div>
                      <h3 class="w117"><a href="#">현재날씨</a></h3>
                      <div id="weather_area2" class="main_weather_area" style="overflow:hidden; display:none;">
                        <!--[if IE]>
                          <iframe src="about:blank" name="iframe_weather_pane2" id="iframe_weather_panel0" width="524" height="625" frameborder="0" title="어제날씨"></iframe>
                        <![endif]-->
                        <!--[if !IE]>-->
                          <iframe src="about:blank" name="iframe_weather_panel2" id="iframe_weather_panel2" style="width: 100%; height:100%;" title="현재날씨"></iframe>
                          <!-- <![endif]-->
					  </div>
                      <h3 class="w117"><a href="#">예보</a></h3>
                      <div id="weather_area3" class="main_weather_area" style="overflow:hidden; display:none;">
                        <!--[if IE]>
                          <iframe src="about:blank" name="iframe_weather_panel3" id="iframe_weather_panel2" width="524" height="625" frameborder="0" title="오늘&middot;내일 예보"></iframe>
                        <![endif]-->
                        <!--[if !IE]>-->
                          <iframe src="about:blank" name="iframe_weather_panel3" id="iframe_weather_panel3" style="width: 100%; height:100%;" title="오늘·내일 예보"></iframe>
                         <!-- <![endif]-->
				       </div>
					  
                  </div>
                </div>
              </div>
              <div class="weather_main_content_right">
				
                
				<div class="m-tab-box">
                  <div class="m-tab width33s">
                    <ul class="clearfix" style="display: block;">
						<li><a href="#radar" class="on" id="m-tab-cont04">강수예측</a></li>
					  <li><a href="#all"  id="m-tab-cont01" class="">종합영상</a></li>                      
                      <li><a href="#sate"  id="m-tab-cont02" class="">위성</a></li>
                      <!--<li><a href="#lgt" id="m-tab-cont03" class="">낙뢰</a></li>-->
					  <li><a class="earth tab-ignore-select" onclick="window.open('/weather/home/earth/index.jsp'); return false;" title="새창 열림">비주얼맵</a></li>
                    </ul>
                  </div>
				  <div id="home-rdr-player" class="m-tab-cont m-tab-cont04" style="display: block;">
				  <h2 class="blind">강수예측</h2>
					<div id="slider001" class="flexslider">						
                      <ul class="slides">
						
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 2;" class="flex-active-slide"><a href="/weather/images/rader_qpf.jsp" title="상세 강수예측영상으로 이동합니다."><img src="/repositary/image/rdr/img/qpr_202002141250.gif" data-src="/repositary/image/rdr/img/qpr_202002141250.gif" alt="강수예측영상" draggable="false"></a></li>	
							
							
						
                      </ul>					  
					  <ul class="flex-direction-nav">
					  	<!--
						<li><a class="flex-first" href="#">처음으로</a></li>
						<li><a class="flex-prev" href="#">이전</a></li>
						<li class="flex-pauseplay-wrap"><div class="flex-pauseplay"><a href="javascript:void(0);" class="flex-play" style="text-indent: -99990px;">시작</a></div></li>
						<li><a class="flex-next" href="#">다음</a></li>
						<li><a class="flex-last" href="#">마지막으로</a></li>
						-->
					  </ul>
                    </div>
                  </div>
				  <div id="home-all-player" class="m-tab-cont m-tab-cont01" style="display: none;">
				  <h2 class="blind">종합영상</h2>
                    <div id="slider004" class="flexslider">
                      <ul class="slides">
						
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 2;" class="flex-active-slide"><a href="/weather/images/rader_sat_lgt.jsp" title="상세 종합영상으로 이동합니다."><img src="/repositary/image/rdr/img/RDR_SAT_LGT_202002141305.gif" data-src="/repositary/image/rdr/img/RDR_SAT_LGT_202002141305.gif" alt="종합영상" draggable="false"></a></li>	
							
							
						
                      </ul>
					  <ul class="flex-direction-nav">
					  	<!--
						<li><a class="flex-first" href="#">처음으로</a></li>
						<li><a class="flex-prev" href="#">이전</a></li>
						<li class="flex-pauseplay-wrap"><div class="flex-pauseplay"><a href="javascript:void(0);" class="flex-play" style="text-indent: -99990px;">시작</a></div></li>
						<li><a class="flex-next" href="#">다음</a></li>
						<li><a class="flex-last" href="#">마지막으로</a></li>
						-->
					  </ul>
                    </div>
                  </div>                  
                  <div id="home-sat-player" class="m-tab-cont m-tab-cont02" style="display: none;">
		    <h2 class="blind">위성</h2>
                    <div id="slider002" class="flexslider" style="">
                      <ul class="slides">
                        
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/satellite_gk2a.jsp" title="상세 위성영상으로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140310.thn.png" alt="GK2A 주야간 합성영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/satellite_gk2a.jsp" title="상세 위성영상으로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140320.thn.png" alt="GK2A 주야간 합성영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/satellite_gk2a.jsp" title="상세 위성영상으로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140330.thn.png" alt="GK2A 주야간 합성영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/satellite_gk2a.jsp" title="상세 위성영상으로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140340.thn.png" alt="GK2A 주야간 합성영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/satellite_gk2a.jsp" title="상세 위성영상으로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140350.thn.png" alt="GK2A 주야간 합성영상" draggable="false"></a></li>	
							
						
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 2;" class="flex-active-slide"><a href="/weather/images/satellite_gk2a.jsp" title="상세 위성영상으로 이동합니다."><img src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140400.thn.png" data-src="/repositary/image/sat/gk2a/KO/gk2a_ami_le1b_rgb-daynight_ko020lc_202002140400.thn.png" alt="GK2A 주야간 합성영상" draggable="false"></a></li>	
							
							
						
                      </ul>
					  <ul class="flex-direction-nav">
						<li><a class="flex-first" href="#">처음으로</a></li>
						<li><a class="flex-prev" href="#">이전</a></li>
						<li class="flex-pauseplay-wrap"><div class="flex-pauseplay"><a href="javascript:void(0);" class="flex-play" style="text-indent: -99990px;">시작</a></div></li>
						<li><a class="flex-next" href="#">다음</a></li>
						<li><a class="flex-last" href="#">마지막으로</a></li>
					  </ul>
                    </div>
                  </div>
				  <!--
                  <div id="home-lgt-player" class="m-tab-cont m-tab-cont03" style="display: none;">
                    <div id="slider003" class="flexslider" style="">
                      <ul class="slides">
                        
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/lightning.jsp" title="상세 낙뢰영상 페이지로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/lgt/img/lgt_kma_202002141240.png" alt=" 낙뢰영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/lightning.jsp" title="상세 낙뢰영상 페이지로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/lgt/img/lgt_kma_202002141245.png" alt=" 낙뢰영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/lightning.jsp" title="상세 낙뢰영상 페이지로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/lgt/img/lgt_kma_202002141250.png" alt=" 낙뢰영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/lightning.jsp" title="상세 낙뢰영상 페이지로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/lgt/img/lgt_kma_202002141255.png" alt=" 낙뢰영상" draggable="false"></a></li>	
							
						
							
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 1;"><a href="/weather/images/lightning.jsp" title="상세 낙뢰영상 페이지로 이동합니다."><img src="data:image/gif;base64,R0lG0DlhAQABAAD/ACwAAAAAAQABAAACADs=" data-src="/repositary/image/lgt/img/lgt_kma_202002141300.png" alt=" 낙뢰영상" draggable="false"></a></li>	
							
						
							
								<li style="display: block; width: 100%; float: left; margin-right: -100%; position: relative; opacity: 1; z-index: 2;" class="flex-active-slide"><a href="/weather/images/lightning.jsp" title="상세 낙뢰영상 페이지로 이동합니다."><img src="/repositary/image/lgt/img/lgt_kma_202002141305.png" data-src="/repositary/image/lgt/img/lgt_kma_202002141305.png" alt="낙뢰영상" draggable="false"></a></li>	
							
							
						
                      </ul>
					  <ul class="flex-direction-nav">
						<li><a class="flex-first" href="#">처음으로</a></li>
						<li><a class="flex-prev" href="#">이전</a></li>
						<li class="flex-pauseplay-wrap"><div class="flex-pauseplay"><a href="javascript:void(0);" class="flex-play" style="text-indent: -99990px;">시작</a></div></li>
						<li><a class="flex-next" href="#">다음</a></li>
						<li><a class="flex-last" href="#">마지막으로</a></li>
					  </ul>
                    </div>
                  </div>
				  -->
                </div>
              </div>
            </div>
            <div class="weather_main_content hei410">
              <div class="weather_main_content_left" >
				
                
				
				
				<div class="inform-top">
                  <div class="t-title01 clearfix">
                    <p class="al fl">날씨해설</p>
					<p class="info_date">2020년 2월 14일(금) 오전 04:10 발표</p>
                  </div>
                  <div class="t-text01">
					<p class="wrn-info-content" tabindex="0">
						<strong>&lt;  날씨 현황  &gt;</strong><br />○ 현재(04시), 전국에 높은 구름이 많이 끼어 있고, 제주도는 흐린 날씨를 보이고 있습니다. 한편, 내륙에는 가시거리 200m 이하의 짙은 안개가 낀 곳이 많습니다.<br /><br />* 주요지점 가시거리 현황(14일 04시 현재, 단위: m)<br />- 이천 60 예산 80 대관령(평창) 90 김제 110 용인 120 여주 150 대곡(진주) 160 화서(상주) 200<br /><br /><strong>&lt;  날씨 전망(14일~16일)  &gt;</strong><br />○ (기압계) 오늘(14일)은 중국 북동지방에 위치한 고기압의 가장자리에 들겠으나, 제주도는 아침까지 제주도남쪽해상을 지나는 기압골의 영향을 받겠습니다. 내일(15일)은 동해상에 위치한 고기압의 가장자리에 들다가 북서쪽에서 다가오는 기압골의 영향을 차차 받겠습니다. 모레(16일)는 기압골의 영향을 받다가 중국 북부지방에서 확장하는 찬 대륙고기압의 가장자리에 들겠습니다.<br /><br />○ (하늘 상태) 오늘(14일)은 전국이 가끔 구름많다가 낮(09시)부터 맑아지겠으나, 강원영동은 밤(18시)부터 흐려지겠습니다. 내일(15일)은 전국이 가끔 구름많다가 오후(12시)부터 차차 흐려지겠고, 모레(16일)는 전국이 흐리겠습니다.<br /><br />○ (기압골에 의한 강수) 오늘 아침(09시)까지 제주도에는 비가 조금 오는 곳이 있겠습니다. 또한, 내일(15일) 밤(18~24시) 중부지방과 전라도에 비가 시작되어 모레(16일)는 전국에 비 또는 눈이 오다가 오전(12시)에 대부분 그치겠습니다.<br /><br />* 예상 강수량<br />- (14일 아침(09시)까지) 제주도: 5mm 미만<br />- (15일) 강원영동: 5~20mm, 중부지방(강원영동 제외), 전라도, 경북동해안: 5mm 내외<br /><br />- (많은 눈, 변동성) 모레(16일)는 오전까지 전국에 비 또는 눈이 내리겠으며, 중부지방, 경북북부와 경북서부내륙, 전라도를 중심으로 다소 많은 눈이 내릴 가능성이 있겠으니, 비닐하우스 등 시설물 관리에 유의하기 바라고, 내린 눈이 쌓이거나 얼어 도로가 매우 미끄럽겠으니 교통안전에 각별히 유의하기 바랍니다. 한편, 모레 오후에 소강상태를 보이다가 밤에 중부지방과 전라도를 중심으로 다시 눈이 내리기 시작해서 17일까지 이어지면서 많은 눈이 내릴 가능성이 있겠으니, 앞으로 발표되는 기상정보를 참고하기 바랍니다. <br /><br />* 16일 예상 강수량과 적설량은 오늘(14일) 11시 발표 예정인 단기예보를 참고하기 바랍니다.<br /><br />○ (동풍에 의한 강수) 오늘(14일) 밤(18~24시) 강원영동에는 산발적으로 빗방울이 떨어지는 곳이 있겠고, 내일(15일) 새벽(00시)부터 강원영동, 아침(06시)부터 경북동해안에는 가끔 비(강원산지는 비 또는 눈)가 오겠습니다.<br /><br />○ (한기 이류에 의한 강수) 모레(16일) 늦은 오후(15시)부터 밤(24시) 사이 한기 이류에 의해 서해상에서 해기차로 형성된 눈구름대가 내륙으로 들어오면서 중부지방(강원영동 제외)과 전라도, 경상서부내륙, 제주도에는 눈이 오는 곳이 있겠습니다.<br /><br />* 해기차: 대기 하층(약 1.5km 상공)과 해수면과의 온도차(대기 하층 -12도 내외, 해수면 온도 6~8도, 해기차 약 18~20도)로, 차이가 클수록 구름대가 발달함.<br /><br />○ (기온)<br />- 오늘(14일) 낮 기온은 12~20도(어제 8~18도, 평년 4~10도)가 되겠습니다.<br />- 내일(15일) 아침 기온은 1~9도(평년 -8~2도), 낮 기온은 8~19도(평년 4~11도)가 되겠습니다.<br />- 모레(16일) 아침 기온은 0~10도(평년 -8~2도), 낮 기온은 0~11도(평년 4~10도)가 되겠습니다.<br /><br />- 내일(15일)까지 기온은 평년보다 4~9도 가량 높겠고, 오늘은 남부지방, 내일은 서쪽지방을 중심으로 낮 기온이 15도 이상 오르면서 매우 포근하겠습니다. 한편, 모레(16일) 새벽부터는 북서쪽에서 찬 공기가 남하하면서 기온이 큰 폭으로 떨어지고 바람이 강하게 불어 체감온도도 낮아 추워지겠으니 건강관리에 유의하기 바라며 앞으로 발표되는 기상정보를 참고하기 바랍니다. <br /><br /><strong>&lt;  위험기상 및 유의사항  &gt;</strong><br />○ (안개) 어제(13일) 새벽까지 내린 비로 지표가 습한 가운데, 밤 사이 복사냉각에 의해 기온이 내려가면서 오늘(14일) 오전까지 전국에 가시거리 200m 이하의 짙은 안개가 끼는 곳이 많겠으니, 교통안전에 각별히 유의하기 바랍니다. 또한 오늘 낮부터 밤 사이에도 박무나 연무가 끼는 곳이 있겠으니 건강관리에 유의하기 바랍니다.<br /><br />- 짙은 안개로 항공기 운항에 차질이 있을 수 있으니 이용객들은 사전에 운항정보를 확인하기 바랍니다.<br /><br />○ (시정, 결빙) 오늘과 내일 비가 오는 지역과 모레 비나 눈이 내리는 지역에서는 가시거리가 짧은 곳이 있겠고, 특히 모레(16일)는 내리는 비나 눈이 얼거나 내린 눈이 쌓이면서 도로가 매우 미끄럽고 이면도로 등에도 쌓이는 곳이 있겠으니 교통안전과 보행자 안전에 각별히 유의하기 바라며, 산행 시 안전사고에도 각별히 유의하기 바랍니다.<br /><br />○ (강풍) 모레(16일)는 해안과 제주도를 중심으로 바람이 35~60km/h(10~16m/s)로 매우 강하게 불고 내륙에도 강하게 부는 곳이 있겠으니 시설물 관리와 안전사고에 각별히 유의하기 바랍니다.<br /><br />○ (해상) 내일(15일)부터 서해먼바다, 모레(16일)는 그 밖의 해상에도 바람이 35~65km/h(10~18m/s)로 차차 매우 강하게 불고, 물결이 2~5m로 차차 매우 높아지겠으니 항해나 조업하는 선박은 유의하기 바랍니다. 한편 내일과 모레 풍랑특보가 대부분 해상에 확대.강화될 수 있으니 앞으로 발표되는 기상정보를 참고하기 바랍니다. 또한, 서해상과 남해상, 제주도전해상에는 모레(16일)까지 안개가 짙게 끼는 곳이 있겠으니, 해상 안전사고에도 각별히 유의하기 바랍니다.<br /><br />○ (너울) 모레(16일) 서해안과 제주도해안, 강원동해안에는 너울에 의한 매우 높은 물결이 해안도로나 방파제를 넘는 곳이 있겠으니, 해안가 안전사고에 각별히 유의하기 바랍니다.
						
					</p>
					<a href="/weather/warning/report.jsp?prevStn=108&reportId=cmt:202002140410:27" class="button01">자세히보기</a>
                  </div>
                </div>
				
              </div>
              <div class="weather_main_content_right" >
				
                <div class="wmfv" id="weather-home-dong-selector">
                  <form name="fav" action="main.jsp" class="clearfix">
                    <div class="select-box">
                      <a href="#select" class="select-text" data-name="WIDE" data-value="">-시/도-</a>
                      <ul class="select-option">
                      </ul>
                    </div>
                    <div class="select-box">
                      <a href="#select" class="select-text" data-name="CITY" data-value="">-구/군-</a>
                      <ul class="select-option">
                      </ul>
                    </div>
                    <div class="select-box">
                      <a href="#select" class="select-text" data-name="DONG" data-value="">-읍/면/동-</a>
                      <ul class="select-option">
                      </ul>
                    </div>
                    <div class="style01">
				<a href="#fav-view" class="style01-sm" id="btnFavView"><span>보기</span></a><a href="#fav-add" id="btnFavAdd"><span>관심지역등록</span></a>
					</div>
					</form>
					
					
						<div class="layor_area3" id="weather-home-favorite-manage" style="display: none;" tabindex="0">
							<h6><img src="/home/images/h6_title_area.gif" alt="관심지역" style="margin-top:2px;" /></h6>
							<div class="area_form">
								<div class="address-list">
									<ul></ul>
								</div>
								<div class="address-btn">
									<ul class="clearfix">
										<li><a href="#dong" data-addr-type="DONG" class="address-btn01" >동(읍/면)</a></li>
										<li><a href="#load" data-addr-type="LOAD" class="address-btn02">도로명주소</a></li>
									</ul>
								</div>

								<div class="address-btn01-box">
									<p class="base2" style="height:27px !important;">
										<label for="selectedLocalName" class="hide">설정한 지역</label><input type="text" class="inp_text3" title="설정 중인 지역 주소" id="selectedLocalName" value="설정한 지역이 나타납니다." readonly="readonly" />
									</p>
									
									<div class="div1" style="width:100%;height:261px; overflow-y:auto; margin-top: 18px;">
										<div class="local-body"></div>										
									</div>
									<div class="bottom2">
										<p>※ 동네예보는 동사무소를 중심으로 하는 행정구역, 행정동으로 서비스 됩니다.</p>
										<div class="local-bottom" style="display:none">
											<ul>
												<li><a href="#fav-add" data-action="add" class="add-to-favorite-btn">관심지역추가</a></li>
												<li><a href="#fav-view" data-action="view">예보보기</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<p class="close">
								<a href="#close"><img src="/home/images/selectdiv-close2.png" style="margin-top:6px;margin-right: 7px;" alt="닫기" /></a>
							</p>
						</div>

				</div>
				
                <!-- 동네예보[START] -->
				 
                <div>
                  <div class="weather_townforecast" id="weather-home-favorite-dropdown">
                    <div class="weather_townforecast_top">
                      <div class="town3">
                        <form class="town_select" action="#" method="get" name="setinfoForm">
                            <h4 class="hid"><label for="town_select">관심지역</label></h4>
                            <!-- <select id="town_select" name="town_select">
                              <option value="1159068000">서울특별시 동작구 신대방제2동</option>
						    </select>-->

							<select id="town_select" name="town_select" style="width: 345px;">
                              <option value="1159068000">서울특별시 동작구 신대방제2동</option>
						    </select>
							<a href="#fav-setting" id="weather-home-favorite-open" class="home-big-btn"><span>관심지역설정</span></a>
							<a href="#fav-guide" id="weather-home-favorite-info" class="home-fav-info" title="새창열림"><span>관심지역설정 안내</span></a>
						</form> 
                      </div>
                    </div>
                  </div>
				  
				  <div id="warning_notice" class="warning_notice"><p></p></div>
                </div>
				<!-- 동네예보 실황, 초단기예보 -->
                <div id="weather-home-short-forecast">
					
                </div>
              </div>
            </div>
            <div class="weather_main_content no-bd">
              <div class="board-tab">
                <div class="tab-box width25s">
                  <ul class="clearfix" style=" margin-left:2px;">
                    <li>
                      <a href="#dong-forecast" id="tab-dong-forecast" class="on">동네예보</a>
			  <div class="warning-btn posi01"><a href="#dong-forecast-info" class="info-window" data-info-key="home01"><img src="/home/images/warning-img01.gif" alt="주의사항 버튼"></a></div>
			  <div class="date-zone" style="opacity:1; z-index: 2;"></div>
			  <div class="tab-box-cont" id="weather-home-dong-forecast" style="z-index:99;">
				
			  </div>
			  
                    </li>
                    <li>
                      <a href="#midterm-forecast" id="tab-mid-forecast">중기예보</a>
			  <div class="warning-btn posi02"><a href="#midterm-forecast-info" class="info-window" data-info-key="home02"><img src="/home/images/warning-img01.gif" alt="주의사항 버튼"></a></div>
			  <div class="date-zone" style="opacity:0; z-index: 2;"></div>
			  <div class="tab-box-cont" id="weather-home-mid-forecast"></div>
			  
                    </li>
                    <li>
                      <a href="#sea-forecast" id="tab-sea-forecast">바다예보</a>
		      <div class="warning-btn posi03"><a href="#sea-forecast-info" class="info-window" data-info-key="home03"><img src="./home/images/warning-img01.gif" alt="주의사항 버튼"></a></div>
		      <div class="date-zone" style="opacity:0; z-index: 2;"></div>
                      <div class="tab-box-cont">
                        <div class="tab03">
                          <div class="in-wid100p clearfix" id="weather-home-sea-area-selector">
                            <div class="select-box2">
                              <a href="#select" class="select-text2" data-name="TOP" data-value="">서해중부</a>
                              <ul class="select-option2">

                              </ul>
                            </div>
                            <div class="select-box2">
                              <a href="#select" class="select-text2" data-name="MID" data-value="">서해중부 앞바다</a>
                              <ul class="select-option2 wid340">

                              </ul>
                            </div>
                            <div class="select-box2">
                              <a href="#select" class="select-text2" data-name="BTM" data-value="">경기북구 앞바다</a>
                              <ul class="select-option2 wid340">

                              </ul>
                            </div>
                            <div class="select-box-wrap"><a href="#save-sea-area" class="button01" id="reg-sea-area" style="background-color: #4593dd;">지역설정저장</a></div>
                          </div>
							  <div id="weather-home-sea-forecast">
								
                          </div>
                        </div>
                      </div>
			      
                    </li>
                  </ul>
                 </div>
              </div>
            </div>
            <div class="weather_main_content no-bd mt28">
              <div class="weather_main_content_left no-float">
                <div class="linkzone">
                  <ul>
                    <li><a href="/weather/observation/currentweather.jsp"><img src="./home/images/linkzone01.jpg" alt="현재날씨"><p>현재날씨</p></a></li>
                    <li><a href="/weather/observation/past_cal.jsp"><img src="./home/images/linkzone02.jpg" alt="지난날씨"><p>지난날씨</p></a></li>
                    <li><a href="/weather/forecast/weekend.jsp"><img src="./home/images/linkzone03.jpg" alt="주말날씨"><p>주말날씨</p></a></li>
                    <li><a href="/mini/marine/main.jsp"><img src="./home/images/linkzone04.jpg" alt="바다날씨"><p>바다날씨</p></a></li>
                    <li><a href="/weather/forecast/mountain_01.jsp"><img src="./home/images/linkzone05.jpg" alt="산악날씨"><p>산악날씨</p></a></li>
                    <li><a href="http://amo.kma.go.kr/new/html/main/main.jsp" target="_blank" title="새창으로 열립니다"><img src="./home/images/linkzone06.jpg" alt="공항날씨"><p>공항날씨</p></a></li>
                    <li><a href="/weather/world/cityweather.jsp"><img src="./home/images/linkzone07.jpg" alt="세계날씨"><p>세계날씨</p></a></li>
                    <li class="last"><a href="/weather/lifenindustry/life_jisu.jsp"><img src="./home/images/linkzone08.jpg" alt="생활기상지수"><p>생활기상지수</p></a></li>
                  </ul>
                </div>
                <div class="k-row w-main-btnzone">
                  <ul class="clearfix">
                    <li><a href="http://www.khoa.go.kr/swtc/main.do" target="_blank" title="새창열림" class="bg01">밀물썰물정보</a></li>
                    <li><a href="https://astro.kasi.re.kr/life/pageView/6" target="_blank" title="새창열림" class="bg02 style01">해와달이<br />뜨고지는시간</a></li>
                    <!--<li><a href="/weather/special/sunrise_list.jsp" target="_blank" title="새창열림" class="bg02 style01">해돋이&middot;해넘이<br/>특별기상지원</a></li>-->
                    <li><a href="http://www.climate.go.kr" target="_blank" title="새창열림" class="bg03">기후정보포털</a></li>
                    <li><a href="http://data.kma.go.kr" target="_blank" title="새창열림" class="bg06">기상자료개방포털</a></li>
                    <li><a href="http://season.kma.go.kr" target="_blank" title="새창열림" class="bg04">날씨제보</a></li>
                    <li><a href="https://www.airkorea.or.kr/web/dustForecast?pMENU_NO=113" target="_blank" title="새창열림" class="bg05 style01">에어코리아<br />대기질 예·경보</a></li>
		    <li><a href="/weather/warning/wtouchqNew.jsp" target="_blank" title="새창열림" class="bg07 style01">인터넷 기상정보<br /> 날씨ON</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- content :End -->
        <script>initSubmenuByMenuId(0, 0, 0, 0, "");</script>
        <script src="/bangjae_layer/bangjae.js?ver=2018072401"></script>
      </div>
      <hr />
      <div class="footer-bg">
        <div class="floor1"></div>
        <div class="floor2"></div>
      </div>
      <div id="footer">
        <a id="gofooter"></a>
        <div class="wrap_site_link">
          <h3 class="blind">부속사이트 안내</h3>
          <fieldset class="sitelink">
            <legend class="blind">관련사이트 링크</legend>
            <form name="sitelink1" method="get" action="/sitelink.jsp" target="_blank">
              <label for="sitelink1" class="blind">기상청소속기관 링크</label>
              <select id="sitelink1" name="link">
                <option label="기상청소속기관" value="" selected="selected">기상청소속기관</option>
					<option value="수도권기상청">수도권기상청</option>
					<option value="부산지방기상청">부산지방기상청</option>
					<option value="광주지방기상청">광주지방기상청</option>
					<option value="강원지방기상청">강원지방기상청</option>
					<option value="대전지방기상청">대전지방기상청</option>
					<option value="대구지방기상청">대구지방기상청</option>					
					<option value="제주지방기상청">제주지방기상청</option>
					<option value="전주기상지청">전주기상지청</option>
					<option value="청주기상지청">청주기상지청</option>		
					<option value="기상기후인재개발원">기상기후인재개발원</option>		
					<option value="국가기상위성센터">국가기상위성센터</option>
					<option value="기상레이더센터">기상레이더센터</option>
					<option value="국립기상과학원">국립기상과학원</option>	
					<option value="항공기상청">항공기상청</option>									
					<!--<option value="국가태풍센터">국가태풍센터</option>-->
					<option value="국가기상슈퍼컴퓨터센터">국가기상슈퍼컴퓨터센터</option>
              <input type="image" src="./home/images/btn_move2.gif" title="선택한 홈페이지로 이동 새창에서 열림" alt="이동"></form>
            <form name="sitelink2" method="get" action="/sitelink.jsp" target="_blank">
              <label for="sitelink2" class="blind">주요행정기관 바로가기</label>
              <select id="sitelink2" name="link">
                <option label="주요행정기관" value="" selected="selected">주요행정기관</option>
                <option value="청와대">청와대</option>
                <option value="국무총리실">국무총리실</option>
                <option value="감사원">감사원</option>
                <option value="국가정보원">국가정보원</option>
                <option value="방송통신위원회">방송통신위원회</option>
                <option value="국가인권위원회">국가인권위원회</option>
                <option value="공정거래위원회">공정거래위원회</option>
                <option value="금융위원회">금융위원회</option>
                <option value="국민권익위원회">국민권익위원회</option>
                <option value="국회사무처">국회사무처</option>
                <option value="" disabled="disabled">18부-----------------&gt;</option>
                <option value="기획재정부">기획재정부</option>
                <option value="과학기술정보통신부">과학기술정보통신부</option>
                <option value="교육부">교육부</option>
                <option value="외교부">외교부</option>
                <option value="통일부">통일부</option>
                <option value="법무부">법무부</option>
                <option value="국방부">국방부</option>
                <option value="행정안전부">행정안전부</option>
                <option value="문화체육관광부">문화체육관광부</option>
                <option value="농림축산식품부">농림축산식품부</option>
                <option value="산업통상자원부">산업통상자원부</option>
                <option value="보건복지부">보건복지부</option>
                <option value="환경부">환경부</option>
                <option value="고용노동부">고용노동부</option>
                <option value="여성가족부">여성가족부</option>
                <option value="국토교통부">국토교통부</option>
                <option value="해양수산부">해양수산부</option>
                <option value="중소벤처기업부">중소벤처기업부</option>
                <option value="" disabled="disabled">4처------------------&gt;</option>
                <option value="인사혁신처">인사혁신처</option>
                <option value="법제처">법제처</option>
                <option value="국가보훈처">국가보훈처</option>
                <option value="식품의약품안전처">식품의약품안전처</option>
                <option value="" disabled="disabled">17청-----------------&gt;</option>
                <option value="국세청">국세청</option>
                <option value="관세청">관세청</option>
                <option value="조달청">조달청</option>
                <option value="통계청">통계청</option>
                <option value="검찰청">검찰청</option>
                <option value="병무청">병무청</option>
                <option value="방위사업청">방위사업청</option>
                <option value="소방청">소방청</option>
                <option value="해양경찰청">해양경찰청</option>
                <option value="경찰청">경찰청</option>
                <option value="문화재청">문화재청</option>
                <option value="농촌진흥청">농촌진흥청</option>
                <option value="산림청">산림청</option>
                <option value="특허청">특허청</option>
                <option value="기상청">기상청</option>
                <option value="행정중심복합도시건설청">행정중심복합도시건설청</option>
                <option value="새만금개발청">새만금개발청</option></select>
              <input type="image" src="./home/images/btn_move2.gif" title="선택한 홈페이지로 이동 새창에서 열림" alt="이동"></form>
            <form name="sitelink3" method="get" action="/sitelink.jsp" target="_blank">
              <label for="sitelink3" class="blind">방재유관기관 바로가기</label>
              <select id="sitelink3" name="link">
                <option label="방재유관기관" value="" selected="selected">방재유관기관</option>
                <option value="서울종합방재센터">서울종합방재센터</option>
                <option value="국립재난안전연구원">국립재난안전연구원</option>
                <option value="한강홍수통제소">한강홍수통제소</option>
                <option value="중앙재난안전대책본부">중앙재난안전대책본부</option>
                <option value="대기오염도실시간공개">대기오염도실시간공개</option>
                <option value="국가수자원관리종합정보시스템">국가수자원관리종합정보시스템</option></select>
              <input type="image" src="./home/images/btn_move2.gif" title="선택한 홈페이지로 이동 새창에서 열림" alt="이동"></form>
            <form name="sitelink4" method="get" action="/sitelink.jsp" target="_blank">
              <label for="sitelink4" class="blind">외국기상청 바로가기</label>
              <select id="sitelink4" name="link">
                <option label="외국기상청" value="" selected="selected">외국기상청</option>
                <option value="미국">미국</option>
                <option value="일본">일본</option>
                <option value="중국">중국</option>
                <option value="영국">영국</option>
                <option value="프랑스">프랑스</option>
                <option value="세계기상기구WMO">세계기상기구WMO</option></select>
              <input type="image" src="./home/images/btn_move2.gif" title="선택한 홈페이지로 이동 새창에서 열림" alt="이동"></form>
            <form name="sitelink5" method="get" action="/sitelink.jsp" target="_blank" class="last">
              <label for="sitelink5" class="blind">기상관련단체 바로가기</label>
              <select name="link" id="sitelink5" class="last">
                <option label="기상관련단체" value="" selected="selected">기상관련단체</option>
                <option value="한국기상산업진흥원">한국기상산업기술원</option>
                <option value="APEC기후센터">APEC기후센터</option>
                <option value="한국형수치예보모델개발사업단">한국형수치예보모델개발사업단</option></select>
              <input type="image" src="./home/images/btn_move2.gif" title="선택한 홈페이지로 이동 새창에서 열림" alt="이동"></form>
          </fieldset>
        </div>
        <div class="footer_right link">
          <h3 class="blind">사이트 도우미</h3>
          <ul class="site_helper">
            <li><a href="http://www.kma.go.kr/global/footer/privacy.jsp" class="active">개인정보 처리방침</a></li>
            <li><a href="http://www.kma.go.kr/global/footer/siteinfo.jsp">이용안내</a></li>
            <li><a href="http://www.kma.go.kr/global/footer/copyright.jsp">저작권보호 및 정책</a></li>
            <li><a href="http://www.kma.go.kr/global/footer/accessibility.jsp">웹접근성정책</a></li>
            <li><a href="http://www.kma.go.kr/global/footer/return.jsp">홈페이지오류·건의</a></li>
            <!--<li><a href="http://www.kma.go.kr/global/footer/telephone_1.jsp">전화번호안내</a></li>-->
			<li><a href="http://www.kma.go.kr/aboutkma/organization/chart.jsp">전화번호안내</a></li>
            <li><a href="http://www.kma.go.kr/aboutkma/organization/personnel_list.jsp?schParent=1360001">부서·직원찾기</a></li>
            <li><a href="http://www.kma.go.kr/global/footer/viewer.jsp">뷰어다운로드</a></li>
          </ul>
		<a class="btn01"><img alt="OPEN 공공누리 공공저작물 자유이용허락 출처표시" src="./home/images/KOGL.jpg" /></a>
        </div>
        <div class="footer_right ml50">
          <p class="logo"><img src="/images/common/footer_logo_1.gif" alt="기상청" /></p>
          <h3 class="blind">연락처 및 저작권</h3>
          <address>
            <p>우. 07062 서울시 동작구 여의대방로16길 61 대표전화 (02)2181-0900 (평일 9:00~18:00, 야간휴일은 당직실 연결)</p>
          </address>
          <p class="copyright">본 홈페이지에 게시된 이메일 주소가 자동 수집되는 것을 거부하며, 이를 위반시 정보통신망법에 의해 처벌됨을 유념하시기 바랍니다.</p>
          <p class="copyright">Copyright ⓒ 2018 KMA. All Rights RESERVED. E-mail: webmasterkma@kma.go.kr</p>
		  <p class="mark_wa"><a href="http://www.kma.go.kr/notify/notice/list.jsp?bid=gongzi&mode=view&num=1192562&page=1&field=&text=" target="_blank" title="새창열림"><img alt="과학기술통신부" src="./home/images/mark_wa.png" /></a></p>
          <p class="call_center"><a href="http://www.kma.go.kr/aboutkma/biz/service.jsp#callcenter" target="_blank" title="새창열림"><img src="./home/images/footer_call131.jpg" alt="기상콜센터 전국 국번없이 131" /></a></p>
        </div>
      </div>
      <script src="/eqk_layer/eqk.js?ver=2018122205"></script>
      <!-- START OF LOGGER TRACKING SCRIPT -->
      <script src="/share/js/logger2.weather.go.kr.1057.js"></script>
      <noscript><img alt="로그" src="http://logger.kma.go.kr/tracker.tsp?u=7&amp;js=N" width="0" height="0" /></noscript>
      <!-- END OF LOGGER TRACKING SCRIPT -->
      <script src="/home/js/weather.options.js?ver=2018122705"></script>
	  <script src="/home/js/base64.js?ver=2018122705"></script>
      <script src="/home/js/weather.home.js?ver=20191004"></script>
	  <script>
	  //<!--
			WeatherApp.create({
					pageScript: function() {
						$(document).on("click", function(e) {
							var ignore = false;
							var $target = $(e.target);
							var count = 0;
							do
							{
								if($target.hasClass("select-text") 
									|| $target.hasClass("select-option") 
									|| $target.hasClass("select-box")
									|| $target.hasClass("select-text2") 
									|| $target.hasClass("select-option2") 
									|| $target.hasClass("select-box2")) {
									ignore = true;
									break;
								}
								count++;
							}
							while (($target = $target.parent()) != null && $target.length > 0 && count < 100);
							if(!ignore) {
								WeatherApp.broadcastEvent(WeatherApp.EVENT.CANCEL_ALL_LAYERS, {});
							}
						});
						visualOptionChanged(gOptions);
						$(".menu-more").on("click", function(){
							$(".menu-all-div").css({"display":"block"});
							$(".menu-more-close").css({"display":"block"});
							$(".menu-all-bg").css({"display":"block"});
							$(this).css({"display":"none"});
							$(".menu-all-div").trigger("focus");
						});
						$(".menu-more-close").on("click", function(){
							$(".menu-all-div").css({"display":"none"});
							$(".menu-more").css({"display":"block"});
							$(".menu-all-bg").css({"display":"none"});
							$(this).css({"display":"none"});
							$(".menu-more").trigger("focus");
						});
						$(".menu-more").mouseover(function(){
							$("#main_menu > #lnb > li > a").removeClass("on");
							$("#main_menu > #lnb > li > ul").css({"display":"none"});
							$("#main_menu").css({"border-bottom":"0px"});
						});

						$('#weather-home-favorite-info').on('click', function(e) {
							window.open('/weather/cookie_info.html', 'fav_info_guide', 'width=597,height=835,scrollbars=yes').focus();
						});
					}
				})
				.register("weather_title", HomeTabMenuContent, {})
				.register("weather-home-dong-selector", HomeDongSelector, {})
				.register("weather-home-favorite-dropdown", HomeFavoriteDropDown, {})
				.register("weather-home-short-forecast", HomeShortForecast, {})
				.register("weather-home-dong-forecast", HomeDongForecast, {})
				.register("weather-home-mid-forecast", HomeMidForecast, {})
				.register("weather-home-sea-area-selector", HomeSeaAreaSelector, {})
				.register("weather-home-sea-forecast", HomeSeaForecast, {})
				.register("a.info-window",WeatherInfoWindow, {})
				.register("warning_notice",HomeRegionalWarningNotice, {})
				.register('home-all-player', HomeImagePlayer, {})
				.register('home-rdr-player', HomeImagePlayer, {})	
				.register('home-sat-player', HomeImagePlayer, {})	
				.register('home-lgt-player', HomeImagePlayer, {})
				.register("weather-home-favorite-manage", HomeFavoriteManage, {});

			function weatherOptionChanged(opts) {
				WeatherApp.broadcastEvent(WeatherApp.EVENT.ON_WEATHER_OPTION_CHANGED, opts);
			}
			function visualOptionChanged(opts) {
				if(opts.visual.VS == "ON") {
					$('#visual-map').css({ "visibility": "visible", "height": "310px" });
					var $frame = $('#visual-map').find('iframe');
					$frame.attr('src', $frame.attr('data-src'));
				} else {
					$('#visual-map').css({ "visibility": "hidden", "height": "134px" });
					var $frame = $('#visual-map').find('iframe');
					$frame.attr('src', 'about:blank');
				}
			}
			function onFrameCityClick(data) {
				WeatherApp.broadcastEvent(WeatherApp.EVENT.ON_DONG_VIEW, data);
				$('#tab-dong-forecast').trigger('click');
				window.setTimeout( function() {
					$("html, body").animate({ scrollTop: 800 }, 900);
				}, 20);
			}
			function onFrameSeaClick(data) {
				$('#tab-sea-forecast').trigger('click');
				WeatherApp.broadcastEvent(WeatherApp.EVENT.ON_SEA_AREA_VIEW, data);
				window.setTimeout( function() {
					$("html, body").animate({ scrollTop: 1220 }, 900);
				}, 20);
				
			}
		//-->
	  </script>
      <!-- 긴급작업공지 공지가 필요한 경우 // 주석 지움 -->
      <script>
	  var nowDate = new Date();
		var c_Id = "";
		c_Id += nowDate.getFullYear();
		c_Id += "_" + nowDate.getMonth();
		c_Id += "_" + nowDate.getDate();
		c_Id += "_" + nowDate.getDay();
		if (getCookie("popup_notice_wind2"+c_Id) == "cl_td_pop_y") { 
		} else {
			// window.open("/popup/popup_notice.html", "popup_notice_work","width=395,height=205,left=100,top=60,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no");
			// window.open("/popup/popup_notice_wind2.html", "popup_notice_wind2","width=400,height=532,left=100,top=60,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no");
			// window.open("/popup/popup_notice_chodangi.html", "popup_notice_work","width=396,height=249,left=100,top=60,toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no");
		} 
      </script>
	</div>
	
</body>
</html>