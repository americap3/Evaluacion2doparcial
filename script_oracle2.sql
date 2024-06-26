CREATE TABLE CUSTOMERS(
     CUSTOMER_ID NUMBER(6,0), 
     CUST_FIRST_NAME VARCHAR2(20), 
     CUST_LAST_NAME VARCHAR2(20), 
     CREDIT_LIMIT NUMBER(9,2), 
     CUST_EMAIL VARCHAR2(30), 
     INCOME_LEVEL VARCHAR2(20), 
     REGION VARCHAR2(1));

CREATE TABLE ORDER_ITEMS 
    (ORDER_ID NUMBER(12), 
    LINE_ITEM_ID NUMBER(3), 
    PRODUCT_ID NUMBER(6), 
    UNIT_PRICE NUMBER(8), 
    QUANTITY NUMBER(8)) ;

CREATE TABLE ORDERS 
    (ORDER_ID NUMBER(12), 
    ORDER_DATE TIMESTAMP (6) WITH LOCAL TIME ZONE, 
    ORDER_MODE VARCHAR2(8), 
    CUSTOMER_ID NUMBER(6), 
    ORDER_STATUS NUMBER(2), 
    ORDER_TOTAL NUMBER(8), 
    SALES_REP_ID NUMBER(6), 
    PROMOTION_ID NUMBER(6)) ;

CREATE TABLE PRODUCT_INFORMATION 
    (PRODUCT_ID NUMBER(6), 
    PRODUCT_NAME VARCHAR2(50), 
    PRODUCT_DESCRIPTION VARCHAR2(2000), 
    CATEGORY_ID NUMBER(2), 
    WEIGHT_CLASS NUMBER(1), 
    WARRANTY_PERIOD INTERVAL YEAR (2) TO MONTH, 
    SUPPLIER_ID NUMBER(6), 
    PRODUCT_STATUS VARCHAR2(20), 
    LIST_PRICE NUMBER(8), 
    MIN_PRICE NUMBER(8,2), 
    CATALOG_URL VARCHAR2(50)) ;

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('243','Mary','Collins','2400','Mary.Collins@PYRRHULOXIA.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('244','Matt','Gueney','2400','Matt.Gueney@REDPOLL.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('245','Max','von Sydow','2400','Max.vonSydow@REDSTART.COM','K: 250,000 - 299,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('246','Max','Schell','2400','Max.Schell@SANDERLING.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('247','Cynda','Whitcraft','2400','Cynda.Whitcraft@SANDPIPER.COM','B: 30,000 - 49,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('248','Donald','Minnelli','2400','Donald.Minnelli@SCAUP.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('249','Hannah','Broderick','2400','Hannah.Broderick@SHRIKE.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('250','Dan','Williams','2400','Dan.Williams@SISKIN.COM','A: Below 30,000','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('251','Raul','Wilder','2500','Raul.Wilder@STILT.COM','E: 90,000 - 109,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('252','Shah Rukh','Field','2500','ShahRukh.Field@WHIMBREL.COM','I: 170,000 - 189,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('328','Hannah','Field','2400','Hannah.Field@GALLINULE.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('333','Margret','Powell','1200','Margret.Powell@ANI.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('334','Harry Mean','Taylor','1200','HarryMean.Taylor@REDPOLL.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('335','Margrit','Garner','500','Margrit.Garner@STILT.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('337','Maria','Warden','500','Maria.Warden@TANAGER.COM','B: 30,000 - 49,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('339','Marilou','Landis','500','Marilou.Landis@TATTLER.COM','A: Below 30,000','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('361','Marilou','Chapman','500','Marilou.Chapman@TEAL.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('363','Kathy','Lambert','2400','Kathy.Lambert@COOT.COM','C: 50,000 - 69,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('360','Helmut','Capshaw','3600','Helmut.Capshaw@TROGON.COM','J: 190,000 - 249,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('341','Keir','George','700','Keir.George@VIREO.COM','E: 90,000 - 109,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('488','Rufus','Belushi','1900','Rufus.Belushi@PUFFIN.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('492','Sally','Edwards','2500','Sally.Edwards@TURNSTONE.COM','K: 250,000 - 299,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('101','Constantin','Welles','100','Constantin.Welles@ANHINGA.COM','B: 30,000 - 49,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('102','Harrison','Pacino','100','Harrison.Pacino@ANI.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('103','Manisha','Taylor','100','Manisha.Taylor@AUKLET.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('104','Harrison','Sutherland','100','Harrison.Sutherland@GODWIT.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('105','Matthias','MacGraw','100','Matthias.MacGraw@GOLDENEYE.COM','C: 50,000 - 69,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('106','Matthias','Hannah','100','Matthias.Hannah@GREBE.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('107','Matthias','Cruise','100','Matthias.Cruise@GROSBEAK.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('108','Meenakshi','Mason','100','Meenakshi.Mason@JACANA.COM','H: 150,000 - 169,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('145','Mammutti','Pacino','500','Mammutti.Pacino@GREBE.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('147','Ishwarya','Roberts','600','Ishwarya.Roberts@LAPWING.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('148','Gustav','Steenburgen','600','Gustav.Steenburgen@PINTAIL.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('149','Markus','Rampling','600','Markus.Rampling@PUFFIN.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('150','Goldie','Slater','700','Goldie.Slater@PYRRHULOXIA.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('151','Divine','Aykroyd','700','Divine.Aykroyd@REDSTART.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('152','Dieter','Matthau','700','Dieter.Matthau@VERDIN.COM','A: Below 30,000','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('153','Divine','Sheen','700','Divine.Sheen@COWBIRD.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('154','Frederic','Grodin','700','Frederic.Grodin@CREEPER.COM','L: 300,000 and above','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('155','Frederico','Romero','700','Frederico.Romero@CURLEW.COM','E: 90,000 - 109,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('192','Sean','Stockwell','1200','Sean.Stockwell@PYRRHULOXIA.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('193','Harry dean','Kinski','1200','Harrydean.Kinski@REDPOLL.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('194','Kathleen','Garcia','1200','Kathleen.Garcia@REDSTART.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('195','Sean','Olin','1200','Sean.Olin@SCAUP.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('196','Gerard','Dench','1200','Gerard.Dench@SCOTER.COM','E: 90,000 - 109,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('197','Gerard','Altman','1200','Gerard.Altman@SHRIKE.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('198','Maureen','de Funes','1200','Maureen.deFunes@SISKIN.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('199','Clint','Chapman','1400','Clint.Chapman@SNIPE.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('200','Clint','Gielgud','1400','Clint.Gielgud@STILT.COM','E: 90,000 - 109,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('201','Eric','Prashant','1400','Eric.Prashant@TATTLER.COM','C: 50,000 - 69,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('238','Farrah','Lange','2400','Farrah.Lange@PHALAROPE.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('239','Hal','Stockwell','2400','Hal.Stockwell@PHOEBE.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('222','Cary','Stockwell','2300','Cary.Stockwell@VIREO.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('226','Ajay','Andrews','2300','Ajay.Andrews@YELLOWTHROAT.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('231','Danny','Rourke','2400','Danny.Rourke@BRANT.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('236','Edward','Julius','2400','Edward.Julius@PARULA.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('261','Emmet','Garcia','3600','Emmet.Garcia@VIREO.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('266','Prem','Cardinale','3700','Prem.Cardinale@BITTERN.COM','L: 300,000 and above','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('270','Meg','Derek','3700','Meg.Derek@FLICKER.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('275','Dom','McQueen','5000','Dom.McQueen@AUKLET.COM','G: 130,000 - 149,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('627','Sivaji','Gielgud','500','Sivaji.Gielgud@BULBUL.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('712','M. Emmet','Stockwell','3700','M.Emmet.Stockwell@COOT.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('713','M. Emmet','Olin','3700','M.Emmet.Olin@CORMORANT.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('715','Malcolm','Field','2400','Malcolm.Field@DOWITCHER.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('717','Mammutti','Sutherland','500','Mammutti.Sutherland@TOWHEE.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('719','Mani','Kazan','500','Mani.Kazan@TROGON.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('721','Mani','Buckley','500','Mani.Buckley@TURNSTONE.COM','E: 90,000 - 109,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('727','Margaret','Ustinov','1200','Margaret.Ustinov@ANHINGA.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('729','Margaux','Krige','2400','Margaux.Krige@DUNLIN.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('754','Kevin','Goodman','700','Kevin.Goodman@WIGEON.COM','E: 90,000 - 109,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('853','Amrish','Palin','400','Amrish.Palin@EIDER.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('905','Billy','Hershey','1400','Billy.Hershey@BULBUL.COM','G: 130,000 - 149,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('906','Billy','Dench','1400','Billy.Dench@CARACARA.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('909','Blake','Mastroianni','1200','Blake.Mastroianni@FLICKER.COM','D: 70,000 - 89,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('911','Bo','Dickinson','5000','Bo.Dickinson@TANAGER.COM','H: 150,000 - 169,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('912','Bo','Ashby','5000','Bo.Ashby@TATTLER.COM','I: 170,000 - 189,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('913','Bob','Sharif','5000','Bob.Sharif@TEAL.COM','F: 110,000 - 129,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('916','Brian','Douglas','500','Brian.Douglas@AVOCET.COM','J: 190,000 - 249,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('917','Brian','Baldwin','500','Brian.Baldwin@BECARD.COM','E: 90,000 - 109,999','C');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('919','Brooke','Michalkow','3500','Brooke.Michalkow@GROSBEAK.COM','D: 70,000 - 89,999','C');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('253','Sally','Bogart','2500','Sally.Bogart@WILLET.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('254','Bruce','Bates','3500','Bruce.Bates@COWBIRD.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('255','Brooke','Shepherd','3500','Brooke.Shepherd@KILLDEER.COM','C: 50,000 - 69,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('256','Ben','de Niro','3500','Ben.deNiro@KINGLET.COM','I: 170,000 - 189,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('257','Emmet','Walken','3600','Emmet.Walken@LIMPKIN.COM','B: 30,000 - 49,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('258','Ellen','Palin','3600','Ellen.Palin@LONGSPUR.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('259','Denholm','von Sydow','3600','Denholm.vonSydow@MERGANSER.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('260','Ellen','Khan','3600','Ellen.Khan@VERDIN.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('262','Fred','Reynolds','3600','Fred.Reynolds@WATERTHRUSH.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('263','Fred','Lithgow','3600','Fred.Lithgow@WHIMBREL.COM','D: 70,000 - 89,999','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('342','Marlon','Laughton','2400','Marlon.Laughton@CORMORANT.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('343','Keir','Chandar','700','Keir.Chandar@WATERTHRUSH.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('344','Marlon','Godard','2400','Marlon.Godard@MOORHEN.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('345','Keir','Weaver','700','Keir.Weaver@WHIMBREL.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('346','Marlon','Clapton','2400','Marlon.Clapton@COWBIRD.COM','K: 250,000 - 299,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('347','Kelly','Quinlan','3600','Kelly.Quinlan@PYRRHULOXIA.COM','A: Below 30,000','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('348','Kelly','Lange','3600','Kelly.Lange@SANDPIPER.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('349','Ken','Glenn','3600','Ken.Glenn@SAW-WHET.COM','K: 250,000 - 299,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('350','Ken','Chopra','3600','Ken.Chopra@SCAUP.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('351','Ken','Wenders','3600','Ken.Wenders@REDPOLL.COM','F: 110,000 - 129,999','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('109','Christian','Cage','100','Christian.Cage@KINGLET.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('110','Charlie','Sutherland','200','Charlie.Sutherland@LIMPKIN.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('111','Charlie','Pacino','200','Charlie.Pacino@LONGSPUR.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('112','Guillaume','Jackson','200','Guillaume.Jackson@MOORHEN.COM','I: 170,000 - 189,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('113','Daniel','Costner','200','Daniel.Costner@PARULA.COM','I: 170,000 - 189,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('114','Dianne','Derek','200','Dianne.Derek@SAW-WHET.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('115','Geraldine','Schneider','200','Geraldine.Schneider@SCAUP.COM','B: 30,000 - 49,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('116','Geraldine','Martin','200','Geraldine.Martin@SCOTER.COM','A: Below 30,000','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('117','Guillaume','Edwards','200','Guillaume.Edwards@SHRIKE.COM','E: 90,000 - 109,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('118','Maurice','Mahoney','200','Maurice.Mahoney@SNIPE.COM','F: 110,000 - 129,999','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('156','Goldie','Montand','700','Goldie.Montand@DIPPER.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('157','Sidney','Capshaw','700','Sidney.Capshaw@DUNLIN.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('158','Frederico','Lyon','700','Frederico.Lyon@FLICKER.COM','J: 190,000 - 249,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('159','Eddie','Boyer','700','Eddie.Boyer@GALLINULE.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('160','Eddie','Stern','700','Eddie.Stern@GODWIT.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('161','Ernest','Weaver','900','Ernest.Weaver@GROSBEAK.COM','B: 30,000 - 49,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('162','Ernest','George','900','Ernest.George@LAPWING.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('163','Ernest','Chandar','900','Ernest.Chandar@LIMPKIN.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('164','Charlotte','Kazan','1200','Charlotte.Kazan@MERGANSER.COM','I: 170,000 - 189,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('165','Charlotte','Fonda','1200','Charlotte.Fonda@MOORHEN.COM','J: 190,000 - 249,999','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('202','Ingrid','Welles','1400','Ingrid.Welles@TEAL.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('203','Ingrid','Rampling','1400','Ingrid.Rampling@WIGEON.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('204','Cliff','Puri','1400','Cliff.Puri@CORMORANT.COM','J: 190,000 - 249,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('205','Emily','Pollack','1400','Emily.Pollack@DIPPER.COM','L: 300,000 and above','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('206','Fritz','Hackman','1400','Fritz.Hackman@DUNLIN.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('207','Cybill','Laughton','1400','Cybill.Laughton@EIDER.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('208','Cyndi','Griem','1400','Cyndi.Griem@GALLINULE.COM','E: 90,000 - 109,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('209','Cyndi','Collins','1400','Cyndi.Collins@GODWIT.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('210','Cybill','Clapton','1400','Cybill.Clapton@GOLDENEYE.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('211','Luchino','Jordan','1500','Luchino.Jordan@GREBE.COM','A: Below 30,000','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('279','Holly','Kurosawa','5000','Holly.Kurosawa@CARACARA.COM','I: 170,000 - 189,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('283','Kurt','Heard','5000','Kurt.Heard@CURLEW.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('352','Kenneth','Redford','3600','Kenneth.Redford@REDSTART.COM','B: 30,000 - 49,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('378','Meg','Sen','3700','Meg.Sen@COWBIRD.COM','C: 50,000 - 69,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('448','Richard','Winters','500','Richard.Winters@SNIPE.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('452','Ridley','Coyote','700','Ridley.Coyote@ANI.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('463','Robin','Adjani','1500','Robin.Adjani@MOORHEN.COM','C: 50,000 - 69,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('468','Rodolfo','Altman','5000','Rodolfo.Altman@SHRIKE.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('475','Romy','McCarthy','5000','Romy.McCarthy@STILT.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('479','Roxanne','Shepherd','1200','Roxanne.Shepherd@DUNLIN.COM','I: 170,000 - 189,999','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('755','Kevin','Cleveland','700','Kevin.Cleveland@WILLET.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('756','Kevin','Wilder','700','Kevin.Wilder@AUKLET.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('766','Klaus','Young','600','Klaus.Young@OVENBIRD.COM','H: 150,000 - 169,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('767','Klaus Maria','Russell','100','KlausMaria.Russell@COOT.COM','C: 50,000 - 69,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('768','Klaus Maria','MacLaine','100','KlausMaria.MacLaine@CHUKAR.COM','A: Below 30,000','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('770','Kris','Curtis','400','Kris.Curtis@DOWITCHER.COM','K: 250,000 - 299,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('771','Kris','de Niro','400','Kris.deNiro@DUNLIN.COM','E: 90,000 - 109,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('782','Laurence','Seignier','1200','Laurence.Seignier@CREEPER.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('825','Alain','Dreyfuss','500','Alain.Dreyfuss@VEERY.COM','J: 190,000 - 249,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('826','Alain','Barkin','500','Alain.Barkin@VERDIN.COM','A: Below 30,000','D');

Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('920','Bruce','Hulce','3500','Bruce.Hulce@JACANA.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('921','Bruce','Dunaway','3500','Bruce.Dunaway@JUNCO.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('923','Bruno','Slater','5000','Bruno.Slater@THRASHER.COM','G: 130,000 - 149,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('924','Bruno','Montand','5000','Bruno.Montand@TOWHEE.COM','D: 70,000 - 89,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('927','Bryan','Belushi','2300','Bryan.Belushi@TOWHEE.COM','I: 170,000 - 189,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('929','Burt','Neeson','5000','Burt.Neeson@TURNSTONE.COM','F: 110,000 - 129,999','D');
Insert into CUSTOMERS (CUSTOMER_ID,CUST_FIRST_NAME,CUST_LAST_NAME,CREDIT_LIMIT,CUST_EMAIL,INCOME_LEVEL,REGION) values ('930','Buster','Jackson','900','Buster.Jackson@KILLDEER.COM','A: Below 30,000','D');