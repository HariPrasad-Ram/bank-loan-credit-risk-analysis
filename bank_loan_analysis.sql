use bank_loan_data;
SELECT COUNT(*) AS Total_Applications FROM bank_loan_data;

SELECT COUNT(*) AS PMTD_Total_Loan_Applications
FROM bank_loan_data
WHERE MONTH(issue_date_dt) = 11
  AND YEAR(issue_date_dt) = 2021;
  
  -- Total_Funded_Amount
  SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount
FROM bank_loan_data
WHERE MONTH(issue_date_dt) = 11
  AND YEAR(issue_date_dt) = 2021;
  
  -- MTD / PMTD Sum of total_payment (amount received)
  
  SELECT SUM(total_payment) AS MTD_Total_Amount_received
FROM bank_loan_data
WHERE MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y')) = 12
  AND YEAR(STR_TO_DATE(issue_date, '%d-%m-%Y')) = 2021;

SELECT SUM(total_payment) AS PMTD_Total_Amount_received
FROM bank_loan_data
WHERE MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y')) = 11
  AND YEAR(STR_TO_DATE(issue_date, '%d-%m-%Y')) = 2021;
  
  -- Average Interest Rate
  select round(avg(int_rate),4)*100 as  avg_interest_Rate from bank_loan_data;
  
   select round(avg(int_rate),4)*100 as  MTD_avg_interest_Rate from bank_loan_data
   WHERE MONTH(issue_date_dt) = 12
  AND YEAR(issue_date_dt) = 2021;
  
 -- MTD Average DTI and Average Interest Rate (December 2021)
 SELECT 
  ROUND(AVG(dti) * 100, 2) AS MTD_Avg_DTI_pct,
  ROUND(AVG(int_rate) * 100, 2) AS MTD_Avg_Interest_Rate_pct
FROM bank_loan_data
 WHERE MONTH(issue_date_dt) = 11
  AND YEAR(issue_date_dt) = 2021;
  
  --  Good loans (status = 'Fully Paid' OR 'Current') - count, funded amount, amount received
  SELECT 
  COUNT(*) AS Good_Loan_Applications,
  SUM(loan_amount) AS Good_Loan_Funded_Amount,
  SUM(total_payment) AS Good_Loan_amount_received
FROM bank_loan_data
WHERE loan_status IN ('Fully Paid','Current');

-- Bad loans (status = 'Charged Off') - count, funded amount, amount received

SELECT 
  COUNT(*) AS Bad_Loan_Applications,
  SUM(loan_amount) AS Bad_Loan_Funded_amount,
  SUM(total_payment) AS Bad_Loan_amount_received
FROM bank_loan_data
WHERE loan_status = 'Charged Off';

-- Bad loan percentage of total (as percent)
	
    SELECT 
  ( SUM(CASE WHEN loan_status = 'Charged Off' THEN 1 ELSE 0 END) / COUNT(*) ) * 100.0 
    AS Bad_Loan_Percentage
FROM bank_loan_data;

-- Loan status summary 

SELECT
  loan_status,
  COUNT(*) AS LoanCount,
  SUM(total_payment) AS Total_Amount_Received,
  SUM(loan_amount)  AS Total_Funded_Amount,
  ROUND(AVG(int_rate * 100), 2) AS Interest_Rate_pct,
  ROUND(AVG(dti * 100), 2) AS DTI_pct
FROM bank_loan_data
GROUP BY loan_status
ORDER BY LoanCount DESC;

SELECT
  loan_status,
  SUM(total_payment) AS MTD_Total_Amount_Received,
  SUM(loan_amount)  AS MTD_Total_Funded_Amount
FROM bank_loan_data
WHERE MONTH(issue_date_dt) = 12
  AND YEAR(issue_date_dt) = 2021
GROUP BY loan_status
ORDER BY MTD_Total_Amount_Received DESC;

SELECT
    address_state,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC;

SELECT
    address_state,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;

SELECT
    MONTH(STR_TO_DATE(issue_date, '%d-%m-%Y')) AS Month_Number,
    MONTHNAME(STR_TO_DATE(issue_date, '%d-%m-%Y')) AS Month_Name,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY Month_Number, Month_Name
ORDER BY Month_Number;
  
  
SELECT
    term,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  term
ORDER BY  term;


SELECT
    emp_length,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY   emp_length
ORDER BY   emp_length;

 
   SELECT
 Purpose,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY  Purpose
ORDER BY  count(id) desc;


 SELECT
 home_ownership,
    COUNT(id) AS Total_Loan_Applications,
    SUM(loan_amount) AS Total_Funded_Amount,
    SUM(total_payment) AS Total_Received_Amount
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY  count(id) desc;
 

