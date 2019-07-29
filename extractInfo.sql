CREATE TABLE VG_Basicinfo (
	vg_name varchar(50) NOT NULL, vg_year int NOT NULL,
	vg_type varchar(50) NOT NULL,
	vg_nasale decimal(5,3) NOT NULL,
	vg_eusale decimal(5,3) NOT NULL,
	vg_jpsale decimal(5,3) NOT NULL,
	vg_othersale decimal(5,3) NOT NULL,
	vg_glbsale decimal(5,3) NOT NULL,
);

INSERT INTO VG_Basicinfo (vg_name, vg_year, vg_type, vg_nasale, vg_eusale, vg_jpsale, vg_othersale, vg_glbsale) SELECT Name, Year, Genre, NA_Sales, EU_Sales, JP_Sales, Other_Sales, Global_Sales FROM vgsalesinyears
												                     WHERE vgplatform = vginput;
