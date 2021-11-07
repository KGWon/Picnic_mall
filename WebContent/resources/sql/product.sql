-- 상품 정보 테이블 생성
create table if not exists product(
	p_id varchar(10) not null,
	p_name varchar(10),
	p_unitPrice integer,
	p_description TEXT,
	p_category varchar(20),
	p_manufacturer varchar(20),
	p_unitsInStock LONG,
	p_condition varchar(20),
	p_fileName varchar(20),
	PRIMARY key (p_id)
)default CHARSET=utf8;

-- 상품 테이블 정보 확인
desc product

-- 상품 테이블 전체 검색
select * from product

-- 회원 정보 테이블 생성
create table if not exists member(
	id varchar(10) not null,
	password varchar(10) not null,
	name varchar(10) not null,
	gender varchar(4),
	birth varchar(10),
	mail varchar(30),
	phone varchar(20),
	address varchar(90),
	regist_day varchar(50),
	primary key(id)
) default Charset=utf8;

-- 회원 테이블 정보 확인
desc member