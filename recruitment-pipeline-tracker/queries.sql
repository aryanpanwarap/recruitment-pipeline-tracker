-- ============================================
-- RECRUITMENT PIPELINE TRACKER — SQL QUERIES
-- Aryan Panwar | github.com/aryanpanwarap
-- ============================================

-- Q1: Pipeline Funnel — how many candidates at each stage?
SELECT 
    stage,
    COUNT(*) AS total_candidates,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM recruitment_pipeline), 1) AS pct_of_total
FROM recruitment_pipeline
GROUP BY stage
ORDER BY total_candidates DESC;


-- Q2: Source Conversion — which channel brings the best candidates?
SELECT 
    source,
    COUNT(*) AS total_applied,
    SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) AS total_hired,
    SUM(CASE WHEN status = 'Rejected' THEN 1 ELSE 0 END) AS total_rejected,
    ROUND(SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS hire_rate_pct
FROM recruitment_pipeline
GROUP BY source
ORDER BY hire_rate_pct DESC;


-- Q3: Recruiter Performance — who closes the most hires?
SELECT 
    recruiter,
    COUNT(*) AS total_handled,
    SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) AS hires,
    SUM(CASE WHEN status = 'Rejected' THEN 1 ELSE 0 END) AS rejections,
    ROUND(SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS hire_rate_pct,
    ROUND(AVG(years_exp), 1) AS avg_candidate_exp
FROM recruitment_pipeline
GROUP BY recruiter
ORDER BY hire_rate_pct DESC;


-- Q4: Monthly Application Trend — volume over time
SELECT 
    strftime('%Y-%m', app_date) AS month,
    COUNT(*) AS total_applications,
    SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) AS hires_that_month
FROM recruitment_pipeline
GROUP BY month
ORDER BY month;


-- Q5: Role-wise Conversion — which roles are hardest to fill?
SELECT 
    role,
    COUNT(*) AS total_applicants,
    SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) AS hired,
    ROUND(SUM(CASE WHEN status = 'Hired' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS hire_rate_pct
FROM recruitment_pipeline
GROUP BY role
ORDER BY hire_rate_pct ASC;


-- Q6: Drop-off Analysis — where do candidates fall out the most?
SELECT 
    stage,
    COUNT(*) AS total_reached_stage,
    SUM(CASE WHEN status = 'Rejected' THEN 1 ELSE 0 END) AS rejected_here,
    ROUND(SUM(CASE WHEN status = 'Rejected' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS rejection_rate_pct
FROM recruitment_pipeline
GROUP BY stage
ORDER BY rejection_rate_pct DESC;
