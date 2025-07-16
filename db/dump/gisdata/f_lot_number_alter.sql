ALTER TABLE f_lot_number
ADD result_column1 VARCHAR(256),
ADD result_column2 VARCHAR(256),
ADD result_column3 VARCHAR(256),
ADD result_column4 VARCHAR(256),
ADD result_column5 VARCHAR(256);

UPDATE f_lot_number SET result_column1=chiban;
