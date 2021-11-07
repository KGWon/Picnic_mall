-- 게시판 테이블 생성
 
create table mvc_board(
    bId int PRIMARY KEY not null auto_increment,
    bName VARCHAR(20),
    bTitle VARCHAR(100),
    bContent VARCHAR(300),
    bDate VARCHAR(30),
    bHit int,
    bGroup INT,
    bStep int,
    bIndent int
);