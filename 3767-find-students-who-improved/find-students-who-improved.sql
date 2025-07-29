# Write your MySQL query statement below
with exam_bounds as (
    select 
        student_id, 
        subject, 
        min(exam_date) as min_date, 
        max(exam_date) as max_date
    from scores
    group by student_id, subject
),
score_info as (
    select 
        s.student_id,
        s.subject,
        eb.min_date,
        eb.max_date,
        s.score as min_exam_date_score,
        null as max_exam_date_score
    from scores s
    join exam_bounds eb
      on s.student_id = eb.student_id and s.subject = eb.subject
    where s.exam_date = eb.min_date

    union all

    select 
        s.student_id,
        s.subject,
        eb.min_date,
        eb.max_date,
        null as min_exam_date_score,
        s.score as max_exam_date_score
    from scores s
    join exam_bounds eb
      on s.student_id = eb.student_id and s.subject = eb.subject
    where s.exam_date = eb.max_date
),
res as ( select 
    student_id,
    subject,
    min(min_date) as min_exam_date,
    max(max_date) as max_exam_date,
    max(min_exam_date_score) as min_exam_date_score,
    max(max_exam_date_score) as max_exam_date_score
from score_info
group by student_id, subject)

select student_id, subject, min_exam_date_score as first_score, max_exam_date_score as latest_score 
from res 
where min_exam_date_score < max_exam_date_score
order by student_id, subject;
