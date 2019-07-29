CREATE TABLE VGsortna_info (
	vgsortna_name varchar(50) NOT NULL
	vgsortna_year int NOT NULL,
	vgsortna_type varchar(50) NOT NULL,
);

CREATE TABLE VGsorteu_info (
	vgsorteu_name varchar(50) NOT NULL
	vgsorteu_year int NOT NULL,
	vgsorteu_type varchar(50) NOT NULL,
);

CREATE TABLE VGsortjp_info (
	vgsortjp_name varchar(50) NOT NULL
	vgsortjp_year int NOT NULL,
	vgsortjp_type varchar(50) NOT NULL,
);

CREATE TABLE VGsortother_info (
	vgsortother_name varchar(50) NOT NULL
	vgsortother_year int NOT NULL,
	vgsortother_type varchar(50) NOT NULL,
);

CREATE TABLE VGsortglb_info (
	vgsortglb_name varchar(50) NOT NULL
	vgsortglb_year int NOT NULL,
	vgsortglb_type varchar(50) NOT NULL,
);


INSERT INTO VGsortna_info (vgsortna_name, vgsortna_year, vgsortna_type) SELECT vg_name, vg_year, vg_type FROM VG_Basicinfo ORDER BY vg_nasale DESC;
INSERT INTO VGsorteu_info (vgsorteu_name, vgsorteu_year, vgsorteu_type) SELECT vg_name, vg_year, vg_type FROM VG_Basicinfo ORDER BY vg_eusale DESC;
INSERT INTO VGsortjp_info (vgsortjp_name, vgsortjp_year, vgsortjp_type) SELECT vg_name, vg_year, vg_type FROM VG_Basicinfo ORDER BY vg_jpsale DESC;
INSERT INTO VGsortother_info (vgsortother_name, vgsortother_year, vgsortother_type) SELECT vg_name, vg_year, vg_type FROM VG_Basicinfo ORDER BY vg_othersale DESC;
INSERT INTO VGsortglb_info (vgsortglb_name, vgsortglb_year, vgsortglb_type) SELECT vg_name, vg_year, vg_type FROM VG_Basicinfo ORDER BY vg_glbsale DESC;
