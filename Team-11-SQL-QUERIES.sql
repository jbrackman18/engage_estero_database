-- Would it be possible to extract the first name and last name of each person along with their roles?

SELECT persons.last_name as Last_Name, persons.first_name as First_Name, officer_director_details.role_title as Roles
FROM officer_director_details
JOIN persons on persons.person_id = officer_director_details.person_id;


-- Would it be possible to find their addresses as well as their numbers?

CREATE OR REPLACE FUNCTION officer_emails()
RETURNS TABLE (last_name varchar(100), first_name varchar(100), email_address varchar(100), phone_number varchar(20)) as $$
BEGIN
	RETURN QUERY
	SELECT 
		persons.last_name,
		persons.first_name,
		persons.email,
		persons.phone
	FROM
		persons;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM officer_emails();

-- Can you provide me the toal amount of people per role?

SELECT COUNT(persons.person_id) as People_Amount, officer_director_details.role_title
FROM officer_director_details
JOIN persons on persons.person_id = officer_director_details.person_id
GROUP BY officer_director_details.role_title;

-- Can you provide me the total amount of people per organization where the amount of people per organization is 
-- greater than or equal to 1?

SELECT COUNT (registered_agents.agent_id) as Agent_Count, organization_name
FROM registered_agents
JOIN organizations on registered_agents.organization_id = organizations.organization_id
GROUP BY organization_name
HAVING COUNT (registered_agents.agent_id) >= 1;

-- Can you provide a way to get every signature date starting from recently added?

SELECT annual_reports.filing_number AS Report_File_Number, filing_signatures.signature_date, filing_signatures.signature_id
FROM filing_signatures
LEFT OUTER JOIN annual_reports on annual_reports.report_id = filing_signatures.report_id
ORDER BY filing_signatures.signature_date DESC;

-- How would we add someone to this table?

INSERT INTO persons (first_name,last_name,email,phone)
VALUES ('Bob','Ryan','bob.ryan@email.com','555-0021');

SELECT *
FROM persons;

-- How would I remove someone from this table?

DELETE FROM persons where (persons.first_name = 'Bob' and persons.last_name = 'Ryan'); 

-- Can you filter organization officers based on which state they live in?

CREATE OR REPLACE FUNCTION filter_officer_state (Officer_State CHAR(2))
RETURNS TABLE (last_name varchar(100), first_name varchar(100), email_address varchar(100), phone_number varchar(20),person_state char(2)) as $$
BEGIN
	RETURN QUERY
	SELECT 
		persons.last_name,
		persons.first_name,
		persons.email,
		persons.phone,
		directors_and_officers.state
	FROM
		persons
	JOIN directors_and_officers on persons.person_id = directors_and_officers.person_id
	WHERE directors_and_officers.state = Officer_State;
END;
$$ LANGUAGE plpgsql;

SELECT *
FROM filter_officer_state('NY');

-- Can you provide the average total_expenses of all organizations?

SELECT AVG(financial_reports.total_expenses) as AVG_Total_Expenses
FROM financial_reports;

-- Can you provide the total_liabilites per organization including the financial report id's?

SELECT financial_reports.financial_report_id, financial_reports.total_liabilities, organizations.organization_name
FROM financial_reports
JOIN organizations on financial_reports.organization_id = organizations.organization_id
GROUP BY organizations.organization_name, financial_reports.total_liabilities, financial_reports.financial_report_id
ORDER BY financial_reports.total_liabilities DESC;


