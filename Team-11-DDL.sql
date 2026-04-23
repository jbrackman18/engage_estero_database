-- ============================================================
-- TABLE: persons
-- Stores detailed information about individuals
-- ============================================================

CREATE TABLE persons (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- ============================================================
-- TABLE: organizations
-- Stores detailed information about NOG/corporation entities
-- ============================================================

CREATE TABLE organizations (
    organization_id SERIAL PRIMARY KEY,
    organization_name VARCHAR(200) NOT NULL UNIQUE,
    entity_type VARCHAR(50) NOT NULL,
    fei_number VARCHAR(20) UNIQUE,
    document_number VARCHAR(20),
    filed_date DATE,
    certificate_of_status_desired BOOLEAN DEFAULT FALSE,
    
    CHECK (entity_type IN ('Not-for-Profit', 'Corporation', 'Association', 'LLC'))
);


-- ============================================================
-- TABLE: organization_locations
-- Stores multiple addresses for an organization
-- ============================================================

CREATE TABLE organization_locations (
    location_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    location_type VARCHAR(50) NOT NULL,
    street_address VARCHAR(255) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state CHAR(2) NOT NULL,
    zip VARCHAR(10) NOT NULL,
    
    CHECK (state ~ '^[A-Z]{2}$'),
    CHECK (zip ~ '^[0-9]{5}(-[0-9]{4})?$'),
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: registered_agents
-- Tracks registered agents for organizations
-- ============================================================

CREATE TABLE registered_agents (
    agent_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    agent_name VARCHAR(100) NOT NULL,
    agent_company VARCHAR(150),
    street_address VARCHAR(255),
    city VARCHAR(50),
    state CHAR(2),
    zip VARCHAR(10),
    appointment_date DATE,
    
    CHECK (state ~ '^[A-Z]{2}$'),
    CHECK (zip ~ '^[0-9]{5}(-[0-9]{4})?$'),
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: officer_director_details
-- Stores detailed officer and director information
-- ============================================================

CREATE TABLE officer_director_details (
    detail_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    organization_id INT NOT NULL,
    role_title VARCHAR(100) NOT NULL,
    appointment_date DATE,
    report_date DATE,
    
    FOREIGN KEY (person_id)
        REFERENCES persons(person_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: annual_reports
-- Tracks annual report filings for organizations
-- ============================================================

CREATE TABLE annual_reports (
    report_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    report_year INT NOT NULL,
    filing_date DATE NOT NULL,
    report_type VARCHAR(100),
    secretary_of_state_received_date DATE,
    filing_number VARCHAR(20),
    
    UNIQUE (organization_id, report_year),
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: filing_signatures
-- Tracks signatures on official filings/documents
-- ============================================================

CREATE TABLE filing_signatures (
    signature_id SERIAL PRIMARY KEY,
    report_id INT NOT NULL,
    person_id INT NOT NULL,
    signature_date DATE NOT NULL,
    signature_title VARCHAR(100),
    signature_method VARCHAR(50),
    
    FOREIGN KEY (report_id)
        REFERENCES annual_reports(report_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    FOREIGN KEY (person_id)
        REFERENCES persons(person_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: directors_and_officers
-- Detailed personal and professional information for board members
-- ============================================================

CREATE TABLE directors_and_officers (
    director_officer_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    organization_id INT NOT NULL,
    date_of_birth DATE,
    address_line_1 VARCHAR(255),
    address_line_2 VARCHAR(255),
    city VARCHAR(100),
    state CHAR(2),
    zip VARCHAR(10),
    country VARCHAR(100) DEFAULT 'USA',
    occupation VARCHAR(150),
    citizenship VARCHAR(100),
    appointment_date DATE,
    termination_date DATE,
    
    CHECK (state ~ '^[A-Z]{2}$'),
    CHECK (zip ~ '^[0-9]{5}(-[0-9]{4})?$'),
    
    FOREIGN KEY (person_id)
        REFERENCES persons(person_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: board_meetings
-- Tracks board meetings and attendance records
-- ============================================================

CREATE TABLE board_meetings (
    meeting_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    meeting_date DATE NOT NULL,
    meeting_type VARCHAR(100),  -- 'Regular', 'Special', 'Emergency', etc.
    location VARCHAR(255),
    meeting_minutes_file VARCHAR(255),  -- File path or URL
    quorum_present BOOLEAN,
    total_attendees INT,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: board_meeting_attendance
-- Tracks individual attendance at board meetings
-- ============================================================

CREATE TABLE board_meeting_attendance (
    attendance_id SERIAL PRIMARY KEY,
    meeting_id INT NOT NULL,
    person_id INT NOT NULL,
    attendance_status VARCHAR(50),  -- 'Present', 'Absent', 'Excused', etc.
    proxy_voted BOOLEAN DEFAULT FALSE,
    proxy_voted_by VARCHAR(100),
    
    FOREIGN KEY (meeting_id)
        REFERENCES board_meetings(meeting_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    
    FOREIGN KEY (person_id)
        REFERENCES persons(person_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


-- ============================================================
-- TABLE: financial_reports
-- Financial data and summaries for organizations
-- ============================================================

CREATE TABLE financial_reports (
    financial_report_id SERIAL PRIMARY KEY,
    organization_id INT NOT NULL,
    report_year INT NOT NULL,
    report_date DATE NOT NULL,
    report_type VARCHAR(100),  -- '990', '990-N', '990-EZ', etc.
    total_revenue DECIMAL(15,2),
    total_expenses DECIMAL(15,2),
    net_income DECIMAL(15,2),
    total_assets DECIMAL(15,2),
    total_liabilities DECIMAL(15,2),
    net_assets DECIMAL(15,2),
    filing_status VARCHAR(50),  -- 'Filed', 'Pending', 'Amended', etc.
    filing_date DATE,
    irs_received_date DATE,
    audited BOOLEAN DEFAULT FALSE,
    audit_firm_name VARCHAR(255),
    
    UNIQUE (organization_id, report_year),
    
    FOREIGN KEY (organization_id)
        REFERENCES organizations(organization_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);