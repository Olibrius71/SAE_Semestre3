/*==============================================================*/
/* Table : ACHETEUR                                             */
/*==============================================================*/
create table ACHETEUR 
(
   NOMACHETEUR          varchar(100)                   null,
   PRENOMACHETEUR       varchar(100)                   null,
   IDACHETEUR           integer                        not null,
   EMAILACHETEUR        varchar(300)                   not null,
   NBACHETES            integer                        not null,
   constraint PK_ACHETEUR primary key (IDACHETEUR)
);

/*==============================================================*/
/* Index : ACHETEUR_PK                                          */
/*==============================================================*/
create index ACHETEUR_PK on ACHETEUR (
IDACHETEUR ASC
);

/*==============================================================*/
/* Table : APOURCATEGORIE                                       */
/*==============================================================*/
create table APOURCATEGORIE 
(
   REFERENCE          integer                        not null,
   CATIDBILLET          integer                        not null,
   constraint PK_APOURCATEGORIE primary key (REFERENCE, CATIDBILLET)
);

/*==============================================================*/
/* Index : APOURCATEGORIE_PK                                    */
/*==============================================================*/
create index APOURCATEGORIE_PK on APOURCATEGORIE (
REFERENCE ASC,
CATIDBILLET ASC
);

/*==============================================================*/
/* Index : APOURCATEGORIE_FK                                    */
/*==============================================================*/
create index APOURCATEGORIE_FK on APOURCATEGORIE (
REFERENCE ASC
);

/*==============================================================*/
/* Index : APOURCATEGORIE2_FK                                   */
/*==============================================================*/
create index APOURCATEGORIE2_FK on APOURCATEGORIE (
CATIDBILLET ASC
);

/*==============================================================*/
/* Table : APPARTIENT                                           */
/*==============================================================*/
create table APPARTIENT 
(
   CATIDBILLET          integer                        not null,
   IDTOURNOI            integer                        not null,
   POURCENTAGEREDUCTION decimal                        null,
   NBBILLETSAFFECTES    integer                        null,
   constraint PK_APPARTIENT primary key (CATIDBILLET, IDTOURNOI)
);

/*==============================================================*/
/* Index : APPARTIENT_PK                                        */
/*==============================================================*/
create index APPARTIENT_PK on APPARTIENT (
CATIDBILLET ASC,
IDTOURNOI ASC
);

/*==============================================================*/
/* Index : APPARTIENT_FK                                        */
/*==============================================================*/
create index APPARTIENT_FK on APPARTIENT (
CATIDBILLET ASC
);

/*==============================================================*/
/* Index : APPARTIENT2_FK                                       */
/*==============================================================*/
create index APPARTIENT2_FK on APPARTIENT (
IDTOURNOI ASC
);

/*==============================================================*/
/* Table : ARBITRER2                                            */
/*==============================================================*/
create table ARBITRER2 
(
   ARBITREID            integer                        not null,
   IDMATCH              integer                        not null,
   constraint PK_ARBITRER2 primary key (ARBITREID, IDMATCH)
);

/*==============================================================*/
/* Index : ARBITRER2_PK                                         */
/*==============================================================*/
create index ARBITRER2_PK on ARBITRER2 (
ARBITREID ASC,
IDMATCH ASC
);

/*==============================================================*/
/* Index : ARBITRER2_FK                                         */
/*==============================================================*/
create index ARBITRER2_FK on ARBITRER2 (
ARBITREID ASC
);

/*==============================================================*/
/* Index : ARBITRE_SECONDAIRE_FK                                */
/*==============================================================*/
create index ARBITRE_SECONDAIRE_FK on ARBITRER2 (
IDMATCH ASC
);

/*==============================================================*/
/* Table : ARBITRES                                             */
/*==============================================================*/
create table ARBITRES 
(
   ARBITREID            integer                        not null,
   NOMARBITRE           varchar(100)                   null,
   PRENOMARBITRE        varchar(100)                   null,
   NATIONALITEARBITRE   integer                        null,
   constraint PK_ARBITRES primary key (ARBITREID)
);

/*==============================================================*/
/* Index : ARBITRES_PK                                          */
/*==============================================================*/
create index ARBITRES_PK on ARBITRES (
ARBITREID ASC
);

/*==============================================================*/
/* Table : ASSOCIATION                                          */
/*==============================================================*/
create table ASSOCIATION 
(
   IDASSOCIATION        integer                        not null,
   IDTOURNOI            integer                        not null,
   NOMASSOCIATION       varchar(100)                   null,
   MONTANTRECOLTE       decimal                        null,
   constraint PK_ASSOCIATION primary key (IDASSOCIATION)
);

/*==============================================================*/
/* Index : ASSOCIATION_PK                                       */
/*==============================================================*/
create index ASSOCIATION_PK on ASSOCIATION (
IDASSOCIATION ASC
);

/*==============================================================*/
/* Index : ESTBENEFICIAIRE_FK                                   */
/*==============================================================*/
create index ESTBENEFICIAIRE_FK on ASSOCIATION (
IDTOURNOI ASC
);

/*==============================================================*/
/* Table : BILLET                                               */
/*==============================================================*/
create table BILLET 
(
   DATEVENTE            date                           null,
   REFERENCE          integer                        not null,
   IDACHETEUR           integer                        not null,
   CATEGORIEID          integer                        null,
   ACHETEURID           integer                        null,
   REFPLACE             integer                        null,
   constraint PK_BILLET primary key (REFERENCE)
);

/*==============================================================*/
/* Index : BILLET_PK                                            */
/*==============================================================*/
create index BILLET_PK on BILLET (
REFERENCE ASC
);

/*==============================================================*/
/* Index : ACHETE_FK                                            */
/*==============================================================*/
create index ACHETE_FK on BILLET (
IDACHETEUR ASC
);

/*==============================================================*/
/* Table : CATEGORIEBILLET                                      */
/*==============================================================*/
create table CATEGORIEBILLET 
(
   CATIDBILLET          integer                        not null,
   NOMCATEGORIE         char(100)                      null,
   constraint PK_CATEGORIEBILLET primary key (CATIDBILLET)
);

/*==============================================================*/
/* Index : CATEGORIEBILLET_PK                                   */
/*==============================================================*/
create index CATEGORIEBILLET_PK on CATEGORIEBILLET (
CATIDBILLET ASC
);

/*==============================================================*/
/* Table : COMPOSER                                             */
/*==============================================================*/
create table COMPOSER 
(
   IDJOUEUR             integer                        not null,
   EQUIPEID             integer                        not null,
   constraint PK_COMPOSER primary key (IDJOUEUR, EQUIPEID)
);

/*==============================================================*/
/* Index : COMPOSER_PK                                          */
/*==============================================================*/
create index COMPOSER_PK on COMPOSER (
IDJOUEUR ASC,
EQUIPEID ASC
);

/*==============================================================*/
/* Index : COMPOSER_FK                                          */
/*==============================================================*/
create index COMPOSER_FK on COMPOSER (
IDJOUEUR ASC
);

/*==============================================================*/
/* Index : COMPOSER2_FK                                         */
/*==============================================================*/
create index COMPOSER2_FK on COMPOSER (
EQUIPEID ASC
);

/*==============================================================*/
/* Table : COURTS                                               */
/*==============================================================*/
create table COURTS 
(
   IDCOURT              integer                        not null,
   CAPACITE             integer                        null,
   constraint PK_COURTS primary key (IDCOURT)
);

/*==============================================================*/
/* Index : COURTS_PK                                            */
/*==============================================================*/
create index COURTS_PK on COURTS (
IDCOURT ASC
);

/*==============================================================*/
/* Table : EMPLACEMENT                                          */
/*==============================================================*/
create table EMPLACEMENT 
(
   IDEMPLACEMENT        integer                        not null,
   NOMEMPLACEMENT       varchar(100)                   null,
   CLASSEMENTIMPORTANCE integer                        null,
   constraint PK_EMPLACEMENT primary key (IDEMPLACEMENT)
);

/*==============================================================*/
/* Index : EMPLACEMENT_PK                                       */
/*==============================================================*/
create index EMPLACEMENT_PK on EMPLACEMENT (
IDEMPLACEMENT ASC
);

/*==============================================================*/
/* Table : EQUIPETOURNOI                                        */
/*==============================================================*/
create table EQUIPETOURNOI 
(
   EQUIPEID             integer                        not null,
   constraint PK_EQUIPETOURNOI primary key (EQUIPEID)
);

/*==============================================================*/
/* Index : EQUIPETOURNOI_PK                                     */
/*==============================================================*/
create index EQUIPETOURNOI_PK on EQUIPETOURNOI (
EQUIPEID ASC
);

/*==============================================================*/
/* Table : ESTDENATIONALITE_ARBITRE                             */
/*==============================================================*/
create table ESTDENATIONALITE_ARBITRE 
(
   ARBITREID            integer                        not null,
   IDNATIONALITE        integer                        not null,
   constraint PK_ESTDENATIONALITE_ARBITRE primary key (ARBITREID, IDNATIONALITE)
);

/*==============================================================*/
/* Index : ESTDENATIONALITE_ARBITRE_PK                          */
/*==============================================================*/
create index ESTDENATIONALITE_ARBITRE_PK on ESTDENATIONALITE_ARBITRE (
ARBITREID ASC,
IDNATIONALITE ASC
);

/*==============================================================*/
/* Index : ESTDENATIONALITE_ARBITRE_FK                          */
/*==============================================================*/
create index ESTDENATIONALITE_ARBITRE_FK on ESTDENATIONALITE_ARBITRE (
ARBITREID ASC
);

/*==============================================================*/
/* Index : ESTDENATIONALITE_ARBITRE2_FK                         */
/*==============================================================*/
create index ESTDENATIONALITE_ARBITRE2_FK on ESTDENATIONALITE_ARBITRE (
IDNATIONALITE ASC
);

/*==============================================================*/
/* Table : ESTDENATIONALITE_JOUEUR                              */
/*==============================================================*/
create table ESTDENATIONALITE_JOUEUR 
(
   IDJOUEUR             integer                        not null,
   IDNATIONALITE        integer                        not null,
   constraint PK_ESTDENATIONALITE_JOUEUR primary key (IDJOUEUR, IDNATIONALITE)
);

/*==============================================================*/
/* Index : ESTDENATIONALITE_JOUEUR_PK                           */
/*==============================================================*/
create index ESTDENATIONALITE_JOUEUR_PK on ESTDENATIONALITE_JOUEUR (
IDJOUEUR ASC,
IDNATIONALITE ASC
);

/*==============================================================*/
/* Index : ESTDENATIONALITE_JOUEUR_FK                           */
/*==============================================================*/
create index ESTDENATIONALITE_JOUEUR_FK on ESTDENATIONALITE_JOUEUR (
IDJOUEUR ASC
);

/*==============================================================*/
/* Index : ESTDENATIONALITE_JOUEUR2_FK                          */
/*==============================================================*/
create index ESTDENATIONALITE_JOUEUR2_FK on ESTDENATIONALITE_JOUEUR (
IDNATIONALITE ASC
);

/*==============================================================*/
/* Table : ESTDISPONIBLE                                        */
/*==============================================================*/
create table ESTDISPONIBLE 
(
   IDTOURNOI            integer                        not null,
   ARBITREID            integer                        not null,
   constraint PK_ESTDISPONIBLE primary key (IDTOURNOI, ARBITREID)
);

/*==============================================================*/
/* Index : ESTDISPONIBLE_PK                                     */
/*==============================================================*/
create index ESTDISPONIBLE_PK on ESTDISPONIBLE (
IDTOURNOI ASC,
ARBITREID ASC
);

/*==============================================================*/
/* Index : ESTDISPONIBLE_FK                                     */
/*==============================================================*/
create index ESTDISPONIBLE_FK on ESTDISPONIBLE (
IDTOURNOI ASC
);

/*==============================================================*/
/* Index : ESTDISPONIBLE2_FK                                    */
/*==============================================================*/
create index ESTDISPONIBLE2_FK on ESTDISPONIBLE (
ARBITREID ASC
);

/*==============================================================*/
/* Table : ESTEMPLOYE                                           */
/*==============================================================*/
create table ESTEMPLOYE 
(
   IDTOURNOI            integer                        not null,
   IDRAMASSEUR          integer                        not null,
   constraint PK_ESTEMPLOYE primary key (IDTOURNOI, IDRAMASSEUR)
);

/*==============================================================*/
/* Index : ESTEMPLOYE_PK                                        */
/*==============================================================*/
create index ESTEMPLOYE_PK on ESTEMPLOYE (
IDTOURNOI ASC,
IDRAMASSEUR ASC
);

/*==============================================================*/
/* Index : ESTEMPLOYE_FK                                        */
/*==============================================================*/
create index ESTEMPLOYE_FK on ESTEMPLOYE (
IDTOURNOI ASC
);

/*==============================================================*/
/* Index : ESTEMPLOYE2_FK                                       */
/*==============================================================*/
create index ESTEMPLOYE2_FK on ESTEMPLOYE (
IDRAMASSEUR ASC
);

/*==============================================================*/
/* Table : ESTPLACE                                             */
/*==============================================================*/
create table ESTPLACE 
(
   IDEMPLACEMENT        integer                        not null,
   REFERENCE          integer                        not null,
   constraint PK_ESTPLACE primary key (IDEMPLACEMENT, REFERENCE)
);

/*==============================================================*/
/* Index : ESTPLACE_PK                                          */
/*==============================================================*/
create index ESTPLACE_PK on ESTPLACE (
IDEMPLACEMENT ASC,
REFERENCE ASC
);

/*==============================================================*/
/* Index : ESTPLACE_FK                                          */
/*==============================================================*/
create index ESTPLACE_FK on ESTPLACE (
IDEMPLACEMENT ASC
);

/*==============================================================*/
/* Index : ESTPLACE2_FK                                         */
/*==============================================================*/
create index ESTPLACE2_FK on ESTPLACE (
REFERENCE ASC
);

/*==============================================================*/
/* Table : ESTVENDUPOUR                                         */
/*==============================================================*/
create table ESTVENDUPOUR 
(
   REFERENCE          integer                        not null,
   IDMATCH              integer                        not null,
   constraint PK_ESTVENDUPOUR primary key (REFERENCE, IDMATCH)
);

/*==============================================================*/
/* Index : ESTVENDUPOUR_PK                                      */
/*==============================================================*/
create index ESTVENDUPOUR_PK on ESTVENDUPOUR (
REFERENCE ASC,
IDMATCH ASC
);

/*==============================================================*/
/* Index : ESTVENDUPOUR_FK                                      */
/*==============================================================*/
create index ESTVENDUPOUR_FK on ESTVENDUPOUR (
REFERENCE ASC
);

/*==============================================================*/
/* Index : ESTVENDUPOUR2_FK                                     */
/*==============================================================*/
create index ESTVENDUPOUR2_FK on ESTVENDUPOUR (
IDMATCH ASC
);

/*==============================================================*/
/* Table : EST_DE_NATIONALITE                                   */
/*==============================================================*/
create table EST_DE_NATIONALITE 
(
   IDLICENCIE           integer                        not null,
   IDNATIONALITE        integer                        not null,
   constraint PK_EST_DE_NATIONALITE primary key (IDLICENCIE, IDNATIONALITE)
);

/*==============================================================*/
/* Index : EST_DE_NATIONALITE_PK                                */
/*==============================================================*/
create index EST_DE_NATIONALITE_PK on EST_DE_NATIONALITE (
IDLICENCIE ASC,
IDNATIONALITE ASC
);

/*==============================================================*/
/* Index : EST_DE_NATIONALITE_FK                                */
/*==============================================================*/
create index EST_DE_NATIONALITE_FK on EST_DE_NATIONALITE (
IDLICENCIE ASC
);

/*==============================================================*/
/* Index : EST_DE_NATIONALITE2_FK                               */
/*==============================================================*/
create index EST_DE_NATIONALITE2_FK on EST_DE_NATIONALITE (
IDNATIONALITE ASC
);

/*==============================================================*/
/* Table : JOUE                                                 */
/*==============================================================*/
create table JOUE 
(
   IDJOUEUR             integer                        not null,
   IDMATCH              integer                        not null,
   constraint PK_JOUE primary key (IDJOUEUR, IDMATCH)
);

/*==============================================================*/
/* Index : JOUE_PK                                              */
/*==============================================================*/
create index JOUE_PK on JOUE (
IDJOUEUR ASC,
IDMATCH ASC
);

/*==============================================================*/
/* Index : JOUE_FK                                              */
/*==============================================================*/
create index JOUE_FK on JOUE (
IDJOUEUR ASC
);

/*==============================================================*/
/* Index : JOUE2_FK                                             */
/*==============================================================*/
create index JOUE2_FK on JOUE (
IDMATCH ASC
);

/*==============================================================*/
/* Table : JOUERDOUBLE                                          */
/*==============================================================*/
create table JOUERDOUBLE 
(
   EQUIPEID             integer                        not null,
   IDMATCH              integer                        not null,
   constraint PK_JOUERDOUBLE primary key (EQUIPEID, IDMATCH)
);

/*==============================================================*/
/* Index : JOUERDOUBLE_PK                                       */
/*==============================================================*/
create index JOUERDOUBLE_PK on JOUERDOUBLE (
EQUIPEID ASC,
IDMATCH ASC
);

/*==============================================================*/
/* Index : JOUERDOUBLE_FK                                       */
/*==============================================================*/
create index JOUERDOUBLE_FK on JOUERDOUBLE (
EQUIPEID ASC
);

/*==============================================================*/
/* Index : JOUERDOUBLE2_FK                                      */
/*==============================================================*/
create index JOUERDOUBLE2_FK on JOUERDOUBLE (
IDMATCH ASC
);

/*==============================================================*/
/* Table : JOUEURS                                              */
/*==============================================================*/
create table JOUEURS 
(
   NOMJOUEUR            varchar(100)                   null,
   PRENOMJOUEUR         varchar(100)                   null,
   NATIONALITEJOUEUR    integer                        null,
   IDJOUEUR             integer                        not null,
   ATP                  integer                        null,
   constraint PK_JOUEURS primary key (IDJOUEUR)
);

/*==============================================================*/
/* Index : JOUEURS_PK                                           */
/*==============================================================*/
create index JOUEURS_PK on JOUEURS (
IDJOUEUR ASC
);

/*==============================================================*/
/* Table : LICENCIE                                             */
/*==============================================================*/
create table LICENCIE 
(
   NOMLICENCIE          varchar(100)                   null,
   IDLICENCIE           integer                        not null,
   NATIONALITELICENCIE  integer                        null,
   PRENOMLICENCIE       varchar(100)                   null,
   constraint PK_LICENCIE primary key (IDLICENCIE)
);

/*==============================================================*/
/* Index : LICENCIE_PK                                          */
/*==============================================================*/
create index LICENCIE_PK on LICENCIE (
IDLICENCIE ASC
);

/*==============================================================*/
/* Table : MATCHH                                              */
/*==============================================================*/
create table MATCHH 
(
   IDMATCH              integer                        not null,
   IDCOURT              integer                        not null,
   IDTOURNOI            integer                        not null,
   ARBITREID            integer                        not null,
   TOURNOIID            integer                        null,
   IDGAGNANT            integer                        null,
   HORAIRES             timestamp                      null,
   TARIFBASE            decimal                        null,
   constraint PK_MATCH primary key (IDMATCH)
);

/*==============================================================*/
/* Index : MATCH_PK                                             */
/*==============================================================*/
create index MATCH_PK on MATCHH (
IDMATCH ASC
);

/*==============================================================*/
/* Index : ARBITREPRINCIPAL_FK                                  */
/*==============================================================*/
create index ARBITREPRINCIPAL_FK on MATCHH (
ARBITREID ASC
);

/*==============================================================*/
/* Index : SEDEROULEDANS_FK                                     */
/*==============================================================*/
create index SEDEROULEDANS_FK on MATCHH (
IDCOURT ASC
);

/*==============================================================*/
/* Index : ESTCOMPOSEDE_FK                                      */
/*==============================================================*/
create index ESTCOMPOSEDE_FK on MATCHH (
IDTOURNOI ASC
);

/*==============================================================*/
/* Table : MATCHSUIVANT                                         */
/*==============================================================*/
create table MATCHSUIVANT 
(
   MAT_IDMATCH          integer                        not null,
   IDMATCH              integer                        not null,
   constraint PK_MATCHSUIVANT primary key (MAT_IDMATCH, IDMATCH)
);

/*==============================================================*/
/* Index : MATCHSUIVANT_PK                                      */
/*==============================================================*/
create index MATCHSUIVANT_PK on MATCHSUIVANT (
MAT_IDMATCH ASC,
IDMATCH ASC
);

/*==============================================================*/
/* Index : MATCHSUIVANT_FK                                      */
/*==============================================================*/
create index MATCHSUIVANT_FK on MATCHSUIVANT (
MAT_IDMATCH ASC
);

/*==============================================================*/
/* Index : MATCHSUIVANT2_FK                                     */
/*==============================================================*/
create index MATCHSUIVANT2_FK on MATCHSUIVANT (
IDMATCH ASC
);

/*==============================================================*/
/* Table : NATIONALITE                                          */
/*==============================================================*/
create table NATIONALITE 
(
   IDNATIONALITE        integer                        not null,
   NOMPAYS              char(30)                       null,
   constraint PK_NATIONALITE primary key (IDNATIONALITE)
);

/*==============================================================*/
/* Index : NATIONALITE_PK                                       */
/*==============================================================*/
create index NATIONALITE_PK on NATIONALITE (
IDNATIONALITE ASC
);

/*==============================================================*/
/* Table : PARTICIPE                                            */
/*==============================================================*/
create table PARTICIPE 
(
   IDTOURNOI            integer                        not null,
   IDJOUEUR             integer                        not null,
   constraint PK_PARTICIPE primary key (IDTOURNOI, IDJOUEUR)
);

/*==============================================================*/
/* Index : PARTICIPE_PK                                         */
/*==============================================================*/
create index PARTICIPE_PK on PARTICIPE (
IDTOURNOI ASC,
IDJOUEUR ASC
);

/*==============================================================*/
/* Index : PARTICIPE_FK                                         */
/*==============================================================*/
create index PARTICIPE_FK on PARTICIPE (
IDTOURNOI ASC
);

/*==============================================================*/
/* Index : PARTICIPE2_FK                                        */
/*==============================================================*/
create index PARTICIPE2_FK on PARTICIPE (
IDJOUEUR ASC
);

/*==============================================================*/
/* Table : PARTICIPER                                           */
/*==============================================================*/
create table PARTICIPER 
(
   EQUIPEID             integer                        not null,
   IDTOURNOI            integer                        not null,
   constraint PK_PARTICIPER primary key (EQUIPEID, IDTOURNOI)
);

/*==============================================================*/
/* Index : PARTICIPER_PK                                        */
/*==============================================================*/
create index PARTICIPER_PK on PARTICIPER (
EQUIPEID ASC,
IDTOURNOI ASC
);

/*==============================================================*/
/* Index : PARTICIPER_FK                                        */
/*==============================================================*/
create index PARTICIPER_FK on PARTICIPER (
EQUIPEID ASC
);

/*==============================================================*/
/* Index : PARTICIPER2_FK                                       */
/*==============================================================*/
create index PARTICIPER2_FK on PARTICIPER (
IDTOURNOI ASC
);

/*==============================================================*/
/* Table : POSSEDE                                              */
/*==============================================================*/
create table POSSEDE 
(
   IDCOURT              integer                        not null,
   IDEMPLACEMENT        integer                        not null,
   constraint PK_POSSEDE primary key (IDCOURT, IDEMPLACEMENT)
);

/*==============================================================*/
/* Index : POSSEDE_PK                                           */
/*==============================================================*/
create index POSSEDE_PK on POSSEDE (
IDCOURT ASC,
IDEMPLACEMENT ASC
);

/*==============================================================*/
/* Index : POSSEDE_FK                                           */
/*==============================================================*/
create index POSSEDE_FK on POSSEDE (
IDCOURT ASC
);

/*==============================================================*/
/* Index : POSSEDE2_FK                                          */
/*==============================================================*/
create index POSSEDE2_FK on POSSEDE (
IDEMPLACEMENT ASC
);

/*==============================================================*/
/* Table : RAMASSEPOUR                                          */
/*==============================================================*/
create table RAMASSEPOUR 
(
   IDMATCH              integer                        not null,
   IDRAMASSEUR          integer                        not null,
   NUMEROEQUIPE         integer                        null,
   constraint PK_RAMASSEPOUR primary key (IDMATCH, IDRAMASSEUR)
);

/*==============================================================*/
/* Index : RAMASSEPOUR_PK                                       */
/*==============================================================*/
create index RAMASSEPOUR_PK on RAMASSEPOUR (
IDMATCH ASC,
IDRAMASSEUR ASC
);

/*==============================================================*/
/* Index : RAMASSEPOUR_FK                                       */
/*==============================================================*/
create index RAMASSEPOUR_FK on RAMASSEPOUR (
IDMATCH ASC
);

/*==============================================================*/
/* Index : RAMASSEPOUR2_FK                                      */
/*==============================================================*/
create index RAMASSEPOUR2_FK on RAMASSEPOUR (
IDRAMASSEUR ASC
);

/*==============================================================*/
/* Table : RAMASSEURS                                           */
/*==============================================================*/
create table RAMASSEURS 
(
   IDRAMASSEUR          integer                        not null,
   NOMRAMASSEUR         varchar(100)                   null,
   PRENOMRAMASSEUR      varchar(100)                   null,
   constraint PK_RAMASSEURS primary key (IDRAMASSEUR)
);

/*==============================================================*/
/* Index : RAMASSEURS_PK                                        */
/*==============================================================*/
create index RAMASSEURS_PK on RAMASSEURS (
IDRAMASSEUR ASC
);

/*==============================================================*/
/* Table : TOURNOI                                              */
/*==============================================================*/
create table TOURNOI 
(
   DATEDEBUTTOURNOI     date                           null,
   DATEFINTOURNOI       date                           null,
   IDTOURNOI            integer                        not null,
   TYPETOURNOI          varchar(100)                   null,
   NOMBRETOURS          integer                        null,
   ISVALIDATED          smallint                       null,
   NOMTOURNOI           varchar(100)                   null,
   DATEOUVERTUREBILLETTERIE date                           null,
   constraint PK_TOURNOI primary key (IDTOURNOI)
);

/*==============================================================*/
/* Index : TOURNOI_PK                                           */
/*==============================================================*/
create index TOURNOI_PK on TOURNOI (
IDTOURNOI ASC
);

alter table APOURCATEGORIE
   add constraint FK_APOURCAT_APOURCATE_BILLET foreign key (REFERENCE)
      references BILLET (REFERENCE)
      on update restrict
      on delete restrict;

alter table APOURCATEGORIE
   add constraint FK_APOURCAT_APOURCATE_CATEGORI foreign key (CATIDBILLET)
      references CATEGORIEBILLET (CATIDBILLET)
      on update restrict
      on delete restrict;

alter table APPARTIENT
   add constraint FK_APPARTIE_APPARTIEN_CATEGORI foreign key (CATIDBILLET)
      references CATEGORIEBILLET (CATIDBILLET)
      on update restrict
      on delete restrict;

alter table APPARTIENT
   add constraint FK_APPARTIE_APPARTIEN_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table ARBITRER2
   add constraint FK_ARBITRER_ARBITRER2_ARBITRES foreign key (ARBITREID)
      references ARBITRES (ARBITREID)
      on update restrict
      on delete restrict;

alter table ARBITRER2
   add constraint FK_ARBITRER_ARBITRE_S_MATCH foreign key (IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table ASSOCIATION
   add constraint FK_ASSOCIAT_ESTBENEFI_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table BILLET
   add constraint FK_BILLET_ACHETE_ACHETEUR foreign key (IDACHETEUR)
      references ACHETEUR (IDACHETEUR)
      on update restrict
      on delete restrict;

alter table COMPOSER
   add constraint FK_COMPOSER_COMPOSER_JOUEURS foreign key (IDJOUEUR)
      references JOUEURS (IDJOUEUR)
      on update restrict
      on delete restrict;

alter table COMPOSER
   add constraint FK_COMPOSER_COMPOSER2_EQUIPETO foreign key (EQUIPEID)
      references EQUIPETOURNOI (EQUIPEID)
      on update restrict
      on delete restrict;

alter table ESTDENATIONALITE_ARBITRE
   add constraint FK_ESTDENAT_ESTDENATI_ARBITRES foreign key (ARBITREID)
      references ARBITRES (ARBITREID)
      on update restrict
      on delete restrict;

alter table ESTDENATIONALITE_ARBITRE
   add constraint FK_ESTDENAT_ESTDENATI_NATIONAL foreign key (IDNATIONALITE)
      references NATIONALITE (IDNATIONALITE)
      on update restrict
      on delete restrict;

alter table ESTDENATIONALITE_JOUEUR
   add constraint FK_ESTDENAT_ESTDENATI_JOUEURS foreign key (IDJOUEUR)
      references JOUEURS (IDJOUEUR)
      on update restrict
      on delete restrict;

alter table ESTDENATIONALITE_JOUEUR
   add constraint FK_ESTDENAT_ESTDENATI_NATIONAL foreign key (IDNATIONALITE)
      references NATIONALITE (IDNATIONALITE)
      on update restrict
      on delete restrict;

alter table ESTDISPONIBLE
   add constraint FK_ESTDISPO_ESTDISPON_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table ESTDISPONIBLE
   add constraint FK_ESTDISPO_ESTDISPON_ARBITRES foreign key (ARBITREID)
      references ARBITRES (ARBITREID)
      on update restrict
      on delete restrict;

alter table ESTEMPLOYE
   add constraint FK_ESTEMPLO_ESTEMPLOY_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table ESTEMPLOYE
   add constraint FK_ESTEMPLO_ESTEMPLOY_RAMASSEU foreign key (IDRAMASSEUR)
      references RAMASSEURS (IDRAMASSEUR)
      on update restrict
      on delete restrict;

alter table ESTPLACE
   add constraint FK_ESTPLACE_ESTPLACE_EMPLACEM foreign key (IDEMPLACEMENT)
      references EMPLACEMENT (IDEMPLACEMENT)
      on update restrict
      on delete restrict;

alter table ESTPLACE
   add constraint FK_ESTPLACE_ESTPLACE2_BILLET foreign key (REFERENCE)
      references BILLET (REFERENCE)
      on update restrict
      on delete restrict;

alter table ESTVENDUPOUR
   add constraint FK_ESTVENDU_ESTVENDUP_BILLET foreign key (REFERENCE)
      references BILLET (REFERENCE)
      on update restrict
      on delete restrict;

alter table ESTVENDUPOUR
   add constraint FK_ESTVENDU_ESTVENDUP_MATCH foreign key (IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table EST_DE_NATIONALITE
   add constraint FK_EST_DE_N_EST_DE_NA_LICENCIE foreign key (IDLICENCIE)
      references LICENCIE (IDLICENCIE)
      on update restrict
      on delete restrict;

alter table EST_DE_NATIONALITE
   add constraint FK_EST_DE_N_EST_DE_NA_NATIONAL foreign key (IDNATIONALITE)
      references NATIONALITE (IDNATIONALITE)
      on update restrict
      on delete restrict;

alter table JOUE
   add constraint FK_JOUE_JOUE_JOUEURS foreign key (IDJOUEUR)
      references JOUEURS (IDJOUEUR)
      on update restrict
      on delete restrict;

alter table JOUE
   add constraint FK_JOUE_JOUE2_MATCH foreign key (IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table JOUERDOUBLE
   add constraint FK_JOUERDOU_JOUERDOUB_EQUIPETO foreign key (EQUIPEID)
      references EQUIPETOURNOI (EQUIPEID)
      on update restrict
      on delete restrict;

alter table JOUERDOUBLE
   add constraint FK_JOUERDOU_JOUERDOUB_MATCH foreign key (IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table MATCHH
   add constraint FK_MATCH_ARBITREPR_ARBITRES foreign key (ARBITREID)
      references ARBITRES (ARBITREID)
      on update restrict
      on delete restrict;

alter table MATCHH
   add constraint FK_MATCH_ESTCOMPOS_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table MATCHH
   add constraint FK_MATCH_SEDEROULE_COURTS foreign key (IDCOURT)
      references COURTS (IDCOURT)
      on update restrict
      on delete restrict;

alter table MATCHSUIVANT
   add constraint FK_MATCHSUI_MATCHSUIV_MATCH foreign key (MAT_IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table MATCHSUIVANT
   add constraint FK_MATCHSUI_MATCHSUIV_MATCH foreign key (IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table PARTICIPE
   add constraint FK_PARTICIP_PARTICIPE_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table PARTICIPE
   add constraint FK_PARTICIP_PARTICIPE_JOUEURS foreign key (IDJOUEUR)
      references JOUEURS (IDJOUEUR)
      on update restrict
      on delete restrict;

alter table PARTICIPER
   add constraint FK_PARTICIP_PARTICIPE_EQUIPETO foreign key (EQUIPEID)
      references EQUIPETOURNOI (EQUIPEID)
      on update restrict
      on delete restrict;

alter table PARTICIPER
   add constraint FK_PARTICIP_PARTICIPE_TOURNOI foreign key (IDTOURNOI)
      references TOURNOI (IDTOURNOI)
      on update restrict
      on delete restrict;

alter table POSSEDE
   add constraint FK_POSSEDE_POSSEDE_COURTS foreign key (IDCOURT)
      references COURTS (IDCOURT)
      on update restrict
      on delete restrict;

alter table POSSEDE
   add constraint FK_POSSEDE_POSSEDE2_EMPLACEM foreign key (IDEMPLACEMENT)
      references EMPLACEMENT (IDEMPLACEMENT)
      on update restrict
      on delete restrict;

alter table RAMASSEPOUR
   add constraint FK_RAMASSEP_RAMASSEPO_MATCH foreign key (IDMATCH)
      references MATCHH (IDMATCH)
      on update restrict
      on delete restrict;

alter table RAMASSEPOUR
   add constraint FK_RAMASSEP_RAMASSEPO_RAMASSEU foreign key (IDRAMASSEUR)
      references RAMASSEURS (IDRAMASSEUR)
      on update restrict
      on delete restrict;





/*Data entry*/

INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Shannon","Gail",1000,"ipsum.leo@protonmail.couk"),
  ("Curtis","Christine",1001,"dui.lectus.rutrum@google.org"),
  ("Stark","Aline",1002,"vestibulum.ante.ipsum@outlook.org"),
  ("Stokes","Jeremy",1003,"lorem.ipsum@outlook.com"),
  ("Welch","Damon",1004,"nunc.lectus@protonmail.net"),
  ("Cervantes","Fitzgerald",1005,"libero@outlook.net"),
  ("Mann","Giacomo",1006,"nulla.aliquet.proin@google.net"),
  ("Holman","Howard",1007,"pellentesque.habitant@icloud.net"),
  ("Farley","Sawyer",1008,"nibh.phasellus@hotmail.couk"),
  ("Farley","Daryl",1009,"aliquam.gravida@aol.org");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Michael","Delilah",1010,"placerat@aol.net"),
  ("Leblanc","Hamish",1011,"elementum@aol.com"),
  ("Logan","Ferris",1012,"sapien.cursus@hotmail.net"),
  ("Chase","Rahim",1013,"non.bibendum@outlook.couk"),
  ("Hester","Theodore",1014,"ac@aol.ca"),
  ("Brown","Tyler",1015,"nam.ligula@yahoo.couk"),
  ("Solomon","Holmes",1016,"velit.eu@icloud.com"),
  ("Clements","Norman",1017,"ipsum@icloud.couk"),
  ("Maynard","Brendan",1018,"semper.dui@icloud.com"),
  ("Mendez","Nicholas",1019,"faucibus@icloud.edu");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Richard","Fleur",1020,"et@google.org"),
  ("Gill","Dai",1021,"amet.metus@hotmail.org"),
  ("Scott","Mollie",1022,"hendrerit@google.net"),
  ("Peters","Francis",1023,"tellus.non@protonmail.edu"),
  ("Heath","Orlando",1024,"pretium.aliquet.metus@outlook.edu"),
  ("Collier","Shaine",1025,"quisque.ac@aol.org"),
  ("Dalton","Alexandra",1026,"porttitor.tellus@hotmail.net"),
  ("Vaughn","Cooper",1027,"hendrerit.neque@icloud.couk"),
  ("Kennedy","Jerome",1028,"eu@yahoo.edu"),
  ("Harmon","Ivan",1029,"egestas.fusce@hotmail.couk");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Richmond","Yoko",1030,"luctus.lobortis@yahoo.org"),
  ("Hutchinson","Ivy",1031,"diam.proin@aol.edu"),
  ("Watkins","Martina",1032,"at.fringilla@protonmail.edu"),
  ("York","Shad",1033,"congue@hotmail.com"),
  ("Castro","Charlotte",1034,"elementum.sem.vitae@google.net"),
  ("Harris","Stone",1035,"pede@hotmail.com"),
  ("Callahan","Chandler",1036,"enim.mi@yahoo.ca"),
  ("Lara","Margaret",1037,"mus.aenean.eget@aol.ca"),
  ("Yates","Colton",1038,"tempor@hotmail.edu"),
  ("Reed","Addison",1039,"lobortis.nisi@hotmail.edu");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Park","Yoko",1040,"volutpat.nulla@protonmail.com"),
  ("Hansen","Tarik",1041,"risus@yahoo.com"),
  ("Dodson","Kitra",1042,"senectus.et@outlook.net"),
  ("Hampton","Raja",1043,"ultricies.ligula@aol.edu"),
  ("Jacobson","Teegan",1044,"quis.diam@protonmail.net"),
  ("Hopper","Rylee",1045,"consequat.nec@icloud.com"),
  ("Velazquez","Demetria",1046,"a.feugiat@hotmail.com"),
  ("Buchanan","Felix",1047,"nulla@hotmail.couk"),
  ("Peters","Ramona",1048,"ipsum@hotmail.edu"),
  ("Mathis","Dawn",1049,"nibh@protonmail.couk");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Ruiz","Maggie",1050,"aliquam.nec@outlook.ca"),
  ("Morse","Erich",1051,"porta@yahoo.net"),
  ("Blackburn","Emily",1052,"eu.turpis@yahoo.couk"),
  ("Kidd","Summer",1053,"mauris.sapien@protonmail.net"),
  ("Moody","Bell",1054,"interdum.nunc@icloud.ca"),
  ("Galloway","Allegra",1055,"non@hotmail.ca"),
  ("Sims","Thomas",1056,"malesuada.fames@google.com"),
  ("Powell","Devin",1057,"egestas.blandit.nam@google.couk"),
  ("Gray","Savannah",1058,"feugiat.nec@outlook.ca"),
  ("Jacobs","Serena",1059,"facilisis.vitae@aol.net");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Jensen","Shad",1060,"tempor.lorem@aol.ca"),
  ("Frazier","Tad",1061,"fusce.aliquet@hotmail.edu"),
  ("Carney","Alec",1062,"enim.gravida@protonmail.net"),
  ("Mccoy","Berk",1063,"in.scelerisque@aol.net"),
  ("Pugh","Kim",1064,"facilisis.vitae.orci@icloud.edu"),
  ("Sims","Francis",1065,"sed.pede@icloud.edu"),
  ("Crosby","Kieran",1066,"convallis.est.vitae@hotmail.couk"),
  ("Flowers","Quamar",1067,"porttitor@google.net"),
  ("Lowery","Donna",1068,"quisque.libero@icloud.net"),
  ("Morton","Clayton",1069,"quis.massa@google.ca");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Rosario","Ciara",1070,"dui@aol.com"),
  ("Cooley","Vladimir",1071,"ullamcorper@protonmail.couk"),
  ("Lindsay","Tasha",1072,"augue.porttitor@protonmail.edu"),
  ("Reilly","Maxwell",1073,"faucibus.leo@yahoo.com"),
  ("Vega","Faith",1074,"ante@hotmail.com"),
  ("Trevino","Zorita",1075,"nulla.semper.tellus@yahoo.ca"),
  ("Collins","Barrett",1076,"nibh.donec.est@protonmail.org"),
  ("Ramirez","Germaine",1077,"tellus.imperdiet@yahoo.ca"),
  ("Crane","Ian",1078,"non.dapibus@google.edu"),
  ("Stark","Jesse",1079,"convallis.erat.eget@outlook.couk");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Duffy","Hiram",1080,"etiam@hotmail.ca"),
  ("Tyler","Ferris",1081,"tempor.augue@yahoo.org"),
  ("Baldwin","Stacy",1082,"mauris@hotmail.org"),
  ("Beasley","Clare",1083,"feugiat@outlook.ca"),
  ("Barton","Jade",1084,"eget.varius.ultrices@icloud.net"),
  ("Chavez","Scott",1085,"parturient.montes.nascetur@hotmail.org"),
  ("Nelson","Theodore",1086,"morbi.accumsan.laoreet@aol.org"),
  ("Vaughn","Colby",1087,"dictum.placerat@hotmail.edu"),
  ("Weiss","Mona",1088,"sed.id@aol.net"),
  ("Gardner","Ahmed",1089,"risus.donec.egestas@icloud.org");
INSERT INTO `acheteur` (`nomacheteur`,`prenomacheteur`,`idacheteur`,`emailacheteur`)
VALUES
  ("Ruiz","Minerva",1090,"lorem@google.org"),
  ("Owen","Berk",1091,"dapibus.rutrum.justo@aol.couk"),
  ("Joseph","Stewart",1092,"dapibus@yahoo.net"),
  ("Munoz","Sade",1093,"nisl.maecenas@icloud.couk"),
  ("White","Quyn",1094,"eu@aol.couk"),
  ("Roberts","Thor",1095,"suspendisse@protonmail.com"),
  ("Chase","Gray",1096,"ante@outlook.couk"),
  ("Meyers","Kevyn",1097,"leo.cras@google.edu"),
  ("Banks","Geraldine",1098,"praesent@outlook.org"),
  ("Mann","Reuben",1099,"aliquam.eros@outlook.org");

  /*arbitres*/

  INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10000,"Battle","Plato","Spain"),
  (10001,"Finch","Carson","Mexico"),
  (10002,"Murphy","Randall","Australia"),
  (10003,"Tate","Jasmine","Nigeria"),
  (10004,"Humphrey","Jana","Nigeria"),
  (10005,"Kidd","Myra","Turkey"),
  (10006,"Strong","Omar","United States"),
  (10007,"Mooney","Tyrone","France"),
  (10008,"Warren","Kellie","South Africa"),
  (10009,"Kim","Ivor","Italy");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10010,"Grimes","Herman","South Korea"),
  (10011,"Salazar","Amos","United States"),
  (10012,"Hunter","Roanna","Mexico"),
  (10013,"Marks","Cameron","New Zealand"),
  (10014,"Casey","Emma","Indonesia"),
  (10015,"Hill","Fatima","Costa Rica"),
  (10016,"Cooley","Lenore","Colombia"),
  (10017,"Nichols","Portia","Russian Federation"),
  (10018,"Marks","Micah","Italy"),
  (10019,"Howell","Hillary","Poland");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10020,"Glover","Vanna","United Kingdom"),
  (10021,"Santana","Jaquelyn","France"),
  (10022,"Wilder","Scarlett","Russian Federation"),
  (10023,"Love","Kyle","Poland"),
  (10024,"Holland","Shellie","Peru"),
  (10025,"Watson","Tamekah","Germany"),
  (10026,"Blackburn","Stone","China"),
  (10027,"Finch","Acton","Philippines"),
  (10028,"Fletcher","Rama","Indonesia"),
  (10029,"Sparks","Keaton","Russian Federation");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10030,"Reynolds","Xavier","South Africa"),
  (10031,"Thornton","Rooney","China"),
  (10032,"Peck","Aurora","United States"),
  (10033,"Holder","Aaron","United States"),
  (10034,"Malone","Jakeem","Italy"),
  (10035,"Mckenzie","Abdul","Ukraine"),
  (10036,"Franco","Holly","Germany"),
  (10037,"Key","Ivan","Philippines"),
  (10038,"Velasquez","Basia","Austria"),
  (10039,"Carpenter","Lysandra","India");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10040,"Brennan","Tarik","Australia"),
  (10041,"Mccullough","Samuel","Belgium"),
  (10042,"Shannon","Irma","Germany"),
  (10043,"Gross","Merrill","Australia"),
  (10044,"Monroe","William","South Korea"),
  (10045,"Morgan","Harper","Singapore"),
  (10046,"Martinez","Marny","United States"),
  (10047,"Baird","Rudyard","Nigeria"),
  (10048,"Trevino","Amity","Colombia"),
  (10049,"Matthews","Camden","Peru");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10050,"Simpson","Justine","Philippines"),
  (10051,"Bush","Timothy","Sweden"),
  (10052,"Mullen","Jade","Spain"),
  (10053,"Bullock","Meghan","Ukraine"),
  (10054,"Macias","Neve","Vietnam"),
  (10055,"Clemons","Britanni","India"),
  (10056,"Navarro","Amber","Spain"),
  (10057,"Hamilton","Aiko","South Korea"),
  (10058,"Dalton","Lee","Indonesia"),
  (10059,"Jordan","Callum","Spain");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10060,"Clayton","Cole","Singapore"),
  (10061,"Kelly","Zephania","France"),
  (10062,"Lane","Aaron","Turkey"),
  (10063,"Bradshaw","Athena","Spain"),
  (10064,"Schroeder","Regina","Ukraine"),
  (10065,"Stout","Travis","Norway"),
  (10066,"Maxwell","Erich","Brazil"),
  (10067,"Kramer","Addison","Singapore"),
  (10068,"Alston","Finn","Canada"),
  (10069,"Lancaster","Dane","Spain");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10070,"Duran","Bernard","Chile"),
  (10071,"Delaney","Wayne","Poland"),
  (10072,"Watkins","Jocelyn","Singapore"),
  (10073,"Livingston","Bethany","Netherlands"),
  (10074,"Aguilar","Keegan","Australia"),
  (10075,"Ward","Daquan","Netherlands"),
  (10076,"Jarvis","Ciara","Singapore"),
  (10077,"Slater","Paul","France"),
  (10078,"Maxwell","Nehru","Russian Federation"),
  (10079,"Mcdaniel","Fiona","United Kingdom");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10080,"Williams","Peter","Austria"),
  (10081,"Stafford","Zelda","Netherlands"),
  (10082,"Meyer","Noble","Singapore"),
  (10083,"Stokes","Ocean","Italy"),
  (10084,"Stafford","Emerson","Chile"),
  (10085,"Foster","Alyssa","Singapore"),
  (10086,"Orr","Rowan","Vietnam"),
  (10087,"Cross","Kenyon","Ukraine"),
  (10088,"Craft","Sandra","Austria"),
  (10089,"Preston","Amena","France");
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10090,"Golden","Lunea","India"),
  (10091,"Castro","Neil","Pakistan"),
  (10092,"Hahn","Jelani","Sweden"),
  (10093,"Bond","Zia","Mexico"),
  (10094,"Hicks","Bianca","Ireland"),
  (10095,"Skinner","Aladdin","Italy"),
  (10096,"Calderon","Montana","Costa Rica"),
  (10097,"Cortez","Lamar","Russian Federation"),
  (10098,"Jimenez","Kibo","Mexico"),
  (10099,"Mcfadden","Emerson","United Kingdom");

  /*Courts*/

  INSERT INTO `courts` (`idcourt`,`capacite`)
VALUES
  (1,10675),
  (2,23572),
  (3,12685),
  (4,24964),
  (5,12528),
  (6,15785),
  (7,22288),
  (8,12722),
  (9,20693),
  (10,19584);
INSERT INTO `courts` (`idcourt`,`capacite`)
VALUES
  (11,16399),
  (12,18999),
  (13,17190),
  (14,23153),
  (15,19003),
  (16,11022),
  (17,12704),
  (18,19333),
  (19,21984),
  (20,18739);
INSERT INTO `courts` (`idcourt`,`capacite`)
VALUES
  (21,19663),
  (22,10602),
  (23,20427),
  (24,18985),
  (25,13477);


/*Nationalite*/
INSERT INTO `nationalite` (`idnationalite`,`nompays`)
VALUES
  (1,"Belgium"),
  (2,"France"),
  (3,"Germany"),
  (4,"United States"),
  (5,"Spain"),
  (6,"Brazil"),
  (7,"Italy"),
  (8,"Canada"),
  (9,"Australia"),
  (10,"Austria");
INSERT INTO `nationalite` (`idnationalite`,`nompays`)
VALUES
  (11,"Indonesia"),
  (12,"Colombia"),
  (13,"Turkey"),
  (14,"China"),
  (15,"Nigeria"),
  (16,"United Kingdom");


  /*ramasseurs*/
  
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10000,"Stevenson","Quinlan"),
  (10001,"Santos","Yoshi"),
  (10002,"Wilkins","Tad"),
  (10003,"Peck","Jana"),
  (10004,"Hartman","Gil"),
  (10005,"Durham","Lacey"),
  (10006,"Donaldson","Shelby"),
  (10007,"Patrick","Hammett"),
  (10008,"Knapp","William"),
  (10009,"Schultz","Jescie");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10010,"Miles","Brynne"),
  (10011,"Holcomb","Carolyn"),
  (10012,"Weaver","Evelyn"),
  (10013,"Cooke","Austin"),
  (10014,"Garner","Avram"),
  (10015,"Ingram","Keely"),
  (10016,"Odom","Abbot"),
  (10017,"Lott","Ginger"),
  (10018,"Diaz","Julian"),
  (10019,"Casey","Coby");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10020,"Estes","Axel"),
  (10021,"Cannon","Nyssa"),
  (10022,"Vaughan","Drake"),
  (10023,"Spears","Alfreda"),
  (10024,"Hensley","Quynn"),
  (10025,"Williams","Gemma"),
  (10026,"Taylor","Maggie"),
  (10027,"Austin","Harper"),
  (10028,"Jimenez","Phillip"),
  (10029,"Sparks","Raven");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10030,"Rush","Ria"),
  (10031,"Clemons","Ivory"),
  (10032,"Ware","Kiara"),
  (10033,"Walters","Carolyn"),
  (10034,"Rasmussen","Aladdin"),
  (10035,"Guy","Helen"),
  (10036,"Clayton","Athena"),
  (10037,"Noble","Miranda"),
  (10038,"Buckley","Kamal"),
  (10039,"Preston","Cally");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10040,"Brown","Holly"),
  (10041,"Gillespie","Warren"),
  (10042,"Hernandez","Amaya"),
  (10043,"Johns","Lacy"),
  (10044,"Gardner","Lynn"),
  (10045,"Marquez","Jerry"),
  (10046,"Davenport","Malcolm"),
  (10047,"Small","Denise"),
  (10048,"Norman","Keane"),
  (10049,"Holmes","Eaton");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10050,"Herman","Evelyn"),
  (10051,"Mcclure","Alisa"),
  (10052,"Dawson","Zorita"),
  (10053,"Middleton","Tara"),
  (10054,"Weiss","Quinn"),
  (10055,"Benjamin","Ginger"),
  (10056,"Velasquez","Dorothy"),
  (10057,"Lawrence","Ursula"),
  (10058,"Hyde","Benedict"),
  (10059,"Neal","Robert");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10060,"Alford","Megan"),
  (10061,"Gray","Gregory"),
  (10062,"Freeman","Stella"),
  (10063,"Harrison","Damian"),
  (10064,"Barton","Aidan"),
  (10065,"Spencer","Uriel"),
  (10066,"Mckinney","Ebony"),
  (10067,"Frank","Kuame"),
  (10068,"Walton","Wynne"),
  (10069,"Decker","Hedley");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10070,"Warren","Glenna"),
  (10071,"Christensen","Wang"),
  (10072,"Spears","Riley"),
  (10073,"Bauer","Shelly"),
  (10074,"Savage","Sawyer"),
  (10075,"Knapp","Zachery"),
  (10076,"Hill","Lois"),
  (10077,"Cain","Orlando"),
  (10078,"Huber","Rinah"),
  (10079,"Crawford","Martina");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10080,"Beach","Kennedy"),
  (10081,"Larsen","Isadora"),
  (10082,"Grant","Cameran"),
  (10083,"Ryan","Timon"),
  (10084,"Cummings","Flynn"),
  (10085,"David","Uriah"),
  (10086,"Wood","Hayes"),
  (10087,"Burke","Ezra"),
  (10088,"Kennedy","Liberty"),
  (10089,"Doyle","Phoebe");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomramasseur`,`prenomramasseur`)
VALUES
  (10090,"Woods","Ray"),
  (10091,"Morales","Shannon"),
  (10092,"Morse","Alan"),
  (10093,"Fuller","Elvis"),
  (10094,"Baxter","Cailin"),
  (10095,"Lara","Peter"),
  (10096,"Welch","Alexis"),
  (10097,"Puckett","Kasimir"),
  (10098,"Payne","Lucas"),
  (10099,"Sharpe","Cameron");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10100,"Dora","Baker"),
    (10101,"Mannix","Duran"),
    (10102,"Kelly","Berry"),
    (10103,"Lilah","Morin"),
    (10104,"Josephine","Norton"),
    (10105,"Chase","Smith"),
    (10106,"Brenden","Branch"),
    (10107,"Omar","Ellison"),
    (10108,"Garth","Ramirez"),
    (10109,"Wade","Ingram");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10110,"Reuben","Morgan"),
    (10111,"Ulla","Peck"),
    (10112,"Caldwell","Morse"),
    (10113,"Darius","Floyd"),
    (10114,"Violet","Huffman"),
    (10115,"Matthew","Perry"),
    (10116,"Jenette","Hunter"),
    (10117,"Linda","Wyatt"),
    (10118,"Kenyon","Dalton"),
    (10119,"Bianca","Sawyer");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10120,"Todd","Moss"),
    (10121,"Macaulay","Church"),
    (10122,"Adena","Burgess"),
    (10123,"Tucker","Hewitt"),
    (10124,"Ruth","Mcintosh"),
    (10125,"Fletcher","Conner"),
    (10126,"Violet","Avery"),
    (10127,"Eugenia","Knight"),
    (10128,"Steven","Lang"),
    (10129,"Hector","Alford");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10130,"Lionel","Dodson"),
    (10131,"Justin","Shepard"),
    (10132,"Victoria","Riggs"),
    (10133,"Tanek","Jarvis"),
    (10134,"Louis","Tyler"),
    (10135,"Darius","Castillo"),
    (10136,"Ifeoma","Parker"),
    (10137,"Wynne","Mullins"),
    (10138,"Hop","Hanson"),
    (10139,"Janna","Robertson");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10140,"Brenden","Rios"),
    (10141,"Mona","Santiago"),
    (10142,"Odysseus","Mcclure"),
    (10143,"Kylie","Waters"),
    (10144,"Winter","Snider"),
    (10145,"Dawn","Pitts"),
    (10146,"Anne","Neal"),
    (10147,"Samson","Schultz"),
    (10148,"Alvin","Richardson"),
    (10149,"Rana","Barry");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10150,"Idona","Bartlett"),
    (10151,"Quintessa","Phillips"),
    (10152,"Vivien","Sharp"),
    (10153,"Brett","Rivera"),
    (10154,"Plato","O'donnell"),
    (10155,"Callum","Oliver"),
    (10156,"Quinn","Chavez"),
    (10157,"Guy","Stokes"),
    (10158,"Berk","Montgomery"),
    (10159,"Mohammad","Wood");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10160,"Hilary","Knox"),
    (10161,"Leila","Dyer"),
    (10162,"Kevyn","Dennis"),
    (10163,"Giacomo","Meadows"),
    (10164,"Zephania","Kelley"),
    (10165,"Rinah","Logan"),
    (10166,"Judith","Henderson"),
    (10167,"Ramona","Spencer"),
    (10168,"Noel","Tillman"),
    (10169,"Jarrod","Owen");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10170,"Melissa","Whitney"),
    (10171,"Melanie","Thomas"),
    (10172,"Ryder","Taylor"),
    (10173,"Alan","Lester"),
    (10174,"Idona","Crawford"),
    (10175,"Imogene","Monroe"),
    (10176,"Anthony","Forbes"),
    (10177,"Hanae","Kirk"),
    (10178,"Angela","Hampton"),
    (10179,"Angela","Mcknight");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10180,"Tad","Vazquez"),
    (10181,"Jesse","Doyle"),
    (10182,"Gary","Parker"),
    (10183,"Callie","Burgess"),
    (10184,"Rae","Walters"),
    (10185,"Ezra","Lindsay"),
    (10186,"Kareem","Nunez"),
    (10187,"Paul","Kramer"),
    (10188,"Mufutau","James"),
    (10189,"Yoshi","Estes");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10190,"Sybil","Norris"),
    (10191,"Kim","Bernard"),
    (10192,"Neil","Mckinney"),
    (10193,"Merrill","Becker"),
    (10194,"Grady","Hays"),
    (10195,"Kelly","Hayden"),
    (10196,"Dane","Miller"),
    (10197,"Uta","Stuart"),
    (10198,"Hiroko","Hartman"),
    (10199,"Kennedy","Ross");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10200,"Jack","Church"),
    (10201,"Dahlia","Landry"),
    (10202,"Kylynn","Rutledge"),
    (10203,"Kirby","Strong"),
    (10204,"Alfonso","Patton"),
    (10205,"Camilla","Norton"),
    (10206,"Hayfa","Farrell"),
    (10207,"Linus","Lewis"),
    (10208,"Lana","Harrell"),
    (10209,"Dexter","Sellers");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10210,"Kyla","Kent"),
    (10211,"Octavius","Sexton"),
    (10212,"Kylan","Foley"),
    (10213,"Victoria","Clemons"),
    (10214,"Carson","Craft"),
    (10215,"Jonah","Cook"),
    (10216,"Vielka","Hurley"),
    (10217,"Riley","Hyde"),
    (10218,"Gary","Clements"),
    (10219,"Aretha","Prince");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10220,"Stuart","Griffith"),
    (10221,"Russell","Foley"),
    (10222,"Quin","Fleming"),
    (10223,"Roth","Justice"),
    (10224,"Rana","Houston"),
    (10225,"Keiko","Hull"),
    (10226,"Jena","Johns"),
    (10227,"Gwendolyn","English"),
    (10228,"Holmes","Valenzuela"),
    (10229,"Lois","Briggs");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10230,"Alice","Spears"),
    (10231,"Asher","Joyner"),
    (10232,"Alan","Barrera"),
    (10233,"Fleur","Wilcox"),
    (10234,"Stephanie","Branch"),
    (10235,"Vanna","Combs"),
    (10236,"Boris","Cannon"),
    (10237,"Quinlan","Hawkins"),
    (10238,"Zenaida","Henderson"),
    (10239,"Raven","Riley");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10240,"Adena","Kent"),
    (10241,"Tamekah","Conway"),
    (10242,"Brooke","Morgan"),
    (10243,"Reed","Matthews"),
    (10244,"Linda","Spence"),
    (10245,"Brendan","Pearson"),
    (10246,"Leilani","Castro"),
    (10247,"Reece","Hays"),
    (10248,"Xantha","Ward"),
    (10249,"Tamara","Mccullough");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10250,"Kuame","Merritt"),
    (10251,"Helen","Daugherty"),
    (10252,"Jonah","Floyd"),
    (10253,"Doris","Mathis"),
    (10254,"Bell","Kline"),
    (10255,"Oprah","Bird"),
    (10256,"Chantale","Reeves"),
    (10257,"Kristen","Brown"),
    (10258,"Ralph","House"),
    (10259,"Isadora","Tran");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10260,"Pamela","Gould"),
    (10261,"Wing","Boyle"),
    (10262,"Marcia","Stuart"),
    (10263,"Myles","Hays"),
    (10264,"Quin","Farmer"),
    (10265,"Ryan","Ballard"),
    (10266,"Roanna","Knox"),
    (10267,"Joseph","Powers"),
    (10268,"September","Larsen"),
    (10269,"Elizabeth","Watson");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10270,"Hasad","Jackson"),
    (10271,"Matthew","Macdonald"),
    (10272,"Anthony","Santos"),
    (10273,"Fleur","Riddle"),
    (10274,"Caleb","Lester"),
    (10275,"Latifah","Merritt"),
    (10276,"Abel","Hood"),
    (10277,"Ulysses","Woods"),
    (10278,"Carly","Cleveland"),
    (10279,"Jaden","Mcclain");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10280,"Rashad","O'connor"),
    (10281,"Ina","Holland"),
    (10282,"Igor","Mclaughlin"),
    (10283,"Rama","Bruce"),
    (10284,"Hanna","Dunlap"),
    (10285,"Gary","Cooley"),
    (10286,"Hall","Patrick"),
    (10287,"Sylvia","Pitts"),
    (10288,"Samantha","Mccarty"),
    (10289,"Ora","Barron");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10290,"Harriet","Mason"),
    (10291,"Talon","Sweeney"),
    (10292,"Thomas","Mcknight"),
    (10293,"Craig","Bush"),
    (10294,"Alika","Booth"),
    (10295,"Kelly","Camacho"),
    (10296,"Nero","Adkins"),
    (10297,"Richard","Valencia"),
    (10298,"MacKensie","Williams"),
    (10299,"Sylvester","Wilkins");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10300,"Hunter","Zamora"),
    (10301,"Mollie","Lara"),
    (10302,"Davis","Carson"),
    (10303,"Amery","Mclaughlin"),
    (10304,"Colorado","Graves"),
    (10305,"Davis","Finley"),
    (10306,"Peter","Peters"),
    (10307,"Adrienne","Carey"),
    (10308,"Jenette","Holmes"),
    (10309,"Yolanda","Sosa");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10310,"Castor","Fischer"),
    (10311,"Mason","Sheppard"),
    (10312,"Gavin","Velez"),
    (10313,"Bevis","Shaw"),
    (10314,"Jessamine","Mcdowell"),
    (10315,"Imogene","Giles"),
    (10316,"Julie","Horn"),
    (10317,"Brielle","Duke"),
    (10318,"Martina","Stewart"),
    (10319,"Adele","Huff");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10320,"Ina","Henry"),
    (10321,"Eliana","Sears"),
    (10322,"Roanna","Gillespie"),
    (10323,"Hamilton","Bass"),
    (10324,"Kaitlin","Mckinney"),
    (10325,"Armand","Macias"),
    (10326,"Madaline","Roman"),
    (10327,"Colton","Soto"),
    (10328,"Shelley","White"),
    (10329,"Mohammad","Boyle");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10330,"Aquila","Heath"),
    (10331,"Gail","Vinson"),
    (10332,"Kyra","Summers"),
    (10333,"Jasper","Martinez"),
    (10334,"Colt","Dodson"),
    (10335,"Kiara","Davis"),
    (10336,"Vance","Kennedy"),
    (10337,"Kasimir","Copeland"),
    (10338,"Oliver","Bates"),
    (10339,"Nissim","Parrish");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10340,"Aileen","Morgan"),
    (10341,"Yuli","Wheeler"),
    (10342,"Marsden","Rowland"),
    (10343,"Lareina","Gould"),
    (10344,"Virginia","Wilkins"),
    (10345,"Illiana","Roth"),
    (10346,"Olga","Conrad"),
    (10347,"Orla","Clements"),
    (10348,"Tanisha","Kidd"),
    (10349,"Conan","Willis");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10350,"Ross","O'donnell"),
    (10351,"Clinton","Hartman"),
    (10352,"Ivan","Wall"),
    (10353,"Slade","Hatfield"),
    (10354,"Lillith","Atkinson"),
    (10355,"Tatum","Hooper"),
    (10356,"Clementine","Schwartz"),
    (10357,"Barbara","Cole"),
    (10358,"Jonah","Foley"),
    (10359,"Dalton","Patterson");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10360,"Luke","Saunders"),
    (10361,"Georgia","Huber"),
    (10362,"Eleanor","Moreno"),
    (10363,"Vivian","Harding"),
    (10364,"Nicole","Brock"),
    (10365,"Leila","Reid"),
    (10366,"Juliet","Rich"),
    (10367,"Preston","May"),
    (10368,"Tobias","Murray"),
    (10369,"Grace","Ramos");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10370,"Amaya","Deleon"),
    (10371,"Emerald","Ortega"),
    (10372,"Xanthus","Avery"),
    (10373,"Stewart","Peterson"),
    (10374,"Jesse","Gilmore"),
    (10375,"Dora","Todd"),
    (10376,"Paula","Buck"),
    (10377,"Xenos","Foster"),
    (10378,"Wang","Wells"),
    (10379,"Carter","Vasquez");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10380,"Kelsey","Brown"),
    (10381,"Xanthus","Scott"),
    (10382,"Declan","Guerra"),
    (10383,"Rae","Velez"),
    (10384,"Ulric","Fox"),
    (10385,"Oliver","Campbell"),
    (10386,"Unity","Craig"),
    (10387,"Christopher","Gibson"),
    (10388,"Macon","George"),
    (10389,"Jorden","Bolton");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10390,"Diana","Knox"),
    (10391,"Gillian","Park"),
    (10392,"Freya","Francis"),
    (10393,"Avram","Strickland"),
    (10394,"Buckminster","Anderson"),
    (10395,"Natalie","Ayers"),
    (10396,"Kyra","Reese"),
    (10397,"Martha","Perkins"),
    (10398,"Colby","Conley"),
    (10399,"Hermione","Hyde");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10400,"Eugenia","Reese"),
    (10401,"Boris","Robbins"),
    (10402,"Otto","Leonard"),
    (10403,"Joseph","David"),
    (10404,"Brynn","Becker"),
    (10405,"Signe","Atkinson"),
    (10406,"Thane","Gould"),
    (10407,"Carson","Price"),
    (10408,"Lavinia","Hutchinson"),
    (10409,"Beau","Newton");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10410,"Madison","Cohen"),
    (10411,"Charde","Leach"),
    (10412,"Donovan","Coffey"),
    (10413,"Judah","Kelley"),
    (10414,"Gisela","Newman"),
    (10415,"Belle","Mcintosh"),
    (10416,"Demetrius","Terry"),
    (10417,"Ishmael","Lopez"),
    (10418,"Clementine","Odom"),
    (10419,"Keegan","Barrera");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10420,"Quon","House"),
    (10421,"Abra","Williams"),
    (10422,"Nathan","Mullen"),
    (10423,"Vivian","Livingston"),
    (10424,"Ina","Jacobson"),
    (10425,"Kyle","Cardenas"),
    (10426,"Madeline","Chapman"),
    (10427,"TaShya","Maynard"),
    (10428,"Portia","Juarez"),
    (10429,"Iola","Mccray");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10430,"Randall","Kelley"),
    (10431,"Vincent","Hebert"),
    (10432,"Andrew","Johnston"),
    (10433,"Aquila","Golden"),
    (10434,"Shelley","England"),
    (10435,"Yoshi","Parrish"),
    (10436,"Anastasia","Lowery"),
    (10437,"William","Valenzuela"),
    (10438,"Slade","Cobb"),
    (10439,"Jordan","Chan");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10440,"Jasmine","O'donnell"),
    (10441,"Laurel","Joyner"),
    (10442,"Yardley","Jackson"),
    (10443,"David","Woods"),
    (10444,"Xena","Dudley"),
    (10445,"Steven","Baxter"),
    (10446,"Brandon","Rodgers"),
    (10447,"Cally","Abbott"),
    (10448,"Beau","Wagner"),
    (10449,"Francis","Haney");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10450,"Alec","Petersen"),
    (10451,"Julie","Adkins"),
    (10452,"Tate","Crane"),
    (10453,"Avram","Waters"),
    (10454,"Delilah","Woodard"),
    (10455,"Zorita","Patrick"),
    (10456,"Madison","Kim"),
    (10457,"Colleen","Ferrell"),
    (10458,"Chelsea","Brady"),
    (10459,"Olga","Walter");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10460,"Yvette","Branch"),
    (10461,"Renee","Acosta"),
    (10462,"Vance","Simpson"),
    (10463,"Phelan","Washington"),
    (10464,"Bradley","Head"),
    (10465,"Joseph","Reese"),
    (10466,"Daniel","Ratliff"),
    (10467,"Philip","Copeland"),
    (10468,"Samson","Nunez"),
    (10469,"Lilah","Mathis");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10470,"Darryl","Doyle"),
    (10471,"Kato","Rush"),
    (10472,"Hollee","Sullivan"),
    (10473,"Gay","Hamilton"),
    (10474,"Christian","Clark"),
    (10475,"Hayley","Glenn"),
    (10476,"Stone","Bray"),
    (10477,"Ulric","Compton"),
    (10478,"Autumn","Bowman"),
    (10479,"Raja","Shaw");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10480,"Robert","Ball"),
    (10481,"Shea","Nunez"),
    (10482,"Blaze","Lowe"),
    (10483,"Marshall","Singleton"),
    (10484,"Yvonne","Key"),
    (10485,"Lewis","Boyer"),
    (10486,"Amos","Zimmerman"),
    (10487,"Adria","Walters"),
    (10488,"Jolie","Carey"),
    (10489,"Nadine","Emerson");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10490,"Daphne","Pate"),
    (10491,"Kasper","Mcgee"),
    (10492,"Kieran","Cabrera"),
    (10493,"Leigh","Fletcher"),
    (10494,"Craig","Melendez"),
    (10495,"Amena","Pierce"),
    (10496,"Buffy","Klein"),
    (10497,"Libby","Reynolds"),
    (10498,"Courtney","Gutierrez"),
    (10499,"Edan","Fleming");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10500,"Imelda","Rutledge"),
    (10501,"Dale","Hughes"),
    (10502,"Quentin","Benjamin"),
    (10503,"Vera","Evans"),
    (10504,"Cameran","Floyd"),
    (10505,"Aimee","Mckinney"),
    (10506,"Ivy","Harris"),
    (10507,"Graiden","Vargas"),
    (10508,"Jakeem","Key"),
    (10509,"Lars","Estrada");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10510,"Cassidy","Webster"),
    (10511,"Emmanuel","Ferrell"),
    (10512,"Ulysses","Head"),
    (10513,"Francis","Mcdonald"),
    (10514,"Lee","Finley"),
    (10515,"Ishmael","Garcia"),
    (10516,"Barclay","Beck"),
    (10517,"Xander","Rosales"),
    (10518,"Felix","Whitney"),
    (10519,"Zahir","Cotton");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10520,"Kerry","Dudley"),
    (10521,"Alexis","Miranda"),
    (10522,"Silas","Hopkins"),
    (10523,"Roary","Morrow"),
    (10524,"Kirsten","Franks"),
    (10525,"Teagan","Webster"),
    (10526,"Xenos","Berger"),
    (10527,"Nomlanga","Fisher"),
    (10528,"Dane","Olson"),
    (10529,"Jorden","Levy");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10530,"Maile","Hughes"),
    (10531,"Abdul","Pace"),
    (10532,"Tamekah","David"),
    (10533,"Yvonne","Giles"),
    (10534,"Gareth","Mcconnell"),
    (10535,"Sean","Delaney"),
    (10536,"Abraham","Contreras"),
    (10537,"Zephania","Medina"),
    (10538,"Kai","Marshall"),
    (10539,"Jillian","Castro");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10540,"Roary","Cunningham"),
    (10541,"Rigel","Buchanan"),
    (10542,"Yuri","Mack"),
    (10543,"Rajah","Massey"),
    (10544,"Yardley","Hunter"),
    (10545,"Adrian","Berry"),
    (10546,"Constance","Daniel"),
    (10547,"Moana","Benton"),
    (10548,"Lee","Watts"),
    (10549,"Burton","Whitney");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10550,"Sandra","Frazier"),
    (10551,"Ayanna","Hickman"),
    (10552,"Megan","Hanson"),
    (10553,"Brenden","Albert"),
    (10554,"Trevor","Brady"),
    (10555,"Colby","Wall"),
    (10556,"Brendan","Evans"),
    (10557,"Uriah","Barrett"),
    (10558,"Richard","Allen"),
    (10559,"Castor","Bush");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10560,"Zelda","House"),
    (10561,"Hedley","Vinson"),
    (10562,"Sonia","Wise"),
    (10563,"Josiah","Murray"),
    (10564,"Wayne","Fischer"),
    (10565,"Buckminster","Woodard"),
    (10566,"Arsenio","Padilla"),
    (10567,"Cade","Morrow"),
    (10568,"Harper","Shields"),
    (10569,"Mallory","Gould");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10570,"Constance","Moreno"),
    (10571,"Kuame","Merrill"),
    (10572,"Ronan","Sears"),
    (10573,"Nash","Bolton"),
    (10574,"Levi","Golden"),
    (10575,"Ila","Page"),
    (10576,"Rae","Bowman"),
    (10577,"Iola","Holmes"),
    (10578,"Nita","Hutchinson"),
    (10579,"Nathaniel","Mcintyre");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10580,"Alyssa","Medina"),
    (10581,"Justin","Sweeney"),
    (10582,"Scarlet","Schwartz"),
    (10583,"Hannah","Sparks"),
    (10584,"Jocelyn","Sheppard"),
    (10585,"Mannix","Reilly"),
    (10586,"Tanya","Doyle"),
    (10587,"Briar","Knowles"),
    (10588,"Martin","Kidd"),
    (10589,"Elaine","Wong");
INSERT INTO `ramasseurs` (`idRamasseur`,`nomRamasseur`,`prenomRamasseur`)
VALUES
    (10590,"Macey","Norman"),
    (10591,"Price","Dotson"),
    (10592,"Darryl","Horton"),
    (10593,"Tiger","O'Neill"),
    (10594,"Octavius","Mccullough"),
    (10595,"Maile","Love"),
    (10596,"Vincent","Dean"),
    (10597,"Natalie","Horne"),
    (10598,"Maggy","Bender"),
    (10599,"Leonard","Allen");



/*licencie*/

INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Burke",10000,6,"Patience"),
  ("Gentry",10001,14,"Quintessa"),
  ("Chan",10002,13,"Evan"),
  ("Sherman",10003,12,"Dorothy"),
  ("Lloyd",10004,3,"Emi"),
  ("Ratliff",10005,15,"Harding"),
  ("Pearson",10006,7,"Malachi"),
  ("Beach",10007,15,"Denton"),
  ("Payne",10008,12,"Wyoming"),
  ("Walls",10009,5,"Maxwell");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Jacobson",10010,12,"Naomi"),
  ("Estes",10011,3,"Joy"),
  ("Finch",10012,5,"Donna"),
  ("Carter",10013,9,"Jameson"),
  ("Rosales",10014,10,"Brody"),
  ("Kerr",10015,15,"Haviva"),
  ("Good",10016,11,"Hannah"),
  ("Mcmillan",10017,4,"Kellie"),
  ("Ford",10018,12,"Yen"),
  ("Fernandez",10019,4,"Dominic");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Leach",10020,14,"Nola"),
  ("Goff",10021,5,"Hall"),
  ("Snow",10022,6,"Britanni"),
  ("Lester",10023,13,"Olivia"),
  ("Hartman",10024,11,"Moana"),
  ("Ashley",10025,16,"Stuart"),
  ("Rivers",10026,7,"Olga"),
  ("Barton",10027,5,"Gillian"),
  ("Velazquez",10028,4,"Raya"),
  ("Woods",10029,1,"Brynn");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Cannon",10030,16,"Noble"),
  ("Zimmerman",10031,13,"Maile"),
  ("Silva",10032,11,"Amanda"),
  ("Shelton",10033,2,"Nasim"),
  ("James",10034,14,"Indigo"),
  ("Warren",10035,4,"Faith"),
  ("Mcdaniel",10036,6,"Aaron"),
  ("Dudley",10037,10,"Uma"),
  ("Hunt",10038,12,"Aristotle"),
  ("Floyd",10039,13,"Allegra");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Bender",10040,5,"Nathan"),
  ("Frederick",10041,13,"Ila"),
  ("Powell",10042,5,"Dexter"),
  ("Collins",10043,1,"Yoshio"),
  ("Hays",10044,3,"Graiden"),
  ("Galloway",10045,6,"Mufutau"),
  ("Vang",10046,14,"Arsenio"),
  ("Carson",10047,13,"Nero"),
  ("Dunlap",10048,13,"Maxwell"),
  ("Cherry",10049,14,"McKenzie");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Gill",10050,9,"Zenaida"),
  ("Kramer",10051,15,"Maya"),
  ("Meyer",10052,8,"Althea"),
  ("Cobb",10053,4,"Sarah"),
  ("Sexton",10054,5,"Richard"),
  ("Martin",10055,11,"Calvin"),
  ("Lott",10056,4,"Hedy"),
  ("Sutton",10057,15,"Iliana"),
  ("Orr",10058,13,"Reese"),
  ("Rollins",10059,14,"Lucius");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Robbins",10060,11,"Venus"),
  ("Marshall",10061,3,"Amelia"),
  ("Buckley",10062,4,"Vivian"),
  ("Terrell",10063,12,"Raphael"),
  ("Kemp",10064,15,"Malachi"),
  ("Summers",10065,2,"Ruth"),
  ("Lowery",10066,3,"Jakeem"),
  ("Hickman",10067,14,"Zephania"),
  ("Lewis",10068,6,"Hoyt"),
  ("Best",10069,10,"Hedwig");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Fields",10070,4,"Eric"),
  ("Graves",10071,5,"Connor"),
  ("Rose",10072,1,"Lani"),
  ("Guerrero",10073,13,"Knox"),
  ("Dunlap",10074,6,"Warren"),
  ("Martinez",10075,13,"Jada"),
  ("Stark",10076,14,"Amelia"),
  ("Austin",10077,5,"Sybill"),
  ("Vang",10078,15,"Raya"),
  ("Collier",10079,13,"Mohammad");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Fitzgerald",10080,2,"Leroy"),
  ("Richards",10081,13,"Martha"),
  ("Hopper",10082,12,"Liberty"),
  ("Sampson",10083,1,"Quinn"),
  ("Sharp",10084,16,"Armando"),
  ("Shaw",10085,14,"Lionel"),
  ("Benton",10086,11,"Caldwell"),
  ("Velez",10087,2,"Britanney"),
  ("Evans",10088,3,"Rebecca"),
  ("Lynch",10089,13,"Vaughan");
INSERT INTO `licencie` (`nomlicencie`,`idLicencie`,`nationalitelicencie`,`prenomlicencie`)
VALUES
  ("Atkinson",10090,7,"Anne"),
  ("Bray",10091,9,"Mara"),
  ("Campos",10092,3,"Hamish"),
  ("Castillo",10093,7,"Macon"),
  ("Trevino",10094,15,"Vladimir"),
  ("Moran",10095,11,"Ruby"),
  ("Key",10096,3,"Lacy"),
  ("Dalton",10097,6,"Wylie"),
  ("Petersen",10098,14,"Fatima"),
  ("Barlow",10099,9,"Jordan");


/*arbitres*/

INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10000,"Wilson","Gretchen",1),
  (10001,"Perry","Brian",3),
  (10002,"Dejesus","Jessica",1),
  (10003,"Lindsay","Jeanette",15),
  (10004,"Douglas","Yetta",10),
  (10005,"Hooper","Charde",9),
  (10006,"Martinez","Chandler",2),
  (10007,"Prince","Connor",4),
  (10008,"Yang","Zephania",13),
  (10009,"Donovan","Odysseus",3);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10010,"Caldwell","Tanisha",12),
  (10011,"Spencer","Hammett",6),
  (10012,"Cabrera","Jacob",12),
  (10013,"Webster","Miranda",3),
  (10014,"Reese","Nasim",6),
  (10015,"Albert","Lacey",14),
  (10016,"Huffman","Lester",10),
  (10017,"Watkins","Justine",3),
  (10018,"Williams","Tasha",10),
  (10019,"Wheeler","Dahlia",10);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10020,"Tate","Ariana",16),
  (10021,"Dennis","Abdul",11),
  (10022,"Peterson","Ferdinand",7),
  (10023,"Weiss","Moana",3),
  (10024,"Leon","Mollie",10),
  (10025,"Durham","Nigel",12),
  (10026,"Yang","Jennifer",8),
  (10027,"Cleveland","Tanya",14),
  (10028,"Crane","Galena",14),
  (10029,"Moore","Amela",3);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10030,"Rivas","Alan",16),
  (10031,"Chaney","Emerson",4),
  (10032,"Wiley","Wynne",15),
  (10033,"Clemons","Anastasia",12),
  (10034,"Conley","Myra",15),
  (10035,"Decker","Clarke",5),
  (10036,"Richmond","Neville",3),
  (10037,"Brock","Brynn",5),
  (10038,"Whitehead","Sawyer",10),
  (10039,"Randall","Melanie",13);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10040,"Cash","Chava",9),
  (10041,"Ford","Shaine",15),
  (10042,"Beard","Isadora",1),
  (10043,"Stevenson","Zorita",11),
  (10044,"Downs","Nina",13),
  (10045,"Bass","Chaney",8),
  (10046,"Ball","Olympia",5),
  (10047,"Drake","Ivory",10),
  (10048,"Craft","Keane",3),
  (10049,"Steele","Dolan",14);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10050,"Hale","Jerome",15),
  (10051,"Wall","Tyler",14),
  (10052,"Baird","Perry",6),
  (10053,"Mckinney","Ali",9),
  (10054,"Kelly","Margaret",7),
  (10055,"Browning","Jonas",6),
  (10056,"Simpson","Raymond",13),
  (10057,"Armstrong","Colleen",6),
  (10058,"Edwards","Jaime",4),
  (10059,"Clayton","Ian",13);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10060,"Johnson","Veronica",15),
  (10061,"Cooke","Olga",6),
  (10062,"Harrison","Maggy",14),
  (10063,"Hicks","Hall",10),
  (10064,"Glenn","Dale",15),
  (10065,"Bishop","Graiden",12),
  (10066,"Knox","Dane",15),
  (10067,"Dunlap","Owen",12),
  (10068,"Mendez","Ian",9),
  (10069,"Salazar","Noble",10);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10070,"Petersen","Sage",7),
  (10071,"Britt","Holly",16),
  (10072,"Gibson","Yasir",12),
  (10073,"Fulton","Elvis",14),
  (10074,"Potter","Brooke",3),
  (10075,"Mccarty","Beck",11),
  (10076,"Tucker","Melinda",2),
  (10077,"Hodges","Harlan",11),
  (10078,"Ward","Quentin",15),
  (10079,"Bradshaw","Cruz",10);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10080,"Sparks","Honorato",2),
  (10081,"Hahn","Alfonso",14),
  (10082,"Malone","Tatiana",12),
  (10083,"Baldwin","Josephine",4),
  (10084,"Walls","Jade",4),
  (10085,"Flowers","Hop",15),
  (10086,"Farmer","Indira",1),
  (10087,"Doyle","Aline",10),
  (10088,"Fleming","Oscar",2),
  (10089,"Robles","Hadassah",3);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10090,"Key","Rana",10),
  (10091,"Fuller","Grady",9),
  (10092,"Anderson","Paul",11),
  (10093,"Chan","Lavinia",7),
  (10094,"Pollard","Cole",10),
  (10095,"Grant","Jena",14),
  (10096,"Dillard","Clio",2),
  (10097,"Kirkland","Irene",10),
  (10098,"Mann","Mason",7),
  (10099,"Sloan","Ira",6);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10100,"Tucker","Irma",12),
  (10101,"Rivera","Craig",1),
  (10102,"Gilliam","Mari",15),
  (10103,"Marshall","Christian",2),
  (10104,"Trujillo","Cain",7),
  (10105,"Thomas","Genevieve",3),
  (10106,"Mcmillan","Uriel",12),
  (10107,"Terry","Nerea",6),
  (10108,"Gibson","Sacha",2),
  (10109,"Martinez","Nyssa",14);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10110,"Benjamin","Micah",3),
  (10111,"Sampson","Grace",5),
  (10112,"Roberson","Brennan",2),
  (10113,"Keller","Madeson",2),
  (10114,"Crawford","Ila",11),
  (10115,"Brooks","Richard",5),
  (10116,"Mueller","Kiara",7),
  (10117,"Fields","Andrew",7),
  (10118,"Cash","Cain",4),
  (10119,"Arnold","Berk",5);
INSERT INTO `arbitres` (`arbitreid`,`nomarbitre`,`prenomarbitre`,`nationalitearbitre`)
VALUES
  (10120,"Cox","Holly",9),
  (10121,"Norton","Ariana",9),
  (10122,"Stevenson","Wade",7),
  (10123,"Salas","Xanthus",9),
  (10124,"Cherry","Oren",8);

/*Joueurs*/

INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Mack","Acton",5,10000,267),
  ("Higgins","Gemma",11,10001,326),
  ("Talley","Hasad",1,10002,349),
  ("Irwin","Stewart",14,10003,318),
  ("Rodriguez","Mikayla",13,10004,346),
  ("Ware","MacKenzie",10,10005,286),
  ("Hoffman","Medge",9,10006,370),
  ("Garcia","Murphy",13,10007,385),
  ("Gregory","Herman",2,10008,366),
  ("Wilkerson","Chava",7,10009,375);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Lamb","Zoe",9,10010,390),
  ("Bird","Leroy",3,10011,339),
  ("Rios","Neville",12,10012,377),
  ("Franco","Guinevere",8,10013,317),
  ("Ferguson","Lesley",9,10014,304),
  ("Cervantes","Chaney",6,10015,337),
  ("Foley","Rosalyn",5,10016,282),
  ("Ingram","Nero",11,10017,368),
  ("Moss","Dalton",2,10018,363),
  ("Hendricks","Clark",3,10019,303);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Kerr","Joelle",13,10020,386),
  ("Barnett","Gillian",14,10021,370),
  ("Rasmussen","Libby",3,10022,318),
  ("Oneil","Jamal",12,10023,293),
  ("Doyle","Lucian",7,10024,322),
  ("Beck","Eliana",6,10025,284),
  ("Combs","Nevada",1,10026,288),
  ("Burton","Justin",11,10027,377),
  ("O'donnell","Mallory",13,10028,278),
  ("Barr","Maxine",11,10029,364);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Pearson","Prescott",2,10030,255),
  ("Griffin","Zephania",6,10031,264),
  ("Mcintosh","Gannon",12,10032,309),
  ("Hardy","Cooper",12,10033,263),
  ("Chapman","Bert",13,10034,346),
  ("Mcfadden","Galvin",6,10035,337),
  ("Ewing","Jena",16,10036,385),
  ("Blankenship","Silas",14,10037,355),
  ("Conley","Hashim",13,10038,315),
  ("Macdonald","Beau",10,10039,385);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Bates","Mira",12,10040,314),
  ("Huber","Nina",8,10041,393),
  ("Huff","Preston",9,10042,368),
  ("Lancaster","Winifred",11,10043,297),
  ("Mays","Rigel",9,10044,370),
  ("Klein","Tobias",1,10045,308),
  ("Cabrera","Ebony",9,10046,265),
  ("Griffith","Iola",10,10047,363),
  ("Scott","Margaret",14,10048,325),
  ("Salinas","Ali",12,10049,277);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Wall","Bo",13,10050,265),
  ("Fleming","Felix",14,10051,287),
  ("Dickson","Illiana",15,10052,350),
  ("Armstrong","Jason",3,10053,273),
  ("Mccormick","Evan",2,10054,359),
  ("Salinas","Brynn",5,10055,285),
  ("Harris","Molly",9,10056,273),
  ("Hicks","Geoffrey",5,10057,370),
  ("Golden","Dahlia",10,10058,319),
  ("Robbins","Kay",14,10059,292);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Ward","Patience",13,10060,265),
  ("Mccormick","Herrod",11,10061,300),
  ("Wells","Illiana",8,10062,265),
  ("Rowe","Hop",10,10063,361),
  ("Guerra","Baker",8,10064,385),
  ("Norman","Tarik",13,10065,342),
  ("Moses","Adria",15,10066,253),
  ("Harrell","Deacon",11,10067,259),
  ("Wilder","Thane",13,10068,255),
  ("Hutchinson","Hunter",7,10069,274);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Garcia","Raya",9,10070,252),
  ("Olson","India",5,10071,294),
  ("Acevedo","Otto",5,10072,313),
  ("Good","Garrett",11,10073,343),
  ("Diaz","May",11,10074,323),
  ("Thomas","Lysandra",10,10075,280),
  ("Morse","Linus",6,10076,265),
  ("Good","Chloe",6,10077,348),
  ("Osborn","Maxwell",16,10078,288),
  ("Doyle","Gavin",9,10079,320);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Moody","Quinn",13,10080,341),
  ("Barrett","Vance",4,10081,278),
  ("Tanner","Omar",12,10082,336),
  ("Romero","Carlos",10,10083,282),
  ("Quinn","Xanthus",5,10084,396),
  ("Hewitt","Regan",4,10085,290),
  ("Ramirez","Cole",15,10086,308),
  ("Blair","Claire",8,10087,389),
  ("Weeks","Kaseem",13,10088,334),
  ("Conley","Madison",12,10089,311);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Kirk","Zena",2,10090,366),
  ("Pearson","Graham",7,10091,321),
  ("Vega","Keiko",4,10092,294),
  ("Robbins","Laura",9,10093,319),
  ("Kaufman","Jeanette",2,10094,283),
  ("May","Cole",3,10095,392),
  ("Jennings","Tatyana",11,10096,287),
  ("Lawrence","Evan",1,10097,280),
  ("Flores","Imani",9,10098,300),
  ("Moody","Robert",2,10099,372);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Bridges","Liberty",3,10100,338),
  ("Bradford","Ferdinand",10,10101,285),
  ("Padilla","Karleigh",6,10102,282),
  ("Acevedo","Heather",4,10103,329),
  ("Lara","Amanda",11,10104,283),
  ("Ochoa","Darryl",4,10105,329),
  ("Hale","Chloe",13,10106,282),
  ("Pugh","Catherine",2,10107,350),
  ("Gonzalez","Tanner",3,10108,276),
  ("Dale","Willow",10,10109,388);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Leblanc","Silas",7,10110,300),
  ("Cobb","Carson",6,10111,397),
  ("Avila","Daquan",10,10112,352),
  ("Weber","Allistair",4,10113,398),
  ("Klein","Nissim",11,10114,355),
  ("Rose","Kylan",4,10115,363),
  ("Barnett","Boris",11,10116,250),
  ("Hardy","Armand",13,10117,310),
  ("Gentry","Holmes",8,10118,252),
  ("Benson","Mason",14,10119,275);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Saunders","Sophia",4,10120,355),
  ("Santos","Warren",4,10121,380),
  ("Atkinson","Elmo",13,10122,277),
  ("Holloway","Sasha",4,10123,311),
  ("Vargas","Brady",4,10124,368),
  ("Porter","Nita",8,10125,379),
  ("Butler","Dean",14,10126,257),
  ("Hopkins","Tanner",9,10127,356),
  ("Clark","Alma",6,10128,400),
  ("Kennedy","Bert",12,10129,390);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Cannon","Brittany",11,10130,353),
  ("Rhodes","Virginia",8,10131,350),
  ("Wolfe","Ivy",3,10132,330),
  ("Jordan","Roth",4,10133,263),
  ("Grimes","Rhea",5,10134,344),
  ("Sheppard","Kelly",10,10135,292),
  ("Berg","Lawrence",14,10136,384),
  ("Dunn","Jeremy",4,10137,368),
  ("Lucas","Cullen",3,10138,400),
  ("Crosby","Whitney",7,10139,374);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Nelson","Brenda",8,10140,375),
  ("Cooper","Gretchen",15,10141,328),
  ("Clayton","Wyatt",15,10142,367),
  ("Carver","Baker",16,10143,293),
  ("Gentry","Raymond",3,10144,284),
  ("Calderon","Orla",1,10145,266),
  ("Jefferson","Jayme",13,10146,261),
  ("Monroe","Laith",8,10147,377),
  ("Velasquez","Stewart",6,10148,383),
  ("Richards","Harper",6,10149,304);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Weber","Katelyn",7,10150,324),
  ("Case","Tanek",13,10151,378),
  ("Walter","Seth",10,10152,310),
  ("Lott","Stephen",10,10153,361),
  ("Rice","Salvador",13,10154,351),
  ("Kline","Yeo",12,10155,271),
  ("Stafford","Maxine",6,10156,322),
  ("Bond","Hadassah",7,10157,398),
  ("Ingram","Lawrence",5,10158,320),
  ("Adkins","Drew",11,10159,296);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("French","Alfreda",2,10160,394),
  ("Pollard","Aaron",10,10161,283),
  ("Perez","Ursa",4,10162,316),
  ("Mullen","May",5,10163,284),
  ("Soto","Vielka",3,10164,338),
  ("Whitehead","Alea",1,10165,360),
  ("Velasquez","Brenda",4,10166,395),
  ("Lane","Chiquita",8,10167,381),
  ("Rogers","Giselle",2,10168,330),
  ("Moore","Octavius",4,10169,282);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Welch","Kylie",10,10170,270),
  ("Rivas","Nadine",7,10171,379),
  ("Butler","Dana",7,10172,399),
  ("Quinn","Stephen",7,10173,383),
  ("Hartman","Emi",12,10174,313),
  ("Trujillo","Hedda",2,10175,316),
  ("Wynn","Tanya",8,10176,284),
  ("Bentley","Ciaran",11,10177,393),
  ("Roberson","Ralph",14,10178,387),
  ("O'donnell","Calista",13,10179,369);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Hutchinson","Castor",15,10180,353),
  ("Donovan","Chester",3,10181,335),
  ("Humphrey","Hoyt",7,10182,324),
  ("Goodwin","Maggie",3,10183,295),
  ("Duke","Evan",4,10184,360),
  ("Walker","Beau",5,10185,388),
  ("Cardenas","Harper",10,10186,351),
  ("Christian","Martena",12,10187,395),
  ("Montoya","Christopher",6,10188,287),
  ("Nguyen","Whoopi",11,10189,336);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Burch","Hiroko",14,10190,267),
  ("Cole","Avye",7,10191,265),
  ("Nelson","Montana",5,10192,380),
  ("Boyer","Martena",9,10193,331),
  ("Juarez","Zenia",9,10194,387),
  ("Calhoun","Sacha",5,10195,342),
  ("Gaines","Nicholas",12,10196,306),
  ("Warren","Christian",3,10197,365),
  ("Rhodes","Noel",12,10198,254),
  ("Armstrong","Calvin",12,10199,397);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Sullivan","Emmanuel",12,10200,385),
  ("Cote","Thomas",13,10201,270),
  ("Noble","Neil",11,10202,392),
  ("Michael","Sebastian",16,10203,265),
  ("May","Charles",5,10204,356),
  ("Patterson","Dawn",3,10205,391),
  ("Maldonado","Halee",1,10206,304),
  ("Combs","Zenaida",6,10207,263),
  ("Espinoza","Rafael",15,10208,345),
  ("Hull","Bryar",14,10209,323);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Hester","Jamal",1,10210,346),
  ("Webb","Lacota",11,10211,251),
  ("Sharp","Paki",4,10212,351),
  ("Sellers","Pearl",5,10213,390),
  ("Tucker","Alvin",4,10214,376),
  ("Curtis","Phillip",1,10215,390),
  ("Meyer","Clare",8,10216,297),
  ("Aguirre","Jordan",14,10217,327),
  ("Montoya","Mason",11,10218,393),
  ("Tyler","Dahlia",13,10219,356);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Lyons","Felix",6,10220,277),
  ("Callahan","Thomas",4,10221,275),
  ("Talley","Amethyst",15,10222,373),
  ("White","Amir",1,10223,344),
  ("Powell","Yvonne",7,10224,378),
  ("Calhoun","Raven",2,10225,265),
  ("Pope","Rahim",11,10226,311),
  ("Santiago","Sydney",10,10227,360),
  ("Gray","Eric",6,10228,388),
  ("Dunlap","Odessa",7,10229,291);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Washington","Caldwell",13,10230,363),
  ("Garcia","Jackson",2,10231,398),
  ("Buck","Leilani",10,10232,392),
  ("Walters","Sharon",1,10233,252),
  ("Wallace","Damon",9,10234,398),
  ("Sosa","August",5,10235,389),
  ("Wolf","Colt",7,10236,388),
  ("Mcmillan","Lucas",16,10237,315),
  ("Chandler","Ivor",11,10238,352),
  ("Mcgee","Cade",2,10239,262);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Barton","Allegra",6,10240,386),
  ("Fox","Barry",16,10241,367),
  ("Anderson","Elmo",8,10242,272),
  ("Beasley","Irene",13,10243,340),
  ("Cox","Neil",2,10244,378),
  ("Aguirre","Ayanna",9,10245,264),
  ("Banks","Katelyn",1,10246,358),
  ("Gonzalez","Luke",15,10247,357),
  ("Norris","Nero",15,10248,348),
  ("Macias","Alexander",7,10249,311);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Oneal","Sigourney",2,10250,333),
  ("Scott","Sonia",12,10251,332),
  ("Barnett","Kathleen",3,10252,312),
  ("Yang","Althea",2,10253,271),
  ("Dodson","Lenore",1,10254,253),
  ("Mcdaniel","Sawyer",6,10255,308),
  ("Carlson","Azalia",5,10256,382),
  ("Ingram","Price",14,10257,287),
  ("Wilkerson","Isadora",10,10258,332),
  ("Bowers","Denise",1,10259,254);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Garner","Darius",10,10260,289),
  ("Mejia","Emerson",7,10261,251),
  ("Vincent","Garrett",14,10262,388),
  ("Heath","Stephanie",14,10263,334),
  ("Walter","Brandon",2,10264,384),
  ("Jones","Dawn",3,10265,336),
  ("Morse","Andrew",5,10266,386),
  ("Mccormick","Otto",6,10267,305),
  ("Santana","Eaton",3,10268,285),
  ("Roberson","Mercedes",14,10269,349);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Valdez","Yetta",6,10270,281),
  ("Mcleod","Leilani",10,10271,368),
  ("Barrett","Stephen",5,10272,324),
  ("George","Melvin",15,10273,371),
  ("Kane","Harper",9,10274,318),
  ("Battle","Nathan",6,10275,302),
  ("Galloway","Daquan",11,10276,320),
  ("Britt","Donovan",3,10277,332),
  ("Mason","Armand",7,10278,349),
  ("Merrill","Garrison",12,10279,256);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Manning","Shad",9,10280,307),
  ("Sweeney","Savannah",15,10281,254),
  ("Brady","Ivory",8,10282,314),
  ("Welch","Robert",12,10283,317),
  ("Chang","Jordan",7,10284,318),
  ("Trujillo","Miriam",11,10285,336),
  ("Bird","Katell",14,10286,299),
  ("Johnston","Stone",14,10287,319),
  ("Wilkerson","Upton",3,10288,267),
  ("Kelley","Grant",13,10289,253);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Floyd","Gary",10,10290,354),
  ("Melton","Harper",14,10291,354),
  ("Moore","Xanthus",2,10292,316),
  ("Guy","Francis",10,10293,281),
  ("Frank","Cyrus",6,10294,375),
  ("Moon","Amethyst",14,10295,267),
  ("Arnold","Shelley",5,10296,287),
  ("Maldonado","Stewart",7,10297,301),
  ("Cohen","Walker",9,10298,325),
  ("English","Courtney",3,10299,362);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Ford","Odysseus",13,10300,301),
  ("Baird","Kane",15,10301,349),
  ("Riddle","Jonah",4,10302,263),
  ("Mckay","Theodore",13,10303,381),
  ("Donaldson","Briar",13,10304,338),
  ("Ortiz","Cheryl",4,10305,331),
  ("Osborne","Dominic",9,10306,338),
  ("Pearson","Gwendolyn",15,10307,328),
  ("Aguilar","Yoshio",8,10308,369),
  ("Todd","Rahim",12,10309,287);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Glenn","Elmo",7,10310,278),
  ("Le","Gannon",10,10311,297),
  ("Parsons","Sage",9,10312,300),
  ("Rhodes","Robert",2,10313,282),
  ("Riddle","Autumn",8,10314,266),
  ("Benjamin","Chadwick",8,10315,292),
  ("West","Diana",15,10316,336),
  ("Owen","Axel",2,10317,274),
  ("Parks","Lavinia",6,10318,259),
  ("Pitts","Ariel",2,10319,377);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Horn","Castor",1,10320,273),
  ("Benjamin","Kerry",4,10321,264),
  ("Mendez","Zenaida",15,10322,296),
  ("Newton","Adrian",2,10323,370),
  ("Mcknight","Anthony",10,10324,377),
  ("Callahan","Rachel",11,10325,363),
  ("Riley","Chadwick",7,10326,348),
  ("Morse","Ignacia",12,10327,290),
  ("Swanson","Willow",10,10328,304),
  ("Murray","Megan",8,10329,351);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Grimes","Micah",8,10330,384),
  ("Harvey","Callum",3,10331,252),
  ("French","Emi",10,10332,275),
  ("Pennington","Elaine",4,10333,348),
  ("Head","John",2,10334,392),
  ("Elliott","Berk",15,10335,346),
  ("Nielsen","Leslie",15,10336,279),
  ("Frank","Silas",12,10337,331),
  ("Barker","Peter",9,10338,339),
  ("Vincent","Winifred",12,10339,364);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Terrell","Phillip",5,10340,351),
  ("Butler","Anne",9,10341,308),
  ("Hicks","Melvin",12,10342,372),
  ("Pennington","Dahlia",9,10343,310),
  ("Norton","Audrey",14,10344,294),
  ("Wooten","Ivor",7,10345,351),
  ("Powers","Eagan",3,10346,291),
  ("Ward","Shannon",7,10347,314),
  ("Barron","Upton",6,10348,254),
  ("Patton","Harriet",15,10349,311);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Contreras","Bert",3,10350,373),
  ("Rojas","Giacomo",3,10351,287),
  ("Paul","Ila",13,10352,314),
  ("Hayes","Ezra",9,10353,376),
  ("Curry","Tucker",16,10354,380),
  ("Talley","Tanya",13,10355,374),
  ("Roach","Macy",3,10356,274),
  ("Best","Kieran",9,10357,362),
  ("Buckner","Marah",4,10358,342),
  ("Soto","Tallulah",1,10359,348);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Mullins","Rashad",8,10360,397),
  ("Jordan","Burton",7,10361,368),
  ("Chavez","Slade",2,10362,339),
  ("Jacobs","Judah",12,10363,277),
  ("Scott","Kiara",13,10364,306),
  ("Rice","Maite",2,10365,320),
  ("Dickerson","Jeanette",15,10366,261),
  ("Jackson","Emily",3,10367,371),
  ("Knight","Oleg",4,10368,259),
  ("Ball","Kevyn",9,10369,371);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Ball","Justina",11,10370,290),
  ("Hill","Nash",11,10371,328),
  ("Fowler","Roary",5,10372,357),
  ("Mcknight","Ethan",2,10373,369),
  ("Delacruz","Wayne",13,10374,288),
  ("Harris","Fuller",5,10375,283),
  ("Ochoa","Ferris",6,10376,327),
  ("Adams","Fulton",3,10377,326),
  ("Olson","Cherokee",3,10378,382),
  ("Neal","Honorato",1,10379,324);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Parsons","Summer",12,10380,333),
  ("Allen","Patience",15,10381,342),
  ("Parsons","Zorita",6,10382,382),
  ("Battle","Faith",4,10383,273),
  ("Weeks","Rogan",1,10384,259),
  ("Sharpe","Raymond",5,10385,371),
  ("Fleming","Meghan",5,10386,252),
  ("Christian","Dean",8,10387,255),
  ("Fisher","Pearl",12,10388,331),
  ("Dominguez","Joy",4,10389,314);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Morse","Hakeem",5,10390,398),
  ("Meyers","Macaulay",8,10391,399),
  ("Bernard","Cleo",10,10392,291),
  ("England","Raya",9,10393,288),
  ("Taylor","Joy",7,10394,381),
  ("Hansen","Ishmael",7,10395,266),
  ("Fuentes","Sawyer",13,10396,279),
  ("Peterson","Kathleen",10,10397,349),
  ("Melendez","Channing",11,10398,381),
  ("Thomas","Pandora",3,10399,282);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Curtis","Herman",8,10400,345),
  ("Ortiz","Demetria",11,10401,263),
  ("Trevino","Blossom",16,10402,331),
  ("Caldwell","Lance",10,10403,334),
  ("Vazquez","Phelan",9,10404,356),
  ("Shepard","Fatima",2,10405,363),
  ("Cochran","Tiger",1,10406,348),
  ("Barnett","John",9,10407,325),
  ("Allen","Nevada",5,10408,265),
  ("Maynard","Theodore",10,10409,361);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Galloway","Rahim",11,10410,258),
  ("Sargent","Alisa",16,10411,355),
  ("Hicks","Garrison",9,10412,303),
  ("Lynch","Montana",16,10413,311),
  ("Haney","Sebastian",9,10414,298),
  ("Baxter","Geoffrey",4,10415,335),
  ("Morton","Yetta",8,10416,312),
  ("Ford","Lillian",9,10417,269),
  ("Miller","Veda",3,10418,377),
  ("Parrish","Preston",2,10419,385);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Mcintosh","Teegan",10,10420,325),
  ("Herrera","Xander",2,10421,269),
  ("Graves","Lyle",14,10422,327),
  ("Blevins","Ivy",10,10423,343),
  ("Gregory","Zephania",1,10424,276),
  ("Matthews","Odette",5,10425,333),
  ("Horn","Jacob",12,10426,255),
  ("Long","Leilani",2,10427,355),
  ("Molina","Maxwell",15,10428,371),
  ("Wagner","Amir",5,10429,292);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Martin","Riley",11,10430,389),
  ("Kim","Leo",10,10431,285),
  ("Finley","Kimberley",11,10432,399),
  ("Travis","Zoe",6,10433,349),
  ("Dudley","Kathleen",4,10434,255),
  ("Fox","Declan",5,10435,378),
  ("Holland","Macy",13,10436,284),
  ("Meyers","Libby",3,10437,310),
  ("Wood","Deanna",6,10438,293),
  ("Neal","Heather",2,10439,300);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Hogan","Keaton",1,10440,362),
  ("Terrell","Sydney",13,10441,329),
  ("Durham","Kyla",1,10442,314),
  ("Knox","Justine",14,10443,295),
  ("Kinney","Oscar",7,10444,280),
  ("Guthrie","Talon",4,10445,388),
  ("Horn","Serena",7,10446,395),
  ("Nash","Julian",1,10447,284),
  ("Banks","Fletcher",4,10448,360),
  ("Cox","Mikayla",6,10449,278);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Dunn","Ebony",13,10450,275),
  ("Barker","Wade",2,10451,358),
  ("Gillespie","Hadassah",3,10452,252),
  ("Knox","Autumn",15,10453,255),
  ("Burns","Theodore",8,10454,394),
  ("Graves","Branden",5,10455,316),
  ("Russell","Clarke",9,10456,341),
  ("Reid","Malachi",15,10457,363),
  ("Sampson","Imogene",4,10458,283),
  ("Huff","Alyssa",15,10459,252);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Juarez","Adria",15,10460,324),
  ("Booth","Penelope",12,10461,254),
  ("Clay","Aidan",7,10462,310),
  ("Adams","Kasper",13,10463,276),
  ("Sharp","Margaret",6,10464,259),
  ("Middleton","Abra",16,10465,268),
  ("Tate","Sage",10,10466,275),
  ("Wilkerson","Joel",15,10467,284),
  ("Ratliff","Harrison",3,10468,355),
  ("Tyler","Stewart",14,10469,318);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Curtis","Jonas",9,10470,291),
  ("Conley","Vivien",12,10471,262),
  ("Boyer","Harrison",15,10472,287),
  ("Burns","Dillon",7,10473,256),
  ("Owen","Dale",15,10474,297),
  ("Vega","Imelda",9,10475,321),
  ("Diaz","Mason",4,10476,326),
  ("Hernandez","Raven",14,10477,252),
  ("Levine","Xenos",7,10478,394),
  ("Allen","Lunea",11,10479,283);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Goff","Clementine",1,10480,258),
  ("Lynn","Farrah",10,10481,399),
  ("William","Dorian",10,10482,283),
  ("Vaughan","Ivan",3,10483,354),
  ("Little","Keane",15,10484,374),
  ("Little","Megan",10,10485,257),
  ("Macias","Rogan",3,10486,344),
  ("Mcdaniel","Aurelia",3,10487,392),
  ("Owen","Jane",3,10488,281),
  ("Cameron","Demetrius",10,10489,341);
INSERT INTO `joueurs` (`nomjoueur`,`prenomjoueur`,`nationalitejoueur`,`idjoueur`,`atp`)
VALUES
  ("Hooper","Nathan",4,10490,334),
  ("Fox","Indigo",7,10491,349),
  ("Weaver","Melvin",13,10492,324),
  ("Hebert","Keaton",13,10493,399),
  ("Donovan","Robin",6,10494,339),
  ("Beck","Kato",1,10495,340),
  ("Collins","Kirsten",10,10496,371),
  ("Blevins","Ainsley",9,10497,272),
  ("Rollins","Reagan",14,10498,369),
  ("Ford","Arthur",14,10499,317);

/*emplacement*/

INSERT INTO `emplacement` (`idemplacement`,`nomemplacement`,`classementimportance`)
VALUES
  (1,"Loge",1),
  (2,"cat1",2),
  (3,"cat2",3);

/**/