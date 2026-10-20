-- Create tables for the cleaned data.
-- Load the data from Python (notebooks/03_load_postgres.ipynb) or with COPY / pgAdmin import.
-- Do NOT store passwords in this file.

DROP TABLE IF EXISTS violations;
DROP TABLE IF EXISTS inspections;

CREATE TABLE inspections (
    inspection_id    BIGINT PRIMARY KEY,
    dba_name         TEXT,
    license_no       TEXT,
    facility_type    TEXT,
    risk             TEXT,
    zip              TEXT,
    inspection_date  DATE,
    inspection_type  TEXT,
    results          TEXT,
    is_fail          BOOLEAN,
    latitude         DOUBLE PRECISION,
    longitude        DOUBLE PRECISION
);

CREATE TABLE violations (
    inspection_id    BIGINT REFERENCES inspections(inspection_id),
    violation_code   INT,
    violation_desc   TEXT
);

-- Check after loading
-- SELECT COUNT(*) FROM inspections;
-- SELECT COUNT(*) FROM violations;
