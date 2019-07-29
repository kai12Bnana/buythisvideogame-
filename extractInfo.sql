CREATE TABLE VG_Basicinfo (
	vg_year int NOT NULL,
	vg_type varchar(50) NOT NULL,
	vg_nasale int NOT NULL,
	vg_eusale int NOT NULL,
	vg_jpsale int NOT NULL,
	vg_othersale int NOT NULL,
	vg_glbsale int NOT NULL,
);

INSERT INTO VG_Basicinfo (vg_year, vg_type, vg_nasale, vg_eusale, vg_jpsale, vg_othersale, vg_glbsale) SELECT Year, Genre, NA_Sales, EU_Sales, JP_Sales, Other_Sales, Global_Sales FROM vgsalesinyears
												                     WHERE vgname = vgid1
												                       AND vgplatform = vgid2;
