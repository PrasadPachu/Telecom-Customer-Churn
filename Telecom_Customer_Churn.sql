create database MavenPro2;
use MavenPro2;
select * from telecom_customer_churn;
select * from  telecom_zipcode_population;

-- KPI 1.1
-- Total Num of customer

select count(Cust_id) From telecom_customer_churn;

-- KPI 1.2
-- Avg Monthly Charges
select round(avg(Monthly_Charge),1) as Avg_Monthly_Charges From telecom_customer_churn;

-- KPI 1.3
-- Total Revenue
select round(sum(Total_Revenue),1)As Total_Revenue From telecom_customer_churn;

-- KPI 1.4
-- Churned Customer

select   count(Customer_Status) As Churned_Customers from telecom_customer_churn
where Customer_Status="churned";


-- KPI 1.5
-- MONTHLY LOST
select round(sum(Monthly_Charge),1) As Lost_Rev from telecom_customer_churn
where Customer_Status="churned";

-- KPI 1.6
-- Churned
select round(sum(Total_Revenue),1) As Lost_Rev from telecom_customer_churn
where Customer_Status="churned";

-- KPI 2
-- Contract Type.
select Contract,count(Contract )from telecom_customer_churn group by Contract ;

-- KPI 3
-- Top Churn Category 
select Churn_Category,count(Churn_Category)from telecom_customer_churn 
group by Churn_Category;


-- KPI 3.2
-- Top Churn Resion 
select Churn_Reason, count(Churn_Reason)as Count_Churn_Reason from telecom_customer_churn 
group by Churn_Reason;

-- KPI 3.3
-- Top Offers

select Offer,count(offer) from telecom_customer_churn
group by offer ;


-- KPI 4
-- City 
select City ,Round(sum(Total_Revenue),1) from telecom_customer_churn
group by city
order by Total_Revenue 
;

-- KPI 5
-- Internet_Type
select Internet_Type, round(sum(Total_Revenue),1) As Total_Revenue_by_Internet_Type from telecom_customer_churn
group by Internet_Type ;

-- Kpi 5.1
-- Age wise bin.
select floor(Age/10) *10  as Bin, count(Cust_ID) from telecom_customer_churn group by bin ;