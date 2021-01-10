SELECT co.COUNTRY_NAME as 'País', IF(co.REGION_ID = 1, 'incluído', 'não incluído') as 'Status Inclusão' FROM hr.countries as co order by co.COUNTRY_NAME;
