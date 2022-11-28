/*==============================================================*/
/* DBMS name:      SAP SQL Anywhere 16                          */
/* Created on:     26/11/2022 1:07:28                           */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_BOVEDA_EST_CONTI_ESTRUCTU') then
    alter table BOVEDA
       delete foreign key FK_BOVEDA_EST_CONTI_ESTRUCTU
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_BOVEDA_FAM_ADQUI_FAM_PROP') then
    alter table BOVEDA
       delete foreign key FK_BOVEDA_FAM_ADQUI_FAM_PROP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CERTIFIC_FAM_SOLIC_FAM_PROP') then
    alter table CERTIFICADO
       delete foreign key FK_CERTIFIC_FAM_SOLIC_FAM_PROP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CERTIFIC_PER_GENER_PERSONAL') then
    alter table CERTIFICADO
       delete foreign key FK_CERTIFIC_PER_GENER_PERSONAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ESTRUCTU_MAN_POSEE_MANZANA') then
    alter table ESTRUCTURA
       delete foreign key FK_ESTRUCTU_MAN_POSEE_MANZANA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FAM_PROP_CAN_RADIC_CANTON') then
    alter table FAM_PROPIETARIO
       delete foreign key FK_FAM_PROP_CAN_RADIC_CANTON
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_INCIDENT_BOV_SUCIT_BOVEDA') then
    alter table INCIDENTE
       delete foreign key FK_INCIDENT_BOV_SUCIT_BOVEDA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MANZANA_CEM_TIENE_CEMENTER') then
    alter table MANZANA
       delete foreign key FK_MANZANA_CEM_TIENE_CEMENTER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_FAM_SALDA_FAM_PROP') then
    alter table PAGOS
       delete foreign key FK_PAGOS_FAM_SALDA_FAM_PROP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_PER_GENER_PERSONAL') then
    alter table PAGOS
       delete foreign key FK_PAGOS_PER_GENER_PERSONAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PAGOS_TRA_GENER_TRAMITE') then
    alter table PAGOS
       delete foreign key FK_PAGOS_TRA_GENER_TRAMITE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PERSONAL_CEM_CONTR_CEMENTER') then
    alter table PERSONAL
       delete foreign key FK_PERSONAL_CEM_CONTR_CEMENTER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_REPORTE_PER_EMITE_PERSONAL') then
    alter table REPORTE
       delete foreign key FK_REPORTE_PER_EMITE_PERSONAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_REP_TIEN_REP_TIENE_REPORTE') then
    alter table REP_TIENE_INC
       delete foreign key FK_REP_TIEN_REP_TIENE_REPORTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_REP_TIEN_REP_TIENE_INCIDENT') then
    alter table REP_TIENE_INC
       delete foreign key FK_REP_TIEN_REP_TIENE_INCIDENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRAMITE_BOV_GENER_BOVEDA') then
    alter table TRAMITE
       delete foreign key FK_TRAMITE_BOV_GENER_BOVEDA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRAMITE_FAL_TRA_FALLECID') then
    alter table TRAMITE
       delete foreign key FK_TRAMITE_FAL_TRA_FALLECID
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRAMITE_FAM_SOLIC_FAM_PROP') then
    alter table TRAMITE
       delete foreign key FK_TRAMITE_FAM_SOLIC_FAM_PROP
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRAMITE_PER_REALI_PERSONAL') then
    alter table TRAMITE
       delete foreign key FK_TRAMITE_PER_REALI_PERSONAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TRAMITE_TRA_GENER_PAGOS') then
    alter table TRAMITE
       delete foreign key FK_TRAMITE_TRA_GENER_PAGOS
end if;

drop index if exists BOVEDA.FAM_ADQUIERE_BOV_FK;

drop index if exists BOVEDA.EST_CONTIENE_BOV_FK;

drop index if exists BOVEDA.BOVEDA_PK;

drop table if exists BOVEDA;

drop index if exists CANTON.CANTON_PK;

drop table if exists CANTON;

drop index if exists CEMENTERIO.CEMENTERIO_PK;

drop table if exists CEMENTERIO;

drop index if exists CERTIFICADO.FAM_SOLICITA_CER_FK;

drop index if exists CERTIFICADO.PER_GENERA_CER_FK;

drop index if exists CERTIFICADO.CERTIFICADO_PK;

drop table if exists CERTIFICADO;

drop index if exists ESTRUCTURA.MAN_POSEEN_EST_FK;

drop index if exists ESTRUCTURA.ESTRUCTURA_PK;

drop table if exists ESTRUCTURA;

drop index if exists FALLECIDO.FALLECIDO_PK;

drop table if exists FALLECIDO;

drop index if exists FAM_PROPIETARIO.CAN_RADICAN_FAM_FK;

drop index if exists FAM_PROPIETARIO.FAM_PROPIETARIO_PK;

drop table if exists FAM_PROPIETARIO;

drop index if exists INCIDENTE.BOV_SUCITAR_INC_FK;

drop index if exists INCIDENTE.INCIDENTE_PK;

drop table if exists INCIDENTE;

drop index if exists MANZANA.CEM_TIENE_MAN_FK;

drop index if exists MANZANA.MANZANA_PK;

drop table if exists MANZANA;

drop index if exists PAGOS.TRA_GENERA_PAG2_FK;

drop index if exists PAGOS.PER_GENERA_PAG_FK;

drop index if exists PAGOS.FAM_SALDA_PAG_FK;

drop index if exists PAGOS.PAGOS_PK;

drop table if exists PAGOS;

drop index if exists PERSONAL.CEM_CONTRATA_PER_FK;

drop index if exists PERSONAL.PERSONAL_PK;

drop table if exists PERSONAL;

drop index if exists REPORTE.PER_EMITE_REP_FK;

drop index if exists REPORTE.REPORTE_PK;

drop table if exists REPORTE;

drop index if exists REP_TIENE_INC.REP_TIENE_INC2_FK;

drop index if exists REP_TIENE_INC.REP_TIENE_INC_FK;

drop index if exists REP_TIENE_INC.REP_TIENE_INC_PK;

drop table if exists REP_TIENE_INC;

drop index if exists TRAMITE.TRA_GENERA_PAG_FK;

drop index if exists TRAMITE.FAM_SOLICITA_TRA_FK;

drop index if exists TRAMITE.FAL_TRA_FK;

drop index if exists TRAMITE.BOV_GENERA_TRA_FK;

drop index if exists TRAMITE.PER_REALIZA_TRA_FK;

drop index if exists TRAMITE.TRAMITE_PK;

drop table if exists TRAMITE;

/*==============================================================*/
/* Table: BOVEDA                                                */
/*==============================================================*/
create table BOVEDA 
(
   ID_BOVEDA            integer                        not null,
   ID_ESTRUCTURA        integer                        null,
   ID_FAMPROPIETARIO    integer                        null,
   ESTADO_BOVEDA        varchar(15)                    null,
   NOMBRE_BOVEDA        varchar(20)                    null,
   constraint PK_BOVEDA primary key (ID_BOVEDA)
);

/*==============================================================*/
/* Index: BOVEDA_PK                                             */
/*==============================================================*/
create unique index BOVEDA_PK on BOVEDA (
ID_BOVEDA ASC
);

/*==============================================================*/
/* Index: EST_CONTIENE_BOV_FK                                   */
/*==============================================================*/
create index EST_CONTIENE_BOV_FK on BOVEDA (
ID_ESTRUCTURA ASC
);

/*==============================================================*/
/* Index: FAM_ADQUIERE_BOV_FK                                   */
/*==============================================================*/
create index FAM_ADQUIERE_BOV_FK on BOVEDA (
ID_FAMPROPIETARIO ASC
);

/*==============================================================*/
/* Table: CANTON                                                */
/*==============================================================*/
create table CANTON 
(
   ID_CANTON            integer                        not null,
   NOMBRE_CANTON        varchar(40)                    null,
   constraint PK_CANTON primary key (ID_CANTON)
);

/*==============================================================*/
/* Index: CANTON_PK                                             */
/*==============================================================*/
create unique index CANTON_PK on CANTON (
ID_CANTON ASC
);

/*==============================================================*/
/* Table: CEMENTERIO                                            */
/*==============================================================*/
create table CEMENTERIO 
(
   ID_CEMENTERIO        integer                        not null,
   DIRECCION_CEMETERIO  char(30)                       null,
   NOMBRE_CEMENTERIO    varchar(30)                    null,
   TAMANIO_CEMEMTERIO   varchar(10)                    null,
   constraint PK_CEMENTERIO primary key (ID_CEMENTERIO)
);

/*==============================================================*/
/* Index: CEMENTERIO_PK                                         */
/*==============================================================*/
create unique index CEMENTERIO_PK on CEMENTERIO (
ID_CEMENTERIO ASC
);

/*==============================================================*/
/* Table: CERTIFICADO                                           */
/*==============================================================*/
create table CERTIFICADO 
(
   ID_CERTIFICADO       integer                        not null,
   ID_FAMPROPIETARIO    integer                        null,
   ID_PERSONAL          integer                        null,
   FECHA_CERTIFICADO    date                           null,
   EMISOR_CERFICADO     varchar(60)                    null,
   TIPO_CERTIFICADO     varchar(40)                    null,
   DESCRIPCION_CERTIFICADO text                   null,
   ESTADO_CERTICADO     varchar(50)                    null,
   constraint PK_CERTIFICADO primary key (ID_CERTIFICADO)
);

/*==============================================================*/
/* Index: CERTIFICADO_PK                                        */
/*==============================================================*/
create unique index CERTIFICADO_PK on CERTIFICADO (
ID_CERTIFICADO ASC
);

/*==============================================================*/
/* Index: PER_GENERA_CER_FK                                     */
/*==============================================================*/
create index PER_GENERA_CER_FK on CERTIFICADO (
ID_PERSONAL ASC
);

/*==============================================================*/
/* Index: FAM_SOLICITA_CER_FK                                   */
/*==============================================================*/
create index FAM_SOLICITA_CER_FK on CERTIFICADO (
ID_FAMPROPIETARIO ASC
);

/*==============================================================*/
/* Table: ESTRUCTURA                                            */
/*==============================================================*/
create table ESTRUCTURA 
(
   ID_ESTRUCTURA        integer                        not null,
   ID_MANZANA           integer                        null,
   AREA_ESTRUCTURA      varchar(20)                    not null,
   TIPO_ESTRUCTURA      varchar(30)                    null,
   DIMENSION_ESTRUCTURA varchar(30)                    null,
   CANTIDABOVEDAS_ESTRUCTURA varchar(8)                     null,
   constraint PK_ESTRUCTURA primary key (ID_ESTRUCTURA)
);

/*==============================================================*/
/* Index: ESTRUCTURA_PK                                         */
/*==============================================================*/
create unique index ESTRUCTURA_PK on ESTRUCTURA (
ID_ESTRUCTURA ASC
);

/*==============================================================*/
/* Index: MAN_POSEEN_EST_FK                                     */
/*==============================================================*/
create index MAN_POSEEN_EST_FK on ESTRUCTURA (
ID_MANZANA ASC
);

/*==============================================================*/
/* Table: FALLECIDO                                             */
/*==============================================================*/
create table FALLECIDO 
(
   ID_FALLECIDO         integer                        not null,
   NOMBRE_FALLECIDO     varchar(30)                    null,
   APELLIDO_FALLECIDO   varchar(30)                    null,
   CAUSA_MUERTE         varchar(30)                    null,
   FECHA_NACIMIENTO     date                           null,
   FECHA_MUERTE         date                           null,
   constraint PK_FALLECIDO primary key (ID_FALLECIDO)
);

/*==============================================================*/
/* Index: FALLECIDO_PK                                          */
/*==============================================================*/
create unique index FALLECIDO_PK on FALLECIDO (
ID_FALLECIDO ASC
);

/*==============================================================*/
/* Table: FAM_PROPIETARIO                                       */
/*==============================================================*/
create table FAM_PROPIETARIO 
(
   ID_FAMPROPIETARIO    integer                        not null,
   ID_CANTON            integer                        null,
   CEDULA__FAMPROPIETARIO integer                        not null,
   NOMBRE_FAMPROPIETARIO varchar(30)                    null,
   APELLIDO_FAMPROPIETARIO varchar(30)                    null,
   FECHANACIEMINTO_FAMPROPIETARIO date                           null,
   LUGARDERESIDECIA_FAMRPROPIETARIO varchar(40)                    null,
   TELEFONO_FAMPROPIETARIO integer                        null,
   TELEFONOEMER_FAMPROPIETARIO integer                        null,
   constraint PK_FAM_PROPIETARIO primary key (ID_FAMPROPIETARIO)
);

/*==============================================================*/
/* Index: FAM_PROPIETARIO_PK                                    */
/*==============================================================*/
create unique index FAM_PROPIETARIO_PK on FAM_PROPIETARIO (
ID_FAMPROPIETARIO ASC
);

/*==============================================================*/
/* Index: CAN_RADICAN_FAM_FK                                    */
/*==============================================================*/
create index CAN_RADICAN_FAM_FK on FAM_PROPIETARIO (
ID_CANTON ASC
);

/*==============================================================*/
/* Table: INCIDENTE                                             */
/*==============================================================*/
create table INCIDENTE 
(
   ID_INCIDENTE         integer                        not null,
   ID_BOVEDA            integer                        null,
   AREA_INCIDENTE       varchar(5)                     null,
   TIPO_INCIDENTE       varchar(30)                    null,
   BOVEDA_INCIDENTE     varchar(30)                    null,
   HORA_INCIDENTE       varchar(10)                    null,
   constraint PK_INCIDENTE primary key (ID_INCIDENTE)
);

/*==============================================================*/
/* Index: INCIDENTE_PK                                          */
/*==============================================================*/
create unique index INCIDENTE_PK on INCIDENTE (
ID_INCIDENTE ASC
);

/*==============================================================*/
/* Index: BOV_SUCITAR_INC_FK                                    */
/*==============================================================*/
create index BOV_SUCITAR_INC_FK on INCIDENTE (
ID_BOVEDA ASC
);

/*==============================================================*/
/* Table: MANZANA                                               */
/*==============================================================*/
create table MANZANA 
(
   ID_MANZANA           integer                        not null,
   ID_CEMENTERIO        integer                        null,
   AREA_MANZANA         varchar(3)                     null,
   NUMERO_MANZAN        integer                        null,
   constraint PK_MANZANA primary key (ID_MANZANA)
);

/*==============================================================*/
/* Index: MANZANA_PK                                            */
/*==============================================================*/
create unique index MANZANA_PK on MANZANA (
ID_MANZANA ASC
);

/*==============================================================*/
/* Index: CEM_TIENE_MAN_FK                                      */
/*==============================================================*/
create index CEM_TIENE_MAN_FK on MANZANA (
ID_CEMENTERIO ASC
);

/*==============================================================*/
/* Table: PAGOS                                                 */
/*==============================================================*/
create table PAGOS 
(
   ID_PAGO              integer                        not null,
   ID_TRAMITE           integer                        null,
   ID_FAMPROPIETARIO    integer                        null,
   ID_PERSONAL          integer                        null,
   PRECIO_TOTAL         numeric(10)                    null,
   FORMA_DE_PAGO        varchar(40)                    null,
   CANTIDAD_PAGADA      numeric(10)                    null,
   constraint PK_PAGOS primary key (ID_PAGO)
);

/*==============================================================*/
/* Index: PAGOS_PK                                              */
/*==============================================================*/
create unique index PAGOS_PK on PAGOS (
ID_PAGO ASC
);

/*==============================================================*/
/* Index: FAM_SALDA_PAG_FK                                      */
/*==============================================================*/
create index FAM_SALDA_PAG_FK on PAGOS (
ID_FAMPROPIETARIO ASC
);

/*==============================================================*/
/* Index: PER_GENERA_PAG_FK                                     */
/*==============================================================*/
create index PER_GENERA_PAG_FK on PAGOS (
ID_PERSONAL ASC
);

/*==============================================================*/
/* Index: TRA_GENERA_PAG2_FK                                    */
/*==============================================================*/
create index TRA_GENERA_PAG2_FK on PAGOS (
ID_TRAMITE ASC
);

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/
create table PERSONAL 
(
   ID_PERSONAL          integer                        not null,
   ID_CEMENTERIO        integer                        null,
   NOMBRE_PERSONAL      varchar(30)                    null,
   APELLIDO_PERSONAL    varchar(30)                    null,
   CEDULA_PERSONAL      varchar(10)                    null,
   TELEFONO_PERSONAL    varchar(10)                    null,
   DIRECCION_PERSONAL   varchar(30)                    null,
   EDAD_PERSONAL        varchar(2)                     null,
   TIPO_PERSONAL        varchar(30)                    null,
   AREA_PERSONAL        varchar(30)                    null,
   ANIO_INGRESO         date                           null,
   constraint PK_PERSONAL primary key (ID_PERSONAL)
);

/*==============================================================*/
/* Index: PERSONAL_PK                                           */
/*==============================================================*/
create unique index PERSONAL_PK on PERSONAL (
ID_PERSONAL ASC
);

/*==============================================================*/
/* Index: CEM_CONTRATA_PER_FK                                   */
/*==============================================================*/
create index CEM_CONTRATA_PER_FK on PERSONAL (
ID_CEMENTERIO ASC
);

/*==============================================================*/
/* Table: REPORTE                                               */
/*==============================================================*/
create table REPORTE 
(
   ID_REPORTE           integer                        not null,
   ID_PERSONAL          integer                        null,
   NOMBRE_REPORTE       varchar(50)                    null,
   FECHA_REPORTE        date                           null,
   DESCRIPCION_REPORTE  varchar(500)                   null,
   CANTIDAD_INCIDENTES  integer                        null,
   constraint PK_REPORTE primary key (ID_REPORTE)
);

/*==============================================================*/
/* Index: REPORTE_PK                                            */
/*==============================================================*/
create unique index REPORTE_PK on REPORTE (
ID_REPORTE ASC
);

/*==============================================================*/
/* Index: PER_EMITE_REP_FK                                      */
/*==============================================================*/
create index PER_EMITE_REP_FK on REPORTE (
ID_PERSONAL ASC
);

/*==============================================================*/
/* Table: REP_TIENE_INC                                         */
/*==============================================================*/
create table REP_TIENE_INC 
(
   ID_REPORTE           integer                        not null,
   ID_INCIDENTE         integer                        not null,
   constraint PK_REP_TIENE_INC primary key (ID_REPORTE, ID_INCIDENTE)
);

/*==============================================================*/
/* Index: REP_TIENE_INC_PK                                      */
/*==============================================================*/
create unique index REP_TIENE_INC_PK on REP_TIENE_INC (
ID_REPORTE ASC,
ID_INCIDENTE ASC
);

/*==============================================================*/
/* Index: REP_TIENE_INC_FK                                      */
/*==============================================================*/
create index REP_TIENE_INC_FK on REP_TIENE_INC (
ID_REPORTE ASC
);

/*==============================================================*/
/* Index: REP_TIENE_INC2_FK                                     */
/*==============================================================*/
create index REP_TIENE_INC2_FK on REP_TIENE_INC (
ID_INCIDENTE ASC
);

/*==============================================================*/
/* Table: TRAMITE                                               */
/*==============================================================*/
create table TRAMITE 
(
   ID_TRAMITE           integer                        not null,
   ID_FALLECIDO         integer                        null,
   ID_PERSONAL          integer                        null,
   ID_BOVEDA            integer                        null,
   ID_FAMPROPIETARIO    integer                        null,
   ANIO_TRAMITE         date                           null,
   TIPO_TRAMITE         varchar(50)                    null,
   DESCRIPCION_TRAMITE  text                           null,
   ESTADO_PAGO          varchar(50)                    null,
   constraint PK_TRAMITE primary key (ID_TRAMITE)
);

/*==============================================================*/
/* Index: TRAMITE_PK                                            */
/*==============================================================*/
create unique index TRAMITE_PK on TRAMITE (
ID_TRAMITE ASC
);

/*==============================================================*/
/* Index: PER_REALIZA_TRA_FK                                    */
/*==============================================================*/
create index PER_REALIZA_TRA_FK on TRAMITE (
ID_PERSONAL ASC
);

/*==============================================================*/
/* Index: BOV_GENERA_TRA_FK                                     */
/*==============================================================*/
create index BOV_GENERA_TRA_FK on TRAMITE (
ID_BOVEDA ASC
);

/*==============================================================*/
/* Index: FAL_TRA_FK                                            */
/*==============================================================*/
create index FAL_TRA_FK on TRAMITE (
ID_FALLECIDO ASC
);

/*==============================================================*/
/* Index: FAM_SOLICITA_TRA_FK                                   */
/*==============================================================*/
create index FAM_SOLICITA_TRA_FK on TRAMITE (
ID_FAMPROPIETARIO ASC
);

/*==============================================================*/
/* Index: TRA_GENERA_PAG_FK                                     */
/*==============================================================*/
create index TRA_GENERA_PAG_FK on TRAMITE (
ID_PAGO ASC
);

alter table BOVEDA
   add constraint FK_BOVEDA_EST_CONTI_ESTRUCTU foreign key (ID_ESTRUCTURA)
      references ESTRUCTURA (ID_ESTRUCTURA)
      on update restrict
      on delete restrict;

alter table BOVEDA
   add constraint FK_BOVEDA_FAM_ADQUI_FAM_PROP foreign key (ID_FAMPROPIETARIO)
      references FAM_PROPIETARIO (ID_FAMPROPIETARIO)
      on update restrict
      on delete restrict;

alter table CERTIFICADO
   add constraint FK_CERTIFIC_FAM_SOLIC_FAM_PROP foreign key (ID_FAMPROPIETARIO)
      references FAM_PROPIETARIO (ID_FAMPROPIETARIO)
      on update restrict
      on delete restrict;

alter table CERTIFICADO
   add constraint FK_CERTIFIC_PER_GENER_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL)
      on update restrict
      on delete restrict;

alter table ESTRUCTURA
   add constraint FK_ESTRUCTU_MAN_POSEE_MANZANA foreign key (ID_MANZANA)
      references MANZANA (ID_MANZANA)
      on update restrict
      on delete restrict;

alter table FAM_PROPIETARIO
   add constraint FK_FAM_PROP_CAN_RADIC_CANTON foreign key (ID_CANTON)
      references CANTON (ID_CANTON)
      on update restrict
      on delete restrict;

alter table INCIDENTE
   add constraint FK_INCIDENT_BOV_SUCIT_BOVEDA foreign key (ID_BOVEDA)
      references BOVEDA (ID_BOVEDA)
      on update restrict
      on delete restrict;

alter table MANZANA
   add constraint FK_MANZANA_CEM_TIENE_CEMENTER foreign key (ID_CEMENTERIO)
      references CEMENTERIO (ID_CEMENTERIO)
      on update restrict
      on delete restrict;

alter table PAGOS
   add constraint FK_PAGOS_FAM_SALDA_FAM_PROP foreign key (ID_FAMPROPIETARIO)
      references FAM_PROPIETARIO (ID_FAMPROPIETARIO)
      on update restrict
      on delete restrict;

alter table PAGOS
   add constraint FK_PAGOS_PER_GENER_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL)
      on update restrict
      on delete restrict;

alter table PAGOS
   add constraint FK_PAGOS_TRA_GENER_TRAMITE foreign key (ID_TRAMITE)
      references TRAMITE (ID_TRAMITE)
      on update restrict
      on delete restrict;

alter table PERSONAL
   add constraint FK_PERSONAL_CEM_CONTR_CEMENTER foreign key (ID_CEMENTERIO)
      references CEMENTERIO (ID_CEMENTERIO)
      on update restrict
      on delete restrict;

alter table REPORTE
   add constraint FK_REPORTE_PER_EMITE_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL)
      on update restrict
      on delete restrict;

alter table REP_TIENE_INC
   add constraint FK_REP_TIEN_REP_TIENE_REPORTE foreign key (ID_REPORTE)
      references REPORTE (ID_REPORTE)
      on update restrict
      on delete restrict;

alter table REP_TIENE_INC
   add constraint FK_REP_TIEN_REP_TIENE_INCIDENT foreign key (ID_INCIDENTE)
      references INCIDENTE (ID_INCIDENTE)
      on update restrict
      on delete restrict;

alter table TRAMITE
   add constraint FK_TRAMITE_BOV_GENER_BOVEDA foreign key (ID_BOVEDA)
      references BOVEDA (ID_BOVEDA)
      on update restrict
      on delete restrict;

alter table TRAMITE
   add constraint FK_TRAMITE_FAL_TRA_FALLECID foreign key (ID_FALLECIDO)
      references FALLECIDO (ID_FALLECIDO)
      on update restrict
      on delete restrict;

alter table TRAMITE
   add constraint FK_TRAMITE_FAM_SOLIC_FAM_PROP foreign key (ID_FAMPROPIETARIO)
      references FAM_PROPIETARIO (ID_FAMPROPIETARIO)
      on update restrict
      on delete restrict;

alter table TRAMITE
   add constraint FK_TRAMITE_PER_REALI_PERSONAL foreign key (ID_PERSONAL)
      references PERSONAL (ID_PERSONAL)
      on update restrict
      on delete restrict;
	  
	       --Registro delcementerio
INSERT INTO CEMENTERIO VALUES ('2305','calle 16 av 27 y 28','Cementerio Dreamworld','5600m2');



DELETE FROM CEMENTERIO; 

--datos de las manzanas--
INSERT INTO manzana VALUES ('1','2305','A','1');
INSERT INTO manzana VALUES ('2','2305','B','2');
INSERT INTO manzana VALUES ('3','2305','C','3');
INSERT INTO manzana VALUES ('4','2305','D','4');
INSERT INTO manzana VALUES ('5','2305','E','5');
INSERT INTO manzana VALUES ('6','2305','F','6');
INSERT INTO manzana VALUES ('7','2305','G','7');
INSERT INTO manzana VALUES ('8','2305','H','8');
INSERT INTO manzana VALUES ('9','2305','I','9');
INSERT INTO manzana VALUES ('10','2305','J','10');

SELECT * FROM  MANZANA; 
DELETE FROM MANZANA; 
--datos estructura area A--
INSERT INTO estructura VALUES ('1','1','A1','NICHO','2x3metros 2,5 metros largo','6');
INSERT INTO estructura VALUES ('2','1','A2','NICHO','2x4metros 2,5 metros largo','8');
INSERT INTO estructura VALUES ('3','1','A3','NICHO','1x3metros 2,5 metros largo','3');
INSERT INTO estructura VALUES ('4','1','A4','NICHO','2x3metros 2,5 metros largo','6');
INSERT INTO estructura VALUES ('5','1','A5','NICHO','3x3metros 2,5 metros largo','9');
INSERT INTO estructura VALUES ('6','1','A6','NICHO','2x3metros 2,5 metros largo','6');


--boveda solitaria A--
INSERT INTO estructura VALUES ('7','1','A7','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');
INSERT INTO estructura VALUES ('8','1','A8','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');
--datos estructura area B--
INSERT INTO estructura VALUES ('9','2','B1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');
INSERT INTO estructura VALUES ('10','2','B2','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');
INSERT INTO estructura VALUES ('11','2','B3','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');
INSERT INTO estructura VALUES ('12','2','B4','NICHO','2x3metros 2,5 metros largo','6');
INSERT INTO estructura VALUES ('13','2','B5','NICHO','3x3metros 2,5 metros largo','9');
INSERT INTO estructura VALUES ('14','2','B6','NICHO','2x3metros 2,5 metros largo','6');
--datos estructura area c--
INSERT INTO estructura VALUES ('15','2','C1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('16','2','C2','NICHO','2x3metros 2,5 metros largo','6');
--datos estructura area d
INSERT INTO estructura VALUES ('17','2','D1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('18','2','D2','NICHO','2x3metros 2,5 metros largo','6');
--datos estructura area e
INSERT INTO estructura VALUES ('19','2','E1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('20','2','E2','NICHO','2x3metros 2,5 metros largo','6');
--datos estructura area F
INSERT INTO estructura VALUES ('21','2','F1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('22','2','F2','NICHO','2x3metros 2,5 metros largo','6');

--DATOS ESTRUCTURA AREA G--
INSERT INTO estructura VALUES ('23','2','G1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('24','2','G2','NICHO','2x3metros 2,5 metros largo','6');
--DATOS ESTRUCTURA AREA H--
INSERT INTO estructura VALUES ('25','2','H1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('26','2','H2','NICHO','2x3metros 2,5 metros largo','6');
--DATOS ESTRUCTURA AREA I--
INSERT INTO estructura VALUES ('27','2','I1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('28','2','I2','NICHO','2x3metros 2,5 metros largo','6');
--DATOS ESTRUCTURA AREA J--
INSERT INTO estructura VALUES ('29','2','J1','BOVEDA INDIVIDUAL','1X1 2,5 metros largo','1');;
INSERT INTO estructura VALUES ('30','2','J2','NICHO','2x3metros 2,5 metros largo','6');

SELECT * FROM  estructura; 

--datos del personal
INSERT INTO PERSONAL VALUES ('1','2305','ANA','LUCAS','1316667778','0996663387','CALLE 16 B AV 28','20','ADMINIDTRADOR','ADMINISTRACION',TO_DATE('2000/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('2','2305','ALEXANDRA','MINALLA','1317047445','0995445566','CALLE 16 B AV 28','20','SUBADMINIDTRADOR','ADMINISTRACION',TO_DATE('2002/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('3','2305','BRYAN','ACOSTA','1317776668','0997773399','CALLE 16 B AV 28','40','GERENTE','ADMINISTRACION',TO_DATE('2001/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('4','2305','MIRIAM','BRAVO','1310053218','0964321332','CALLE 16 B AV 28','30','SEGURIDAD','SEGURIDAD',TO_DATE('2003/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('5','2305','JIMMY','ANCHUNDIA','1302047453','0998987867','CALLE 16 B AV 28','38','SEGURIDAD','SEGURIDAD',TO_DATE('2004/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('6','2305','JJONNNY','MERO','1387698569','0976877654','CALLE 16 B AV 28','29','SEGURIDAD','SEGURIDAD',TO_DATE('2005/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('7','2305','JOSE','RIVADENERIA','1323415392','0932314970','CALLE 16 B AV 28','49','LIMPIEZA','LIMPIEZA',TO_DATE('2006/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('8','2305','MARIA','DELADO','1356567854','0931514253','CALLE 16 B AV 28','50','LIMPIEZA','LIMPIEZA',TO_DATE('2007/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('9','2305','ANAHIS','MORENO','1310978765','0943444532','CALLE 16 B AV 28','30','LIMPIEZA','LIMPIEZA',TO_DATE('2008/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('10','2305','IAN ','BRAVO','1302341234','0900323676','CALLE 16 B AV 28','45','LOGISTICA','LOGISTICA',TO_DATE('2009/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('11','2305','KATHE','RIVAS','1390765455','0976089870','CALLE 16 B AV 28','36','ENTERRADOR','ENTIERRO',TO_DATE('2010/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('12','2305','JONAN','ROSALES','1376899087','0990807060','CALLE 16 B AV 28','29','Externo','Cantonal',TO_DATE('2011/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('13','2305','GEAM','MERA','1390765455','0976089870','CALLE 17 B AV 27','36','ENTERRADOR','ENTIERRO',TO_DATE('2012/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('14','2305','ANTHONY','ROGERS','1390765455','0976089870','CALLE 18 B AV 29','36','ENTERRADOR','ENTIERRO',TO_DATE('2012/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('15','2305','LIAM','RIVAS','1390765455','0976089870','CALLE 16 B AV 28','36','ENTERRADOR','ENTIERRO',TO_DATE('2013/05/03', 'yyyy/mm/dd'));
INSERT INTO PERSONAL VALUES ('16','2305','DAMINA','ACOSTA','1315247302','0976089870','CALLE 16 B AV 28','36','ENTERRADOR','ENTIERRO',TO_DATE('2014/05/03', 'yyyy/mm/dd'));

SELECT * FROM  PERSONAL;


DELETE FROM PERSONAL;
--datos de canton
INSERT INTO CANTON VALUES ('1','JAMA');
INSERT INTO CANTON VALUES ('2','PEDERNALES');
INSERT INTO CANTON VALUES ('3','CHONE');
INSERT INTO CANTON VALUES ('4','MANTA');
INSERT INTO CANTON VALUES ('5','ESMERALDAS');
INSERT INTO CANTON VALUES ('6','QUITO');
INSERT INTO CANTON VALUES ('7','GUAYAQUIL');
INSERT INTO CANTON VALUES ('8','MILAGRO');
INSERT INTO CANTON VALUES ('9','LOJA');
INSERT INTO CANTON VALUES ('10','PORTOVIEJO');


SELECT * FROM  CANTON;

DELETE FROM CANTON;

--propietario
INSERT INTO fam_propietario VALUES ('1','1','1306543216','ANA','LUCAS',TO_DATE('1955/05/03 ', 'yyyy/mm/dd '),'MANTA','0955554444','0911111111');
INSERT INTO fam_propietario VALUES ('2','2','1305768790','JUAN','LOPEZ',TO_DATE('1955/02/15 ', 'yyyy/mm/dd '),'QUITO','0911112211','0976656508');
INSERT INTO fam_propietario VALUES ('3','3','1333467509','BRYAN','ACOSTA',TO_DATE('1955/08/22 ', 'yyyy/mm/dd '),'JAMA','0924337777','0912213223');
INSERT INTO fam_propietario VALUES ('5','4','1308765455','GENESIS','ACOSTA',TO_DATE('1987/12/10 ', 'yyyy/mm/dd '),'JAMA','0910012002','0914412342');
INSERT INTO fam_propietario VALUES ('6','5','1398990076','CECIBEL','LOPEZ',TO_DATE('1955/06/30 ', 'yyyy/mm/dd '),'JAMA','0942335500','0911154466');
INSERT INTO fam_propietario VALUES ('7','6','1398667743','JUAN','ACOSTA',TO_DATE('1987/01/17 ', 'yyyy/mm/dd '),'MANTA','0942354111','0946410906');
INSERT INTO fam_propietario VALUES ('8','7','1306554004','EDISON','LUCAS',TO_DATE('1965/01/31 ', 'yyyy/mm/dd '),'PORTOVIEJO','0932440000','0911110132');
INSERT INTO fam_propietario VALUES ('9','2','1376771123','ALEX','PIGUAVE',TO_DATE('1977/09/29 ', 'yyyy/mm/dd '),'QUITO','0966865644','0987877800');
INSERT INTO fam_propietario VALUES ('10','9','1309769899','AXEL','SANCHEZ',TO_DATE('1957/05/12 ', 'yyyy/mm/dd '),'MANTA','0929065443','0976554343');
INSERT INTO fam_propietario VALUES ('4','9','1309769899','LEO','LUCAS',TO_DATE('1957/05/12 ', 'yyyy/mm/dd '),'MANTA','0929065443','0976554343');

SELECT * FROM  fam_propietario;

DELETE FROM fam_propietario;
---bovedas

INSERT INTO boveda VALUES ('1','1','1','OCUPADA','A-1');
INSERT INTO boveda VALUES ('2','1','1','OCUPADA','A-2');
INSERT INTO boveda VALUES ('3','2','1','LIBRE','A-3');
INSERT INTO boveda VALUES ('4','1','2','LIBRE','A-4');
INSERT INTO boveda VALUES ('5','5','1','OCUPADA','A-5');
INSERT INTO boveda VALUES ('6','5','1','OCUPADA','A-6');
INSERT INTO boveda VALUES ('7','5','1','OCUPADA','A-7');
INSERT INTO boveda VALUES ('8','5','1','OCUPADA','A-8');

---
INSERT INTO BOVEDA VALUES ('9','2','3','Libre','A-9');
INSERT INTO BOVEDA VALUES ('10','2','3','Libre','A-10');
INSERT INTO BOVEDA VALUES ('11','2','3','Libre','A-11');
INSERT INTO BOVEDA VALUES ('12','2','3','Libre','A-12');
INSERT INTO BOVEDA VALUES ('13','2','3','Libre','A-13');
INSERT INTO BOVEDA VALUES ('14','2','3','Libre','A-14');
INSERT INTO BOVEDA VALUES ('15','2','3','Libre','A-15');
INSERT INTO BOVEDA VALUES ('16','2','3','Libre','A-16');
-----
INSERT INTO BOVEDA VALUES ('17','5','4','Libre','A-17');
INSERT INTO BOVEDA VALUES ('18','5','4','Libre','A-18');
INSERT INTO BOVEDA VALUES ('19','5','4','Libre','A-19');
INSERT INTO BOVEDA VALUES ('20','5','4','Libre','A-20');
INSERT INTO BOVEDA VALUES ('21','5','4','Libre','A-21');
INSERT INTO BOVEDA VALUES ('22','5','4','Libre','A-22');
INSERT INTO BOVEDA VALUES ('23','5','4','Libre','A-23');
INSERT INTO BOVEDA VALUES ('24','5','4','Libre','A-24');
INSERT INTO boveda VALUES ('25','7','9','Libre','A-25');



INSERT INTO BOVEDA VALUES ('26','9','1','Ocupada','B-1');

INSERT INTO BOVEDA VALUES ('27','10','2','Ocupada','B-2');

INSERT INTO BOVEDA VALUES ('28','12','3','Ocupada','B-3');
INSERT INTO BOVEDA VALUES ('29','12','3','Ocupada','B-4');
INSERT INTO BOVEDA VALUES ('30','12','3','Libre','B-5');
INSERT INTO BOVEDA VALUES ('31','13','5','Ocupada','B-6');
INSERT INTO BOVEDA VALUES ('32','13','5','Libre','B-7');
INSERT INTO BOVEDA VALUES ('33','13','5','Libre','B-8');
INSERT INTO BOVEDA VALUES ('34','14','6','Ocuapda','B-9');
INSERT INTO BOVEDA VALUES ('35','14','6','Libre','B-10');
INSERT INTO BOVEDA VALUES ('36','14','6','Ocupada','B-11');
INSERT INTO BOVEDA VALUES ('37','14','6','Libre','B-12');

INSERT INTO BOVEDA VALUES ('38','15','7','Libre','C-1');
INSERT INTO BOVEDA VALUES ('39','16','8','Libre','C-2');

INSERT INTO BOVEDA VALUES ('40','17','7','Libre','D-1');
INSERT INTO BOVEDA VALUES ('41','18','8','Libre','D-2');

INSERT INTO BOVEDA VALUES ('42','19','8','Libre','E-1');

INSERT INTO BOVEDA VALUES ('43','20','10','Libre','E-2');
INSERT INTO BOVEDA VALUES ('44','20','10','Libre','E-3');
INSERT INTO BOVEDA VALUES ('45','20','10','Libre','E-4');
INSERT INTO BOVEDA VALUES ('46','20','10','Libre','E-5');
INSERT INTO BOVEDA VALUES ('47','20','10','Libre','E-6');
INSERT INTO BOVEDA VALUES ('48','20','10','Libre','E-7');

INSERT INTO BOVEDA VALUES ('49','21','4','Libre','F-1');
INSERT INTO BOVEDA VALUES ('50','22','7','Libre','F-2');
INSERT INTO BOVEDA VALUES ('51','22','7','Libre','F-3');
INSERT INTO BOVEDA VALUES ('52','22','7','Libre','F-4');
INSERT INTO BOVEDA VALUES ('53','22','7','Libre','F-5');
INSERT INTO BOVEDA VALUES ('54','22','7','Libre','F-6');
INSERT INTO BOVEDA VALUES ('55','22','7','Libre','F-7');


SELECT * FROM  BOVEDA;


-----datos de difunto
INSERT INTO FALLECIDO VALUES ('1','Benita','Zafra','Derrame',TO_DATE('1981/07/01','yyyy/mm/dd'),TO_DATE('2020/07/01 22:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('2','Samara','Zafra','Infarto',TO_DATE('1950/07/01','yyyy/mm/dd'),TO_DATE('2020/12/24 22:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('3','Marc','Zafra','Covid',TO_DATE('1962/07/01','yyyy/mm/dd'),TO_DATE('2021/8/30 23:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('4','Rogelio ','Zafra','covid',TO_DATE('1982/07/01','yyyy/mm/dd'),TO_DATE('2021/01/03 20:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('5','Itziar ','Chico','Derrame',TO_DATE('1983/07/01','yyyy/mm/dd'),TO_DATE('2007/07/24 13:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('6','Herminio','Saenz','Trombosis',TO_DATE('1990/07/01','yyyy/mm/dd'),TO_DATE('2005/07/24 14:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('7','Herminio','Saenz','Alzheimer',TO_DATE('1987/07/01','yyyy/mm/dd'),TO_DATE('2004/09/05 15:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('8','Miguel','Navarrete','Cancer',TO_DATE('1981/07/01','yyyy/mm/dd'),TO_DATE('2015/07/24 16:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('9','Lucas','Afonso','Sida',TO_DATE('1999/07/01','yyyy/mm/dd'),TO_DATE('2000/07/24 17:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('10','Roser','Ruz','Accidente vehicular',TO_DATE('1990/07/01','yyyy/mm/dd'),TO_DATE('2020/07/24 18:02:44', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO FALLECIDO VALUES ('11','Santiago','Crespo','Infarto',TO_DATE('1989/07/01','yyyy/mm/dd'),TO_DATE('2020/07/28 19:02:44', 'yyyy/mm/dd hh24:mi:ss'));

SELECT * FROM  FALLECIDO;


---tramites datos 
INSERT INTO TRAMITE VALUES ('1','1','11','1','1',TO_DATE('2020/08/05 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('2','2','11','2','2',TO_DATE('2020/08/29 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('3','3','11','3','1',TO_DATE('2020/09/05 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('4','4','13','4','1',TO_DATE('2021/01/08 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('5','11','13','5','4',TO_DATE('2022/07/03 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('6','9','13','6','5',TO_DATE('2000/07/29 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('7','10','14','7','6',TO_DATE('2021/07/29 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('8','7','14','8','8',TO_DATE('2004/09/10 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('9','6','14','9','9',TO_DATE('1995/07/29 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('10','5','11','10','1',TO_DATE('2007/07/29 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');
INSERT INTO TRAMITE VALUES ('11','2','11','1','1',TO_DATE('2022/07/2 ', 'yyyy/mm/dd'),'EXHUMACIONES','DESENTIERRO DEL CADAVER PARA LA MOVILIZACION DE LOS RESTOS DEL DIFUNTO','');
INSERT INTO TRAMITE VALUES ('12','7','15','2','1',TO_DATE('2010/04/30 ', 'yyyy/mm/dd'),'EXHUMACIONES','DESENTIERRO DEL CADAVER PARA LA MOVILIZACION DE LOS RESTOS DEL DIFUNTO','');
INSERT INTO TRAMITE VALUES ('13','11','15','2','1',TO_DATE('2025/09/15 ', 'yyyy/mm/dd'),'EXHUMACIONES','DESENTIERRO DEL CADAVER PARA LA MOVILIZACION DE LOS RESTOS DEL DIFUNTO','');
INSERT INTO TRAMITE VALUES ('14','8','15','3','5',TO_DATE('2020/02/16 ', 'yyyy/mm/dd'),'EXHUMACIONES','DESENTIERRO DEL CADAVER PARA LA MOVILIZACION DE LOS RESTOS DEL DIFUNTO','');
INSERT INTO TRAMITE VALUES ('15','6','11','4','6',TO_DATE('2015/12/07 ', 'yyyy/mm/dd'),'EXHUMACIONES','DESENTIERRO DEL CADAVER PARA LA MOVILIZACION DE LOS RESTOS DEL DIFUNTO','');
INSERT INTO TRAMITE VALUES ('16','4','11','2','6',TO_DATE('2020/08/05 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');

SELECT * FROM  TRAMITE;
DELETE FROM TRAMITE;


--ingreso de pagos
INSERT INTO PAGOS VALUES ('1','1','1','3','30.00','EFECTIVO','30.00');
INSERT INTO PAGOS VALUES ('2','2','1','3','30.00','TARJETA CREDITO','30.00'); 
INSERT INTO PAGOS VALUES ('3','3','2','3','30.00','EFECTIVO','25'); 
INSERT INTO PAGOS VALUES ('4','4','2','3','30.00','EFECTIVO','25');
INSERT INTO PAGOS VALUES ('5','5','2','3','47.00','EFECTIVO','25'); 
INSERT INTO PAGOS VALUES ('6','6','3','3','47.00','TARJETA CREDITO','25'); 
INSERT INTO PAGOS VALUES ('7','7','4','3','30.00','CHEQUE','25');
INSERT INTO PAGOS VALUES ('8','8','5','3','30.00','CHEQUE','25'); 
INSERT INTO PAGOS VALUES ('9','9','6','3','47.00','EFECTIVO','25');
INSERT INTO PAGOS VALUES ('10','10','7','3','30.00','EFECTIVO','25');
INSERT INTO PAGOS VALUES ('11','11','8','3','30.00','EFECTIVO','25'); 
INSERT INTO PAGOS VALUES ('12','12','3','3','70.00','EFECTIVO','25');
INSERT INTO PAGOS VALUES ('13','13','3','3','70.00','TARJETA CREDITO','25'); 
INSERT INTO PAGOS VALUES ('14','14','3','3','90.00','TARJETA CREDITO','90'); 
INSERT INTO PAGOS VALUES ('15','15','3','3','90.00','EFECTIVO','90');
INSERT INTO PAGOS VALUES ('16','17','3','3','70.00','EFECTIVO','70'); 

UPDATE  PAGOS  SET cantidad_pagada=40 WHERE ID_PAGO=1;
ALTER TABLE  pagos
ADD CONSTRAINT CHK_pagos CHECK (CANTIDAD_PAGADA<=PRECIO_TOTAL);

ALTER TABLE  pagos
ADD CONSTRAINT CHK_ID CHECK (ID_PAGO=ID_TRAMITE);


 alter table pagos
  drop constraint CHK_ID;

DELETE FROM PAGOS;
SELECT * FROM  PAGOS;

--certificados
--CERTIFICADOs
INSERT INTO CERTIFICADO VALUES ('1','1','1',TO_DATE('2020/08/05 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('2','1','2',TO_DATE('2020/08/05 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','entregado');
INSERT INTO CERTIFICADO VALUES ('3','1','3',TO_DATE('2020/12/29 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('4','1','4',TO_DATE('2020/12/29 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('5','1','5',TO_DATE('2020/09/05 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('6','1','6',TO_DATE('2020/09/05 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('7','1','7',TO_DATE('2021/01/08 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('8','1','8',TO_DATE('2021/01/08 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('9','2','8',TO_DATE('2007/07/29 ', 'yyyy/mm/dd'),'ALEXANDRA MINALLA','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('10','2','9',TO_DATE('2007/07/29 ', 'yyyy/mm/dd'),'ALEXANDRA MINALLA','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('11','2','10',TO_DATE('1995/07/29 ', 'yyyy/mm/dd'),'ALEXANDRA MINALLA','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('12','1','1',TO_DATE('1995/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('13','1','2',TO_DATE('2004/09/10 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('14','1','3',TO_DATE('2004/09/10 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('15','1','4',TO_DATE('2015/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('16','1','5',TO_DATE('2015/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO',' NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('17','1','6',TO_DATE('2000/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('18','1','7',TO_DATE('2000/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO',' NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('19','1','8',TO_DATE('2021/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('20','1','9',TO_DATE('2021/07/29 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO',' NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('21','1','10',TO_DATE('2022/07/03 ', 'yyyy/mm/dd'),'ANA LUCAS','PROPIEDAD','CERTIFICADO QUE DEMUESTRA LA PERTENCIA DE LA PROPIEDAD (BOVEDA)','NO ENTREGADO');
INSERT INTO CERTIFICADO VALUES ('22','1','1',TO_DATE('2022/07/03 ', 'yyyy/mm/dd'),'ANA LUCAS','DEFUNCION','CERTIFICADO DEL FALLECIMIENTO DEL DIFUNTO',' NO ENTREGADO');

SELECT * FROM  CERTIFICADO;


----RESPORTE CON SUS INCIDENTES-----
INSERT INTO reporte VALUES ('1','4','INVASION A LAS BOVEDAS',TO_DATE('2022/09/11 ', 'yyyy/mm/dd '),'SE ENCONTRO AUN INDIVIDUO EN HORAS NO LABORABLES CERCA DE UNA BOVEDA Y SE RESITIO A LA CAPTURA','3');

INSERT INTO Incidente VALUES ('2','1','A','IRRUPCION AL CEMEMTERIO','A-1','23:45');
INSERT INTO Incidente VALUES ('1','1','A','IRRUPCION A LAS BOVEDAS','A-1','23:50');
INSERT INTO Incidente VALUES ('3','1','A','RESISTENCIA AL ARRESTO','A-1','23:55');

INSERT INTO reporte VALUES ('2','5','DETENCION DE ASALTATUMBAS',TO_DATE('2022/01/6 ', 'yyyy/mm/dd '),	'SE ENCONTRO A DOS INDIVIDIOS TRATANDO DE PROFANAR UNA BOVEDA AL INTENTAR HURTAR LOS RESTOS DEL DIFUNTO, LOS MISMOS FUERON CAPTURADOS','3');
INSERT INTO Incidente VALUES ('4','4','A','DAÑO A PROPIEDAD PRIVADA','A-4','22:00');
INSERT INTO Incidente VALUES ('5','4','A','IRRUPCION AL CEMEMTERIO','A-4','22:00');
INSERT INTO Incidente VALUES ('6','4','A','LASTIMAR A UN GUARDIA','A-4','22:00');

INSERT INTO reporte VALUES ('3','4','INVASION A LAS BOVEDAS',TO_DATE('2022/09/11 ', 'yyyy/mm/dd '),'SE ENCONTRO AUN INDIVIDUO EN HORAS NO LABORABLES CERCA DE UNA BOVEDA Y SE RESITIO A LA CAPTURA','3');
INSERT INTO Incidente VALUES ('7','5','A','IRRUPCION AL CEMEMTERIO','A-5','23:45');
INSERT INTO Incidente VALUES ('8','5','A','IRRUPCION A LAS BOVEDAS','A-5','23:50');
INSERT INTO Incidente VALUES ('9','5','A','RESISTENCIA AL ARRESTO','A-5','23:55');

INSERT INTO reporte VALUES ('4','4','INVASION A LAS BOVEDAS',TO_DATE('2021/09/11 ', 'yyyy/mm/dd '),'SE ENCONTRO AUN INDIVIDUO EN HORAS NO LABORABLES CERCA DE UNA BOVEDA Y SE RESITIO A LA CAPTURA','3');
INSERT INTO Incidente VALUES ('10','5','A','IRRUPCION AL CEMEMTERIO','A-5','23:45');
INSERT INTO Incidente VALUES ('11','5','A','IRRUPCION A LAS BOVEDAS','A-5','23:50');
INSERT INTO Incidente VALUES ('12','5','A','RESISTENCIA AL ARRESTO','A-5','23:55');

INSERT INTO reporte VALUES ('5','5','DETENCION DE ASALTATUMBAS',TO_DATE('2022/09/11 ', 'yyyy/mm/dd '),	'SE ENCONTRO A DOS INDIVIDIOS TRATANDO DE PROFANAR UNA BOVEDA AL INTENTAR HURTAR LOS RESTOS DEL DIFUNTO, LOS MISMOS FUERON CAPTURADOS','3');
INSERT INTO Incidente VALUES ('13','4','A','DAÑO A PROPIEDAD PRIVADA','A-4','22:00');
INSERT INTO Incidente VALUES ('14','4','A','IRRUPCION AL CEMEMTERIO','A-4','22:00');
INSERT INTO Incidente VALUES ('15','4','A','LASTIMAR A UN GUARDIA','A-4','22:00');



SELECT * FROM  REPORTE;
DELETE FROM REPORTE;
DELETE FROM I;


SELECT *FROM INCIDENTE;




INSERT INTO REP_TIENE_INC  VALUES ('1','1');
INSERT INTO REP_TIENE_INC VALUES ('1','2');
INSERT INTO REP_TIENE_INC VALUES ('1','3');
INSERT INTO REP_TIENE_INC VALUES ('2','4');
INSERT INTO REP_TIENE_INC VALUES ('2','5');
INSERT INTO REP_TIENE_INC VALUES ('2','6');
INSERT INTO REP_TIENE_INC VALUES ('3','7');
INSERT INTO REP_TIENE_INC VALUES ('3','8');
INSERT INTO REP_TIENE_INC VALUES ('3','9');
INSERT INTO REP_TIENE_INC VALUES ('4','10');
INSERT INTO REP_TIENE_INC VALUES ('4','11');
INSERT INTO REP_TIENE_INC VALUES ('4','12');
INSERT INTO REP_TIENE_INC VALUES ('5','13');
INSERT INTO REP_TIENE_INC VALUES ('5','14');
INSERT INTO REP_TIENE_INC VALUES ('5','15');
     
	 



SELECT * FROM  REP_TIENE_INC;

 DELETE FROM TRA_GENERA_PAG;     




-----CONSULTA DE TIPO DE TRAMITE----
 
select personal.NOMBRE_PERSONAL,personal.APELLIDO_PERSONAL,tramite.TIPO_TRAMITE,extract(year from tramite.ANIO_TRAMITE) 
from tramite 
INNER join personal on tramite.ID_PERSONAL = personal.ID_PERSONAL 
WHERE tramite.TIPO_TRAMITE='EXHUMACIONES';

select personal.NOMBRE_PERSONAL,personal.APELLIDO_PERSONAL,tramite.TIPO_TRAMITE,tramite.ANIO_TRAMITE from personal 
INNER join tramite on personal.ID_PERSONAL = tramite.ID_PERSONAL 
WHERE tramite.TIPO_TRAMITE='INHUMACION';

select tramite.ANIO_TRAMITE, personal.NOMBRE_PERSONAL, personal.APELLIDO_PERSONAL,tramite.TIPO_TRAMITE, COUNT (TRAMITE.ID_TRAMITE) from TRAMITE 
INNER join PERSONAL on TRAMITE.ID_PERSONAL = PERSONAL.ID_PERSONAL 
WHERE tramite.TIPO_TRAMITE='INHUMACION'  OR tramite.TIPO_TRAMITE='EXHUMACIONES' group by tramite.ANIO_TRAMITE, personal.NOMBRE_PERSONAL, personal.APELLIDO_PERSONAL,tramite.TIPO_TRAMITE;

DELETE FROM TRAMITE WHERE ID_TRAMITE=18;

----consulta de bovedas ocupadas----
select BOVEDA.NOMBRE_BOVEDA,BOVEDA.ESTADO_BOVEDA,FAM_PROPIETARIO.NOMBRE_FAM from BOVEDA
inner join FAM_PROPIETARIO on BOVEDA.ID_FAMPROPIETARIO=FAM_PROPIETARIO.ID_FAMPROPIETARIO
WHERE BOVEDA.ESTADO_BOVEDA='Ocupada' or BOVEDA.ESTADO_BOVEDA='OCUPADA' ;


--- CONSULTA CANTIDAD DE ESTRUCUTURA---
select estructura.TIPO_ESTRUCTURA,COUNT(estructura.ID_ESTRUCTURA) AS CANTIDAD_ESTRUCTURAS from estructura
WHERE estructura.TIPO_ESTRUCTURA='BOVEDA INDIVIDUAL' OR estructura.TIPO_ESTRUCTURA='NICHO' group by estructura.TIPO_ESTRUCTURA;
--CANTIDAD DE BOVEDAS QUE TIENE CADA PROPIETARIO---
select BOVEDA.ID_FAMPROPIETARIO,FAM_PROPIETARIO.NOMBRE_FAM, COUNT(BOVEDA.ID_FAMPROPIETARIO) AS CANTIDAD_BOVEDAS from BOVEDA 
inner join FAM_PROPIETARIO on BOVEDA.ID_FAMPROPIETARIO=FAM_PROPIETARIO.ID_FAMPROPIETARIO group by BOVEDA.ID_FAMPROPIETARIO, FAM_PROPIETARIO.NOMBRE_FAM;

SELECT*FROM BOVEDA;


-----consulta de reportes
SELECT extract(year from reporte.FECHA_REPORTE), reporte.ID_REPORTE,reporte.NOMBRE_REPORTE,reporte.DESCRIPCION_REPORTE from reporte;

---CONSULTA CANTIDAD DE REPORTEs por nombre---
select  reporte.NOMBRE_REPORTE, REPORTE.FECHA_REPORTE ,COUNT (REPORTE.ID_REPORTE) from REPORTE
WHERE reporte.NOMBRE_REPORTE='INVASION A LAS BOVEDAS'
OR reporte.NOMBRE_REPORTE='DETENCION DE ASALTATUMBAS'
group by reporte.NOMBRE_REPORTE, REPORTE.FECHA_REPORTE;

---CONSULTA CANTIDAD DE REPORTES POR FECHA--
 
SELECT*FROM REPORTE;
select reporte.NOMBRE_REPORTE,  extract(year from FECHA_REPORTE) ,COUNT (REPORTE.ID_REPORTE) from REPORTE
WHERE extract(year from FECHA_REPORTE)= '2022' group by reporte.NOMBRE_REPORTE, extract(year from FECHA_REPORTE);

---CREACION DEL TRIGGER---	
CREATE OR REPLACE FUNCTION trigg_actualizar()
RETURNS TRIGGER 
AS $BODY$
DECLARE
BEGIN 
---- ACTUALIZAR EL ESATDO PAGO DE TRAMITE CUANDO SE INSERTARN PAGOS----
   IF (TG_OP = 'INSERT') THEN
      IF ( new.CANTIDAD_PAGADA = new.PRECIO_TOTAL) THEN
           UPDATE TRAMITE SET ESTADO_PAGO = 'PAGADO' WHERE id_tramite = new.ID_TRAMITE;
      END IF;
	  IF ( NEW.CANTIDAD_PAGADA <> NEW.PRECIO_TOTAL) THEN
          UPDATE TRAMITE SET ESTADO_PAGO = 'PENDIENTE' WHERE id_tramite = new.ID_TRAMITE;
      END IF;
      return new;
    END IF;
  ---- MODIFICAR LOS DATOS -----------
END;
$BODY$ LANGUAGE PLPGSQL;
  
        ---- Trigger para ejecutar-------
CREATE TRIGGER trigg_actualizar AFTER INSERT OR UPDATE ON PAGOS
FOR EACH ROW
EXECUTE PROCEDURE trigg_actualizar();

INSERT INTO PAGOS VALUES ('16','10','3','3','70.00','EFECTIVO','70.00'); 
SELECT *FROM TRAMITE;
DELETE FROM PAGOS WHERE ID_PAGO=16

	
INSERT INTO TRAMITE VALUES ('21','6','15','4','6',TO_DATE('2015/12/07 ', 'yyyy/mm/dd'),'EXHUMACIONES','DESENTIERRO DEL CADAVER PARA LA MOVILIZACION DE LOS RESTOS DEL DIFUNTO','');
INSERT INTO TRAMITE VALUES ('20','4','15','2','6',TO_DATE('2020/08/05 ', 'yyyy/mm/dd'),'INHUMACION','ENTIERRO DEL CADAVER','');


SELECT COUNT(TIPO_TRAMITE) FROM TRAMITE WHERE ID_PERSONAL=12 AND TIPO_TRAMITE='INHUMACION' 

SELECT*FROM personal;
DELETE FROM TRAMITE WHERE ID_TRAMITE=20;

select tramite.ANIO_TRAMITE,personal.id_personal, personal.NOMBRE_PERSONAL, personal.APELLIDO_PERSONAL,tramite.TIPO_TRAMITE, COUNT (TRAMITE.id_personal) from TRAMITE 
INNER join PERSONAL on TRAMITE.ID_PERSONAL = PERSONAL.ID_PERSONAL 
WHERE tramite.TIPO_TRAMITE='INHUMACION'  OR tramite.TIPO_TRAMITE='EXHUMACIONES' group by tramite.ANIO_TRAMITE, personal.id_personal, personal.NOMBRE_PERSONAL, personal.APELLIDO_PERSONAL,tramite.TIPO_TRAMITE;


--CURSOR   
--CURSOR   
--CURSOR
DO $$
DECLARE 
registro Record;
CURSOR_TRAMITE CURSOR FOR 
select extract(year from tramite.ANIO_TRAMITE ) as anio_tramite, personal.nombre_personal ||' '||  personal.Apellido_personal as Empleado, tramite.tipo_tramite,
count(tramite.tipo_tramite) as Numero_tramites
	from personal 
	inner join tramite
	on tramite.id_personal = personal.id_personal
	group by  extract(year from tramite.ANIO_TRAMITE ), personal.nombre_personal ||' '|| personal.Apellido_personal,tramite.tipo_tramite order by ANIO_TRAMITE asc;
	
suma int;

BEGIN
suma =0;
    for registro in CURSOR_TRAMITE 
	loop
        suma = suma + registro.Numero_tramites;      
		 RAISE NOTICE 'EL EMPLEADO/A: % ha realizado el tramite de %  % vez/veces durante el año %', registro.Empleado , registro.tipo_tramite ,registro.Numero_tramites, registro.anio_tramite;
    end loop;
    RAISE NOTICE 'Cantidad total de tramites realizados en cementero: % ', suma;
    end
$$
language plpgsql;

SELECT * FROM PAGOS;


