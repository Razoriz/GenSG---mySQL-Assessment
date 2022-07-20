/* Question 1 - what are the Top 25 schools (.edu domains)? */
SELECT
     email_domain. COUNT(email_domain) 
FROM 
    users
WHERE 
    email_domain LIKE '%.edu'
GROUP BY email_domain
ORDER BY COUNT(email_domain) DESC
LIMIT 25;

/* Question 2 - How many .edu learners are located in New York? */
SELECT
     count(*)
FROM
    users
WHERE
    city = "New York";

/* Question 3 - How many of these Codecademy learners are using the mobile app? */
SELECT
     count(*)
FROM
    users
WHERE
    mobile_app = "mobile-user";

/* Question 4 - Sign up counts for each hour and result? */
SELECT
      DATE_FORMAT(sign_up_at, '%H'),
      COUNT(DATE_FORMAT(sign_up_at, '%H'))
FROM
    users
GROUP BY 1
ORDER BY DATE_FORMAT(sign_up_at, '%H');

/* Question 5 - Do different schools(.edu domains) prefer different courses? */
SELECT
     email_domain,
     SUM(CASE 
          WHEN p.learn_cpp IN ('started', 'completed') THEN 1
          ELSE 0
        ) AS cppCount,
      SUM(CASE 
            WHEN p.learn_sql IN ('started', 'completed') THEN 1
            ELSE 0
          ) AS sqlCount,
      SUM(CASE 
            WHEN p.learn_html IN ('started', 'completed') THEN 1
            ELSE 0
          ) AS htmlCount,
      SUM(CASE 
            WHEN p.learn_javascript IN ('started', 'completed') THEN 1
            ELSE 0
          ) AS javascriptCount,
      SUM(CASE 
            WHEN p.learn_java IN ('started', 'completed') THEN 1
            ELSE 0
          ) AS javaCount
FROM
    users u
    JOIN progress p USING (user_id)
GROUP BY email_domain;

/* Question 6 - What courses are the New Yorkers students taking? */
SELECT user_id, email_domain, city, learn_cpp, learn_sql, learn_html, learn_javascript, learn_java
FROM users
JOIN progress USING (user_id)
WHERE city = "New York";

/* Question 7 - What courses are the Chicago students taking? */
SELECT user_id, email_domain, city, learn_cpp, learn_sql, learn_html, learn_javascript, learn_java
FROM users
JOIN progress USING (user_id)
WHERE city = "Chicago";