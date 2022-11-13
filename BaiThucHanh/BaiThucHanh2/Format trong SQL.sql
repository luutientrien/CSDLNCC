

--Format tiền:


SELECT FORMAT (200.365, 'c', 'vi-VN') as Tiền_Việt

SELECT FORMAT (200.365, 'c', 'en-US') as Tiền_Đô

SELECT FORMAT(200.3659, 'C') AS 'Tiền'

-- Format ngày giờ:

SELECT FORMAT (getdate(), 'dd/MM/yyyy') as Ngày_Việt

SELECT FORMAT (getdate(), 'dd/MM/yyyy, hh:mm:ss tt') as Ngày_Giờ12

SELECT FORMAT (getdate(), 'dd/MM/yyyy, HH:mm:ss') as daNgày_Giờ24

SELECT FORMAT (getdate(), 'dd/MM/yyyy, dddd HH:mm:ss') as Ngày_Giờ_Thứ

SELECT FORMAT (getdate(), 'dd/MM/yyyy, ddd HH:mm:ss ') as Ngày_Giờ_Thứ

--Forrmat số:


SELECT FORMAT(123456789.5678,'#,###.##') AS số