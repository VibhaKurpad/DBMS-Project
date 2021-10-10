--Name: Vibha Kurpad
--SRN: PES1201800158

insert into job values(01,'SALESPERSON');
insert into job values(02,'MARKETING ASSOCIATE');
insert into job values(03,'FINANCIAL ANALYIST');
insert into job values(04,'ACCOUNTANT');
insert into job values(05,'ACCOUNTING MANAGER');
insert into job values(06,'MARKETING MANAGER');
insert into job values(07,'SALES MANAGER');
insert into job values(08,'CEO');
insert into job values(09,'SALES ASSISTANT');
insert into job values(10,'MARKETING ANALYIST');
insert into job values(11,'PRODUCT ENGINEER');
insert into job values(12,'PARTS SPECIALIST');
insert into job values(13,'OPERATIONS MANAGER');
insert into job values(14,'WAREHOUSE ASSOCIATE');
insert into job values(15,'RESEARCH MANAGER');

insert into location values('L01','DALLAS');
insert into location values('L02','BOSTON');
insert into location values('L03','CHICAGO');

insert into department values('D001','ACCOUNTING','L03');
insert into department values('D002','RESEARCH','L01');
insert into department values('D003','SALES','L02');
insert into department values('D004','OPERATIONS','L02');

insert into employee values('EMP001','DANA','CLARK',NULL,1000000, to_date('16/06/2008', 'DD/MM/YYYY'), 08,NULL);
insert into employee values('EMP002','JOE','MILLER','D003',86000, to_date('17/07/2011', 'DD/MM/YYYY'), 07,'EMP001');
insert into employee values('EMP003','TIM','SCOTT','D004',78000, to_date('06/01/2012', 'DD/MM/YYYY'), 13,'EMP001');
insert into employee values('EMP004','EMILY','TURNER','D003',79000, to_date('08/03/2011', 'DD/MM/YYYY'), 06,'EMP001');
insert into employee values('EMP005','JAMES','MARTIN','D002',76000, to_date('24/08/2014', 'DD/MM/YYYY'), 15,'EMP001');
insert into employee values('EMP006','EVA','TYLER','D001',77000, to_date('26/05/2013', 'DD/MM/YYYY'), 05,'EMP001');
insert into employee values('EMP007','TOM','FORD','D003',50000, to_date('23/12/2012', 'DD/MM/YYYY'), 01,'EMP002');
insert into employee values('EMP008','JACOB','SMITH','D003',51000, to_date('29/01/2012', 'DD/MM/YYYY'), 01,'EMP002');
insert into employee values('EMP009','SARAH','WILLIAMS','D003',50000, to_date('18/03/2013', 'DD/MM/YYYY'), 01,'EMP002');
insert into employee values('EMP010','BLAKE','LIVELY','D003',60000, to_date('22/11/2013', 'DD/MM/YYYY'), 02,'EMP004');
insert into employee values('EMP011','SAM','JONES','D001',63000, to_date('13/05/2014', 'DD/MM/YYYY'), 03,'EMP006');
insert into employee values('EMP012','MEGAN','ADAMS','D001',63000, to_date('05/02/2014', 'DD/MM/YYYY'), 03,'EMP006');
insert into employee values('EMP013','JOE','JONAS','D001',64000, to_date('23/03/2015', 'DD/MM/YYYY'), 04,'EMP006');
insert into employee values('EMP014','OLIVER','TRUDEAU','D003',45000, to_date('12/06/2014', 'DD/MM/YYYY'), 09,'EMP002');
insert into employee values('EMP015','JOHN','WARD','D003',62000, to_date('27/08/2013', 'DD/MM/YYYY'), 10,'EMP002');
insert into employee values('EMP016','SOPHIA','ROSE','D003',62000, to_date('31/12/2013', 'DD/MM/YYYY'), 10,'EMP002');
insert into employee values('EMP017','KATE','BLANE','D002',57000, to_date('01/03/2013', 'DD/MM/YYYY'), 11,'EMP005');
insert into employee values('EMP018','JEREMY','PHILIP','D002',57000, to_date('09/09/2014', 'DD/MM/YYYY'), 11,'EMP005');
insert into employee values('EMP019','JUSTIN','LAKER','D002',59000, to_date('14/10/2014', 'DD/MM/YYYY'), 12,'EMP005');
insert into employee values('EMP020','MIA','LOPEZ','D004',40000, to_date('2/07/2012', 'DD/MM/YYYY'), 14,'EMP003');

insert into customer values('C1','COOPER INDUSTRIES',to_date('23/12/2018', 'DD/MM/YYYY'),1,0,to_date('23/12/2018', 'DD/MM/YYYY'));
insert into customer values('C2','DITECH CORP',NULL,0,1,to_date('02/02/2020', 'DD/MM/YYYY'));
insert into customer values('C3','WALLACE LABS',NULL,0,2,to_date('04/03/2020', 'DD/MM/YYYY'));
insert into customer values('C4','TURNTECH INC.',NULL,0,3,to_date('23/02/2020', 'DD/MM/YYYY'));
insert into customer values('C5','OWENS-BAXTER CORP',to_date('13/06/2019', 'DD/MM/YYYY'),1,0,to_date('13/06/2019', 'DD/MM/YYYY'));
insert into customer values('C6','JAZTECH CORP',NULL,0,3,to_date('29/02/2020', 'DD/MM/YYYY'));

insert into cust_order values('O1','C2',720,to_date('02/02/2020', 'DD/MM/YYYY'),to_date('04/02/2020', 'DD/MM/YYYY'),NULL,to_date('04/02/2020', 'DD/MM/YYYY'),'DELIVERED');
insert into cust_order values('O2','C3',225,to_date('31/01/2020', 'DD/MM/YYYY'),to_date('02/02/2020', 'DD/MM/YYYY'),to_date('01/02/2020', 'DD/MM/YYYY'),NULL,'CANCELLED');
insert into cust_order values('O3','C3',725,to_date('04/03/2020', 'DD/MM/YYYY'),to_date('06/03/2020', 'DD/MM/YYYY'),NULL,to_date('07/03/2020', 'DD/MM/YYYY'),'DELIVERED');
insert into cust_order values('O4','C4',320,to_date('23/02/2020', 'DD/MM/YYYY'),to_date('25/02/2020', 'DD/MM/YYYY'),NULL,to_date('25/02/2020', 'DD/MM/YYYY'),'DELIVERED');
insert into cust_order values('O5','C4',900,to_date('14/02/2020', 'DD/MM/YYYY'),to_date('16/02/2020', 'DD/MM/YYYY'),NULL,to_date('16/02/2020', 'DD/MM/YYYY'),'DELIVERED');
insert into cust_order values('O6','C4',600,to_date('18/02/2020', 'DD/MM/YYYY'),to_date('20/02/2020', 'DD/MM/YYYY'),to_date('19/02/2020', 'DD/MM/YYYY'),NULL,'CANCELLED');
insert into cust_order values('O7','C6',650,to_date('21/02/2020', 'DD/MM/YYYY'),to_date('23/02/2020', 'DD/MM/YYYY'),NULL,to_date('24/02/2020', 'DD/MM/YYYY'),'DELIVERED');
insert into cust_order values('O8','C6',290,to_date('27/02/2020', 'DD/MM/YYYY'),to_date('29/02/2020', 'DD/MM/YYYY'),NULL,to_date('29/02/2020', 'DD/MM/YYYY'),'DELIVERED');
insert into cust_order values('O9','C6',480,to_date('29/02/2020', 'DD/MM/YYYY'),to_date('02/03/2020', 'DD/MM/YYYY'),to_date('01/03/2020', 'DD/MM/YYYY'),NULL,'CANCELLED');

insert into supplier values(1,'ACME INDUSTRIES');
insert into supplier values(2,'TILTON ENTERPRISES');
insert into supplier values(3,'GOODYEAR TIRE COMPANY');
insert into supplier values(4,'BORNWAGON MANUFACTURERS');
insert into supplier values(5,'TENNECO');
insert into supplier values(6,'LEAR CORP.');

insert into part values('P1','BONNET',1,'OBSOLETE',0,950);
insert into part values('P2','RADIATOR',6,'ACTIVE',140,200);
insert into part values('P3','DOOR HANDLE',2,'ACTIVE',160,25);
insert into part values('P4','SUN ROOF',4,'FROZEN',80,150);
insert into part values('P5','GLASS',1,'ACTIVE',100,10);
insert into part values('P6','WINDOW MOTOR',3,'ACTIVE',120,30);
insert into part values('P7','RIM',4,'ACTIVE',180,100);
insert into part values('P8','TIRE',3,'ACTIVE',160,50);
insert into part values('P9','DOOR',2,'ACTIVE',60,325);
insert into part values('P10','SPOILER',6,'OBSOLETE',0,300);

insert into line_item values('O1','P7',10,7);
insert into line_item values('O1','P5',2,2);
insert into line_item values('O2','P2',1,1);
insert into line_item values('O2','P3',1,1);
insert into line_item values('O3','P9',3,2);
insert into line_item values('O3','P3',3,3);
insert into line_item values('O4','P2',1,1);
insert into line_item values('O4','P7',1,1);
insert into line_item values('O4','P5',3,2);
insert into line_item values('O5','P2',4,4);
insert into line_item values('O5','P8',2,2);
insert into line_item values('O6','P4',4,4);
insert into line_item values('O7','P2',3,3);
insert into line_item values('O7','P8',1,1);
insert into line_item values('O8','P2',1,1);
insert into line_item values('O8','P6',3,3);
insert into line_item values('O9','P4',3,3);
insert into line_item values('O9','P6',1,1);




