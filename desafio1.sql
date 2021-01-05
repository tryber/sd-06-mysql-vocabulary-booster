select COUNTRY_NAME as 'País', if(REGION_ID = 1, 'incluido', 'não incluido') from hr.countries
order by COUNTRY_NAME;
