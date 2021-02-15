SELECT JOB_TITLE AS "Cargo",
  (MAX_SALARY - MIN_SALARY) AS `Variação Salarial`,
  ROUND((MIN_SALARY / 12), 2) AS `Média mínima mensal`,
  ROUND((MAX_SALARY / 12), 2) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial`, Cargo;

/* Precisei de ajuda para interpretar o quê o requisito estava pedindo.
Já estava fazendo-o por um bom tempo e náo chegava no resultado
esperado pelo teste. Então usei o PR do Guilherme pra me clarear onde estava
errando. E no fim era apenas dificuldade de interpretação do readme.
Mas segue link do PR: https://github.com/tryber/sd-06-mysql-vocabulary-booster/pull/102/files */
