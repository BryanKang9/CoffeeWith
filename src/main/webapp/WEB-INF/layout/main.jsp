<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>

<head>
    <c:set var="root" value="<%=request.getContextPath()%>"/>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <title>CoffeeWith</title>
    <link rel="stylesheet" type="text/css" href="${root}/res/css/main.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.css"
          integrity="sha512-rVfXYRlhHtd3C4PzoBxSaKhI/uYEi0/5K69RwK/cdxQld57PC6mZ7tkutR+KD96WrXZ6E/96qYeY4CVun7a0/w=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.js"
            integrity="sha512-c0NksyGPH0LUkeV3kgNU6p98oYwacImv508UsTDKqTWpEk1LFDMC8falFf9A2HZ8vt1ZIj3K4TNw2YT4Cid28Q=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://use.fontawesome.com/releases/v6.2.0/js/all.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.0/font/bootstrap-icons.css" />
</head>

<body>
<div class="main-page-container">
    <div class="cf-best-container">
        <div class="cf-best-tit-box tit">
            <a>요즘 뜨는 카페</a>
        </div>
        <div class="swiper-container best-slide">
            <ul class="swiper-wrapper">
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
                <li class="swiper-slide cf-card" style="width: 306px; margin-right: 16px;">
                    <div class="cf-img-box">
                        <img src="https://static-file.jejupass.com/download/82148.webp?width=736&height=736">
                    </div>
                    <a class="cf-cont-box">
                        <div class="cf-nm">
                            귤당리
                        </div>
                        <div class="cf-info">
                                <span class="cf-lk-box" title="북마크 개수">
                                    1000
                                </span>
                            <span class="cf-star-box" title="평균평점">
                                    4.3
                                    <i title="리뷰 갯수">(341)</i>
                                </span>
                            <span class="cf-addr" title="위치정보">제주시 한경면</span>
                        </div>
                        <p class="cf-txt">제주 스노클링의 성지 판포포구에 위치한 귤당리에요 이곳의 자랑거리는 푸른 에메랄드 빛 오션뷰를 품은 야외테라스죠. 가슴이 확 트이는
                            바다를
                            바라보며
                            귤청과 우유로 만든 파도빛깔의 바다라떼 한잔 어때요?
                        </p>
                        <p class="cf-tag-box">
                            <span class="tag">#제주카페</span>
                            <span class="tag">#바다뷰카페</span>
                        </p>
                    </a>
                </li>
            </ul>
        </div>
        <div class="swiper-pagination" style="position:relative;">
                <span class="tyBl">
                </span>
        </div>
    </div>
    <div class="loc-container">
        <div class="loc-slide swiper-container">
            <div class="quick-search swiper-wrapper">
                <a href="#" class="icon swiper-slide"><span class="label">선호지역 ></span></a>
                <a class="swiper-slide" href="https://app.catchtable.co.kr/ct/search/list/apgujeong"
                   style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706apgujeong.jpg?small200);"><span
                        class="label">압구정 / 청담</span></a>
                <a class="swiper-slide" href="https://app.catchtable.co.kr/ct/search/list/itaewon"
                   style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706itaewon.jpg?small200);"><span
                        class="label">이태원 / 한남</span></a><a class="swiper-slide"
                                                            href="https://app.catchtable.co.kr/ct/search/list/busan"
                                                            style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/busan_.jpg?small200);"><span
                    class="label">부산</span></a><a class="swiper-slide"
                                                  href="https://app.catchtable.co.kr/ct/search/list/seongsu"
                                                  style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706sungsoo.jpg?small200);"><span
                    class="label">성수</span></a><a class="swiper-slide"
                                                  href="https://app.catchtable.co.kr/ct/search/list/gwanghwamun"
                                                  style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706gwanghwamun.jpg?small200);"><span
                    class="label">광화문 / 종로</span></a><a class="swiper-slide"
                                                        href="https://app.catchtable.co.kr/ct/search/list/gangnam"
                                                        style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706gangnam.jpg?small200);"><span
                    class="label">강남 / 역삼</span></a><a class="swiper-slide"
                                                       href="https://app.catchtable.co.kr/ct/search/list/hongdae"
                                                       style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md_2022/0609_location_hapjeong,mangwon.png?small200);"><span
                    class="label">합정 / 망원</span></a><a class="swiper-slide"
                                                       href="https://app.catchtable.co.kr/ct/search/list/hongdae"
                                                       style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706hongdae.jpg?small200);"><span
                    class="label">홍대 / 신촌</span></a><a class="swiper-slide"
                                                       href="https://app.catchtable.co.kr/ct/search/list/yeouido"
                                                       style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706yeouido.jpg?small200);"><span
                    class="label">여의도</span></a><a class="swiper-slide"
                                                   href="https://app.catchtable.co.kr/ct/search/list/bukchon"
                                                   style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706bukchon_0331.jpg?small200);"><span
                    class="label">북촌 / 삼청</span></a><a class="swiper-slide"
                                                       href="https://app.catchtable.co.kr/ct/search/list/euljiro"
                                                       style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706euljiro_0331.jpg?small200);"><span
                    class="label">을지로</span></a><a class="swiper-slide"
                                                   href="https://app.catchtable.co.kr/ct/search/list/jeju"
                                                   style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/jeju_.jpg?small200);"><span
                    class="label">제주</span></a><a class="swiper-slide"
                                                  href="https://app.catchtable.co.kr/ct/search/list/seorae"
                                                  style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md/0706surraevillage_0331.jpg?small200);"><span
                    class="label">서래마을</span></a><a class="swiper-slide"
                                                    href="https://app.catchtable.co.kr/ct/search/list/daegu"
                                                    style="background-image: url(https://d21sjc85fy47a6.cloudfront.net/aaaaaqx/md_2022/0307_location_daegu@2x.png?small200);"><span
                    class="label">대구</span></a>
            </div>
        </div>
    </div>
    <div class="tr-container">
        <div class="tr-tit-box"><span class="tr-tit tit">투어모집</span> <span class="tr-more-box"><a class="tr-more" href="${root}/comtour/list">더보기</a></span></div>
        <div class="tr-cont-box">
            <c:forEach items="${trlist}" var="trdto">
                <div class="tr-card">
                <c:set var="loc" value="${trdto.tr_loc}"/>
                <c:choose>
                    <c:when test="${fn:contains(loc, '서울' )}">
                        <div class="tri-card" style="background-image:url('${root}/images/서울.jpg')"></c:when>
                    <c:when test="${fn:contains(loc, '대구' )}">
                        <div class="tri-card" style="background-image:url('${root}/images/대구.jpg')"></c:when>
                    <c:when test="${fn:contains(loc, '부산' )}">
                        <div class="tri-card" style="background-image:url('${root}/images/부산.jpg')"></c:when>
                    <c:when test="${fn:contains(loc, '인천' )}">
                        <div class="tri-card" style="background-image:url('${root}/images/인천.jpg')"></c:when>
                    <c:when test="${fn:contains(loc, '제주' )}">
                        <div class="tri-card" style="background-image:url('${root}/images/제주.jpg')"></c:when>
                    <c:otherwise> <div class="tri-card" style="background-image:url('${root}/images/한국.jpg')"></c:otherwise>
                    </c:choose>
                            <span class="tr-cont-loc"><i class="bi bi-geo-alt-fill"></i>${trdto.tr_loc}</span>
                                <c:choose>
                                    <c:when test="${trdto.tw_cnt<trdto.tw_max}">
                                        <span class="tr-cont-tw-g">모집중<br> ${trdto.tw_cnt}/${trdto.tw_max} </span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="tr-cont-tw-r">모집완료 <br> ${trdto.tw_cnt}/${trdto.tw_max} </span>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                    <div class="tr-cont-card">
                    <div class="tr-cont-tit"> ${trdto.tr_nm}</div>
                    <div class="tr-cont-ur"> <img class="tr-prf" src="${root}/res/prfimg/${trdto.ur_img}"> ${trdto.ur_nk}</div>
                    <div class="tr-cont-date"><i class="fa-regular fa-calendar"></i> &nbsp;${trdto.s_date}~ ${trdto.e_date}</div>
                    <div class="tr-cont-txt"><i class="fa-regular fa-message"></i>&nbsp;${trdto.tr_txt}</div>
                    <hr class="tr-card-hr">
                    <fmt:formatDate var="u_date" value="${trdto.u_date}" pattern="yyyy/MM/dd"/>
                    <div class="tr-cont-bottom"><span><i class="fa-regular fa-comments"></i> &nbsp;${trdto.tm_cnt}개</span><span>${u_date}</span></div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="fd-container">
        <div class="fd-tit-box"><span class="fd-tit tit">커뮤니티</span> <span class="fd-more-box"><a class="fd-more" href="${root}/comfeed/main/">더보기</a></span></div>
        <div class="fd-cont-box">
            <c:forEach items="${fdlist}" var="fddto">
                <c:set var="fdi_path" value="url('${root}${fddto.ci_path}${fddto.ci_nm}')"/>
               <div class="fd-card">
                    <div class="fdi-nm" style="background-image:${fdi_path}">
                        <a href="cafe/detail?cf_id=${fddto.cf_id}"><span class="fd_cf_nm"><i class="bi bi-geo-alt-fill" id="cf-loc"></i>&nbsp;${fddto.cf_nm}</span></a></div>
                   <a href="${root}/comfeed/main/">
                   <div class="fd-txt-area">
                        <div class="fd-cont-info"><img class="tr-prf" src="${root}/res/prfimg/${fddto.ur_img}">&nbsp;&nbsp;${fddto.ur_nk}<span class="fd-lk-box">&nbsp;${fddto.likes}&nbsp;&nbsp;</span></div>
                        <div class="fd-cont-txt">${fddto.fd_txt}</div>
                    </div></a>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<script>
    var swiper = new Swiper(".best-slide", {
        slidesPerView: 3, // 동시에 보여줄 슬라이드 갯수
        spaceBetween: 30, // 슬라이드간 간격
        slidesPerGroup: 3, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
        // 그룹수가 맞지 않을 경우 빈칸으로 메우기
        // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
        loopFillGroupWithBlank: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            bulletClass: "swiper-pagination-bullet",
            bulletActiveClass: "swiper-pagination-bullet-active"
        }
    })
</script>
</body>

</html>