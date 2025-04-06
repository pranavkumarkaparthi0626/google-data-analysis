-- Student Performance Analysis SQL

---

## 🌐 View My Dashboard on Tableau Public

🔗 [Click here to explore the Student Performance Dashboard] - https://public.tableau.com/views/Book1_16375149630080/Dashboard1?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link


-- 1. Average Scores by Gender
SELECT 
    gender,
    AVG("math score") AS avg_math,
    AVG("reading score") AS avg_reading,
    AVG("writing score") AS avg_writing
FROM 
    StudentsPerformance
GROUP BY 
    gender;

-- 2. Impact of Test Preparation Course on Scores
SELECT 
    "test preparation course",
    AVG("math score") AS avg_math,
    AVG("reading score") AS avg_reading,
    AVG("writing score") AS avg_writing
FROM 
    StudentsPerformance
GROUP BY 
    "test preparation course";

-- 3. Average Scores by Parental Level of Education
SELECT 
    "parental level of education",
    AVG("math score") AS avg_math,
    AVG("reading score") AS avg_reading,
    AVG("writing score") AS avg_writing
FROM 
    StudentsPerformance
GROUP BY 
    "parental level of education";

-- 4. Score Distribution Summary
SELECT 
    MIN("math score") AS min_math,
    MAX("math score") AS max_math,
    MIN("reading score") AS min_reading,
    MAX("reading score") AS max_reading,
    MIN("writing score") AS min_writing,
    MAX("writing score") AS max_writing
FROM 
    StudentsPerformance;
