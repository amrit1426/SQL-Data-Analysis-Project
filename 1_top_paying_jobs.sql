/*
Question: What are the top-paying data analyst jobs?

- Identify the top 10 highest-paying Data Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls).
- Why? Highlight the top-paying opportunities for Data Analysts, offering insights into top skills reqired as such roles.
*/
SELECT
   job_id,
   job_title,
   job_location,
   job_schedule_type,
   salary_year_avg,
   job_posted_date,
   name AS company_name
FROM
   job_postings_fact
LEFT JOIN 
	company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
   job_title_short = 'Data Analyst' AND
   job_location IN ('Anywhere', 'India') AND 
   salary_year_avg IS NOT NULL
ORDER BY 
	salary_year_avg DESC 
LIMIT 10

-- =========================================================
-- Key Insights: Highest Paying Full-Time Remote Data Roles
-- =========================================================

/*
The highest-paying role is a Data Analyst at Mantys with an exceptional average salary of $650K, far above the market.
Director and Associate Director roles dominate the upper salary range, confirming strong pay growth with seniority.
All top-paying roles are full-time and location-flexible, highlighting the premium on remote senior analytics positions.
*/
