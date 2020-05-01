\c template1
CREATE USER labtrendig WITH CREATEDB ENCRYPTED PASSWORD '36GwpNMLWgrA';

CREATE DATABASE labtrendig_master WITH TEMPLATE=template1 OWNER labtrendig;
