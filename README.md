# Telecom-Customer-Churn

#mavenanalytics 

** This project Data is given by MAVENANALYTICS.

** https://www.mavenanalytics.io/

** I have Used MySQl And Power BI to complete this Project.

Churn data for a fictional Telecommunications company that provides phone and internet services to 7,043 customers in California, and includes details about customer demographics, location, services, and current status.

Recommended Analysis

How many customers joined the company during the last quarter? How many customers joined?

What is the customer profile for a customer that churned, joined, and stayed? Are they different?

What seem to be the key drivers of customer churn?

Is the company losing high value customers? If so, how can they retain them?

Dashboard

<img width="808" alt="Screenshot of Dashboard png" src="https://github.com/PrasadPachu/Telecom-Customer-Churn/assets/104089846/756f3b2d-6a29-4041-94ca-82c949fe46cb">


SQL


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


select   count(Customer_Status) As Churned_Customers 
from telecom_customer_churn
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

-- KPI 5.1

-- Internet_Type

select Internet_Type, round(sum(Total_Revenue),1) As Total_Revenue_by_Internet_Type from telecom_customer_churn
group by Internet_Type ;

-- Kpi 5.2

-- Age wise bin.

select floor(Age/10) *10  as Bin, count(Cust_ID) from telecom_customer_churn group by bin ;

