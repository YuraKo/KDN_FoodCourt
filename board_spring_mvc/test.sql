
-- DEPT TABLE DATA

INSERT INTO DEPT  (DEPTNO, DNAME, LOC)
VALUES  (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO DEPT  (DEPTNO, DNAME, LOC)
VALUES  (20, 'RESEARCH', 'DALLAS');

INSERT INTO DEPT  (DEPTNO, DNAME, LOC)
VALUES  (30, 'SALES', 'CHICAGO');
INSERT INTO DEPT  (DEPTNO, DNAME, LOC)
VALUES  (40, 'OPERATIONS', 'BOSTON');


-- EMP TABLE DATA

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES
  (7369, 'SMITH', 'CLERK', 7902, '19801217',1600, 300,  20);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES
  (7499, 'ALLEN', 'SALESMAN', 7698, '19810220', 1600, 300, 30);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM,  DEPTNO)
VALUES
  (7521, 'WARD', 'SALESMAN', 7698, '19810222', 1250, 500, 30);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7566, 'JONES', 'MANAGER', 7839, '19810402', 2975, 20);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES
  (7654, 'MARTIN', 'SALESMAN', 7698, '19810928', 1250, 1400, 30);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7698, 'BLAKE', 'MANAGER', 7839, '19810501', 2850, 30);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7782, 'CLARK', 'MANAGER', 7839, '19810609', 2450,  10);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7788, 'SCOTT', 'ANALYST', 7566, '19870419', 3000, 20);

INSERT INTO EMP
  (EMPNO, ENAME, JOB,  HIREDATE, SAL,  DEPTNO)
VALUES
  (7839, 'KING', 'PRESIDENT', '19811117', 5000,  10);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7844, 'TURNER', 'SALESMAN', 7698, '19810908', 1500,  30);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7876, 'ADAMS', 'CLERK', 7788, '19870523', 1100,  20);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7900, 'JAMES', 'CLERK', 7698, '19811203', 950,  30);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL,  DEPTNO)
VALUES
  (7902, 'FORD', 'ANALYST', 7566, '19811203', 3000,  20);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES
  (7934, 'MILLER', 'CLERK', 7782, '19820123', 1300,  10);

INSERT INTO EMP
  (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL)
VALUES
  (1234, 'KELLY', 'CLERK', 7782, '19820123', 1300);


-- SALGRADE TABLE DATA

INSERT INTO SALGRADE  (GRADE, LOSAL, HISAL)
VALUES  (1, 700, 1200);

INSERT INTO SALGRADE  (GRADE, LOSAL, HISAL)
VALUES  (2, 1201, 1400);

INSERT INTO SALGRADE  (GRADE, LOSAL, HISAL)
VALUES  (3, 1401, 2000);

INSERT INTO SALGRADE  (GRADE, LOSAL, HISAL)
VALUES  (4, 2001, 3000);

INSERT INTO SALGRADE  (GRADE, LOSAL, HISAL)
VALUES  (5, 3001, 9999);




--MEMBER DATA
insert into member(id, password, name, email, address)
values('kdn','1111','����','admin@kdn.co.kr','���� ���ֽ�');
insert into member(id, password, name, email, address)
values('kdg','1111','�赿��','kdg@androidjava.com','����� ���ϱ�');
insert into member(id, password, name, email, address)
values('sjlee','1111','�̼���','sjlee@androidjava.com','����� ���ʱ�');


--BOARD DATA
INSERT INTO board VALUES(board_no.nextval,'kdg','first board',sysdate,'ó���ϴ� �Խ��� ����...');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','hello world java',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','hello world java',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','hello world java',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','hello world java',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','hello world java',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','hello world java',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','bbbbb',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','bbbbb',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'kdg','bbbbb',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ó���ϴ� ',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ó���ϴ� ',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ó���ϴ� ',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ó���ϴ� ',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','���� ���� �� ����',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','���� ���� �� ����',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','���� ���� �� ����',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','���� ���� �� ����',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','���� ���� �� ����',sysdate,'bbbb');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ģ����~~ ',sysdate,'aaa');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ģ����~~ ',sysdate,'kkk');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ģ����~~ ',sysdate,'kkk');
INSERT INTO board VALUES(board_no.NEXTVAL, 'sjlee','�ȳ�~ ģ����~~ ',sysdate,'kkk');

INSERT INTO BOARDFILE (NO, SFILENAME, RFILENAME, BNO)
VALUES (BOARDFILE_NO.NEXTVAL, 'a.txt','a.txt',1);
INSERT INTO BOARDFILE (NO, SFILENAME, RFILENAME, BNO)
VALUES (BOARDFILE_NO.NEXTVAL, 'a.txt','a.txt',3);

COMMIT;

--CATEGORY DATA
insert into category (cno, name) values(10,'��ǰ');
insert into category (cno, name) values(20,'������ǰ');
insert into category (cno, name) values(30,'������/����');
insert into category (cno, name) values(40,'����');

--GOODS DATA
insert into goods (gno,brand, price, maker,  image, cno)
values(goods_no.NEXTVAL, '���Ŀ� ���ô� ������', 9000,'���۽Ǿ�','afternoonTea.png', 10);
insert into goods (gno,brand, price, maker,  image, cno)
values(goods_no.NEXTVAL,'usb ���콺', 12000,'�Ｚ����','usbmouse.png', 20);
insert into goods (gno,brand, price, maker,  image, cno)
values(goods_no.NEXTVAL,'java�� �Բ�', 25000,'jaen','java.png', 40);
insert into goods (gno,brand, price, maker,  image, cno)
values(goods_no.NEXTVAL,'Oracle�� ���� SQL �⺻', 38000,'jaen','sql.png', 40);


--ORDERS DATA
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20150818', 'kdn', 2 , 1 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20150818', 'kdg', 4 , 2 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160111', 'sjlee', 4 , 2 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160115', 'sjlee', 1 , 20 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160130', 'kdg', 2 , 20 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160131', 'kdn', 3 , 100 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160212', 'kdg', 4 , 10 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160322', 'kdg', 4 , 10 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160323', 'sjlee', 1 , 40 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160323', 'kdg', 4 , 2 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,'20160323', 'kdg', 2 , 2 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,ADD_MONTHS(SYSDATE,-1), 'kdn', 1 , 1 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,ADD_MONTHS(SYSDATE, -1), 'sjlee', 2 , 2 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,SYSDATE, 'kdg', 1 , 1 ,'����');
insert into orders (ono,odate, id, gno, quantity, address)
values(orders_no.NEXTVAL,sysdate, 'sjlee', 2 , 2 ,'����');


COMMIT;

SELECT * FROM member;
SELECT * FROM board;
