= Опис об'єкту автоматизації

  == Загальні відомості

    *ICONIC* — українська продуктова ІТ-компанія в галузі iGaming / Online Gambling.
	Основний продукт — віртуальні гральні столи (virtual gaming tables),
	що надаються операторам онлайн-казино за моделлю B2B оренди (licensing/rental).
	Тип доходу — рекурентний (recurring revenue).

    // *Специфічні бізнес-метрики:* GGR (Gross Gaming Revenue), NGR (Net Gaming Revenue), player count, table utilization.

    === Напрямки та види діяльності

      Група компаній ICONIC здійснює повний цикл розробки, виробництва та дистрибуції продукту:
        - *Розробка та виробництво* — створення віртуальних гральних столів (Румунія).
        - *Дистрибуція та продажі* — B2B оренда продукту операторам онлайн-казино (Кюрасао, Мальта).
        - *Адміністративне забезпечення* — HR, офіс, загальне управління (Україна).
        - *Операційна підтримка* — агентські функції, операційні витрати (Кіпр).


    === Юридична структура

      #table(
        columns: (auto, auto, auto, auto),
        inset: 6pt,
        stroke: 0.5pt,
        align: (left, left, left, left),
        table.header(
          table.cell(fill: luma(230))[*Компанія*],
          table.cell(fill: luma(230))[*Юрисдикція*],
          table.cell(fill: luma(230))[*Роль у групі*],
          table.cell(fill: luma(230))[*Примітки*],
        ),
        [Amazetech], [Кюрасао (CW)], [Продажі (\~98%)], [Основний канал продажів. + ФОП],
        [Bet Live], [Румунія (RO)], [Виробнича база (Operating)], [Вся собівартість. + ФОП. Бухгалтерія — аутсорс],
        [Codotech], [Україна (UA)], [Адмін. забезпечення (Service)], [Офіс, HR (кілька осіб)],
        [IQ Creative Lab], [Кіпр (CY)], [Операційні витрати + агент], [Агент Amazetech],
        [Kinesis Live LTD], [Мальта (ML)], [Продажі (\~2%)], [Для вимогливих покупців],
      )

      Найближчі плани розширення — *Литва* (офіс ще не існує, буде додано до структури Odoo після відкриття).

      Компанії працюють як окремі та незалежні юридичні особи.
      //Структура власності не має значення для цілей впровадження — немає розподілу по частках, немає множинних бенефіціарів.
      //Внутрішніх потоків по IP та роялті між компаніями групи не здійснюється.

      //Для цілей консолідованого управлінського обліку в Odoo створюється віртуальна холдингова компанія *ICONIC*, яка не є реальною юрособою.

      Більшість співробітників української компанії працюють як ФОП, що надають послуги.
      ФОП не входять до multi-company структури — обліковуються як субпідрядники. ФОП також є в Amazetech (Кюрасао) та Bet Live (Румунія).

    #pagebreak()
    === Організаційна структура

      Організаційна структура групи складається з:
/*
      #table(
        columns: (auto, 1fr),
        inset: 6pt,
        stroke: 0.5pt,
        align: (left, left),
        table.header(
          table.cell(fill: luma(230))[*Департамент*],
          table.cell(fill: luma(230))[*Підрозділи*],
        ),
		
        [Executive], [—],
        [HR dep], [Recruitment, HR Partners],
        [IT dep], [—],
        [Product dep], [Product, Art],
        [Legal dep], [—],
        [Finance dep], [—],
        [Commercial dep], [Business Development, Account Managers],
        [Admin dep], [—],
        [Project Office and Analytics dep], [—],
        [Integrity dep], [Security, Risk and fraud, Surveillance],
        [Health and Safety dep], [—],
        [Operations dep], [Studio, Engineering, Procurement, Video production, Production, Web Engineering],
        [Marketing dep], [—],
      )
*/

      #align(center)[
        #box(height: 90%)[
          ```pintora
            mindmap
             + ICONIC
             ++ Executive
             ++ HR dep
             +++ Recruitment
             +++ HR Partners
             ++ IT dep
             ++ Product dep
             +++ Product
             +++ Art
             ++ Legal dep
             ++ Finance dep
             ++ Commercial dep
             +++ Business Development
             +++ Account Managers
             ++ Admin dep
             ++ Project Office & Analytics dep
             ++ Integrity dep
             +++ Security
             +++ Risk and fraud
             +++ Surveillance
             ++ Health and Safety dep
             ++ Operations dep
             +++ Studio
             +++ Engineering
             +++ Procurement
             +++ Video production
             +++ Production
             +++ Web Engineering
             ++ Marketing dep
           ```
         ]
     ]



  #pagebreak()
  == Існуюча ІТ-інфраструктура

    На підприємстві використовуються наступні системи:

    - *1С* — центральна система для управлінського обліку по всій групі. Використовує субконто до 3 рівнів аналітики.
    - *Sagasoft (www.sagasoft.ro)* — бухгалтерський облік Bet Live (Румунія) на аутсорсі.

    === Відомості про обладнання та програмне забезпечення

      Поточна ІТ-архітектура: є свій сервер, на якому розгорнута 1С.

      *Цільова платформа:* Odoo 19 Enterprise Edition.

	  Розгортання як тестового середовища, так і середовища для промислової експлуатації бути здійснено на *odoo.sh*.

/*
      Передбачається впровадження наступних модулів:

      #table(
        columns: (auto, 1fr, auto),
        inset: 6pt,
        stroke: 0.5pt,
        align: (left, left, left),
        table.header(
          table.cell(fill: luma(230))[*Модуль Odoo*],
          table.cell(fill: luma(230))[*Призначення*],
          table.cell(fill: luma(230))[*Пріоритет*],
        ),
        [Accounting], [Облік, фінансова звітність], [Критичний],
        [Invoicing], [Інвойсинг — виставлення та відправка рахунків клієнтам], [Критичний],
        [Consolidation], [Консолідація фінансових даних по юрособах], [Критичний],
        [Multi-company], [Мультикомпанійна структура (6 компаній в Odoo)], [Критичний],
        [Analytic Accounting], [Аналітичний облік (центри доходу, столи, підрозділи)], [Критичний],
        [Assets], [Облік основних засобів], [Високий],
        [Approvals], [Система апруву платежів (workflow погодження)], [Високий],
        [Documents], [Система апруву договорів], [Високий],
        [Payroll], [Зарплата], [Середній],
        [Budget], [Бюджетування], [Середній],
      )
*/