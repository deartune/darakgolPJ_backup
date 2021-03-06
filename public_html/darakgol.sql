-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- 호스트: localhost
-- 처리한 시간: 18-12-31 13:47 
-- 서버 버전: 5.1.73
-- PHP 버전: 5.2.17

SET FOREIGN_KEY_CHECKS=0;

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

SET AUTOCOMMIT=0;
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `darakgol`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `admin`
--
-- 생성: 18-07-22 06:56 
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(20) NOT NULL,
  `adminpw` varchar(20) NOT NULL,
  `adminnm` varchar(20) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `admin`
--

INSERT INTO `admin` (`adminid`, `adminpw`, `adminnm`) VALUES
('admin', '1111', '다락골초록원');

-- --------------------------------------------------------

--
-- 테이블 구조 `notice`
--
-- 생성: 18-07-23 04:57 
--

CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(70) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_wdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 테이블의 덤프 데이터 `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_title`, `notice_content`, `notice_wdate`) VALUES
(1, '성수기 단체 예약 현황 알림', '2018년 성수기 단체 예약 현황입니다. \r\n확인 후 예약 문의 바랍니다. \r\n\r\n7/15~20 예약완료. 타 단체 예약 불가\r\n8/1~10 예약 완료. 타 단체 예약 불가', '2018-07-23 05:09:24'),
(2, '문경 찻사발 축제 안내', '2018년 4월 28일부터 5월 7일까지 경상북도 문경새재 오픈세트장에서 <2018 문경전통찻사발축제>가 개최됩니다.  \r\n올해로 20년째 접어드는 문경전통찻사발축제의 주제는 "문경찻사발의 꿈, 세계를 담다''이며, \r\n1999년부터는 전통 찻사발 축제를 개최하여 2018년부터 현재 문화체육관광부 최우수축제에 선정되었습니다. \r\n문경 찻사발 축제는 대한민국 전통을 대표하는 축제로서 자리매김을 하고 있습니다. \r\n세부 내용은 다음과 같습니다.\r\n\r\n[기획전시행사]\r\n- 문경도자기획전, 전국 찻사발 공모대전, 도예명장 특별전, 문경전통도자기 명품전, 어린이 사기장전, 한/중/일 도자 국제교류전\r\n\r\n[특별행사]\r\n- 한/중/일 다례시연, 가루차 투다 경연대회, 아름다운 찻자리 한마당, 문경전통발물레 경진대회, 찻사발 깜짝경매, 선조도공 헌다례, 문경문화퍼포먼스, 상평통보 엽전 상품권, 찻사발과 사기장의 만남, 문경밤사랑축제\r\n\r\n[체험행사] \r\n- 사기장 하루 체험, 도자기 빚기, 찻사발 그림 그리기, 망댕이가마 불지피기체험, QR 찻사발 장원급제, 흙속의 진주 찾기, 차담이의 찰진 인절미, 다례체험, 찻사발 쌓기, 찻사발 엽전 받기, 찻사발 페이스 페인팅, 도자기 소원쓰기, 발물레 빨리 돌리기 등\r\n\r\n[알찬행사]\r\n- 입장권 경품 추첨(1등 1000만원 상당 달항아리), 시민의 날, 공예/특산물관, 차인의 날, 조선시대 복장체험, 축제사진 콘테스트, 축제후기 공모전\r\n\r\n[봉암사순례탐방]\r\n일년에 한 번 사월 초파일에만 산문을 개방하는 ''희양산 봉암사''가 2017 문경전통찻사발축제를 기념하며 축제기간 중 8일간 임시순례탐방을 합니다.\r\n- 신청기간 : 2017. 3. 2.(목) ~ 4. 24.(월)\r\n- 운영기간 : 2017. 4. 29.(토) ~ 5. 7.(일) 축제기간 중 8일간 1일 2회 (부처님 오신날 5월 3일은 제외)\r\n- 접수인원 : 100명 / 1회\r\n- 신청대상 : 축제방문객\r\n- 축제장입장료 : 5,000원/1인 (무료입장 및 할인 비적용, 2천원 상평통보 교환권 증정)\r\n- 관람코스 : 주차장 주차, 경내(극락전,대웅보전,삼층석탑,지증대사탑비 등), 백운대\r\n- 관람시간 : 10:00 ~ 11:00(1시간), 11:00 ~ 12:00(1시간)', '2018-07-23 05:11:16'),
(3, '애완동물 출입 금지', '최근 애완동물을 동반하여 무단으로 입실하는 분들이 계십니다. \r\n다락골 초록원에서는 시설 안전과 위생관리를 위해 애완동물 동반을 금지하고 있으므로, \r\n주의 부탁드립니다.', '2018-07-23 05:08:59'),
(4, '공사구간 안내', '가은과 농암 구간 집중적 낙석피해 및 싱크홀 발생구간이니 주의하시기 바랍니다. \r\n함창 방향으로 우회하여 오시면 보다 빠르게 오실 수 있습니다. ', '2018-07-23 05:09:12'),
(5, '숙직실 리뉴얼 공지', '편리한 객실환경을 위해 숙직실을 리뉴얼하였습니다. \r\n실크와 자수를 소재로한 최고급 침구를 제공하는 객실로 변모하였으며, \r\n1박 30만원의 금액으로 아침 식사 포함, 미니바, 네스프레소 커피캡슐, wifi를  제공합니다.', '2018-07-23 05:09:52'),
(6, '1학년 객실 공사 안내', '1학년 객실의 쾌적한 환경을 위해 내외부 공사를 진행합니다.이로 인해 1학년 객실은  7/7~7/10까지 사용불가합니다.', '2018-07-22 23:42:51'),
(7, '3개월이내 재방문 15% 할인 이벤트', '다락골 초록원은 개업 10주년 기념으로 재방문 고객 대상 할인 이벤트를 합니다. \r\n7/1~9/1까지 방문한 고객분들께 나눠드리는 재방문 쿠폰으로 \r\n결제하시는 고객분들께 15%를 할인해드리니 많은 관심 부탁드립니다.', '2018-07-23 05:06:31'),
(8, '홍수로 인한 예약 취소 환불 안내', '기록적인 폭우, 홍수로 인해 다락골초록원으로 오시는 진입로가 막힌 관계로 \r\n7/5~7/9 예약 손님들께는 100%환불조치를 해드리게되었습니다. \r\n자연재해로 인한 예기치 못한 상황이오니 양해 부탁드리며 \r\n이용에 착오 없으시길 바랍니다. ', '2018-07-23 05:07:26'),
(9, '지역 장터 날짜,장소 안내', '지역 장터에 대한 문의가 있어 안내드립니다.\r\n\r\n농암 장터 : 매월 5,10,15일/농암 농협 앞마당\r\n가은 장터 : 매주 수요일/가은 성당 앞\r\n함창 장터 : 매주 금요일/마을회관 앞', '2018-07-23 05:04:22'),
(10, '평일재방문 20% 할인 이벤트', '다락골 초록원에서는 재방문 할인 이벤트를 진행 중입니다. \r\n평일 재방문 고객들의 요구에 부응하고자 평일 재방문 할인은 \r\n5%할인률을 추가하여 20%를 할인하기로 하였으니 많은 이용 바랍니다. ', '2018-07-23 05:05:16'),
(11, '성수기 요금 안내', '7/15부터 8/15까지 성수기입니다.\r\n그 기간동안은 평일도 기존 주말가격과 동일하게 바뀝니다.\r\n1,2,3학년 객실 : 200,000만원\r\n4,5,6학년 객실 : 250,000만원\r\n숙직실,교장실,교무실 : 350,000원', '2018-07-23 05:05:59'),
(12, '교장실 신설 공지', '다락골 초록원은 프리미엄 룸인 교장실을 신설하였습니다.\r\n한옥의 건축 요소와 현대적인 호텔 시설을 적절히 접목시켜 공간이 여유로운 객실입니다.\r\n1박 300,000 원이며 아침 식사 포함입니다. 미니바, 네스프레소 커피캡슐, wifi 제공\r\n\r\n', '2018-07-22 23:19:46'),
(13, '안전한 시설 사용을 위한 주의 및 금지사항 안내', '- 금지사항\r\n. 앰프등 전기기기는 내부개방 금지입니다. (불가피한 경우 사전협의) \r\n. 벽지에 부착물 부착하시면 안됩니다. (부착물은 유리창에) \r\n. 21시 이후 폭죽 사용 금지입니다. \r\n. 22시 이후 실외 음향기기 사용금지입니다. (실내 음량은 적당하게 조절) \r\n. 담력 훈련시 초록원 부지를 벗어나거나, 마을 진입하시면 안됩니다. \r\n. 식탁, 이불 등은 해당 객실에서 이동시키지 않습니다. \r\n. 건물벽 및 화단벽에 연습킥 금지합니다. \r\n. 전기밥솥 내부통 분리 사용금지합니다. (변형으로 고장원인)\r\n\r\n-기타 주의사항\r\n. 조명, 음향 등 전기기기 연결시 사용가능 용량 사전협의가 필요합니다. \r\n. 도난사고가 발생하지 않도록 외출시 열쇠를 지참해주세요. \r\n. 숙소, 강당 이용시 신발 벗고 이용해주세요. \r\n. 운동장 사용에 지장이 없도록 주차해주세요.(가급적 외부주차장 이용) \r\n. 쓰레기는 꼭 분리하여 배출합니다. (음식물, 재활용, 종이류, 기타) \r\n. 운동장이 협소하니 축구, 야구는 자제해주세요.', '2018-07-23 05:00:19'),
(14, '화재예방 안내', '. 객실 안에서는 금연입니다. \r\n. 가스레인지 사용하실 때 충분히 환기 후 얼굴을 멀리하고 써 주세요. \r\n. 객실 내에서 이동용 가스레인지 사용은 안됩니다. \r\n. 캠프파이어 및 바베큐시 쓰레기소각하시면 안됩니다. \r\n. 폭죽을 사용하시려고 준비하신 경우 미리 초록원에 알려주세요. \r\n. 이동용 가스레인지 사용시 바닥깔개를 이용해주세요.(초록원 제공) \r\n. 모기향 이용시 타지 않는 받침을 이용해주세요.(초록원 제공) \r\n. 캠프파이어시 바닥에 철판을 이용해주세요. (초록원 제공)', '2018-07-22 23:06:11'),
(15, '안전사고 예방을 위한 필수 주의사항', '. 수영할 때 2인 이상 함께 해주세요. \r\n. 119구명함, 안전로프를 이용해주세요.(초록원 제공) \r\n. 정문앞 도로에서는 차량을 잘 살핀 후 횡단해주세요. \r\n. 벌, 뱀이 많아 길이 아닌 곳은 출입하면 위험합니다. \r\n. 불규칙한 계단이 많으​므로 과음 자제 등 주의가 필요합니다. ', '2018-07-22 23:06:33');

-- --------------------------------------------------------

--
-- 테이블 구조 `reservation`
--
-- 생성: 18-07-21 20:47 
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_rdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `book_datefrom` date NOT NULL,
  `book_dateto` date NOT NULL,
  `room_id` varchar(20) NOT NULL,
  `book_person` int(11) NOT NULL,
  `book_name` varchar(20) NOT NULL,
  `book_mobile` varchar(20) NOT NULL,
  `book_account` varchar(20) DEFAULT NULL,
  `book_birth` date NOT NULL,
  `book_fire` tinyint(1) DEFAULT '0',
  `book_camp` tinyint(1) DEFAULT '0',
  `book_comment` text,
  `book_status` tinyint(1) DEFAULT '0',
  `book_totalprice` int(11) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- 테이블의 덤프 데이터 `reservation`
--

INSERT INTO `reservation` (`book_id`, `book_rdate`, `book_datefrom`, `book_dateto`, `room_id`, `book_person`, `book_name`, `book_mobile`, `book_account`, `book_birth`, `book_fire`, `book_camp`, `book_comment`, `book_status`, `book_totalprice`) VALUES
(18, '2018-07-19 19:09:20', '2018-07-19', '2018-07-21', 'r1', 1, 'wwww', '010-1111-3333', '이기자', '1987-05-02', 1, 1, '23444444434343', 1, 760000),
(34, '2018-07-18 22:18:03', '2018-07-09', '2018-07-13', 'r1', 4, 'wwww', '010-1111-3333', 'wwww', '2001-07-20', 1, 1, 'sdfsfjskdfsfsdffsdfh', 1, 3860000),
(85, '2018-07-20 16:08:28', '2018-08-13', '2018-08-15', 'r3', 8, 'wwww', '017-1234-4444', 'wwww', '2002-08-08', 1, 0, '11111111111111111111111111111111111111111111111', 1, 300000),
(158, '2018-07-19 10:39:05', '2018-07-12', '2018-07-13', 'r2', 2, '웹개발', '017-1111-4444', '웹개발', '1987-05-03', 0, 0, 'sdfsdfsfsdfds', 1, 150000),
(166, '2018-07-18 15:23:31', '2018-07-19', '2018-07-20', 'r9', 2, '그린디비', '010-5555-5121', '그린디비', '1993-11-11', 1, 1, '', 0, 350000),
(167, '2018-07-21 00:25:29', '2018-07-21', '2018-07-22', 'r9', 4, '김재연', '010-2222-2222', '김재연', '1991-07-14', 0, 1, '조장님 짱!', 1, 350000),
(168, '2018-07-18 19:29:53', '2018-07-19', '2018-07-20', 'r2', 6, '동태탕', '010-5689-5689', '동태탕', '1992-10-24', 1, 1, '가나다라\r\n', 0, 200000),
(169, '2018-07-18 21:46:25', '2018-07-18', '2018-07-19', 'r9', 6, '이상민', '010-2048-2048', '이상민', '1980-02-23', 0, 0, '', 1, 350000),
(170, '2018-07-19 20:06:40', '2018-07-19', '2018-07-20', 'r6', 2, '이이용', '010-7777-7777', '이이용', '1979-12-08', 1, 1, '', 1, 250000),
(171, '2018-07-19 20:26:07', '2018-08-20', '2018-08-23', 'r4', 2, '마마무', '010-0000-1111', '마마무', '1977-11-19', 1, 1, '', 0, 600000),
(172, '2018-07-19 20:26:07', '2018-08-20', '2018-08-23', 'r6', 2, '마마무', '010-0000-1111', '마마무', '1977-11-19', 1, 1, '', 0, 600000),
(173, '2018-07-20 14:28:05', '2018-12-01', '2018-12-02', 'r9', 4, '김재연', '010-1111-1111', '김재연', '1981-06-24', 0, 0, '호호호', 0, 350000),
(174, '2018-07-20 14:37:27', '2018-11-01', '2018-11-02', 'r1', 2, '김재연', '010-1111-1111', '김재연', '1981-06-24', 1, 1, '또 해요', 0, 150000),
(175, '2018-07-20 14:37:27', '2018-11-01', '2018-11-02', 'r2', 2, '김재연', '010-1111-1111', '김재연', '1981-06-24', 1, 1, '또 해요', 0, 150000),
(176, '2018-07-20 14:42:05', '2018-07-28', '2018-07-29', 'r9', 2, '김재연', '010-1111-1111', '김재연', '1980-01-01', 0, 1, '', 0, 350000),
(177, '2018-07-20 14:42:28', '2018-07-27', '2018-07-28', 'r2', 2, '김재연', '010-1111-1111', '김재연', '1980-01-28', 0, 0, '', 0, 200000),
(178, '2018-07-20 14:42:28', '2018-07-27', '2018-07-28', 'r9', 2, '김재연', '010-1111-1111', '김재연', '1980-01-28', 0, 0, '', 0, 350000),
(180, '2018-07-20 21:40:53', '2018-07-21', '2018-07-22', 'r3', 2, '장미경', '010-2772-8317', '장미경', '1977-12-11', 1, 1, '6시 이후에 입실할 예정입니다.', 1, 200000),
(181, '2018-07-21 00:35:52', '2018-07-24', '2018-07-25', 'r3', 5, '김재연', '010-1111-1111', '김재연', '1980-01-28', 0, 0, '', 1, 200000),
(182, '2018-07-20 14:43:29', '2018-10-01', '2018-10-02', 'r3', 2, '김재연', '010-1111-1111', '김재연', '1980-01-01', 0, 0, '', 0, 150000),
(183, '2018-07-20 14:43:49', '2018-10-01', '2018-10-02', 'r1', 2, '김재연', '010-1111-1111', '김재연', '1980-01-29', 0, 0, '', 0, 150000),
(184, '2018-07-20 14:44:05', '2018-07-21', '2018-07-22', 'r6', 4, '전서현', '010-2772-8317', '전서현', '1998-07-22', 0, 1, '', 0, 250000),
(185, '2018-07-20 14:44:08', '2018-10-02', '2018-10-03', 'r1', 2, '김재연', '010-1111-1111', '김재연', '1980-01-28', 0, 0, '', 0, 150000),
(186, '2018-07-20 14:44:38', '2018-07-22', '2018-07-23', 'r3', 2, '장미경', '010-2772-8317', '장미경', '1980-01-18', 0, 0, '', 0, 200000),
(187, '2018-07-20 14:45:11', '2018-07-24', '2018-07-25', 'r4', 2, '장미경', '010-2772-8317', '장미경', '1980-01-17', 0, 0, '', 0, 250000),
(188, '2018-07-20 14:45:43', '2018-07-27', '2018-07-28', 'r3', 2, '전서현', '010-2772-8317', '전서현', '1980-01-10', 0, 0, '', 0, 200000),
(189, '2018-07-20 14:45:43', '2018-07-27', '2018-07-28', 'r4', 2, '전서현', '010-2772-8317', '전서현', '1980-01-10', 0, 0, '', 0, 250000),
(190, '2018-07-20 14:45:43', '2018-07-27', '2018-07-28', 'r5', 2, '전서현', '010-2772-8317', '전서현', '1980-01-10', 0, 0, '', 0, 250000),
(191, '2018-07-20 14:46:06', '2018-08-15', '2018-08-16', 'r3', 2, '장미경', '010-2772-8317', '장미경', '1980-01-10', 0, 0, '', 0, 200000),
(192, '2018-07-20 14:47:06', '2018-08-18', '2018-08-23', 'r1', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 0, 800000),
(193, '2018-07-21 00:38:40', '2018-08-18', '2018-08-23', 'r2', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 1, 800000),
(194, '2018-07-20 14:47:06', '2018-08-18', '2018-08-23', 'r3', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 0, 800000),
(195, '2018-07-20 14:47:06', '2018-08-18', '2018-08-23', 'r5', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 0, 1050000),
(196, '2018-07-20 14:47:06', '2018-08-18', '2018-08-23', 'r7', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 0, 1550000),
(197, '2018-07-20 14:47:06', '2018-08-18', '2018-08-23', 'r8', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 0, 1550000),
(198, '2018-07-20 14:47:06', '2018-08-18', '2018-08-23', 'r9', 2, '장미경', '010-2772-8317', '장미경', '1980-01-19', 1, 1, '', 0, 1550000),
(199, '2018-07-20 14:48:00', '2018-08-01', '2018-08-11', 'r1', 2, '장미경', '010-2772-8317', '장미경', '1980-01-03', 0, 0, '', 0, 2000000),
(200, '2018-07-20 14:48:00', '2018-08-01', '2018-08-11', 'r2', 2, '장미경', '010-2772-8317', '장미경', '1980-01-03', 0, 0, '', 0, 2000000),
(201, '2018-07-20 14:48:00', '2018-08-01', '2018-08-11', 'r4', 2, '장미경', '010-2772-8317', '장미경', '1980-01-03', 0, 0, '', 0, 2500000),
(202, '2018-07-21 00:39:05', '2018-08-01', '2018-08-11', 'r6', 2, '장미경', '010-2772-8317', '장미경', '1980-01-03', 0, 0, '', 1, 2500000),
(203, '2018-07-20 14:48:00', '2018-08-01', '2018-08-11', 'r7', 2, '장미경', '010-2772-8317', '장미경', '1980-01-03', 0, 0, '', 0, 3500000),
(204, '2018-07-20 14:48:00', '2018-08-01', '2018-08-11', 'r9', 2, '장미경', '010-2772-8317', '장미경', '1980-01-03', 0, 0, '', 0, 3500000),
(205, '2018-07-22 10:27:34', '2018-07-26', '2018-07-27', 'r9', 2, '김주연', '010-8888-9999', '김주연', '1983-04-15', 0, 1, '', 1, 350000),
(206, '2018-07-20 16:09:52', '2018-07-31', '2018-08-01', 'r7', 2, '웹개발', '010-1111-7777', '웹개발', '1980-01-01', 1, 1, '', 0, 350000),
(207, '2018-07-20 21:42:46', '2018-07-23', '2018-07-24', 'r8', 6, '문재인', '010-3453-3453', '문재인', '1965-04-14', 1, 1, '', 0, 350000),
(208, '2018-07-21 00:27:42', '2018-07-23', '2018-07-24', 'r4', 5, '지드래곤', '010-1230-1230', '지드래곤', '1971-07-24', 1, 1, '', 0, 250000),
(209, '2018-07-21 00:41:29', '2018-07-23', '2018-07-24', 'r5', 6, '지드래곤', '010-1230-1230', '지드래곤', '1971-07-24', 1, 1, '', 1, 250000),
(210, '2018-07-22 05:04:03', '2018-07-27', '2018-07-31', 'r1', 2, '코코몽', '010-5555-7777', '코코몽', '1951-01-11', 0, 0, '', 0, 800000),
(211, '2018-07-22 10:26:14', '2018-07-22', '2018-07-23', 'r1', 2, '장미경', '010-2772-8317', '장미경', '1980-01-02', 0, 0, '', 1, 200000),
(212, '2018-07-23 01:38:35', '2018-07-22', '2018-07-23', 'r6', 2, '장미경', '010-2772-8317', '장미경', '1980-01-02', 0, 0, '', 1, 250000),
(213, '2018-07-22 13:56:05', '2018-07-22', '2018-07-23', 'r8', 2, '신재순', '010-5555-1234', '신재순', '1980-09-27', 1, 1, '', 0, 350000),
(214, '2018-07-22 18:29:00', '2018-07-25', '2018-07-28', 'r6', 2, 'Ffff', '010-1111-4444', 'Ffff', '1980-01-11', 1, 1, '', 0, 750000),
(215, '2018-07-23 00:31:57', '2018-07-23', '2018-07-24', 'r6', 7, 'sjs', '010-2222-1234', 'sjs', '1976-11-27', 1, 1, '', 0, 250000),
(217, '2018-07-23 01:34:40', '2018-07-23', '2018-07-24', 'r1', 5, '신재순', '010-5615-1234', '신재순', '1973-05-19', 1, 1, '', 0, 200000),
(218, '2018-07-23 01:55:49', '2018-07-23', '2018-07-24', 'r2', 7, '신재순', '010-5615-1234', '신재순', '1973-05-19', 1, 1, '', 1, 200000),
(219, '2018-07-23 11:58:56', '2018-07-23', '2018-07-24', 'r3', 4, '다락골', '010-1111-2222', '다락골', '1980-01-02', 1, 0, '깨끗한 방으로 부탁드려요', 0, 200000),
(220, '2018-07-23 15:23:08', '2018-07-26', '2018-07-27', 'r1', 2, '임한석', '010-1234-1234', '임한석', '1980-01-18', 1, 1, '', 1, 200000);

-- --------------------------------------------------------

--
-- 테이블 구조 `room`
--
-- 생성: 18-07-21 20:47 
--

CREATE TABLE IF NOT EXISTS `room` (
  `room_id` varchar(20) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `room_maxperson` int(11) NOT NULL DEFAULT '2',
  `room_price` int(11) NOT NULL,
  `room_price1` int(11) DEFAULT NULL,
  `room_price2` int(11) DEFAULT NULL,
  `room_desc1` varchar(100) DEFAULT NULL,
  `room_desc2` varchar(100) DEFAULT NULL,
  `room_desc3` varchar(100) DEFAULT NULL,
  `room_img_main` varchar(50) NOT NULL,
  `room_img_sub1` varchar(50) DEFAULT NULL,
  `room_img_sub2` varchar(50) DEFAULT NULL,
  `room_img_thumb` varchar(50) NOT NULL,
  `room_img_sub3` varchar(20) DEFAULT NULL,
  `room_img_sub4` varchar(20) DEFAULT NULL,
  `room_img_sub5` varchar(20) DEFAULT NULL,
  `room_img_sub6` varchar(20) DEFAULT NULL,
  `room_img_sub7` varchar(20) DEFAULT NULL,
  `room_img_sub8` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `room`
--

INSERT INTO `room` (`room_id`, `room_name`, `room_maxperson`, `room_price`, `room_price1`, `room_price2`, `room_desc1`, `room_desc2`, `room_desc3`, `room_img_main`, `room_img_sub1`, `room_img_sub2`, `room_img_thumb`, `room_img_sub3`, `room_img_sub4`, `room_img_sub5`, `room_img_sub6`, `room_img_sub7`, `room_img_sub8`) VALUES
('r1', '1학년', 10, 150000, 200000, 200000, '따뜻한 조명과 부드러운 원목의 인테리어', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공<br><br>', 'images/g1.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g1_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r2', '2학년', 10, 150000, 200000, 200000, '전통적인 문양과 따뜻한 온기가 가득한 인테리어', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공<br><br>', 'images/g2.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g2_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r3', '3학년', 10, 150000, 200000, 200000, '실크와 자수를 소재로한 최고급 침구를 제공하는 객실', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공', 'images/g3.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g3_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r4', '4학년', 10, 200000, 250000, 250000, '그윽한 수묵화 벽지와 따스한 전통 문살의 객실', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공<br><br>', 'images/g4.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g4_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r5', '5학년', 10, 200000, 250000, 250000, '따뜻한 조명과 부드러운 원목의 인테리어', '아침 식사 포함', '미니바, 네스프레소 커피캡슐, wifi 제공<br><br>', 'images/g5.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g5_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r6', '6학년', 10, 200000, 250000, 250000, '그윽한 수묵화 벽지와 따스한 전통 문살의 객실', '아침 식사 포함', '미니바, 네스프레소 커피캡슐, wifi 제공<br><br>', 'images/g6.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g6_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r7', '숙직실', 10, 300000, 350000, 350000, '실크와 자수를 소재로한 최고급 침구를 제공하는 객실', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공', 'images/g7.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g7_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r8', '교장실', 10, 300000, 350000, 350000, '한옥의 건축 요소와 현대적인 호텔 시설을 적절히 접목시켜 공간이 여유로운 객실', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공', 'images/g8.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g8_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg'),
('r9', '교무실', 10, 300000, 350000, 350000, '침실, 대청, 대청마루, 욕실로 구성되어 있으며 안마당과 후정이 있는 독채 형태의 스위트', '아침 식사 포함', '	미니바, 네스프레소 커피캡슐, wifi 제공', 'images/g9.jpg', 'images/otherimg1.jpg', 'images/otherimg2.jpg', 'images/g9_thumb.jpg', 'images/otherimg3.jpg', 'images/otherimg4.jpg', 'images/otherimg5.jpg', 'images/otherimg6.jpg', 'images/otherimg7.jpg', 'images/otherimg8.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `roomoption`
--
-- 생성: 18-07-21 20:47 
--

CREATE TABLE IF NOT EXISTS `roomoption` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(20) NOT NULL,
  `option_desc` varchar(200) DEFAULT NULL,
  `option_price` int(11) NOT NULL,
  `option_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 테이블의 덤프 데이터 `roomoption`
--

INSERT INTO `roomoption` (`option_id`, `option_name`, `option_desc`, `option_price`, `option_num`) VALUES
(1, '캠프파이어', '캠프파이어 설명', 50000, 1),
(2, '숯불바베큐', '숯불바베큐 그릴 1세트', 10000, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tour`
--
-- 생성: 18-07-21 20:47 
--

CREATE TABLE IF NOT EXISTS `tour` (
  `location` varchar(30) NOT NULL,
  `no` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `tour`
--

INSERT INTO `tour` (`location`, `no`, `name`, `link`, `text`) VALUES
('images/tourimags-1.jpg', 1, '철로자전거', 'https://www.gbmg.go.kr/tour/leports/view.do?CATEGORY=&mId=0405000000&idx=3', '20여 년 전 석탄을 실어 나르던 철로가 이젠 관광 자원으로 변모하여 전국 최초로 철로 위를 달리는 ''문경 철로 자전거''로 태어났습니다. 철로 자전거는 경북 팔경 중 제1경으로 꼽히는 진남교반과 시원함을 느낄 수 있는 강과 터널이 달리는 내내 눈을 즐겁게 해줍니다.'),
('images/tourimags-2.jpg', 2, '문경새재 촬영장', 'https://www.gbmg.go.kr/tour/contents.do?mId=0101040100', '문경새재 촬영장은 한국방송공사가 2000년 특별기획 대하드라마 제작을 위해 설치한 것으로 문경새재 제1관문 뒤 용사골에 위치해 있습니다. 총 19,891평의 부지에 궁 2동, 기와 41동, 초가40동이 들어서 국내 최초의 고려촌 이며, 세계에서 5번째 안에 드는 야외 촬영장입니다.'),
('images/tourimags-3.jpg', 3, '가은촬영장', 'https://www.gbmg.go.kr/tour/contents.do?mId=0105040100', '드라마 <연개소문>과 <대왕세종>, <천추태후> 등 사극 촬영지로 알려진 곳입니다. 고구려궁과 신라궁, 안시성과 성내마을, 요동성과 성내마을로 구성되어 있습니다. 고구려 및 신라 시대의 성내 모습이 사실적으로 꾸며져 있으며, 모노레일은 전망용으로도 인기입니다.'),
('images/tourimags-4.jpg', 4, '쌍용계곡', 'https://www.gbmg.go.kr/tour/contents.do?mId=0201040000', '골이 깊고 물이 맑아 청룡, 황룡이 놀다간 곳이라고 하는 쌍룡계곡은 속리산에서 발원한 계곡이 도장산(해발 827m), 청화산(970m)을 좌우에 두고 흐르면서 쌍룡폭포, 심원폭포를 만들고 있으며, 그 어느 곳보다 문명에 오염이 되지 않아 맑고 깨끗함을 간직하고 있습니다.'),
('images/tourimags-5.jpg', 5, '석탄박물관', 'https://www.gbmg.go.kr/tour/contents.do?mId=0105010100', '옛 대한석탄공사 은성광업소에 개관한 전문박물관입니다. 각종 기관차들과 지구의 형성, 석탄의 기원과 변천, 석탄이 형성되는 과정을 일목요연하게 전시되어있고 탄운반용 증기기관차와 연탄제조기·채탄도구·측량장비·통신장비·화약류·광산보안장비 등이 전시되어 있습니다.'),
('images/tourimags-6.jpg', 6, '오미자 체험관', 'http://www.mgomj.co.kr/', '문경시농업기술센터가 종전 문경특산물 판매장 시설을 리모델링해 체험관,판매장,종합관광안내소 시설을 갖추고 있으며 농산물 구입 및 전시, 관람이 가능합니다. 계절별, 놀이, 공예, 생태, 먹거리등 다양한 체험프로그램 운영하고 있습니다.  내용을 확인해보세요.'),
('images/tourimags-7.jpg', 7, '속리산 문장대', 'https://store.naver.com/attractions/detail?entry=plt&id=13491393&query=%EB%AC%B8%EC%9E%A5%EB%8C%80', '높이 1,054m이며 큰 암석이 하늘 높이 치솟아 절경을 이루고 있어 운장대 라고도 합니다. 비로봉·관음봉·천황봉 과 함께 속리산에 딸린 고봉입니다. 산마루에는 약 50여 명이 앉을 수 있는 빈터가 있으며 속리산의 절경을 한눈에 바라볼 수 있습니다.'),
('images/tourimags-8.jpg', 8, '문경종합온천', 'https://www.gbmg.go.kr/tour/contents.do?mId=0402050000', '문경종합온천은 지하 900m 화강암층과 석회암층 사이에서 분출한 칼슘 중탄산천과 지하 750m 화강암층에서 분출한 알카리성 온천수를 공급하여 한번의 입장으로 2가지 온천을 즐길수 있는 전국 유일의 복합보양온천으로 사랑받고있습니다.'),
('images/tourimags-9.jpg', 9, '잉카마야박물관', 'http://xn--hz2b27s7rbowm.kr/', '전 주볼리비이대사로 30년간 생활하던 중 수집한 다양한 잉카유물들을 전시해 놓은 잉카 마야 박물관이 있는데 박물관 건물은 폐교된 학교를 리모델링하여 사용하고 있습니다. 잉카관과 마야관, 천사관과 유추관, 갤러리 카페로 구성되어 있습니다.');

SET FOREIGN_KEY_CHECKS=1;

COMMIT;
