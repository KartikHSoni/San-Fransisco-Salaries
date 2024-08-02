select * from salaries
limit 10;

select EmployeeName,JobTitle from salaries;

select count(*) from salaries ;

select distinct JobTitle  from salaries;

select JobTitle,OvertimePay from salaries
where OvertimePay > 50000;

select avg(BasePay) from salaries;

select TotalPay from salaries
order by TotalPay desc
limit 10;

select EmployeeName,avg(BasePay+OvertimePay+TotalPay)/3 as "average pay"from salaries
group by EmployeeName;

select EmployeeName,JobTitle from salaries
where JobTitle like '%Manager%';

select EmployeeName,JobTitle from salaries
where JobTitle not like '%Manager%';

select EmployeeName,TotalPay from salaries
where TotalPay between '50000' and '60000';

select EmployeeName,BasePay,TotalPay from salaries
where BasePay < 50000 and TotalPay > 100000;

select EmployeeName,TotalPayBenefits from salaries
where TotalPayBenefits between 125000 and 150000
and  JobTitle Like '%Director%';

select EmployeeName from salaries
order by TotalPayBenefits desc;

select JobTitle,avg(BasePay)  from salaries
group by JobTitle
having avg(BasePay) > 100000 
order by avg(BasePay) desc;

select * from salaries;
alter table salaries
drop column Notes;

select * from salaries;
update salaries
set BasePay = BasePay * 1.1
where JobTitle like '%Manager%';

delete from salaries
where OvertimePay =0;
select * from salaries;

select count(Id) from salaries
where OvertimePay = 0;
