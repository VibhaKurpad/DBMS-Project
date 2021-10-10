--Name: Vibha Kurpad
 --SRN: PES1201800158

create table job(job_id number(3) primary key,
	function varchar2(20) not null
   )
;
create table location(location_id varchar2(3) primary key,
	description varchar2(20) not null
  )
;
create table department(dept_id varchar2(4) primary key,
	name varchar2(20) not null,
	location_id varchar2(3) not null,
	constraint loc_id_fk foreign key(location_id)
	references location(location_id)
   )
;
create table employee(emp_id varchar2(6) primary key,
	fname varchar2(20) not null,
	lname varchar2(20) not null,
	dept_id varchar2(4) null,
	salary number(7) not null,
	hire_date date not null,
	job_id number(3) not null,
	manager_emp_id varchar2(6),
	constraint dept_id_fk foreign key(dept_id)
	references department(dept_id),
	constraint job_id_fk foreign key(job_id)
	references job(job_id),
	constraint mngr_id_fk foreign key(manager_emp_id)
	references employee(emp_id)
    )
;
create table customer(cust_nbr varchar2(2) primary key,
	name varchar2(20) not null,
	inactive_dt date,
	inactive_ind number(1) not null,
	tot_orders number(5),
	last_order_dt date
  )
;
create table cust_order(order_nbr varchar2(2) primary key,
	cust_nbr varchar2(2) not null,
	sale_price number(9,2) not null,
	order_dt date not null,
	expected_ship_dt date,
	cancelled_dt date,
	ship_dt date,
	status varchar2(20) not null,
	constraint cust_nbr_fk foreign key(cust_nbr)
	references customer(cust_nbr),
	constraint date_check check(order_dt < cancelled_dt)
	)
;
create table supplier(supplier_id number(2) primary key,
	name varchar2(30) not null,
	constraint valid_sup check(supplier_id between 1 and 99)
	)
;
create table part(part_nbr varchar2(3)primary key,
	name varchar2(30) not null,
	supplier_id number(2) not null,
	status varchar2(20) not null,
	inventory_qty number(5),
	unit_cost number(8,2) not null,
	constraint supplier_id_fk foreign key(supplier_id)
	references supplier(supplier_id)
	)
;
create table line_item(order_nbr varchar2(2),
	part_nbr varchar2(3),
	qty number(5) not null,
	fill_qty number(5) not null,
	constraint line_item_pk primary key (order_nbr,part_nbr),
	constraint order_nbr_fk foreign key(order_nbr)
	references cust_order(order_nbr),
	constraint part_nbr_fk foreign key(part_nbr)
	references part(part_nbr),
	constraint valid_qty check(fill_qty <= qty) 
	)
;
