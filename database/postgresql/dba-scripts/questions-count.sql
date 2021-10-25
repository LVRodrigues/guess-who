SELECT c.name				AS name,
       COUNT(q.question)	AS questions
  FROM cards c 
 INNER JOIN questions q USING (card)
 GROUP BY c.name
 ORDER BY name DESC;