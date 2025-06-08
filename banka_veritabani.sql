--------------------------------------------------------
--  File created - Monday-June-02-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADRES_TABLE
--------------------------------------------------------

  CREATE TABLE "ADRES_TABLE" 
   (	"ADRES_ID" NUMBER, 
	"ULKE" VARCHAR2(100), 
	"IL" VARCHAR2(100), 
	"ILCE" VARCHAR2(100), 
	"POSTA_KODU" VARCHAR2(5), 
	"MAHALLE" VARCHAR2(100), 
	"CADDE" VARCHAR2(100), 
	"SOKAK" VARCHAR2(100), 
	"DISKAPI_NO" VARCHAR2(5), 
	"ICKAPI_NO" VARCHAR2(5), 
	"ADRESTYPE_ID" NUMBER, 
	"FKMSTR_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ADRES_TYPE
--------------------------------------------------------

  CREATE TABLE "ADRES_TYPE" 
   (	"ADRSTYPE_ID" NUMBER, 
	"ADRSTYPE_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table BAKIYE_GECMISI
--------------------------------------------------------

  CREATE TABLE "BAKIYE_GECMISI" 
   (	"BAKIYE_ID" NUMBER, 
	"FKHESAP_ID" NUMBER, 
	"FKISLEM_ID" NUMBER, 
	"DEGISEN_BAKIYE" NUMBER(12,2)
   ) ;
--------------------------------------------------------
--  DDL for Table DENETIM_KAYITLARI
--------------------------------------------------------

  CREATE TABLE "DENETIM_KAYITLARI" 
   (	"KAYIT_KIMLIK" NUMBER, 
	"FKKULLANICI_ID" NUMBER, 
	"YAPILAN_ISLEM" VARCHAR2(200), 
	"ISLEM_TARIHI" DATE DEFAULT SYSDATE
   ) ;
--------------------------------------------------------
--  DDL for Table HESAP_DURUM_TYPE
--------------------------------------------------------

  CREATE TABLE "HESAP_DURUM_TYPE" 
   (	"HESAPDURUM_ID" NUMBER, 
	"HESAPDURUM_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table HESAPLAR
--------------------------------------------------------

  CREATE TABLE "HESAPLAR" 
   (	"HESAP_ID" NUMBER, 
	"HESAP_NO" VARCHAR2(20), 
	"IBAN" VARCHAR2(26), 
	"MEVCUT_BAKIYE" NUMBER(12,2) DEFAULT 0, 
	"ACILIS_TARIHI" DATE DEFAULT SYSDATE, 
	"FKMUSTERI_ID" NUMBER, 
	"FKHESAP_TYPE" NUMBER, 
	"FKHESAPDURUM_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table HESAP_TYPE
--------------------------------------------------------

  CREATE TABLE "HESAP_TYPE" 
   (	"HESAPTYPE_ID" NUMBER, 
	"HESAPTYPE_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table ISLEMLER
--------------------------------------------------------

  CREATE TABLE "ISLEMLER" 
   (	"ISLEM_ID" NUMBER, 
	"ISLEM_TUTARI" NUMBER(12,2), 
	"ISLEM_TARIHI" DATE, 
	"FKISLEMTYPE_ID" NUMBER, 
	"FKHESAP_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ISLEM_TYPE
--------------------------------------------------------

  CREATE TABLE "ISLEM_TYPE" 
   (	"ISLEMTYPE_ID" NUMBER, 
	"ISLEMTYPE_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table KART_DURUM_TYPE
--------------------------------------------------------

  CREATE TABLE "KART_DURUM_TYPE" 
   (	"KARTDURUM_ID" NUMBER, 
	"KARTDURUM_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table KARTLAR
--------------------------------------------------------

  CREATE TABLE "KARTLAR" 
   (	"KART_ID" NUMBER, 
	"FKMUSTERI_ID" NUMBER, 
	"FKHESAP_ID" NUMBER, 
	"KART_NUMARASI" VARCHAR2(16), 
	"SON_KULLANMA_TARIHI" DATE, 
	"CVV" NUMBER(3,0), 
	"KART_LIMIT" NUMBER(12,2), 
	"FKKARTDURUM_ID" NUMBER, 
	"FKKARTTYPE_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KART_TYPE
--------------------------------------------------------

  CREATE TABLE "KART_TYPE" 
   (	"KARTTYPE_ID" NUMBER, 
	"KARTTYPE_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table KREDILER
--------------------------------------------------------

  CREATE TABLE "KREDILER" 
   (	"KREDI_ID" NUMBER, 
	"FKMUSTERI_ID" NUMBER, 
	"KREDI_TUTARI" NUMBER(12,2), 
	"KREDI_TARIHI" DATE, 
	"FKKREDITYPE_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KREDI_ODEME_YONTEMI
--------------------------------------------------------

  CREATE TABLE "KREDI_ODEME_YONTEMI" 
   (	"ODEME_ID" NUMBER, 
	"FKKREDI_ID" NUMBER, 
	"FKHESAP_ID" NUMBER, 
	"ODEME_TARIHI" DATE DEFAULT SYSDATE, 
	"ODENEN_TUTAR" NUMBER(12,2), 
	"FKODEMEYONTEM_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table KREDI_TYPE
--------------------------------------------------------

  CREATE TABLE "KREDI_TYPE" 
   (	"KREDITYPE_ID" NUMBER, 
	"KREDITYPE_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table KULLANICILAR
--------------------------------------------------------

  CREATE TABLE "KULLANICILAR" 
   (	"KULLANICI_ID" NUMBER, 
	"KULLANICI_AD" VARCHAR2(50), 
	"KULLANICI_SOYAD" VARCHAR2(50), 
	"FKROL_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table MUSTERI_TYPE
--------------------------------------------------------

  CREATE TABLE "MUSTERI_TYPE" 
   (	"MSTRTYPE_ID" NUMBER, 
	"MSTRTYPE_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table MUSTRERILER
--------------------------------------------------------

  CREATE TABLE "MUSTRERILER" 
   (	"MSTR_ID" NUMBER, 
	"MSTR_TC" NUMBER(11,0), 
	"MSTR_AD" VARCHAR2(50), 
	"MSTR_SOYAD" VARCHAR2(50), 
	"MSTR_DGMTRH" DATE, 
	"MSTR_EMAIL" VARCHAR2(100), 
	"MSTR_TEL" NUMBER, 
	"MSTRTYPE_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table ODEME_YONTEM_TYPE
--------------------------------------------------------

  CREATE TABLE "ODEME_YONTEM_TYPE" 
   (	"ODEMEYONTEM_ID" NUMBER, 
	"ODEMEYONTEM_AD" VARCHAR2(50)
   ) ;
--------------------------------------------------------
--  DDL for Table ROLLER
--------------------------------------------------------

  CREATE TABLE "ROLLER" 
   (	"ROL_ID" NUMBER, 
	"ROL_TANIMI" VARCHAR2(50)
   ) ;
---------------------------------------------------------
--------------------------------------------------------
--  Constraints for Table ADRES_TABLE
--------------------------------------------------------

  ALTER TABLE "ADRES_TABLE" MODIFY ("FKMSTR_ID" NOT NULL ENABLE);
  ALTER TABLE "ADRES_TABLE" ADD PRIMARY KEY ("ADRES_ID") ENABLE;
  ALTER TABLE "ADRES_TABLE" MODIFY ("ADRESTYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "ADRES_TABLE" MODIFY ("DISKAPI_NO" NOT NULL ENABLE);
  ALTER TABLE "ADRES_TABLE" MODIFY ("POSTA_KODU" NOT NULL ENABLE);
  ALTER TABLE "ADRES_TABLE" MODIFY ("ILCE" NOT NULL ENABLE);
  ALTER TABLE "ADRES_TABLE" MODIFY ("IL" NOT NULL ENABLE);
  ALTER TABLE "ADRES_TABLE" MODIFY ("ULKE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADRES_TYPE
--------------------------------------------------------

  ALTER TABLE "ADRES_TYPE" ADD PRIMARY KEY ("ADRSTYPE_ID") ENABLE;
  ALTER TABLE "ADRES_TYPE" MODIFY ("ADRSTYPE_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAKIYE_GECMISI
--------------------------------------------------------

  ALTER TABLE "BAKIYE_GECMISI" ADD UNIQUE ("FKISLEM_ID") ENABLE;
  ALTER TABLE "BAKIYE_GECMISI" ADD PRIMARY KEY ("BAKIYE_ID") ENABLE;
  ALTER TABLE "BAKIYE_GECMISI" MODIFY ("DEGISEN_BAKIYE" NOT NULL ENABLE);
  ALTER TABLE "BAKIYE_GECMISI" MODIFY ("FKISLEM_ID" NOT NULL ENABLE);
  ALTER TABLE "BAKIYE_GECMISI" MODIFY ("FKHESAP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DENETIM_KAYITLARI
--------------------------------------------------------

  ALTER TABLE "DENETIM_KAYITLARI" ADD PRIMARY KEY ("KAYIT_KIMLIK") ENABLE;
  ALTER TABLE "DENETIM_KAYITLARI" MODIFY ("ISLEM_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "DENETIM_KAYITLARI" MODIFY ("YAPILAN_ISLEM" NOT NULL ENABLE);
  ALTER TABLE "DENETIM_KAYITLARI" MODIFY ("FKKULLANICI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HESAP_DURUM_TYPE
--------------------------------------------------------

  ALTER TABLE "HESAP_DURUM_TYPE" ADD UNIQUE ("HESAPDURUM_AD") ENABLE;
  ALTER TABLE "HESAP_DURUM_TYPE" ADD PRIMARY KEY ("HESAPDURUM_ID") ENABLE;
  ALTER TABLE "HESAP_DURUM_TYPE" MODIFY ("HESAPDURUM_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HESAPLAR
--------------------------------------------------------

  ALTER TABLE "HESAPLAR" ADD UNIQUE ("IBAN") ENABLE;
  ALTER TABLE "HESAPLAR" ADD UNIQUE ("HESAP_NO") ENABLE;
  ALTER TABLE "HESAPLAR" ADD PRIMARY KEY ("HESAP_ID") ENABLE;
  ALTER TABLE "HESAPLAR" MODIFY ("FKHESAPDURUM_ID" NOT NULL ENABLE);
  ALTER TABLE "HESAPLAR" MODIFY ("FKHESAP_TYPE" NOT NULL ENABLE);
  ALTER TABLE "HESAPLAR" MODIFY ("FKMUSTERI_ID" NOT NULL ENABLE);
  ALTER TABLE "HESAPLAR" MODIFY ("MEVCUT_BAKIYE" NOT NULL ENABLE);
  ALTER TABLE "HESAPLAR" MODIFY ("IBAN" NOT NULL ENABLE);
  ALTER TABLE "HESAPLAR" MODIFY ("HESAP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HESAP_TYPE
--------------------------------------------------------

  ALTER TABLE "HESAP_TYPE" ADD PRIMARY KEY ("HESAPTYPE_ID") ENABLE;
  ALTER TABLE "HESAP_TYPE" MODIFY ("HESAPTYPE_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISLEMLER
--------------------------------------------------------

  ALTER TABLE "ISLEMLER" MODIFY ("FKHESAP_ID" NOT NULL ENABLE);
  ALTER TABLE "ISLEMLER" ADD PRIMARY KEY ("ISLEM_ID") ENABLE;
  ALTER TABLE "ISLEMLER" MODIFY ("FKISLEMTYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "ISLEMLER" MODIFY ("ISLEM_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "ISLEMLER" MODIFY ("ISLEM_TUTARI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ISLEM_TYPE
--------------------------------------------------------

  ALTER TABLE "ISLEM_TYPE" ADD PRIMARY KEY ("ISLEMTYPE_ID") ENABLE;
  ALTER TABLE "ISLEM_TYPE" MODIFY ("ISLEMTYPE_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KART_DURUM_TYPE
--------------------------------------------------------

  ALTER TABLE "KART_DURUM_TYPE" ADD UNIQUE ("KARTDURUM_AD") ENABLE;
  ALTER TABLE "KART_DURUM_TYPE" ADD PRIMARY KEY ("KARTDURUM_ID") ENABLE;
  ALTER TABLE "KART_DURUM_TYPE" MODIFY ("KARTDURUM_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KARTLAR
--------------------------------------------------------

  ALTER TABLE "KARTLAR" ADD UNIQUE ("KART_NUMARASI") ENABLE;
  ALTER TABLE "KARTLAR" ADD PRIMARY KEY ("KART_ID") ENABLE;
  ALTER TABLE "KARTLAR" MODIFY ("FKKARTTYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "KARTLAR" MODIFY ("FKKARTDURUM_ID" NOT NULL ENABLE);
  ALTER TABLE "KARTLAR" MODIFY ("CVV" NOT NULL ENABLE);
  ALTER TABLE "KARTLAR" MODIFY ("SON_KULLANMA_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "KARTLAR" MODIFY ("KART_NUMARASI" NOT NULL ENABLE);
  ALTER TABLE "KARTLAR" MODIFY ("FKHESAP_ID" NOT NULL ENABLE);
  ALTER TABLE "KARTLAR" MODIFY ("FKMUSTERI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KART_TYPE
--------------------------------------------------------

  ALTER TABLE "KART_TYPE" ADD PRIMARY KEY ("KARTTYPE_ID") ENABLE;
  ALTER TABLE "KART_TYPE" MODIFY ("KARTTYPE_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KREDILER
--------------------------------------------------------

  ALTER TABLE "KREDILER" ADD PRIMARY KEY ("KREDI_ID") ENABLE;
  ALTER TABLE "KREDILER" MODIFY ("FKKREDITYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "KREDILER" MODIFY ("KREDI_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "KREDILER" MODIFY ("KREDI_TUTARI" NOT NULL ENABLE);
  ALTER TABLE "KREDILER" MODIFY ("FKMUSTERI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KREDI_ODEME_YONTEMI
--------------------------------------------------------

  ALTER TABLE "KREDI_ODEME_YONTEMI" ADD PRIMARY KEY ("ODEME_ID") ENABLE;
  ALTER TABLE "KREDI_ODEME_YONTEMI" MODIFY ("FKODEMEYONTEM_ID" NOT NULL ENABLE);
  ALTER TABLE "KREDI_ODEME_YONTEMI" MODIFY ("ODENEN_TUTAR" NOT NULL ENABLE);
  ALTER TABLE "KREDI_ODEME_YONTEMI" MODIFY ("ODEME_TARIHI" NOT NULL ENABLE);
  ALTER TABLE "KREDI_ODEME_YONTEMI" MODIFY ("FKKREDI_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KREDI_TYPE
--------------------------------------------------------

  ALTER TABLE "KREDI_TYPE" ADD PRIMARY KEY ("KREDITYPE_ID") ENABLE;
  ALTER TABLE "KREDI_TYPE" MODIFY ("KREDITYPE_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KULLANICILAR
--------------------------------------------------------

  ALTER TABLE "KULLANICILAR" ADD PRIMARY KEY ("KULLANICI_ID") ENABLE;
  ALTER TABLE "KULLANICILAR" MODIFY ("FKROL_ID" NOT NULL ENABLE);
  ALTER TABLE "KULLANICILAR" MODIFY ("KULLANICI_SOYAD" NOT NULL ENABLE);
  ALTER TABLE "KULLANICILAR" MODIFY ("KULLANICI_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUSTERI_TYPE
--------------------------------------------------------

  ALTER TABLE "MUSTERI_TYPE" ADD PRIMARY KEY ("MSTRTYPE_ID") ENABLE;
  ALTER TABLE "MUSTERI_TYPE" MODIFY ("MSTRTYPE_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MUSTRERILER
--------------------------------------------------------

  ALTER TABLE "MUSTRERILER" ADD CONSTRAINT "UK_MUSTERI_EMAIL" UNIQUE ("MSTR_EMAIL") ENABLE;
  ALTER TABLE "MUSTRERILER" ADD UNIQUE ("MSTR_TC") ENABLE;
  ALTER TABLE "MUSTRERILER" ADD PRIMARY KEY ("MSTR_ID") ENABLE;
  ALTER TABLE "MUSTRERILER" MODIFY ("MSTRTYPE_ID" NOT NULL ENABLE);
  ALTER TABLE "MUSTRERILER" MODIFY ("MSTR_TEL" NOT NULL ENABLE);
  ALTER TABLE "MUSTRERILER" MODIFY ("MSTR_DGMTRH" NOT NULL ENABLE);
  ALTER TABLE "MUSTRERILER" MODIFY ("MSTR_SOYAD" NOT NULL ENABLE);
  ALTER TABLE "MUSTRERILER" MODIFY ("MSTR_AD" NOT NULL ENABLE);
  ALTER TABLE "MUSTRERILER" MODIFY ("MSTR_TC" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ODEME_YONTEM_TYPE
--------------------------------------------------------

  ALTER TABLE "ODEME_YONTEM_TYPE" ADD UNIQUE ("ODEMEYONTEM_AD") ENABLE;
  ALTER TABLE "ODEME_YONTEM_TYPE" ADD PRIMARY KEY ("ODEMEYONTEM_ID") ENABLE;
  ALTER TABLE "ODEME_YONTEM_TYPE" MODIFY ("ODEMEYONTEM_AD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLLER
--------------------------------------------------------

  ALTER TABLE "ROLLER" ADD UNIQUE ("ROL_TANIMI") ENABLE;
  ALTER TABLE "ROLLER" ADD PRIMARY KEY ("ROL_ID") ENABLE;
  ALTER TABLE "ROLLER" MODIFY ("ROL_TANIMI" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ADRES_TABLE
--------------------------------------------------------

  ALTER TABLE "ADRES_TABLE" ADD CONSTRAINT "FK_ADRES_MUSTERI" FOREIGN KEY ("FKMSTR_ID")
	  REFERENCES "MUSTRERILER" ("MSTR_ID") ENABLE;
  ALTER TABLE "ADRES_TABLE" ADD FOREIGN KEY ("ADRESTYPE_ID")
	  REFERENCES "ADRES_TYPE" ("ADRSTYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAKIYE_GECMISI
--------------------------------------------------------

  ALTER TABLE "BAKIYE_GECMISI" ADD CONSTRAINT "FK_BAKIYE_HESAP" FOREIGN KEY ("FKHESAP_ID")
	  REFERENCES "HESAPLAR" ("HESAP_ID") ENABLE;
  ALTER TABLE "BAKIYE_GECMISI" ADD CONSTRAINT "FK_BAKIYE_ISLEM" FOREIGN KEY ("FKISLEM_ID")
	  REFERENCES "ISLEMLER" ("ISLEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DENETIM_KAYITLARI
--------------------------------------------------------

  ALTER TABLE "DENETIM_KAYITLARI" ADD CONSTRAINT "FK_DENETIM_KULLANICI" FOREIGN KEY ("FKKULLANICI_ID")
	  REFERENCES "KULLANICILAR" ("KULLANICI_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HESAPLAR
--------------------------------------------------------

  ALTER TABLE "HESAPLAR" ADD CONSTRAINT "FK_HESAP_DURUM" FOREIGN KEY ("FKHESAPDURUM_ID")
	  REFERENCES "HESAP_DURUM_TYPE" ("HESAPDURUM_ID") ENABLE;
  ALTER TABLE "HESAPLAR" ADD CONSTRAINT "FK_HESAP_MUSTERI" FOREIGN KEY ("FKMUSTERI_ID")
	  REFERENCES "MUSTRERILER" ("MSTR_ID") ENABLE;
  ALTER TABLE "HESAPLAR" ADD CONSTRAINT "FK_HESAP_TURU" FOREIGN KEY ("FKHESAP_TYPE")
	  REFERENCES "HESAP_TYPE" ("HESAPTYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ISLEMLER
--------------------------------------------------------

  ALTER TABLE "ISLEMLER" ADD CONSTRAINT "FK_ISLEM_HESAP" FOREIGN KEY ("FKHESAP_ID")
	  REFERENCES "HESAPLAR" ("HESAP_ID") ENABLE;
  ALTER TABLE "ISLEMLER" ADD CONSTRAINT "FK_ISLEM_TURU" FOREIGN KEY ("FKISLEMTYPE_ID")
	  REFERENCES "ISLEM_TYPE" ("ISLEMTYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KARTLAR
--------------------------------------------------------

  ALTER TABLE "KARTLAR" ADD CONSTRAINT "FK_KART_DURUM" FOREIGN KEY ("FKKARTDURUM_ID")
	  REFERENCES "KART_DURUM_TYPE" ("KARTDURUM_ID") ENABLE;
  ALTER TABLE "KARTLAR" ADD CONSTRAINT "FK_KART_HESAP" FOREIGN KEY ("FKHESAP_ID")
	  REFERENCES "HESAPLAR" ("HESAP_ID") ENABLE;
  ALTER TABLE "KARTLAR" ADD CONSTRAINT "FK_KART_MUSTERI" FOREIGN KEY ("FKMUSTERI_ID")
	  REFERENCES "MUSTRERILER" ("MSTR_ID") ENABLE;
  ALTER TABLE "KARTLAR" ADD CONSTRAINT "FK_KART_TURU" FOREIGN KEY ("FKKARTTYPE_ID")
	  REFERENCES "KART_TYPE" ("KARTTYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KREDILER
--------------------------------------------------------

  ALTER TABLE "KREDILER" ADD CONSTRAINT "FK_KREDI_MUSTERI" FOREIGN KEY ("FKMUSTERI_ID")
	  REFERENCES "MUSTRERILER" ("MSTR_ID") ENABLE;
  ALTER TABLE "KREDILER" ADD CONSTRAINT "FK_KREDI_TYPE" FOREIGN KEY ("FKKREDITYPE_ID")
	  REFERENCES "KREDI_TYPE" ("KREDITYPE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KREDI_ODEME_YONTEMI
--------------------------------------------------------

  ALTER TABLE "KREDI_ODEME_YONTEMI" ADD CONSTRAINT "FK_ODEME_HESAP" FOREIGN KEY ("FKHESAP_ID")
	  REFERENCES "HESAPLAR" ("HESAP_ID") ENABLE;
  ALTER TABLE "KREDI_ODEME_YONTEMI" ADD CONSTRAINT "FK_ODEME_KREDI" FOREIGN KEY ("FKKREDI_ID")
	  REFERENCES "KREDILER" ("KREDI_ID") ENABLE;
  ALTER TABLE "KREDI_ODEME_YONTEMI" ADD CONSTRAINT "FK_ODEME_YONTEM" FOREIGN KEY ("FKODEMEYONTEM_ID")
	  REFERENCES "ODEME_YONTEM_TYPE" ("ODEMEYONTEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table KULLANICILAR
--------------------------------------------------------

  ALTER TABLE "KULLANICILAR" ADD CONSTRAINT "FK_KULLANICI_ROL" FOREIGN KEY ("FKROL_ID")
	  REFERENCES "ROLLER" ("ROL_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MUSTRERILER
--------------------------------------------------------

  ALTER TABLE "MUSTRERILER" ADD FOREIGN KEY ("MSTRTYPE_ID")
	  REFERENCES "MUSTERI_TYPE" ("MSTRTYPE_ID") ENABLE;
------------------------------------------------------------

--------------------------------------------------------
--  DDL for Index IDX_ADRES_MUSTERI
--------------------------------------------------------

  CREATE INDEX "IDX_ADRES_MUSTERI" ON "ADRES_TABLE" ("FKMSTR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_DENETIM_KULLANICI
--------------------------------------------------------

  CREATE INDEX "IDX_DENETIM_KULLANICI" ON "DENETIM_KAYITLARI" ("FKKULLANICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_HESAP_MUSTERI
--------------------------------------------------------

  CREATE INDEX "IDX_HESAP_MUSTERI" ON "HESAPLAR" ("FKMUSTERI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_ISLEM_HESAP
--------------------------------------------------------

  CREATE INDEX "IDX_ISLEM_HESAP" ON "ISLEMLER" ("FKHESAP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_KART_MUSTERI
--------------------------------------------------------

  CREATE INDEX "IDX_KART_MUSTERI" ON "KARTLAR" ("FKMUSTERI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_KREDI_MUSTERI
--------------------------------------------------------

  CREATE INDEX "IDX_KREDI_MUSTERI" ON "KREDILER" ("FKMUSTERI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index IDX_ODEME_KREDI
--------------------------------------------------------

  CREATE INDEX "IDX_ODEME_KREDI" ON "KREDI_ODEME_YONTEMI" ("FKKREDI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007513
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007513" ON "ADRES_TYPE" ("ADRSTYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007520
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007520" ON "ADRES_TABLE" ("ADRES_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007523
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007523" ON "MUSTERI_TYPE" ("MSTRTYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007530
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007530" ON "MUSTRERILER" ("MSTR_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007531
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007531" ON "MUSTRERILER" ("MSTR_TC") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007537
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007537" ON "ISLEM_TYPE" ("ISLEMTYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007541
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007541" ON "ISLEMLER" ("ISLEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007544
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007544" ON "HESAP_TYPE" ("HESAPTYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007546
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007546" ON "HESAP_DURUM_TYPE" ("HESAPDURUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007547
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007547" ON "HESAP_DURUM_TYPE" ("HESAPDURUM_AD") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007554
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007554" ON "HESAPLAR" ("HESAP_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007555
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007555" ON "HESAPLAR" ("HESAP_NO") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007556
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007556" ON "HESAPLAR" ("IBAN") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007565
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007565" ON "BAKIYE_GECMISI" ("BAKIYE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007566
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007566" ON "BAKIYE_GECMISI" ("FKISLEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007570
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007570" ON "KART_TYPE" ("KARTTYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007572
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007572" ON "KART_DURUM_TYPE" ("KARTDURUM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007573
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007573" ON "KART_DURUM_TYPE" ("KARTDURUM_AD") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007581
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007581" ON "KARTLAR" ("KART_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007582
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007582" ON "KARTLAR" ("KART_NUMARASI") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007588
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007588" ON "KREDI_TYPE" ("KREDITYPE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007593
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007593" ON "KREDILER" ("KREDI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007597
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007597" ON "ODEME_YONTEM_TYPE" ("ODEMEYONTEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007598
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007598" ON "ODEME_YONTEM_TYPE" ("ODEMEYONTEM_AD") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007603
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007603" ON "KREDI_ODEME_YONTEMI" ("ODEME_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007608
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007608" ON "ROLLER" ("ROL_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007609
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007609" ON "ROLLER" ("ROL_TANIMI") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007613
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007613" ON "KULLANICILAR" ("KULLANICI_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C007618
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007618" ON "DENETIM_KAYITLARI" ("KAYIT_KIMLIK") 
  ;
--------------------------------------------------------
--  DDL for Index UK_MUSTERI_EMAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "UK_MUSTERI_EMAIL" ON "MUSTRERILER" ("MSTR_EMAIL") 
  ;
--------------------------------------------------------

--------------------------------------------------------
--  DDL for Sequence SEQ_ADRES
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ADRES"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ADRES_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ADRES_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_BAKIYE_GECMISI
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_BAKIYE_GECMISI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_DENETIM_KAYITLARI
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_DENETIM_KAYITLARI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_HESAP
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_HESAP"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_HESAP_DURUM_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_HESAP_DURUM_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_HESAP_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_HESAP_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ISLEMLER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ISLEMLER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ISLEM_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ISLEM_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KART
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KART"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KART_DURUM_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KART_DURUM_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KART_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KART_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KREDI
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KREDI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KREDI_ODEME
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KREDI_ODEME"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KREDI_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KREDI_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_KULLANICILAR
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_KULLANICILAR"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MUSTERILER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_MUSTERILER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 13 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_MUSTERI_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_MUSTERI_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ODEME_YONTEM_TYPE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ODEME_YONTEM_TYPE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 5 START WITH 5 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ROLLER
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_ROLLER"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 10 START WITH 10 CACHE 20 NOORDER  NOCYCLE ;


REM INSERTING into ADRES_TABLE
SET DEFINE OFF;
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('1','Turkiye','Istanbul','Kad koy','34710','Moda Mah.','Bahariye Cad.','1. Sok.','12','5','5','1');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('2','Turkiye','Ankara','Cankaya','06550','Kavaklidere Mah.','Ataturk Bulvari','2. Sok.','8','2','10','2');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('3','Turkiye','Izmir','Bornova','35030','Kazimdirik Mah.','Manas Bulvari','3. Sok.','25','7','15','3');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('4','Turkiye','Bursa','Nilufer','16110','Ihsaniye Mah.','FSM Bulvari','4. Sok.','18','3','20','4');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('5','Turkiye','Antalya','Muratpasa','07100','Guzeloba Mah.','Lara Cad.','5. Sok.','9','1','25','5');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('6','Turkiye','Adana','Seyhan','01060','Resatbey Mah.','Ziyapasa Cad.','6. Sok.','20','4','30','6');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('7','Turkiye','Eskisehir','Tepebasi','26170','Hosnudiye Mah.','Ismet Inonu Cd.','7. Sok.','14','6','35','7');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('8','Turkiye','Trabzon','Ortahisar','61040','Kalkinma Mah.','Devlet Sahil Yolu','8. Sok.','30','10','40','8');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('9','Turkiye','Gaziantep','Sahinbey','27090','Karata  Mah.','Yesilvadi Cad.','9. Sok.','11','2','5','9');
Insert into ADRES_TABLE (ADRES_ID,ULKE,IL,ILCE,POSTA_KODU,MAHALLE,CADDE,SOKAK,DISKAPI_NO,ICKAPI_NO,ADRESTYPE_ID,FKMSTR_ID) values ('10','Turkiye','Konya','Selcuklu','42060','Bosna Hersek Mah.','Yeni Istanbul Cad.','10. Sok.','17','9','10','10');
REM INSERTING into ADRES_TYPE
SET DEFINE OFF;
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('5','Ev Adresi');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('10','Is Adresi');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('15','Yazlik Adresi');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('20','Gecici Ikametgah');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('25','Fatura Adresi');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('30','Teslimat Adresi');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('35','Vergi Adresi');
Insert into ADRES_TYPE (ADRSTYPE_ID,ADRSTYPE_AD) values ('40','Ikinci Ev');
REM INSERTING into BAKIYE_GECMISI
SET DEFINE OFF;
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('1','1','12','1000');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('2','1','13','1000');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('3','5','14','5000');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('4','5','15','5000');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('5','2','16','100');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('6','5','17','-300');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('7','3','18','800');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('8','4','19','-200');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('9','1','20','-150');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('10','2','21','-1000');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('11','3','22','1200');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('12','1','23','-900');
Insert into BAKIYE_GECMISI (BAKIYE_ID,FKHESAP_ID,FKISLEM_ID,DEGISEN_BAKIYE) values ('13','7','24','900');
REM INSERTING into DENETIM_KAYITLARI
SET DEFINE OFF;
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('6','1','Kredi ID 5 icin 8000 TL odeme yapildi (Internet Bankaciligi).',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('7','1','Kredi ID 6 icin 15000 TL odeme yapildi (ATM Uzerinden).',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('8','1','Kredi ID 3 icin 20000 TL odeme yapildi (ATM Uzerinden).',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('9','1','Kredi ID 1 icin 5000 TL odeme yapildi (ATM Uzerinden).',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('10','1','Yeni kart tanimlandi Kart No: ****0001, Limit: 7500 TL, Tur: Kredi Karti, Durum: Aktif, Hesap No: 12345678901',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('11','1','Yeni kart tanimlandi Kart No: ****0002, Limit: 2000 TL, Tur: Sanal Kart, Durum: Aktif, Hesap No: 12345678902',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('12','1','Kredi ID 4 icin 3000 TL odeme yapildi (Internet Bankaciligi).',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('13','1','Yeni kart tanimlandi ? Kart No: ****0003, Limit: 1000 TL, Tur: On Odemeli Kart, Durum: Bloke Edildi, Hesap No: 12345678903',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('1','1','Kart bilgileri guncellendi.',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('3','1','Kredi odemesi yapildi.',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('4','1','Kredi ID 2 icin 1000 TL odeme yapildi (ATM Uzerinden).',to_date('02/06/2025','DD/MM/RRRR'));
Insert into DENETIM_KAYITLARI (KAYIT_KIMLIK,FKKULLANICI_ID,YAPILAN_ISLEM,ISLEM_TARIHI) values ('5','1','Yeni kart tanimlandi.',to_date('02/06/2025','DD/MM/RRRR'));
REM INSERTING into HESAP_DURUM_TYPE
SET DEFINE OFF;
Insert into HESAP_DURUM_TYPE (HESAPDURUM_ID,HESAPDURUM_AD) values ('5','Aktif');
Insert into HESAP_DURUM_TYPE (HESAPDURUM_ID,HESAPDURUM_AD) values ('30','Beklemede');
Insert into HESAP_DURUM_TYPE (HESAPDURUM_ID,HESAPDURUM_AD) values ('20','Blokeli');
Insert into HESAP_DURUM_TYPE (HESAPDURUM_ID,HESAPDURUM_AD) values ('25','Inceleniyor');
Insert into HESAP_DURUM_TYPE (HESAPDURUM_ID,HESAPDURUM_AD) values ('15','Kapali');
Insert into HESAP_DURUM_TYPE (HESAPDURUM_ID,HESAPDURUM_AD) values ('10','Pasif');
REM INSERTING into HESAPLAR
SET DEFINE OFF;
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('1','12345678901','TR100006200000123456789001','15950,5',to_date('10/01/2023','DD/MM/RRRR'),'1','5','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('2','12345678902','TR100006200000123456789002','1850',to_date('15/02/2023','DD/MM/RRRR'),'2','10','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('3','12345678903','TR100006200000123456789003','54000',to_date('20/03/2023','DD/MM/RRRR'),'3','15','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('4','12345678904','TR100006200000123456789004','1000,75',to_date('05/04/2023','DD/MM/RRRR'),'4','20','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('5','12345678905','TR100006200000123456789005','10685,3',to_date('25/04/2023','DD/MM/RRRR'),'5','25','10');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('6','12345678906','TR100006200000123456789006','21000',to_date('10/05/2023','DD/MM/RRRR'),'6','30','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('7','12345678907','TR100006200000123456789007','1570,2',to_date('20/05/2023','DD/MM/RRRR'),'7','35','20');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('8','12345678908','TR100006200000123456789008','30500',to_date('01/06/2023','DD/MM/RRRR'),'8','40','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('9','12345678909','TR100006200000123456789009','430',to_date('10/06/2023','DD/MM/RRRR'),'9','5','25');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('10','12345678910','TR100006200000123456789010','12000',to_date('05/07/2023','DD/MM/RRRR'),'10','10','5');
Insert into HESAPLAR (HESAP_ID,HESAP_NO,IBAN,MEVCUT_BAKIYE,ACILIS_TARIHI,FKMUSTERI_ID,FKHESAP_TYPE,FKHESAPDURUM_ID) values ('11','99887766554','TR56000620000099887766554','5000',to_date('31/05/2025','DD/MM/RRRR'),'1','5','5');
REM INSERTING into HESAP_TYPE
SET DEFINE OFF;
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('5','Vadesiz TL Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('10','Vadeli TL Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('15','Dolar (USD) Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('20','Euro (EUR) Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('25','Alt n Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('30','Kat l m Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('35','Vadeli Dolar Hesabi');
Insert into HESAP_TYPE (HESAPTYPE_ID,HESAPTYPE_AD) values ('40','Kredi Karti Ekstresi Hesabi');
REM INSERTING into ISLEMLER
SET DEFINE OFF;
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('1','2000',to_date('10/08/2023','DD/MM/RRRR'),'1','1');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('2','5000',to_date('12/09/2023','DD/MM/RRRR'),'8','7');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('3','1250,5',to_date('15/08/2023','DD/MM/RRRR'),'3','2');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('4','1250,5',to_date('15/08/2023','DD/MM/RRRR'),'4','3');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('5','300',to_date('01/09/2023','DD/MM/RRRR'),'5','4');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('6','500',to_date('12/08/2023','DD/MM/RRRR'),'2','1');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('7','750',to_date('10/09/2023','DD/MM/RRRR'),'7','6');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('8','10000',to_date('15/09/2023','DD/MM/RRRR'),'9','8');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('9','600',to_date('18/09/2023','DD/MM/RRRR'),'13','9');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('10','250,75',to_date('05/09/2023','DD/MM/RRRR'),'6','5');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('12','1000',to_date('31/05/2025','DD/MM/RRRR'),'1','1');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('13','1000',to_date('31/05/2025','DD/MM/RRRR'),'1','1');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('14','5000',to_date('02/06/2025','DD/MM/RRRR'),'1','5');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('15','5000',to_date('02/06/2025','DD/MM/RRRR'),'1','5');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('16','100',to_date('02/06/2025','DD/MM/RRRR'),'1','2');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('17','300',to_date('02/06/2025','DD/MM/RRRR'),'2','5');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('18','800',to_date('02/06/2025','DD/MM/RRRR'),'1','3');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('19','200',to_date('02/06/2025','DD/MM/RRRR'),'2','4');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('20','150',to_date('02/06/2025','DD/MM/RRRR'),'2','1');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('21','1000',to_date('02/06/2025','DD/MM/RRRR'),'2','2');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('22','1200',to_date('02/06/2025','DD/MM/RRRR'),'1','3');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('23','900',to_date('02/06/2025','DD/MM/RRRR'),'2','1');
Insert into ISLEMLER (ISLEM_ID,ISLEM_TUTARI,ISLEM_TARIHI,FKISLEMTYPE_ID,FKHESAP_ID) values ('24','900',to_date('02/06/2025','DD/MM/RRRR'),'1','7');
REM INSERTING into ISLEM_TYPE
SET DEFINE OFF;
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('1','Para Yatirma');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('2','Para Cekme');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('3','EFT Gonderme');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('4','EFT Alma');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('5','Havale');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('6','Fatura Odeme');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('7','Kredi Karti Odeme');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('8','Kredi Odeme');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('9','Kredi Kullanimi');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('10','ATM Para Cekme');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('11','ATM Para Yatirma');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('12','Sube Islemi');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('13','Mobil Bankacilik Islemi');
Insert into ISLEM_TYPE (ISLEMTYPE_ID,ISLEMTYPE_AD) values ('14','Internet Bankaciligi Islemi');
REM INSERTING into KART_DURUM_TYPE
SET DEFINE OFF;
Insert into KART_DURUM_TYPE (KARTDURUM_ID,KARTDURUM_AD) values ('5','Aktif');
Insert into KART_DURUM_TYPE (KARTDURUM_ID,KARTDURUM_AD) values ('10','Bloke Edildi');
Insert into KART_DURUM_TYPE (KARTDURUM_ID,KARTDURUM_AD) values ('15','Iptal Edildi');
Insert into KART_DURUM_TYPE (KARTDURUM_ID,KARTDURUM_AD) values ('20','Suresi Doldu');
Insert into KART_DURUM_TYPE (KARTDURUM_ID,KARTDURUM_AD) values ('25','Yenileniyor');
Insert into KART_DURUM_TYPE (KARTDURUM_ID,KARTDURUM_AD) values ('30','Inceleme Altinda');
REM INSERTING into KARTLAR
SET DEFINE OFF;
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('1','1','1','5399837512345678',to_date('31/12/2027','DD/MM/RRRR'),'123','10000','5','5');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('2','2','2','4532657812345678',to_date('31/10/2026','DD/MM/RRRR'),'456','7500','5','10');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('3','3','3','5400123412341234',to_date('31/01/2028','DD/MM/RRRR'),'789','5000','10','15');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('4','4','4','4024007167893456',to_date('31/08/2025','DD/MM/RRRR'),'147',null,'5','10');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('5','5','5','4556337744556677',to_date('31/03/2029','DD/MM/RRRR'),'258',null,'5','10');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('6','6','6','5105105105105100',to_date('30/11/2027','DD/MM/RRRR'),'369','20000','25','5');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('7','7','7','4111111111111111',to_date('30/06/2024','DD/MM/RRRR'),'951',null,'20','20');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('8','8','8','6011000990139424',to_date('30/04/2025','DD/MM/RRRR'),'753','15000','5','25');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('9','9','9','3782822463100050',to_date('31/07/2027','DD/MM/RRRR'),'852','1000','10','30');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('10','10','10','5555555555554444',to_date('30/09/2026','DD/MM/RRRR'),'159','3000','15','5');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('11','1','1','1234567812345678',to_date('31/12/2027','DD/MM/RRRR'),'123','10000','5','5');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('13','1','2','123499812345678',to_date('31/12/2027','DD/MM/RRRR'),'123','1908','5','5');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('17','1','1','4900000000000001',to_date('31/12/2028','DD/MM/RRRR'),'123','7500','5','5');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('18','2','2','4900000000000002',to_date('30/06/2027','DD/MM/RRRR'),'456','2000','5','20');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('19','3','3','4900000000000003',to_date('30/09/2026','DD/MM/RRRR'),'789','1000','10','15');
Insert into KARTLAR (KART_ID,FKMUSTERI_ID,FKHESAP_ID,KART_NUMARASI,SON_KULLANMA_TARIHI,CVV,KART_LIMIT,FKKARTDURUM_ID,FKKARTTYPE_ID) values ('16','1','1','9519865870976136',to_date('31/12/2027','DD/MM/RRRR'),'111','7000','5','5');
REM INSERTING into KART_TYPE
SET DEFINE OFF;
Insert into KART_TYPE (KARTTYPE_ID,KARTTYPE_AD) values ('5','Kredi Karti');
Insert into KART_TYPE (KARTTYPE_ID,KARTTYPE_AD) values ('10','Banka Karti');
Insert into KART_TYPE (KARTTYPE_ID,KARTTYPE_AD) values ('15','On Odemeli Kart');
Insert into KART_TYPE (KARTTYPE_ID,KARTTYPE_AD) values ('20','Sanal Kart');
Insert into KART_TYPE (KARTTYPE_ID,KARTTYPE_AD) values ('25','Business Kart');
Insert into KART_TYPE (KARTTYPE_ID,KARTTYPE_AD) values ('30','Debit Card (Yurtdisi)');
REM INSERTING into KREDILER
SET DEFINE OFF;
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('1','1','50000',to_date('10/01/2023','DD/MM/RRRR'),'5');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('2','2','150000',to_date('15/10/2022','DD/MM/RRRR'),'10');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('3','3','300000',to_date('20/06/2021','DD/MM/RRRR'),'15');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('4','9','25000',to_date('05/03/2023','DD/MM/RRRR'),'20');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('5','5','10000',to_date('01/07/2023','DD/MM/RRRR'),'25');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('6','8','80000',to_date('10/12/2022','DD/MM/RRRR'),'30');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('7','7','200000',to_date('01/02/2023','DD/MM/RRRR'),'35');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('8','6','175000',to_date('15/08/2022','DD/MM/RRRR'),'40');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('9','4','60000',to_date('20/04/2023','DD/MM/RRRR'),'45');
Insert into KREDILER (KREDI_ID,FKMUSTERI_ID,KREDI_TUTARI,KREDI_TARIHI,FKKREDITYPE_ID) values ('10','10','120000',to_date('05/06/2023','DD/MM/RRRR'),'50');
REM INSERTING into KREDI_ODEME_YONTEMI
SET DEFINE OFF;
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('3','5','5',to_date('02/06/2025','DD/MM/RRRR'),'8000','25');
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('4','6','6',to_date('02/06/2025','DD/MM/RRRR'),'15000','30');
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('7','3','3',to_date('02/06/2025','DD/MM/RRRR'),'20000','30');
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('8','1','2',to_date('02/06/2025','DD/MM/RRRR'),'5000','30');
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('10','4','3',to_date('02/06/2025','DD/MM/RRRR'),'3000','25');
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('1','1','1',to_date('02/06/2025','DD/MM/RRRR'),'1000','30');
Insert into KREDI_ODEME_YONTEMI (ODEME_ID,FKKREDI_ID,FKHESAP_ID,ODEME_TARIHI,ODENEN_TUTAR,FKODEMEYONTEM_ID) values ('2','2','1',to_date('02/06/2025','DD/MM/RRRR'),'1000','30');
REM INSERTING into KREDI_TYPE
SET DEFINE OFF;
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('5','Ihtiyac Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('10','Tasit Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('15','Konut Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('20','Egitim Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('25','Tatil Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('30','Evlilik Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('35','Borc Transfer Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('40','KOBI Isletme Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('45','Tarim Kredisi');
Insert into KREDI_TYPE (KREDITYPE_ID,KREDITYPE_AD) values ('50','Konut Tamamlama Kredisi');
REM INSERTING into KULLANICILAR
SET DEFINE OFF;
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('1','Ahmet','Yilmaz','10');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('2','Mehmet','Demir','20');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('3','Ayse','Kaya','30');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('4','Fatma','Celik','40');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('5','Ali','Aydin','50');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('6','Zeynep','Sahin','60');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('7','Burak','Koc','70');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('8','Elif','Arslan','10');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('9','Deniz','Polat','20');
Insert into KULLANICILAR (KULLANICI_ID,KULLANICI_AD,KULLANICI_SOYAD,FKROL_ID) values ('10','Hasan','Ozturk','30');
REM INSERTING into MUSTERI_TYPE
SET DEFINE OFF;
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('5','Bireysel');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('10','Ticari');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('15','Kurumsal');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('20','KOBI');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('25','Emekli');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('30','Ogrenci');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('35','Yatirimci');
Insert into MUSTERI_TYPE (MSTRTYPE_ID,MSTRTYPE_AD) values ('40','Yabanci Uyruklu');
REM INSERTING into MUSTRERILER
SET DEFINE OFF;
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('1','10000000001','Emre','Yildiz',to_date('14/05/1990','DD/MM/RRRR'),'emre.yildiz@example.com','5051234567','5');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('2','10000000002','Ayse','Demir',to_date('20/08/1988','DD/MM/RRRR'),'ayse.demir@example.com','5324567890','10');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('3','10000000003','Mehmet','Kaya',to_date('10/01/1995','DD/MM/RRRR'),'mehmet.kaya@example.com','5311112233','15');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('4','10000000004','Fatma','celik',to_date('22/03/1992','DD/MM/RRRR'),'fatma.celik@example.com','5422233445','20');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('5','10000000005','Ali','Aydin',to_date('30/07/1985','DD/MM/RRRR'),'ali.aydin@example.com','5533344556','25');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('6','10000000006','Zeynep','Sahin',to_date('17/11/1999','DD/MM/RRRR'),'zeynep.sahin@example.com','5445566778','30');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('7','10000000007','Burak','Koc',to_date('05/09/1987','DD/MM/RRRR'),'burak.koc@example.com','5556677889','35');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('8','10000000008','Elif','Arslan',to_date('14/02/1993','DD/MM/RRRR'),'elif.arslan@example.com','5337788990','40');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('9','10000000009','Deniz','Polat',to_date('03/12/1991','DD/MM/RRRR'),'deniz.polat@example.com','5668899001','5');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('10','10000000010','Hasan','Ozturk',to_date('25/06/1996','DD/MM/RRRR'),'hasan.ozturk@example.com','5779900112','10');
Insert into MUSTRERILER (MSTR_ID,MSTR_TC,MSTR_AD,MSTR_SOYAD,MSTR_DGMTRH,MSTR_EMAIL,MSTR_TEL,MSTRTYPE_ID) values ('12','11111111122','Sena','Arslan',to_date('21/03/1998','DD/MM/RRRR'),'sena.arslan@example.com','5351234567','5');
REM INSERTING into ODEME_YONTEM_TYPE
SET DEFINE OFF;
Insert into ODEME_YONTEM_TYPE (ODEMEYONTEM_ID,ODEMEYONTEM_AD) values ('30','ATM Uzerinden');
Insert into ODEME_YONTEM_TYPE (ODEMEYONTEM_ID,ODEMEYONTEM_AD) values ('5','Banka Hesabindan Otomatik');
Insert into ODEME_YONTEM_TYPE (ODEMEYONTEM_ID,ODEMEYONTEM_AD) values ('25','Internet Bankaciligi');
Insert into ODEME_YONTEM_TYPE (ODEMEYONTEM_ID,ODEMEYONTEM_AD) values ('15','Kredi Karti ile');
Insert into ODEME_YONTEM_TYPE (ODEMEYONTEM_ID,ODEMEYONTEM_AD) values ('20','Mobil Bankacilik');
Insert into ODEME_YONTEM_TYPE (ODEMEYONTEM_ID,ODEMEYONTEM_AD) values ('10','Nakit Odeme');
REM INSERTING into ROLLER
SET DEFINE OFF;
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('20','Bireysel Musteri Temsilcisi');
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('60','Guvenlik Sorumlusu');
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('70','Kredi Uzmani');
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('50','Operasyon Yetkilisi');
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('10','Sistem  slemcisi');
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('40','Sube Muduru');
Insert into ROLLER (ROL_ID,ROL_TANIMI) values ('30','Ticari Musteri Temsilcisi');
REM INSERTING into VW_AKTIF_KARTLAR
SET DEFINE OFF;
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('1','Emre Yildiz','5399837512345678','Kredi Karti','Aktif','10000');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('2','Ayse Demir','4532657812345678','Banka Karti','Aktif','7500');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('4','Fatma celik','4024007167893456','Banka Karti','Aktif',null);
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('5','Ali Aydin','4556337744556677','Banka Karti','Aktif',null);
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('8','Elif Arslan','6011000990139424','Business Kart','Aktif','15000');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('11','Emre Yildiz','1234567812345678','Kredi Karti','Aktif','10000');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('13','Emre Yildiz','123499812345678','Kredi Karti','Aktif','1908');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('17','Emre Yildiz','4900000000000001','Kredi Karti','Aktif','7500');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('18','Ayse Demir','4900000000000002','Sanal Kart','Aktif','2000');
Insert into VW_AKTIF_KARTLAR (KART_ID,MUSTERI_ADI_SOYADI,KART_NUMARASI,KART_TIPI,KART_DURUMU,KART_LIMIT) values ('16','Emre Yildiz','9519865870976136','Kredi Karti','Aktif','7000');
REM INSERTING into VW_KREDI_GECIKME_TAKIBI
SET DEFINE OFF;
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('7','Burak Koc','Borc Transfer Kredisi',to_date('01/02/2023','DD/MM/RRRR'),null,'GECIKMEDE');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('8','Elif Arslan','Evlilik Kredisi',to_date('10/12/2022','DD/MM/RRRR'),to_date('02/06/2025','DD/MM/RRRR'),'ZAMANINDA');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('10','Hasan Ozturk','Konut Tamamlama Kredisi',to_date('05/06/2023','DD/MM/RRRR'),null,'GECIKMEDE');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('4','Fatma celik','Tarim Kredisi',to_date('20/04/2023','DD/MM/RRRR'),null,'GECIKMEDE');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('3','Mehmet Kaya','Konut Kredisi',to_date('20/06/2021','DD/MM/RRRR'),to_date('02/06/2025','DD/MM/RRRR'),'ZAMANINDA');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('5','Ali Aydin','Tatil Kredisi',to_date('01/07/2023','DD/MM/RRRR'),to_date('02/06/2025','DD/MM/RRRR'),'ZAMANINDA');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('6','Zeynep Sahin','KOBI Isletme Kredisi',to_date('15/08/2022','DD/MM/RRRR'),null,'GECIKMEDE');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('9','Deniz Polat','Egitim Kredisi',to_date('05/03/2023','DD/MM/RRRR'),to_date('02/06/2025','DD/MM/RRRR'),'ZAMANINDA');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('1','Emre Yildiz','Ihtiyac Kredisi',to_date('10/01/2023','DD/MM/RRRR'),to_date('02/06/2025','DD/MM/RRRR'),'ZAMANINDA');
Insert into VW_KREDI_GECIKME_TAKIBI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,SON_ODEME_TARIHI,ODEME_DURUMU) values ('2','Ayse Demir','Tasit Kredisi',to_date('15/10/2022','DD/MM/RRRR'),to_date('02/06/2025','DD/MM/RRRR'),'ZAMANINDA');
REM INSERTING into VW_KREDI_ODEME_OZETI
SET DEFINE OFF;
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('7','Burak Koc','Borc Transfer Kredisi',to_date('01/02/2023','DD/MM/RRRR'),'200000','0','200000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('4','Fatma celik','Tarim Kredisi',to_date('20/04/2023','DD/MM/RRRR'),'60000','0','60000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('3','Mehmet Kaya','Konut Kredisi',to_date('20/06/2021','DD/MM/RRRR'),'300000','20000','280000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('6','Zeynep Sahin','KOBI Isletme Kredisi',to_date('15/08/2022','DD/MM/RRRR'),'175000','0','175000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('9','Deniz Polat','Egitim Kredisi',to_date('05/03/2023','DD/MM/RRRR'),'25000','3000','22000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('1','Emre Yildiz','Ihtiyac Kredisi',to_date('10/01/2023','DD/MM/RRRR'),'50000','6000','44000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('5','Ali Aydin','Tatil Kredisi',to_date('01/07/2023','DD/MM/RRRR'),'10000','8000','2000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('2','Ayse Demir','Tasit Kredisi',to_date('15/10/2022','DD/MM/RRRR'),'150000','1000','149000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('8','Elif Arslan','Evlilik Kredisi',to_date('10/12/2022','DD/MM/RRRR'),'80000','15000','65000');
Insert into VW_KREDI_ODEME_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,KREDI_TURU,KREDI_TARIHI,KREDI_TUTARI,TOPLAM_ODENEN,KALAN_BORC) values ('10','Hasan Ozturk','Konut Tamamlama Kredisi',to_date('05/06/2023','DD/MM/RRRR'),'120000','0','120000');
REM INSERTING into VW_MUSTERI_HESAP_OZETI
SET DEFINE OFF;
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('1','Emre Yildiz','12345678901','TR100006200000123456789001','15950,5','Vadesiz TL Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('1','Emre Yildiz','99887766554','TR56000620000099887766554','5000','Vadesiz TL Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('2','Ayse Demir','12345678902','TR100006200000123456789002','1850','Vadeli TL Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('3','Mehmet Kaya','12345678903','TR100006200000123456789003','54000','Dolar (USD) Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('4','Fatma celik','12345678904','TR100006200000123456789004','1000,75','Euro (EUR) Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('5','Ali Aydin','12345678905','TR100006200000123456789005','10685,3','Alt n Hesabi','Pasif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('6','Zeynep Sahin','12345678906','TR100006200000123456789006','21000','Kat l m Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('7','Burak Koc','12345678907','TR100006200000123456789007','1570,2','Vadeli Dolar Hesabi','Blokeli');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('8','Elif Arslan','12345678908','TR100006200000123456789008','30500','Kredi Karti Ekstresi Hesabi','Aktif');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('9','Deniz Polat','12345678909','TR100006200000123456789009','430','Vadesiz TL Hesabi','Inceleniyor');
Insert into VW_MUSTERI_HESAP_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,HESAP_NO,IBAN,MEVCUT_BAKIYE,HESAP_TURU,HESAP_DURUMU) values ('10','Hasan Ozturk','12345678910','TR100006200000123456789010','12000','Vadeli TL Hesabi','Aktif');
REM INSERTING into VW_MUSTERI_ISLEM_OZETI
SET DEFINE OFF;
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('3','Mehmet Kaya','3','3250,5');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('8','Elif Arslan','1','10000');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('4','Fatma celik','2','500');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('7','Burak Koc','2','5900');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('2','Ayse Demir','3','2350,5');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('6','Zeynep Sahin','1','750');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('9','Deniz Polat','1','600');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('1','Emre Yildiz','6','5550');
Insert into VW_MUSTERI_ISLEM_OZETI (MUSTERI_ID,MUSTERI_ADI_SOYADI,TOPLAM_ISLEM_SAYISI,TOPLAM_ISLEM_TUTARI) values ('5','Ali Aydin','4','10550,75');

--------------------------------------------------------
--  DDL for Function FN_HESAP_BAKIYE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_HESAP_BAKIYE" 
(
  P_HESAP_ID IN NUMBER 
) RETURN NUMBER AS 
  v_bakiye NUMBER;
BEGIN
  SELECT Mevcut_Bakiye INTO v_bakiye
  FROM HESAPLAR
  WHERE Hesap_ID = P_HESAP_ID;

  RETURN v_bakiye;
END FN_HESAP_BAKIYE;

/
--------------------------------------------------------
--  DDL for Function FN_KART_TIPI_GETIR
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_KART_TIPI_GETIR" (
  p_kart_id IN NUMBER
) RETURN VARCHAR2
IS
  v_kart_tipi VARCHAR2(50);
BEGIN
  SELECT kt.KartType_AD
  INTO v_kart_tipi
  FROM KARTLAR k
  JOIN KART_TYPE kt ON k.FKKartType_ID = kt.KartType_ID
  WHERE k.Kart_ID = p_kart_id;

  RETURN v_kart_tipi;
END;

/
--------------------------------------------------------
--  DDL for Function FN_KREDI_DURUMU
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_KREDI_DURUMU" 
(
  P_KREDI_ID IN NUMBER
) RETURN VARCHAR2 AS
  v_toplam NUMBER := 0;
  v_odeme NUMBER := 0;
BEGIN
  SELECT Kredi_TUTARI INTO v_toplam
  FROM KREDILER
  WHERE Kredi_ID = P_KREDI_ID;

  SELECT NVL(SUM(Odenen_Tutar), 0) INTO v_odeme
  FROM KREDI_ODEME_YONTEMI
  WHERE FKKredi_ID = P_KREDI_ID;

  IF v_toplam <= v_odeme THEN
    RETURN 'odendi';
  ELSE
    RETURN 'odenmedi';
  END IF;
END FN_KREDI_DURUMU;

/
--------------------------------------------------------
--  DDL for Function FN_KREDI_KALAN_BORC
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_KREDI_KALAN_BORC" 
(
  P_KREDI_ID IN NUMBER 
) RETURN NUMBER AS 
  v_toplam_kredi NUMBER := 0;
  v_toplam_odeme NUMBER := 0;
BEGIN
  SELECT Kredi_TUTARI INTO v_toplam_kredi
  FROM KREDILER
  WHERE Kredi_ID = P_KREDI_ID;

  SELECT NVL(SUM(Odenen_Tutar), 0) INTO v_toplam_odeme
  FROM KREDI_ODEME_YONTEMI
  WHERE FKKredi_ID = P_KREDI_ID;

  RETURN v_toplam_kredi - v_toplam_odeme;
END FN_KREDI_KALAN_BORC;

/
--------------------------------------------------------
--  DDL for Function FN_MUSTERI_HESAP_SAYISI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_MUSTERI_HESAP_SAYISI" 
(
  P_MUSTERI_ID IN NUMBER
) RETURN NUMBER AS
  v_sayi NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_sayi
  FROM HESAPLAR
  WHERE FKMusteri_ID = P_MUSTERI_ID;

  RETURN v_sayi;
END FN_MUSTERI_HESAP_SAYISI;

/
--------------------------------------------------------
--  DDL for Function FN_MUSTERI_KART_SAYISI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_MUSTERI_KART_SAYISI" 
(
  P_MUSTERI_ID IN NUMBER
) RETURN NUMBER AS
  v_sayi NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_sayi
  FROM KARTLAR
  WHERE FKMusteri_ID = P_MUSTERI_ID
    AND FKKartDurum_ID = 5; -- 5 = Aktif

  RETURN v_sayi;
END FN_MUSTERI_KART_SAYISI;

/
--------------------------------------------------------
--  DDL for Function FN_MUSTERI_TUM_ADRESLERI
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "FN_MUSTERI_TUM_ADRESLERI" 
(
  P_MUSTERI_ID IN NUMBER
) RETURN VARCHAR2 AS
  v_adresler VARCHAR2(1000);
BEGIN
  SELECT LISTAGG(
           IL || ', ' || ILCE || ', ' || Mahalle || ', ' || Cadde || ', No: ' || DisKapi_NO,
           ' | '
         ) WITHIN GROUP (ORDER BY adres_ID)
  INTO v_adresler
  FROM ADRES_TABLE
  WHERE FKmstr_ID = P_MUSTERI_ID;

  RETURN v_adresler;
END FN_MUSTERI_TUM_ADRESLERI;

/

--------------------------------------------------------
--  DDL for Procedure PRC_HESAP_AC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRC_HESAP_AC" (
    p_hesap_no        IN VARCHAR2,
    p_iban            IN VARCHAR2,
    p_musteri_id      IN NUMBER,
    p_hesap_turu_id   IN NUMBER,
    p_durum_id        IN NUMBER,
    p_acilis_tarihi   IN DATE DEFAULT SYSDATE,
    p_baslangic_bakiye IN NUMBER DEFAULT 0
)
IS
BEGIN
    INSERT INTO HESAPLAR (
        Hesap_ID, hesap_NO, IBAN, Mevcut_Bakiye,
        acilis_tarihi, FKMusteri_ID, FKHesap_type, FKHesapDurum_ID
    ) VALUES (
        seq_hesap.NEXTVAL, p_hesap_no, p_iban, p_baslangic_bakiye,
        p_acilis_tarihi, p_musteri_id, p_hesap_turu_id, p_durum_id
    );

    DBMS_OUTPUT.PUT_LINE('? Hesap ba ar yla a  ld .');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('? Hata: Bu hesap numaras  veya IBAN zaten kay tl .');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('? Hata: ' || SQLERRM);
END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_ISLEM_YAP
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRC_ISLEM_YAP" (
  p_hesap_id      IN NUMBER,
  p_tutar         IN NUMBER,
  p_islemtype_id  IN NUMBER
)
IS
  v_bakiye NUMBER;
  v_yeni_bakiye NUMBER;
  v_islem_id NUMBER;
BEGIN
  -- Mevcut bakiyeyi oku
  SELECT Mevcut_Bakiye INTO v_bakiye
  FROM HESAPLAR
  WHERE Hesap_ID = p_hesap_id;

  IF p_islemtype_id = 1 THEN
    -- PARA YATIRMA
    v_yeni_bakiye := v_bakiye + p_tutar;

  ELSIF p_islemtype_id = 2 THEN
    -- PARA  EKME
    IF v_bakiye < p_tutar THEN
      RAISE_APPLICATION_ERROR(-20001, 'Yetersiz bakiye! Para  ekilemedi.');
    END IF;
    v_yeni_bakiye := v_bakiye - p_tutar;
  ELSE
    RAISE_APPLICATION_ERROR(-20002, 'Ge ersiz i lem t r .');
  END IF;

  -- HESAP bakiyesini g ncelle
  UPDATE HESAPLAR
  SET Mevcut_Bakiye = v_yeni_bakiye
  WHERE Hesap_ID = p_hesap_id;

  -- ISLEMLER tablosuna kay t ekle
  INSERT INTO ISLEMLER (
    Islem_ID,
    Islem_TUTARI,
    Islem_TARIHI,
    FKIslemtype_ID,
    FKHesap_ID
  ) VALUES (
    seq_islemler.NEXTVAL,
    p_tutar,
    SYSDATE,
    p_islemtype_id,
    p_hesap_id
  )
  RETURNING Islem_ID INTO v_islem_id;

  -- BAKIYE_GECMISI tablosuna kay t at
  INSERT INTO BAKIYE_GECMISI (
    Bakiye_ID,
    FKHesap_ID,
    FKIslem_ID,
    Degisen_BAKIYE
  ) VALUES (
    seq_bakiye_gecmisi.NEXTVAL,
    p_hesap_id,
    v_islem_id,
    CASE WHEN p_islemtype_id = 1 THEN p_tutar ELSE -p_tutar END
  );

  COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_KART_TANIMLA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRC_KART_TANIMLA" (
    p_musteri_id IN NUMBER,
    p_hesap_id         IN NUMBER,
    p_kart_no          IN VARCHAR2,
    p_skt              IN DATE,
    p_cvv              IN NUMBER,
    p_limit            IN NUMBER,
    p_kart_durum_id    IN NUMBER,
    p_kart_type_id     IN NUMBER
)
IS
BEGIN
    INSERT INTO KARTLAR (
        Kart_ID, FKMusteri_ID, FKHesap_ID,
        Kart_numarasi, Son_Kullanma_Tarihi, CVV,
        Kart_limit, FKKartDurum_ID, FKKartType_ID
    ) VALUES (
        seq_kart.NEXTVAL, p_musteri_id, p_hesap_id,
        p_kart_no, p_skt, p_cvv,
        p_limit, p_kart_durum_id, p_kart_type_id
    );

    DBMS_OUTPUT.PUT_LINE('? Kart ba ar yla eklendi.');

EXCEPTION
  WHEN DUP_VAL_ON_INDEX THEN
    DBMS_OUTPUT.PUT_LINE('? Hata: Bu kart numaras  zaten var.');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('? Hata: ' || SQLERRM);
    DBMS_OUTPUT.PUT_LINE('p_musteri_id: ' || TO_CHAR(p_musteri_id));
    DBMS_OUTPUT.PUT_LINE('p_hesap_id: ' || TO_CHAR(p_hesap_id));
    DBMS_OUTPUT.PUT_LINE('p_kart_no: ' || p_kart_no);

END;

/
--------------------------------------------------------
--  DDL for Procedure PRC_KREDI_ODEME
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRC_KREDI_ODEME" (
  p_kredi_id     IN NUMBER,
  p_hesap_id     IN NUMBER,
  p_odeme_tutar  IN NUMBER,
  p_odeme_tur_id IN NUMBER,
  p_odeme_tarihi IN DATE
) AS
  v_kalan_borc NUMBER;
BEGIN
  INSERT INTO KREDI_ODEME_YONTEMI (
    Odeme_ID, FKKredi_ID, FKHesap_ID,
    Odeme_TARIHI, Odenen_Tutar, FKOdemeYontem_ID
  )
  VALUES (
    seq_kredi_odeme.NEXTVAL, p_kredi_id, p_hesap_id,
    p_odeme_tarihi, p_odeme_tutar, p_odeme_tur_id
  );

  -- Fonksiyon ile kalan borcu kontrol et
  v_kalan_borc := FN_KREDI_KALAN_BORC(p_kredi_id);

  -- E er kredi tamamen  denmi se logla
  IF v_kalan_borc = 0 THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik, FKKullanici_ID, Yapilan_Islem
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Kredi ID ' || p_kredi_id || ' tamamen  dendi.'
    );
  END IF;
END;
------------------------------------------------------------------------------------------------------------------------------------

/
--------------------------------------------------------
--  DDL for Procedure PRC_KREDI_VER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRC_KREDI_VER" (
    p_musteri_id     IN NUMBER,
    p_tutar          IN NUMBER,
    p_tarih          IN DATE DEFAULT SYSDATE,
    p_kredi_tur_id   IN NUMBER
)
IS
BEGIN
    INSERT INTO KREDILER (
        Kredi_ID, FKMusteri_ID, Kredi_TUTARI, Kredi_TARIHI, FKKrediType_ID
    ) VALUES (
        seq_kredi.NEXTVAL, p_musteri_id, p_tutar, p_tarih, p_kredi_tur_id
    );

    DBMS_OUTPUT.PUT_LINE('? Kredi ba ar yla eklendi.');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('? Hata: ' || SQLERRM);
END;
-------------------------------------------------------------------------------------------------------------------------------------

/
--------------------------------------------------------
--  DDL for Procedure PRC_MUSTERI_EKLE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "PRC_MUSTERI_EKLE" (
    p_TC           IN NUMBER,
    p_AD           IN VARCHAR2,
    p_SOYAD        IN VARCHAR2,
    p_DGMTRH       IN DATE,
    p_EMAIL        IN VARCHAR2,
    p_TEL          IN NUMBER,
    p_TYPE_ID      IN NUMBER
)
IS
BEGIN
    INSERT INTO MUSTRERILER (
        mstr_ID, mstr_TC, mstr_AD, mstr_SOYAD,
        mstr_DGMTRH, mstr_EMAIL, mstr_TEL, mstrtype_ID
    ) VALUES (
        seq_musteriler.NEXTVAL, p_TC, p_AD, p_SOYAD,
        p_DGMTRH, p_EMAIL, p_TEL, p_TYPE_ID
    );

    DBMS_OUTPUT.PUT_LINE('? M  teri ba ar yla eklendi.');

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('? Hata: Bu TC veya e-posta zaten kay tl .');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('? Hata: ' || SQLERRM);
END;
------------------------------------------------------------------------------------------

/

--------------------------------------------------------
--  DDL for Trigger TRG_HESAP_BAKIYE_KONTROL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_HESAP_BAKIYE_KONTROL" 
BEFORE INSERT OR UPDATE ON HESAPLAR
FOR EACH ROW
BEGIN
  IF :NEW.Mevcut_Bakiye < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Hesap bakiyesi negatif olamaz!');
  END IF;
END;
/
ALTER TRIGGER "TRG_HESAP_BAKIYE_KONTROL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KART_ID_ATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_KART_ID_ATA" 
BEFORE INSERT ON KARTLAR
FOR EACH ROW
BEGIN
  IF :NEW.Kart_ID IS NULL THEN
    :NEW.Kart_ID := SEQ_KART.NEXTVAL;
  END IF;
END;
/
ALTER TRIGGER "TRG_KART_ID_ATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KREDI_ODEME_ID_ATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_KREDI_ODEME_ID_ATA" 
BEFORE INSERT ON KREDI_ODEME_YONTEMI
FOR EACH ROW
BEGIN
  IF :NEW.Odeme_ID IS NULL THEN
    :NEW.Odeme_ID := SEQ_KREDI_ODEME.NEXTVAL;
  END IF;
END;
/
ALTER TRIGGER "TRG_KREDI_ODEME_ID_ATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KREDI_ODEME_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_KREDI_ODEME_LOG" 
AFTER INSERT ON KREDI_ODEME_YONTEMI 
FOR EACH ROW 
DECLARE
  v_yontem_adi VARCHAR2(100);
BEGIN
  --  deme y ntemi ad n  almak
  SELECT OdemeYontem_AD INTO v_yontem_adi
  FROM Odeme_Yontem_Type
  WHERE OdemeYontem_ID = :NEW.FKOdemeYontem_ID;

  -- Denetim kayd n  ekle
  INSERT INTO DENETIM_KAYITLARI (
    Kayit_Kimlik,
    FKKullanici_ID,
    Yapilan_Islem,
    Islem_TARIHI
  ) VALUES (
    seq_denetim_kayitlari.NEXTVAL,
    1,
    'Kredi ID ' || :NEW.FKKredi_ID || ' icin ' || :NEW.Odenen_Tutar || ' TL odeme yapildi (' || v_yontem_adi || ').',
    SYSDATE
  );
END;
/
ALTER TRIGGER "TRG_KREDI_ODEME_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_LOG_KART_ISLEMI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_LOG_KART_ISLEMI" 
AFTER INSERT OR UPDATE ON KARTLAR 
FOR EACH ROW
DECLARE
  v_kart_turu VARCHAR2(50);
  v_durum VARCHAR2(50);
  v_hesap_no VARCHAR2(20);
BEGIN
  -- Kart t r n  al
  SELECT KartType_AD INTO v_kart_turu
  FROM KART_TYPE
  WHERE KartType_ID = :NEW.FKKartType_ID;

  -- Kart durumunu al
  SELECT KartDurum_AD INTO v_durum
  FROM KART_DURUM_TYPE
  WHERE KartDurum_ID = :NEW.FKKartDurum_ID;

  -- Hesap numaras n  al
  SELECT hesap_NO INTO v_hesap_no
  FROM HESAPLAR
  WHERE Hesap_ID = :NEW.FKHesap_ID;

  IF INSERTING THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik,
      FKKullanici_ID,
      Yapilan_Islem,
      Islem_TARIHI
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Yeni kart tanimlandi ? Kart No: ****' || SUBSTR(:NEW.Kart_numarasi, -4) ||
      ', Limit: ' || :NEW.Kart_limit || ' TL, Tur: ' || v_kart_turu ||
      ', Durum: ' || v_durum || ', Hesap No: ' || v_hesap_no,
      SYSDATE
    );

  ELSIF UPDATING THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik,
      FKKullanici_ID,
      Yapilan_Islem,
      Islem_TARIHI
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Kart bilgileri guncellendi ? Kart No: ****' || SUBSTR(:NEW.Kart_numarasi, -4) ||
      ', Yeni Limit: ' || :NEW.Kart_limit || ' TL, Yeni Durum: ' || v_durum,
      SYSDATE
    );
  END IF;
END;
/
ALTER TRIGGER "TRG_LOG_KART_ISLEMI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_SIFIR_BAKIYE_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_SIFIR_BAKIYE_LOG" 
AFTER UPDATE ON HESAPLAR 
FOR EACH ROW 
BEGIN
  IF :NEW.Mevcut_Bakiye = 0 THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik, FKKullanici_ID, Yapilan_Islem
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Hesap ID ' || :NEW.Hesap_ID || ' bakiyesi 0 TL oldu.'
    );
  END IF;
END;
/
ALTER TRIGGER "TRG_SIFIR_BAKIYE_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_HESAP_BAKIYE_KONTROL
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_HESAP_BAKIYE_KONTROL" 
BEFORE INSERT OR UPDATE ON HESAPLAR
FOR EACH ROW
BEGIN
  IF :NEW.Mevcut_Bakiye < 0 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Hesap bakiyesi negatif olamaz!');
  END IF;
END;
/
ALTER TRIGGER "TRG_HESAP_BAKIYE_KONTROL" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_SIFIR_BAKIYE_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_SIFIR_BAKIYE_LOG" 
AFTER UPDATE ON HESAPLAR 
FOR EACH ROW 
BEGIN
  IF :NEW.Mevcut_Bakiye = 0 THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik, FKKullanici_ID, Yapilan_Islem
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Hesap ID ' || :NEW.Hesap_ID || ' bakiyesi 0 TL oldu.'
    );
  END IF;
END;
/
ALTER TRIGGER "TRG_SIFIR_BAKIYE_LOG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KART_ID_ATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_KART_ID_ATA" 
BEFORE INSERT ON KARTLAR
FOR EACH ROW
BEGIN
  IF :NEW.Kart_ID IS NULL THEN
    :NEW.Kart_ID := SEQ_KART.NEXTVAL;
  END IF;
END;
/
ALTER TRIGGER "TRG_KART_ID_ATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_LOG_KART_ISLEMI
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_LOG_KART_ISLEMI" 
AFTER INSERT OR UPDATE ON KARTLAR 
FOR EACH ROW
DECLARE
  v_kart_turu VARCHAR2(50);
  v_durum VARCHAR2(50);
  v_hesap_no VARCHAR2(20);
BEGIN
  -- Kart t r n  al
  SELECT KartType_AD INTO v_kart_turu
  FROM KART_TYPE
  WHERE KartType_ID = :NEW.FKKartType_ID;

  -- Kart durumunu al
  SELECT KartDurum_AD INTO v_durum
  FROM KART_DURUM_TYPE
  WHERE KartDurum_ID = :NEW.FKKartDurum_ID;

  -- Hesap numaras n  al
  SELECT hesap_NO INTO v_hesap_no
  FROM HESAPLAR
  WHERE Hesap_ID = :NEW.FKHesap_ID;

  IF INSERTING THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik,
      FKKullanici_ID,
      Yapilan_Islem,
      Islem_TARIHI
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Yeni kart tanimlandi ? Kart No: ****' || SUBSTR(:NEW.Kart_numarasi, -4) ||
      ', Limit: ' || :NEW.Kart_limit || ' TL, Tur: ' || v_kart_turu ||
      ', Durum: ' || v_durum || ', Hesap No: ' || v_hesap_no,
      SYSDATE
    );

  ELSIF UPDATING THEN
    INSERT INTO DENETIM_KAYITLARI (
      Kayit_Kimlik,
      FKKullanici_ID,
      Yapilan_Islem,
      Islem_TARIHI
    ) VALUES (
      seq_denetim_kayitlari.NEXTVAL,
      1,
      'Kart bilgileri guncellendi ? Kart No: ****' || SUBSTR(:NEW.Kart_numarasi, -4) ||
      ', Yeni Limit: ' || :NEW.Kart_limit || ' TL, Yeni Durum: ' || v_durum,
      SYSDATE
    );
  END IF;
END;
/
ALTER TRIGGER "TRG_LOG_KART_ISLEMI" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KREDI_ODEME_ID_ATA
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_KREDI_ODEME_ID_ATA" 
BEFORE INSERT ON KREDI_ODEME_YONTEMI
FOR EACH ROW
BEGIN
  IF :NEW.Odeme_ID IS NULL THEN
    :NEW.Odeme_ID := SEQ_KREDI_ODEME.NEXTVAL;
  END IF;
END;
/
ALTER TRIGGER "TRG_KREDI_ODEME_ID_ATA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_KREDI_ODEME_LOG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "TRG_KREDI_ODEME_LOG" 
AFTER INSERT ON KREDI_ODEME_YONTEMI 
FOR EACH ROW 
DECLARE
  v_yontem_adi VARCHAR2(100);
BEGIN
  --  deme y ntemi ad n  almak
  SELECT OdemeYontem_AD INTO v_yontem_adi
  FROM Odeme_Yontem_Type
  WHERE OdemeYontem_ID = :NEW.FKOdemeYontem_ID;

  -- Denetim kayd n  ekle
  INSERT INTO DENETIM_KAYITLARI (
    Kayit_Kimlik,
    FKKullanici_ID,
    Yapilan_Islem,
    Islem_TARIHI
  ) VALUES (
    seq_denetim_kayitlari.NEXTVAL,
    1,
    'Kredi ID ' || :NEW.FKKredi_ID || ' icin ' || :NEW.Odenen_Tutar || ' TL odeme yapildi (' || v_yontem_adi || ').',
    SYSDATE
  );
END;
/
ALTER TRIGGER "TRG_KREDI_ODEME_LOG" ENABLE;

--------------------------------------------------------
--  DDL for View VW_AKTIF_KARTLAR
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_AKTIF_KARTLAR" ("KART_ID", "MUSTERI_ADI_SOYADI", "KART_NUMARASI", "KART_TIPI", "KART_DURUMU", "KART_LIMIT") AS 
  SELECT 
  k.Kart_ID,
  m.mstr_AD || ' ' || m.mstr_SOYAD AS Musteri_Adi_Soyadi,
  k.Kart_numarasi,
  kt.KartType_AD AS Kart_Tipi,
  kd.KartDurum_AD AS Kart_Durumu,
  k.Kart_limit
FROM KARTLAR k
JOIN MUSTRERILER m ON m.mstr_ID = k.FKMusteri_ID
JOIN KART_TYPE kt ON kt.KartType_ID = k.FKKartType_ID
JOIN KART_DURUM_TYPE kd ON kd.KartDurum_ID = k.FKKartDurum_ID
WHERE kd.KartDurum_AD = 'Aktif'
;
--------------------------------------------------------
--  DDL for View VW_KREDI_GECIKME_TAKIBI
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_KREDI_GECIKME_TAKIBI" ("MUSTERI_ID", "MUSTERI_ADI_SOYADI", "KREDI_TURU", "KREDI_TARIHI", "SON_ODEME_TARIHI", "ODEME_DURUMU") AS 
  SELECT
  m.mstr_ID AS Musteri_ID,
  m.mstr_AD || ' ' || m.mstr_SOYAD AS Musteri_Adi_Soyadi,
  kt.KrediType_AD AS Kredi_Turu,
  k.Kredi_TARIHI,
  MAX(ko.Odeme_TARIHI) AS Son_Odeme_Tarihi,
  CASE
    WHEN MAX(ko.Odeme_TARIHI) IS NULL AND TRUNC(SYSDATE) > k.Kredi_TARIHI + 30 THEN 'GECIKMEDE'
    WHEN MAX(ko.Odeme_TARIHI) IS NOT NULL AND TRUNC(SYSDATE) > MAX(ko.Odeme_TARIHI) + 30 THEN 'GECIKMEDE'
    ELSE 'ZAMANINDA'
  END AS Odeme_Durumu
FROM KREDILER k
JOIN MUSTRERILER m ON m.mstr_ID = k.FKMusteri_ID
JOIN KREDI_TYPE kt ON kt.KrediType_ID = k.FKKrediType_ID
LEFT JOIN KREDI_ODEME_YONTEMI ko ON ko.FKKredi_ID = k.Kredi_ID
GROUP BY m.mstr_ID, m.mstr_AD, m.mstr_SOYAD, kt.KrediType_AD, k.Kredi_TARIHI
;
--------------------------------------------------------
--  DDL for View VW_KREDI_ODEME_OZETI
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_KREDI_ODEME_OZETI" ("MUSTERI_ID", "MUSTERI_ADI_SOYADI", "KREDI_TURU", "KREDI_TARIHI", "KREDI_TUTARI", "TOPLAM_ODENEN", "KALAN_BORC") AS 
  SELECT
  m.mstr_ID AS Musteri_ID,
  m.mstr_AD || ' ' || m.mstr_SOYAD AS Musteri_Adi_Soyadi,
  kt.KrediType_AD AS Kredi_Turu,
  k.Kredi_TARIHI,
  k.Kredi_TUTARI,
  NVL(SUM(ko.Odenen_Tutar), 0) AS Toplam_Odenen,
  k.Kredi_TUTARI - NVL(SUM(ko.Odenen_Tutar), 0) AS Kalan_Borc
FROM KREDILER k
JOIN MUSTRERILER m ON k.FKMusteri_ID = m.mstr_ID
JOIN KREDI_TYPE kt ON k.FKKrediType_ID = kt.KrediType_ID
LEFT JOIN KREDI_ODEME_YONTEMI ko ON ko.FKKredi_ID = k.Kredi_ID
GROUP BY m.mstr_ID, m.mstr_AD, m.mstr_SOYAD, kt.KrediType_AD, k.Kredi_TUTARI, k.Kredi_TARIHI
;
--------------------------------------------------------
--  DDL for View VW_MUSTERI_HESAP_OZETI
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_MUSTERI_HESAP_OZETI" ("MUSTERI_ID", "MUSTERI_ADI_SOYADI", "HESAP_NO", "IBAN", "MEVCUT_BAKIYE", "HESAP_TURU", "HESAP_DURUMU") AS 
  SELECT
  m.mstr_ID AS Musteri_ID,
  m.mstr_AD || ' ' || m.mstr_SOYAD AS Musteri_Adi_Soyadi,
  h.hesap_NO,
  h.IBAN,
  h.Mevcut_Bakiye,
  ht.HesapType_AD AS Hesap_Turu,
  hdt.HesapDurum_AD AS Hesap_Durumu
FROM HESAPLAR h
JOIN MUSTRERILER m ON h.FKMusteri_ID = m.mstr_ID
JOIN HESAP_TYPE ht ON h.FKHesap_type = ht.HesapType_ID
JOIN HESAP_DURUM_TYPE hdt ON h.FKHesapDurum_ID = hdt.HesapDurum_ID
;
--------------------------------------------------------
--  DDL for View VW_MUSTERI_ISLEM_OZETI
--------------------------------------------------------

  CREATE OR REPLACE VIEW "VW_MUSTERI_ISLEM_OZETI" ("MUSTERI_ID", "MUSTERI_ADI_SOYADI", "TOPLAM_ISLEM_SAYISI", "TOPLAM_ISLEM_TUTARI") AS 
  SELECT 
  m.mstr_ID AS Musteri_ID,
  m.mstr_AD || ' ' || m.mstr_SOYAD AS Musteri_Adi_Soyadi,
  COUNT(i.Islem_ID) AS Toplam_Islem_Sayisi,
  NVL(SUM(i.Islem_TUTARI), 0) AS Toplam_Islem_Tutari
FROM MUSTRERILER m
JOIN HESAPLAR h ON h.FKMusteri_ID = m.mstr_ID
JOIN ISLEMLER i ON i.FKHesap_ID = h.Hesap_ID
GROUP BY m.mstr_ID, m.mstr_AD, m.mstr_SOYAD
;

