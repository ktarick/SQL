-- specific accounts disp sales desc

select * from customers

where Name in ('Kroger','P&G','PNC Bank','Cintas','Spectrum') -- Where in used instead of 5 "where name =" clauses 

 order by sales desc;