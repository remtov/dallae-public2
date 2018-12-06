
/* Drop Triggers */

DROP TRIGGER TRI_board_ProductNumber;
DROP TRIGGER TRI_chating_ChatingMessageNumber;
DROP TRIGGER TRI_chating_MailBoxMessageNumber;
DROP TRIGGER TRI_MailBox_MailBoxMessageNumber;
DROP TRIGGER TRI_MailBox_MailBoxNumber;
DROP TRIGGER TRI_ProductCategory_ProductCategoryNumber;
DROP TRIGGER TRI_Product_ProductNumber;
DROP TRIGGER TRI_SellerInfo_SellerInfoNumber;
DROP TRIGGER TRI_ShopingBasket_ShopingBasketNumber;
DROP TRIGGER TRI_UserInfo_UserNum;



/* Drop Tables */

DROP TABLE chating CASCADE CONSTRAINTS;
DROP TABLE MailBox CASCADE CONSTRAINTS;
DROP TABLE ProductBidding CASCADE CONSTRAINTS;
DROP TABLE ShopingBasket CASCADE CONSTRAINTS;
DROP TABLE Product CASCADE CONSTRAINTS;
DROP TABLE ProductCategory CASCADE CONSTRAINTS;
DROP TABLE UserInfo CASCADE CONSTRAINTS;
DROP TABLE SellerInfo CASCADE CONSTRAINTS;
DROP TABLE UserCreadit CASCADE CONSTRAINTS;
DROP TABLE UserLevel CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_board_ProductNumber;
DROP SEQUENCE SEQ_chating_ChatingMessageNumber;
DROP SEQUENCE SEQ_chating_MailBoxMessageNumber;
DROP SEQUENCE SEQ_MailBox_MailBoxMessageNumber;
DROP SEQUENCE SEQ_MailBox_MailBoxNumber;
DROP SEQUENCE SEQ_ProductCategory_ProductCategoryNumber;
DROP SEQUENCE SEQ_Product_ProductNumber;
DROP SEQUENCE SEQ_SellerInfo_SellerInfoNumber;
DROP SEQUENCE SEQ_ShopingBasket_ShopingBasketNumber;
DROP SEQUENCE SEQ_UserInfo_UserNum;




/* Create Sequences */

CREATE SEQUENCE SEQ_board_ProductNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_chating_ChatingMessageNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_chating_MailBoxMessageNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_MailBox_MailBoxMessageNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_MailBox_MailBoxNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ProductCategory_ProductCategoryNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_Product_ProductNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_SellerInfo_SellerInfoNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ShopingBasket_ShopingBasketNumber INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_UserInfo_UserNum INCREMENT BY 1 START WITH 1;



/* Create Tables */

-- 새 테이블
CREATE TABLE chating
(
	-- 쪽지함 번호
	ChatingMessageNumber number(10,0) NOT NULL,
	-- 쪽지함메세지
	ChatingMessage varchar2(1000) NOT NULL,
	-- 보낸아이디
	SendUserId varchar2(100) NOT NULL UNIQUE,
	-- 채팅방번호
	ChatingRoomNumber number(10,0) NOT NULL,
	PRIMARY KEY (ChatingMessageNumber)
);


-- 새 테이블
CREATE TABLE MailBox
(
	-- 쪽지함 번호
	ChatingMessageNumber number(10,0) NOT NULL,
	-- 쪽지함메세지
	ChatingMessage varchar2(1000) NOT NULL,
	-- 보낸아이디
	SendUserId varchar2(100) NOT NULL UNIQUE,
	-- 받는이 아이디
	ReceiveUserId varchar2(100) NOT NULL UNIQUE,
	PRIMARY KEY (ChatingMessageNumber)
);


-- 새 테이블
CREATE TABLE Product
(
	-- 제품넘버 : 제품번호
	ProductNumber number(10,0) NOT NULL,
	-- 제품이름 : 제품이름
	ProductName varchar2(300) NOT NULL,
	-- 제품분류
	ProductCategory varchar2(50) NOT NULL,
	-- 제품수량
	ProductQuantity number(10,0) NOT NULL,
	-- 제품등록일
	ProductDate varchar2(20) NOT NULL,
	-- 옥션 마감일 : sysdate+?
	-- sysdate+1/(24*60*60*)가 초계산
	-- 나중에 초계산할때 필요
	-- 
	ProductEndDate varchar2(100) NOT NULL,
	-- 제품 최저가격
	ProductLowestPrice number(10,0) NOT NULL,
	-- 제품희망가격
	ProductHopefulPrice  number(10,0) NOT NULL,
	-- 제품사진
	ProductImage varchar2(1000) NOT NULL UNIQUE,
	-- 제품 설명
	ProductDesc varchar2(1000) NOT NULL,
	-- 제품브랜드
	ProductBrand varchar2(100) NOT NULL,
	-- 제품상태
	ProductCondition varchar2(100),
	-- 사용자 아이디
	UserId varchar2(100) NOT NULL,
	-- 사용자 신용도
	UserCreadit varchar2(100) NOT NULL,
	PRIMARY KEY (ProductNumber)
);


-- 새 테이블
CREATE TABLE ProductBidding
(
	-- 제품번호 : 제품번호
	ProductNumber number(10,0) NOT NULL UNIQUE,
	-- 입찰 갯수
	BidCount number(10,0),
	-- 입찰한시간
	BidsDate varchar2(3000),
	-- 입찰자 아이디
	BiddingId varchar2(3000),
	-- 입찰이 끝났는지 : 0이면 진행중
	-- 1이면 끝났다
	BiddingStatus number(2,0) NOT NULL
);


-- 새 테이블
CREATE TABLE ProductCategory
(
	-- 제품카테고리 넘버
	ProductCategoryNumber number(10,0) NOT NULL,
	-- 제품 카테고리
	ProductCategory varchar2(50) NOT NULL UNIQUE,
	-- 제품카테고리설명
	ProductCategoryDesc varchar2(1000),
	PRIMARY KEY (ProductCategoryNumber)
);


-- 새 테이블
CREATE TABLE SellerInfo
(
	-- 판매자번호
	SellerInfoNumber number(10,0) NOT NULL,
	-- 판매자계좌번호
	SellerAccountNumber varchar2(30) NOT NULL,
	-- 판매자 은행
	SellerBank varchar2(50) NOT NULL,
	-- 판매자 포인트
	SellerPoint number(10,0),
	PRIMARY KEY (SellerInfoNumber)
);


-- 새 테이블
CREATE TABLE ShopingBasket
(
	-- 장바구니넘버
	ShopingBasketNumber number(10,0) NOT NULL,
	-- 제품번호 : 제품번호
	ProductNumber number(10,0) NOT NULL UNIQUE,
	-- 제품 분류
	ProductCategory varchar2(50) NOT NULL UNIQUE,
	-- 주문 상태
	StateOfOrder varchar2(30) NOT NULL,
	-- 제품 사진
	ProductImage varchar2(1000) NOT NULL UNIQUE,
	-- 판매자아이디
	UserId varchar2(100) NOT NULL UNIQUE,
	-- 판매자신용도 : (별?)
	UserCreadit varchar2(20) NOT NULL UNIQUE,
	PRIMARY KEY (ShopingBasketNumber)
);


-- 새 테이블
CREATE TABLE UserCreadit
(
	-- 사용자신용도 레벨 : (별?)
	UserCreaditLevel varchar2(20) NOT NULL UNIQUE,
	-- 사용자신용도
	UserCreadit number(10,0),
	-- 사용자 신용도 기타사항  : 신용도 몇점당 얼마 등등
	UserCreditLevelDesc varchar2(1000)
);


-- 새 테이블
CREATE TABLE UserInfo
(
	-- 사용자 번호
	UserNum number(10,0) NOT NULL,
	-- 사용자 이름
	UserName varchar2(16) NOT NULL,
	-- 사용자 아이디
	UserId varchar2(100) NOT NULL UNIQUE,
	-- 사용자 패스워드
	UserPassword varchar2(100) NOT NULL,
	-- 사용자 이메일
	UserEmail varchar2(100) NOT NULL,
	-- 사용자 닉네임
	UserNickName varchar2(100) NOT NULL UNIQUE,
	-- 사용자 전화번호
	UserPhoneNum char(16) NOT NULL,
	-- 사용자 등록일
	UserSignUpDate varchar2(20) NOT NULL,
	-- 사용자 주소
	UserAddress varchar2(100) NOT NULL,
	-- 사용자 나머지주소
	UserAddress2 varchar2(100) NOT NULL,
	-- 사용자 레벨
	UserLevel char(2) NOT NULL,
	-- 사용자 포인트
	UserPoint number(10,0),
	-- 사용자신용도 레벨 : (별?)
	UserCreaditLevel varchar2(20) NOT NULL UNIQUE,
	-- 유저 프로필 사진 : 꼭 안넣어도 됨 업데이트에서 넣을수 있게 하길바람
	UserImeage varchar2(1000),
	PRIMARY KEY (UserNum)
);


-- 새 테이블
CREATE TABLE UserLevel
(
	-- LevelNumber
	LevelNumber number(10,0) NOT NULL,
	-- 사용자 레벨
	UserLevel char(2) NOT NULL UNIQUE,
	-- 레벨설명
	UserLevelDesc varchar2(100) NOT NULL,
	PRIMARY KEY (LevelNumber)
);



/* Create Foreign Keys */

ALTER TABLE ProductBidding
	ADD FOREIGN KEY (ProductNumber)
	REFERENCES Product (ProductNumber)
;


ALTER TABLE ShopingBasket
	ADD FOREIGN KEY (ProductNumber)
	REFERENCES Product (ProductNumber)
;


ALTER TABLE ShopingBasket
	ADD FOREIGN KEY (ProductImage)
	REFERENCES Product (ProductImage)
;


ALTER TABLE Product
	ADD FOREIGN KEY (ProductCategory)
	REFERENCES ProductCategory (ProductCategory)
;


ALTER TABLE ShopingBasket
	ADD FOREIGN KEY (ProductCategory)
	REFERENCES ProductCategory (ProductCategory)
;


ALTER TABLE UserInfo
	ADD FOREIGN KEY (UserNum)
	REFERENCES SellerInfo (SellerInfoNumber)
;


ALTER TABLE UserInfo
	ADD FOREIGN KEY (UserCreaditLevel)
	REFERENCES UserCreadit (UserCreaditLevel)
;


ALTER TABLE Product
	ADD FOREIGN KEY (UserId)
	REFERENCES UserInfo (UserId)
;


ALTER TABLE ShopingBasket
	ADD FOREIGN KEY (UserId)
	REFERENCES UserInfo (UserId)
;


ALTER TABLE ShopingBasket
	ADD FOREIGN KEY (UserCreadit)
	REFERENCES UserInfo (UserCreaditLevel)
;


ALTER TABLE UserInfo
	ADD FOREIGN KEY (UserLevel)
	REFERENCES UserLevel (UserLevel)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_board_ProductNumber BEFORE INSERT ON board
FOR EACH ROW
BEGIN
	SELECT SEQ_board_ProductNumber.nextval
	INTO :new.ProductNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_chating_ChatingMessageNumber BEFORE INSERT ON chating
FOR EACH ROW
BEGIN
	SELECT SEQ_chating_ChatingMessageNumber.nextval
	INTO :new.ChatingMessageNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_chating_MailBoxMessageNumber BEFORE INSERT ON chating
FOR EACH ROW
BEGIN
	SELECT SEQ_chating_MailBoxMessageNumber.nextval
	INTO :new.MailBoxMessageNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_MailBox_MailBoxMessageNumber BEFORE INSERT ON MailBox
FOR EACH ROW
BEGIN
	SELECT SEQ_MailBox_MailBoxMessageNumber.nextval
	INTO :new.MailBoxMessageNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_MailBox_MailBoxNumber BEFORE INSERT ON MailBox
FOR EACH ROW
BEGIN
	SELECT SEQ_MailBox_MailBoxNumber.nextval
	INTO :new.MailBoxNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ProductCategory_ProductCategoryNumber BEFORE INSERT ON ProductCategory
FOR EACH ROW
BEGIN
	SELECT SEQ_ProductCategory_ProductCategoryNumber.nextval
	INTO :new.ProductCategoryNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_Product_ProductNumber BEFORE INSERT ON Product
FOR EACH ROW
BEGIN
	SELECT SEQ_Product_ProductNumber.nextval
	INTO :new.ProductNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_SellerInfo_SellerInfoNumber BEFORE INSERT ON SellerInfo
FOR EACH ROW
BEGIN
	SELECT SEQ_SellerInfo_SellerInfoNumber.nextval
	INTO :new.SellerInfoNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_ShopingBasket_ShopingBasketNumber BEFORE INSERT ON ShopingBasket
FOR EACH ROW
BEGIN
	SELECT SEQ_ShopingBasket_ShopingBasketNumber.nextval
	INTO :new.ShopingBasketNumber
	FROM dual;
END;

/

CREATE OR REPLACE TRIGGER TRI_UserInfo_UserNum BEFORE INSERT ON UserInfo
FOR EACH ROW
BEGIN
	SELECT SEQ_UserInfo_UserNum.nextval
	INTO :new.UserNum
	FROM dual;
END;

/




/* Comments */

COMMENT ON TABLE chating IS '새 테이블';
COMMENT ON COLUMN chating.ChatingMessageNumber IS '쪽지함 번호';
COMMENT ON COLUMN chating.ChatingMessage IS '쪽지함메세지';
COMMENT ON COLUMN chating.SendUserId IS '보낸아이디';
COMMENT ON COLUMN chating.ChatingRoomNumber IS '채팅방번호';
COMMENT ON TABLE MailBox IS '새 테이블';
COMMENT ON COLUMN MailBox.ChatingMessageNumber IS '쪽지함 번호';
COMMENT ON COLUMN MailBox.ChatingMessage IS '쪽지함메세지';
COMMENT ON COLUMN MailBox.SendUserId IS '보낸아이디';
COMMENT ON COLUMN MailBox.ReceiveUserId IS '받는이 아이디';
COMMENT ON TABLE Product IS '새 테이블';
COMMENT ON COLUMN Product.ProductNumber IS '제품넘버 : 제품번호';
COMMENT ON COLUMN Product.ProductName IS '제품이름 : 제품이름';
COMMENT ON COLUMN Product.ProductCategory IS '제품분류';
COMMENT ON COLUMN Product.ProductQuantity IS '제품수량';
COMMENT ON COLUMN Product.ProductDate IS '제품등록일';
COMMENT ON COLUMN Product.ProductEndDate IS '옥션 마감일 : sysdate+?
sysdate+1/(24*60*60*)가 초계산
나중에 초계산할때 필요
';
COMMENT ON COLUMN Product.ProductLowestPrice IS '제품 최저가격';
COMMENT ON COLUMN Product.ProductHopefulPrice  IS '제품희망가격';
COMMENT ON COLUMN Product.ProductImage IS '제품사진';
COMMENT ON COLUMN Product.ProductDesc IS '제품 설명';
COMMENT ON COLUMN Product.ProductBrand IS '제품브랜드';
COMMENT ON COLUMN Product.ProductCondition IS '제품상태';
COMMENT ON COLUMN Product.UserId IS '사용자 아이디';
COMMENT ON COLUMN Product.UserCreadit IS '사용자 신용도';
COMMENT ON TABLE ProductBidding IS '새 테이블';
COMMENT ON COLUMN ProductBidding.ProductNumber IS '제품번호 : 제품번호';
COMMENT ON COLUMN ProductBidding.BidCount IS '입찰 갯수';
COMMENT ON COLUMN ProductBidding.BidsDate IS '입찰한시간';
COMMENT ON COLUMN ProductBidding.BiddingId IS '입찰자 아이디';
COMMENT ON COLUMN ProductBidding.BiddingStatus IS '입찰이 끝났는지 : 0이면 진행중
1이면 끝났다';
COMMENT ON TABLE ProductCategory IS '새 테이블';
COMMENT ON COLUMN ProductCategory.ProductCategoryNumber IS '제품카테고리 넘버';
COMMENT ON COLUMN ProductCategory.ProductCategory IS '제품 카테고리';
COMMENT ON COLUMN ProductCategory.ProductCategoryDesc IS '제품카테고리설명';
COMMENT ON TABLE SellerInfo IS '새 테이블';
COMMENT ON COLUMN SellerInfo.SellerInfoNumber IS '판매자번호';
COMMENT ON COLUMN SellerInfo.SellerAccountNumber IS '판매자계좌번호';
COMMENT ON COLUMN SellerInfo.SellerBank IS '판매자 은행';
COMMENT ON COLUMN SellerInfo.SellerPoint IS '판매자 포인트';
COMMENT ON TABLE ShopingBasket IS '새 테이블';
COMMENT ON COLUMN ShopingBasket.ShopingBasketNumber IS '장바구니넘버';
COMMENT ON COLUMN ShopingBasket.ProductNumber IS '제품번호 : 제품번호';
COMMENT ON COLUMN ShopingBasket.ProductCategory IS '제품 분류';
COMMENT ON COLUMN ShopingBasket.StateOfOrder IS '주문 상태';
COMMENT ON COLUMN ShopingBasket.ProductImage IS '제품 사진';
COMMENT ON COLUMN ShopingBasket.UserId IS '판매자아이디';
COMMENT ON COLUMN ShopingBasket.UserCreadit IS '판매자신용도 : (별?)';
COMMENT ON TABLE UserCreadit IS '새 테이블';
COMMENT ON COLUMN UserCreadit.UserCreaditLevel IS '사용자신용도 레벨 : (별?)';
COMMENT ON COLUMN UserCreadit.UserCreadit IS '사용자신용도';
COMMENT ON COLUMN UserCreadit.UserCreditLevelDesc IS '사용자 신용도 기타사항  : 신용도 몇점당 얼마 등등';
COMMENT ON TABLE UserInfo IS '새 테이블';
COMMENT ON COLUMN UserInfo.UserNum IS '사용자 번호';
COMMENT ON COLUMN UserInfo.UserName IS '사용자 이름';
COMMENT ON COLUMN UserInfo.UserId IS '사용자 아이디';
COMMENT ON COLUMN UserInfo.UserPassword IS '사용자 패스워드';
COMMENT ON COLUMN UserInfo.UserEmail IS '사용자 이메일';
COMMENT ON COLUMN UserInfo.UserNickName IS '사용자 닉네임';
COMMENT ON COLUMN UserInfo.UserPhoneNum IS '사용자 전화번호';
COMMENT ON COLUMN UserInfo.UserSignUpDate IS '사용자 등록일';
COMMENT ON COLUMN UserInfo.UserAddress IS '사용자 주소';
COMMENT ON COLUMN UserInfo.UserAddress2 IS '사용자 나머지주소';
COMMENT ON COLUMN UserInfo.UserLevel IS '사용자 레벨';
COMMENT ON COLUMN UserInfo.UserPoint IS '사용자 포인트';
COMMENT ON COLUMN UserInfo.UserCreaditLevel IS '사용자신용도 레벨 : (별?)';
COMMENT ON COLUMN UserInfo.UserImeage IS '유저 프로필 사진 : 꼭 안넣어도 됨 업데이트에서 넣을수 있게 하길바람';
COMMENT ON TABLE UserLevel IS '새 테이블';
COMMENT ON COLUMN UserLevel.LevelNumber IS 'LevelNumber';
COMMENT ON COLUMN UserLevel.UserLevel IS '사용자 레벨';
COMMENT ON COLUMN UserLevel.UserLevelDesc IS '레벨설명';



