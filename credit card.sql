create database ccdb;
show variables like "secure_file_priv";
create table cc_detail (
    Client_Num BIGINT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\credit_card.csv'
into table cc_detail
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\customer.csv'
into table cust_detail
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;

select * from cust_detail;
select * from cc_detail;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cc_add.csv'
into table cc_detail
fields terminated by '\t'
lines terminated by '\r\n'
ignore 1 lines;

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cust_add.csv'
into table cust_detail
fields terminated by ','
lines terminated by '\n'
ignore 1 lines;

select count(Client_Num) as row_num from cust_detail;
select count(Client_Num) as row_num from cc_detail;
