-- ============================================================
-- POPULATION: Insert 20 records into persons
-- ============================================================

INSERT INTO persons (first_name, last_name, email, phone) VALUES
('John', 'Smith', 'john.smith@email.com', '555-0001'),
('Jane', 'Doe', 'jane.doe@email.com', '555-0002'),
('Michael', 'Johnson', 'michael.johnson@email.com', '555-0003'),
('Sarah', 'Williams', 'sarah.williams@email.com', '555-0004'),
('Robert', 'Brown', 'robert.brown@email.com', '555-0005'),
('Emily', 'Davis', 'emily.davis@email.com', '555-0006'),
('William', 'Miller', 'william.miller@email.com', '555-0007'),
('Jennifer', 'Wilson', 'jennifer.wilson@email.com', '555-0008'),
('David', 'Moore', 'david.moore@email.com', '555-0009'),
('Lisa', 'Taylor', 'lisa.taylor@email.com', '555-0010'),
('Richard', 'Anderson', 'richard.anderson@email.com', '555-0011'),
('Mary', 'Thomas', 'mary.thomas@email.com', '555-0012'),
('Joseph', 'Jackson', 'joseph.jackson@email.com', '555-0013'),
('Patricia', 'White', 'patricia.white@email.com', '555-0014'),
('Charles', 'Harris', 'charles.harris@email.com', '555-0015'),
('Linda', 'Martin', 'linda.martin@email.com', '555-0016'),
('Christopher', 'Thompson', 'christopher.thompson@email.com', '555-0017'),
('Barbara', 'Garcia', 'barbara.garcia@email.com', '555-0018'),
('Daniel', 'Martinez', 'daniel.martinez@email.com', '555-0019'),
('Susan', 'Robinson', 'susan.robinson@email.com', '555-0020');


-- ============================================================
-- INSERT into organizations (15 records)
-- ============================================================

INSERT INTO organizations (organization_name, entity_type, fei_number, document_number, filed_date, certificate_of_status_desired) VALUES
('Community Health Foundation', 'Not-for-Profit', '12-3456789', 'DOC001', '2020-01-15', true),
('Tech Solutions Inc', 'Corporation', '12-3456790', 'DOC002', '2020-02-20', false),
('Global Enterprises LLC', 'LLC', '12-3456791', 'DOC003', '2020-03-10', true),
('Educational Alliance', 'Association', '12-3456792', 'DOC004', '2020-04-05', false),
('Business Solutions Ltd', 'Corporation', '12-3456793', 'DOC005', '2020-05-12', true),
('Innovation Labs', 'LLC', '12-3456794', 'DOC006', '2020-06-18', false),
('Social Impact Organization', 'Not-for-Profit', '12-3456795', 'DOC007', '2020-07-22', true),
('Professional Services Group', 'Association', '12-3456796', 'DOC008', '2020-08-30', false),
('Digital Transformation Co', 'Corporation', '12-3456797', 'DOC009', '2020-09-14', true),
('Wellness Initiative', 'Not-for-Profit', '12-3456798', 'DOC010', '2020-10-25', false),
('Strategic Partners LLC', 'LLC', '12-3456799', 'DOC011', '2020-11-08', true),
('Youth Development Program', 'Not-for-Profit', '12-3456800', 'DOC012', '2020-12-16', false),
('Enterprise Solutions', 'Corporation', '12-3456801', 'DOC013', '2021-01-20', true),
('Creative Industries', 'Association', '12-3456802', 'DOC014', '2021-02-14', false),
('Healthcare Network', 'Not-for-Profit', '12-3456803', 'DOC015', '2021-03-22', true);


-- ============================================================
-- INSERT into organization_locations (20 records)
-- ============================================================

INSERT INTO organization_locations (organization_id, location_type, street_address, city, state, zip) VALUES
(1, 'Principal Place of Business', '123 Main Street', 'New York', 'NY', '10001'),
(1, 'Mailing Address', '456 Park Avenue', 'New York', 'NY', '10022'),
(2, 'Principal Place of Business', '789 Tech Drive', 'San Francisco', 'CA', '94105'),
(2, 'Mailing Address', '321 Innovation Way', 'San Jose', 'CA', '95110'),
(3, 'Principal Place of Business', '555 Commerce Boulevard', 'Chicago', 'IL', '60601'),
(3, 'Mailing Address', '222 Business Park', 'Arlington', 'TX', '76010'),
(4, 'Principal Place of Business', '777 Healthcare Plaza', 'Boston', 'MA', '02101'),
(4, 'Mailing Address', '888 Medical Center Drive', 'Philadelphia', 'PA', '19103'),
(5, 'Principal Place of Business', '999 Education Way', 'Atlanta', 'GA', '30303'),
(5, 'Mailing Address', '111 Learning Lane', 'Denver', 'CO', '80202'),
(6, 'Principal Place of Business', '333 Business Solutions', 'Houston', 'TX', '77002'),
(6, 'Mailing Address', '444 Corporate Drive', 'Miami', 'FL', '33128'),
(7, 'Principal Place of Business', '555 Innovation Road', 'Seattle', 'WA', '98101'),
(7, 'Mailing Address', '666 Tech Park', 'Portland', 'OR', '97201'),
(8, 'Principal Place of Business', '777 Community Center', 'Phoenix', 'AZ', '85001'),
(8, 'Mailing Address', '888 Social Way', 'Las Vegas', 'NV', '89101'),
(9, 'Principal Place of Business', '999 Professional Avenue', 'Philadelphia', 'PA', '19103'),
(9, 'Mailing Address', '111 Service Lane', 'San Antonio', 'TX', '78201'),
(10, 'Principal Place of Business', '222 Digital Drive', 'Austin', 'TX', '78701'),
(10, 'Mailing Address', '333 Technology Way', 'Dallas', 'TX', '75201');


-- ============================================================
-- INSERT into registered_agents (15 records)
-- ============================================================

INSERT INTO registered_agents (organization_id, agent_name, agent_company, street_address, city, state, zip, appointment_date) VALUES
(1, 'John Smith', 'Legal Services Inc', '100 Law Street', 'New York', 'NY', '10001', '2020-01-15'),
(2, 'Jane Doe', 'Tech Legal Group', '200 Tech Lane', 'San Francisco', 'CA', '94105', '2020-02-20'),
(3, 'Michael Johnson', 'Corporate Services LLC', '300 Business Ave', 'Chicago', 'IL', '60601', '2020-03-10'),
(4, 'Sarah Williams', 'Healthcare Compliance', '400 Medical Plaza', 'Boston', 'MA', '02101', '2020-04-05'),
(5, 'Robert Brown', 'Education Services', '500 School Drive', 'Atlanta', 'GA', '30303', '2020-05-12'),
(6, 'Emily Davis', 'Business Solutions', '600 Corporate Drive', 'Houston', 'TX', '77002', '2020-06-18'),
(7, 'William Miller', 'Innovation Legal', '700 Tech Park', 'Seattle', 'WA', '98101', '2020-07-22'),
(8, 'Jennifer Wilson', 'Non-profit Services', '800 Community Lane', 'Phoenix', 'AZ', '85001', '2020-08-30'),
(9, 'David Moore', 'Professional Services', '900 Business Way', 'Philadelphia', 'PA', '19103', '2020-09-14'),
(10, 'Lisa Taylor', 'Tech Compliance', '1000 Digital Drive', 'Austin', 'TX', '78701', '2020-10-25'),
(11, 'Richard Anderson', 'Health Services', '1100 Wellness Ave', 'Los Angeles', 'CA', '90001', '2020-11-08'),
(12, 'Mary Thomas', 'Strategic Services', '1200 Partner Lane', 'San Diego', 'CA', '92101', '2020-12-16'),
(13, 'Joseph Jackson', 'Youth Services', '1300 Development Drive', 'Sacramento', 'CA', '95814', '2021-01-20'),
(14, 'Patricia White', 'Enterprise Legal', '1400 Solution Ave', 'New Orleans', 'LA', '70112', '2021-02-14'),
(15, 'Charles Harris', 'Creative Legal', '1500 Industry Lane', 'Nashville', 'TN', '37201', '2021-03-22');


-- ============================================================
-- INSERT into officer_director_details (20 records)
-- ============================================================

INSERT INTO officer_director_details (person_id, organization_id, role_title, appointment_date, report_date) VALUES
(1, 1, 'Executive Director', '2020-01-15', '2025-06-30'),
(2, 1, 'Chief Financial Officer', '2020-01-15', '2025-06-30'),
(3, 2, 'President', '2020-02-20', '2025-06-30'),
(4, 2, 'Chief Operating Officer', '2020-02-20', '2025-06-30'),
(5, 3, 'Managing Member', '2020-03-10', '2025-06-30'),
(6, 3, 'Secretary', '2020-03-10', '2025-06-30'),
(7, 4, 'Executive Director', '2020-04-05', '2025-06-30'),
(8, 4, 'Vice President', '2020-04-05', '2025-06-30'),
(9, 5, 'President', '2020-05-12', '2025-06-30'),
(10, 5, 'Treasurer', '2020-05-12', '2025-06-30'),
(11, 6, 'Chief Executive Officer', '2020-06-18', '2025-06-30'),
(12, 6, 'General Counsel', '2020-06-18', '2025-06-30'),
(13, 7, 'President', '2020-07-22', '2025-06-30'),
(14, 7, 'Vice President', '2020-07-22', '2025-06-30'),
(15, 8, 'Executive Director', '2020-08-30', '2025-06-30'),
(16, 8, 'Finance Director', '2020-08-30', '2025-06-30'),
(17, 9, 'President', '2020-09-14', '2025-06-30'),
(18, 9, 'Secretary', '2020-09-14', '2025-06-30'),
(19, 10, 'Executive Director', '2020-10-25', '2025-06-30'),
(20, 10, 'Deputy Director', '2020-10-25', '2025-06-30');


-- ============================================================
-- INSERT into annual_reports (18 records)
-- ============================================================

INSERT INTO annual_reports (organization_id, report_year, filing_date, report_type, secretary_of_state_received_date, filing_number) VALUES
(1, 2022, '2023-01-15', 'Annual Report', '2023-01-20', 'AR-2022-001'),
(1, 2023, '2024-01-15', 'Annual Report', '2024-01-20', 'AR-2023-001'),
(2, 2022, '2023-02-15', 'Annual Report', '2023-02-20', 'AR-2022-002'),
(2, 2023, '2024-02-15', 'Annual Report', '2024-02-20', 'AR-2023-002'),
(3, 2022, '2023-03-15', 'Amended Annual Report', '2023-03-20', 'AR-2022-003'),
(3, 2023, '2024-03-15', 'Annual Report', '2024-03-20', 'AR-2023-003'),
(4, 2022, '2023-04-15', 'Annual Report', '2023-04-20', 'AR-2022-004'),
(4, 2023, '2024-04-15', 'Annual Report', '2024-04-20', 'AR-2023-004'),
(5, 2022, '2023-05-15', 'Annual Report', '2023-05-20', 'AR-2022-005'),
(5, 2023, '2024-05-15', 'Annual Report', '2024-05-20', 'AR-2023-005'),
(6, 2022, '2023-06-15', 'Annual Report', '2023-06-20', 'AR-2022-006'),
(6, 2023, '2024-06-15', 'Annual Report', '2024-06-20', 'AR-2023-006'),
(7, 2022, '2023-07-15', 'Annual Report', '2023-07-20', 'AR-2022-007'),
(8, 2022, '2023-08-15', 'Annual Report', '2023-08-20', 'AR-2022-008'),
(9, 2022, '2023-09-15', 'Annual Report', '2023-09-20', 'AR-2022-009'),
(10, 2022, '2023-10-15', 'Amended Annual Report', '2023-10-20', 'AR-2022-010'),
(11, 2022, '2023-11-15', 'Annual Report', '2023-11-20', 'AR-2022-011'),
(12, 2022, '2023-12-15', 'Annual Report', '2023-12-20', 'AR-2022-012');


-- ============================================================
-- INSERT into filing_signatures (20 records)
-- ============================================================

INSERT INTO filing_signatures (report_id, person_id, signature_date, signature_title, signature_method) VALUES
(1, 1, '2023-01-15', 'Executive Director', 'Electronic'),
(1, 2, '2023-01-15', 'Chief Financial Officer', 'Electronic'),
(2, 1, '2024-01-15', 'Executive Director', 'Electronic'),
(2, 2, '2024-01-15', 'Chief Financial Officer', 'Electronic'),
(3, 3, '2023-02-15', 'President', 'Manual'),
(3, 4, '2023-02-15', 'Chief Operating Officer', 'Manual'),
(4, 3, '2024-02-15', 'President', 'Electronic'),
(4, 4, '2024-02-15', 'Chief Operating Officer', 'Electronic'),
(5, 5, '2023-03-15', 'Managing Member', 'Electronic'),
(5, 6, '2023-03-15', 'Secretary', 'Electronic'),
(6, 5, '2024-03-15', 'Managing Member', 'Manual'),
(6, 6, '2024-03-15', 'Secretary', 'Manual'),
(7, 7, '2023-04-15', 'Executive Director', 'Electronic'),
(7, 8, '2023-04-15', 'Vice President', 'Electronic'),
(8, 7, '2024-04-15', 'Executive Director', 'Electronic'),
(8, 8, '2024-04-15', 'Vice President', 'Electronic'),
(9, 9, '2023-05-15', 'President', 'Manual'),
(9, 10, '2023-05-15', 'Treasurer', 'Manual'),
(10, 9, '2024-05-15', 'President', 'Electronic'),
(10, 10, '2024-05-15', 'Treasurer', 'Electronic');


-- ============================================================
-- INSERT into directors_and_officers (20 records)
-- ============================================================

INSERT INTO directors_and_officers (person_id, organization_id, date_of_birth, address_line_1, city, state, zip, occupation, citizenship, appointment_date) VALUES
(1, 1, '1965-03-15', '100 Executive Lane', 'New York', 'NY', '10001', 'Healthcare Administrator', 'United States', '2020-01-15'),
(2, 1, '1970-05-22', '101 Executive Lane', 'New York', 'NY', '10001', 'Financial Analyst', 'United States', '2020-01-15'),
(3, 2, '1960-07-18', '200 Tech Boulevard', 'San Francisco', 'CA', '94105', 'Technology Executive', 'United States', '2020-02-20'),
(4, 2, '1968-09-10', '201 Tech Boulevard', 'San Francisco', 'CA', '94105', 'Operations Manager', 'United States', '2020-02-20'),
(5, 3, '1962-11-28', '300 Commerce Lane', 'Chicago', 'IL', '60601', 'Business Consultant', 'United States', '2020-03-10'),
(6, 3, '1963-01-14', '301 Commerce Lane', 'Chicago', 'IL', '60601', 'Legal Secretary', 'United States', '2020-03-10'),
(7, 4, '1964-02-25', '400 Health Drive', 'Boston', 'MA', '02101', 'Education Director', 'United States', '2020-04-05'),
(8, 4, '1966-04-08', '401 Health Drive', 'Boston', 'MA', '02101', 'Program Manager', 'United States', '2020-04-05'),
(9, 5, '1961-06-30', '500 Education Ave', 'Atlanta', 'GA', '30303', 'Business Owner', 'United States', '2020-05-12'),
(10, 5, '1969-08-17', '501 Education Ave', 'Atlanta', 'GA', '30303', 'Finance Director', 'United States', '2020-05-12'),
(11, 6, '1963-10-12', '600 Business Way', 'Houston', 'TX', '77002', 'Chief Executive', 'United States', '2020-06-18'),
(12, 6, '1967-12-05', '601 Business Way', 'Houston', 'TX', '77002', 'Attorney at Law', 'United States', '2020-06-18'),
(13, 7, '1962-03-20', '700 Innovation Drive', 'Seattle', 'WA', '98101', 'Technology Consultant', 'United States', '2020-07-22'),
(14, 7, '1968-05-11', '701 Innovation Drive', 'Seattle', 'WA', '98101', 'Vice President', 'United States', '2020-07-22'),
(15, 8, '1961-07-08', '800 Social Lane', 'Phoenix', 'AZ', '85001', 'Non-profit Director', 'United States', '2020-08-30'),
(16, 8, '1964-09-14', '801 Social Lane', 'Phoenix', 'AZ', '85001', 'Grant Manager', 'United States', '2020-08-30'),
(17, 9, '1960-11-19', '900 Professional Ave', 'Philadelphia', 'PA', '19103', 'Consultant', 'United States', '2020-09-14'),
(18, 9, '1965-01-02', '901 Professional Ave', 'Philadelphia', 'PA', '19103', 'Administrative Manager', 'United States', '2020-09-14'),
(19, 10, '1963-02-28', '1000 Digital Lane', 'Austin', 'TX', '78701', 'IT Director', 'United States', '2020-10-25'),
(20, 10, '1969-04-16', '1001 Digital Lane', 'Austin', 'TX', '78701', 'Deputy Director', 'United States', '2020-10-25');


-- ============================================================
-- INSERT into board_meetings (20 records)
-- ============================================================

INSERT INTO board_meetings (organization_id, meeting_date, meeting_type, location, meeting_minutes_file, quorum_present, total_attendees) VALUES
(1, '2023-02-15', 'Regular', 'New York Office Conference Room A', 'minutes_2023_02_15.pdf', true, 5),
(1, '2023-05-20', 'Regular', 'New York Office Conference Room A', 'minutes_2023_05_20.pdf', true, 5),
(1, '2023-08-10', 'Special', 'Virtual Meeting', 'minutes_2023_08_10.pdf', true, 4),
(1, '2023-11-15', 'Regular', 'New York Office Conference Room A', 'minutes_2023_11_15.pdf', true, 5),
(2, '2023-03-01', 'Regular', 'San Francisco Tech Hub', 'minutes_2023_03_01.pdf', true, 6),
(2, '2023-06-15', 'Regular', 'San Francisco Tech Hub', 'minutes_2023_06_15.pdf', true, 6),
(2, '2023-09-20', 'Regular', 'San Francisco Tech Hub', 'minutes_2023_09_20.pdf', true, 5),
(2, '2023-12-10', 'Special', 'Virtual Meeting', 'minutes_2023_12_10.pdf', true, 4),
(3, '2023-03-15', 'Regular', 'Chicago Downtown Office', 'minutes_2023_03_15.pdf', true, 4),
(3, '2023-06-20', 'Regular', 'Chicago Downtown Office', 'minutes_2023_06_20.pdf', true, 4),
(4, '2023-04-01', 'Regular', 'Boston Medical District', 'minutes_2023_04_01.pdf', true, 5),
(4, '2023-07-15', 'Regular', 'Boston Medical District', 'minutes_2023_07_15.pdf', true, 5),
(5, '2023-04-20', 'Regular', 'Atlanta Education Center', 'minutes_2023_04_20.pdf', true, 6),
(5, '2023-07-25', 'Regular', 'Atlanta Education Center', 'minutes_2023_07_25.pdf', true, 6),
(6, '2023-05-10', 'Regular', 'Houston Business Park', 'minutes_2023_05_10.pdf', true, 5),
(6, '2023-08-15', 'Regular', 'Houston Business Park', 'minutes_2023_08_15.pdf', true, 5),
(7, '2023-05-25', 'Regular', 'Seattle Tech Campus', 'minutes_2023_05_25.pdf', true, 4),
(7, '2023-08-30', 'Special', 'Virtual Meeting', 'minutes_2023_08_30.pdf', true, 3),
(8, '2023-06-05', 'Regular', 'Phoenix Community Center', 'minutes_2023_06_05.pdf', true, 5),
(9, '2023-06-20', 'Regular', 'Philadelphia Office', 'minutes_2023_06_20.pdf', true, 6);


-- ============================================================
-- INSERT into board_meeting_attendance (20 records)
-- ============================================================

INSERT INTO board_meeting_attendance (meeting_id, person_id, attendance_status, proxy_voted) VALUES
(1, 1, 'Present', false),
(1, 2, 'Present', false),
(1, 7, 'Present', false),
(1, 8, 'Excused', false),
(1, 15, 'Present', false),
(2, 1, 'Present', false),
(2, 2, 'Present', false),
(2, 7, 'Absent', false),
(2, 8, 'Present', false),
(2, 15, 'Present', false),
(3, 1, 'Present', false),
(3, 2, 'Present', false),
(3, 7, 'Present', false),
(3, 8, 'Present', false),
(4, 1, 'Present', false),
(4, 2, 'Present', false),
(4, 7, 'Present', false),
(4, 8, 'Excused', true),
(4, 15, 'Present', false),
(5, 3, 'Present', false);


-- ============================================================
-- INSERT into financial_reports (18 records)
-- ============================================================

INSERT INTO financial_reports (organization_id, report_year, report_date, report_type, total_revenue, total_expenses, net_income, total_assets, total_liabilities, net_assets, filing_status, filing_date, irs_received_date, audited, audit_firm_name) VALUES
(1, 2022, '2023-03-15', '990', 5250000.00, 4875000.00, 375000.00, 15750000.00, 5250000.00, 10500000.00, 'Filed', '2023-03-15', '2023-04-01', true, 'Deloitte & Touche'),
(1, 2023, '2024-03-15', '990', 5600000.00, 5168000.00, 432000.00, 16250000.00, 5100000.00, 11150000.00, 'Filed', '2024-03-15', '2024-04-01', true, 'Deloitte & Touche'),
(2, 2022, '2023-04-01', '990-N', 2800000.00, 2590000.00, 210000.00, 8450000.00, 2820000.00, 5630000.00, 'Filed', '2023-04-01', '2023-04-20', false, NULL),
(2, 2023, '2024-04-01', '990', 3050000.00, 2806000.00, 244000.00, 9200000.00, 2700000.00, 6500000.00, 'Filed', '2024-04-01', '2024-04-20', true, 'PwC'),
(3, 2022, '2023-04-15', '990-EZ', 3850000.00, 3542000.00, 308000.00, 10650000.00, 3200000.00, 7450000.00, 'Filed', '2023-04-15', '2023-05-01', true, 'EY'),
(3, 2023, '2024-04-15', '990', 4125000.00, 3790000.00, 335000.00, 11450000.00, 3100000.00, 8350000.00, 'Filed', '2024-04-15', '2024-05-01', true, 'EY'),
(4, 2022, '2023-05-01', '990', 4750000.00, 4380000.00, 370000.00, 13450000.00, 4200000.00, 9250000.00, 'Filed', '2023-05-01', '2023-05-20', true, 'KPMG'),
(4, 2023, '2024-05-01', '990-N', 5100000.00, 4590000.00, 510000.00, 14250000.00, 4050000.00, 10200000.00, 'Filed', '2024-05-01', '2024-05-20', false, NULL),
(5, 2022, '2023-05-15', '990-EZ', 2150000.00, 1972000.00, 178000.00, 6450000.00, 1610000.00, 4840000.00, 'Filed', '2023-05-15', '2023-06-01', false, NULL),
(5, 2023, '2024-05-15', '990', 2380000.00, 2172000.00, 208000.00, 7050000.00, 1540000.00, 5510000.00, 'Filed', '2024-05-15', '2024-06-01', true, 'BDO'),
(6, 2022, '2023-06-01', '990', 6400000.00, 5920000.00, 480000.00, 19200000.00, 6400000.00, 12800000.00, 'Filed', '2023-06-01', '2023-06-20', true, 'Deloitte & Touche'),
(6, 2023, '2024-06-01', '990-N', 6850000.00, 6333000.00, 517000.00, 20700000.00, 6210000.00, 14490000.00, 'Filed', '2024-06-01', '2024-06-20', false, NULL),
(7, 2022, '2023-07-15', '990-EZ', 1625000.00, 1490000.00, 135000.00, 4875000.00, 1300000.00, 3575000.00, 'Filed', '2023-07-15', '2023-08-01', false, NULL),
(7, 2023, '2024-07-15', '990', 1800000.00, 1620000.00, 180000.00, 5400000.00, 1200000.00, 4200000.00, 'Filed', '2024-07-15', '2024-08-01', true, 'Grant Thornton'),
(8, 2022, '2023-08-01', '990', 3500000.00, 3212000.00, 288000.00, 10500000.00, 3100000.00, 7400000.00, 'Filed', '2023-08-01', '2023-08-20', true, 'CliftonLarsonAllen'),
(8, 2023, '2024-08-01', '990-N', 3800000.00, 3475000.00, 325000.00, 11300000.00, 2980000.00, 8320000.00, 'Filed', '2024-08-01', '2024-08-20', false, NULL),
(9, 2022, '2023-09-15', '990', 4250000.00, 3905000.00, 345000.00, 12750000.00, 3825000.00, 8925000.00, 'Pending', '2023-09-15', NULL, false, NULL),
(10, 2022, '2023-10-01', '990-EZ', 2750000.00, 2505000.00, 245000.00, 8250000.00, 2475000.00, 5775000.00, 'Amended', '2023-10-01', '2023-10-20', true, 'CohnReznick');