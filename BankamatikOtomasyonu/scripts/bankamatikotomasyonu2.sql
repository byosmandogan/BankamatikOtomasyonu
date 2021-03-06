PGDMP     7                    z            BankamatikOtomasyonu    14.2    14.2 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24576    BankamatikOtomasyonu    DATABASE     s   CREATE DATABASE "BankamatikOtomasyonu" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
 &   DROP DATABASE "BankamatikOtomasyonu";
                postgres    false            ?            1259    24640    guncelle    TABLE     Q  CREATE TABLE public.guncelle (
    id integer NOT NULL,
    p_hesapno character varying NOT NULL,
    m_ad character varying NOT NULL,
    m_soyad character varying NOT NULL,
    m_sifre character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.guncelle;
       public         heap    postgres    false            ?            1259    24639    guncelle_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.guncelle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.guncelle_id_seq;
       public          postgres    false    224            ?           0    0    guncelle_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.guncelle_id_seq OWNED BY public.guncelle.id;
          public          postgres    false    223            ?            1259    24598    hesap    TABLE     ?   CREATE TABLE public.hesap (
    h_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    hesapno character varying NOT NULL,
    bakiye double precision
);
    DROP TABLE public.hesap;
       public         heap    postgres    false            ?            1259    24597    hesap_h.id_seq    SEQUENCE     ?   CREATE SEQUENCE public."hesap_h.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."hesap_h.id_seq";
       public          postgres    false    214            ?           0    0    hesap_h.id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."hesap_h.id_seq" OWNED BY public.hesap.h_id;
          public          postgres    false    213            ?            1259    33341 	   privilege    TABLE     ?  CREATE TABLE public.privilege (
    id integer NOT NULL,
    sgroup integer NOT NULL,
    mname character varying(250) NOT NULL,
    icreate boolean DEFAULT false NOT NULL,
    iread boolean DEFAULT false NOT NULL,
    iupdate boolean DEFAULT false NOT NULL,
    idelete boolean DEFAULT false NOT NULL,
    ilist boolean DEFAULT false NOT NULL,
    irshow boolean DEFAULT false NOT NULL
);
    DROP TABLE public.privilege;
       public         heap    postgres    false            ?            1259    33340    modules_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.modules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.modules_id_seq;
       public          postgres    false    236            ?           0    0    modules_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.modules_id_seq OWNED BY public.privilege.id;
          public          postgres    false    235            ?            1259    24588    musteri    TABLE     I  CREATE TABLE public.musteri (
    m_id integer NOT NULL,
    m_ad character varying NOT NULL,
    m_soyad character varying NOT NULL,
    m_sifre character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    m_hesapno character varying
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            ?            1259    24587    musteri_m.id_seq    SEQUENCE     ?   CREATE SEQUENCE public."musteri_m.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."musteri_m.id_seq";
       public          postgres    false    212            ?           0    0    musteri_m.id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."musteri_m.id_seq" OWNED BY public.musteri.m_id;
          public          postgres    false    211            ?            1259    24996    paracek    TABLE     Z  CREATE TABLE public.paracek (
    id integer NOT NULL,
    hesapno character varying NOT NULL,
    bakiye double precision NOT NULL,
    cekilen_miktar double precision NOT NULL,
    guncel_bakiye double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.paracek;
       public         heap    postgres    false            ?            1259    24995    paracek_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.paracek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.paracek_id_seq;
       public          postgres    false    228            ?           0    0    paracek_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.paracek_id_seq OWNED BY public.paracek.id;
          public          postgres    false    227            ?            1259    24614 	   parayukle    TABLE     N  CREATE TABLE public.parayukle (
    id integer NOT NULL,
    hesapno character varying NOT NULL,
    eklenen_miktar double precision NOT NULL,
    guncel_bakiye double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated time with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    bakiye double precision
);
    DROP TABLE public.parayukle;
       public         heap    postgres    false            ?            1259    24613    parayukle_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.parayukle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parayukle_id_seq;
       public          postgres    false    218            ?           0    0    parayukle_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.parayukle_id_seq OWNED BY public.parayukle.id;
          public          postgres    false    217            ?            1259    24658    parayuklemakbuz    TABLE     &  CREATE TABLE public.parayuklemakbuz (
    id integer NOT NULL,
    guncel_bakiye double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    bakiye double precision,
    eklenen_para double precision
);
 #   DROP TABLE public.parayuklemakbuz;
       public         heap    postgres    false            ?            1259    24657    parayuklemakbuz_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.parayuklemakbuz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.parayuklemakbuz_id_seq;
       public          postgres    false    226            ?           0    0    parayuklemakbuz_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.parayuklemakbuz_id_seq OWNED BY public.parayuklemakbuz.id;
          public          postgres    false    225            ?            1259    24578    personel    TABLE     ?  CREATE TABLE public.personel (
    p_id integer NOT NULL,
    p_ad character varying NOT NULL,
    p_soyad character varying NOT NULL,
    p_yas integer NOT NULL,
    p_sifre character varying NOT NULL,
    created timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    p_hesapno character varying NOT NULL
);
    DROP TABLE public.personel;
       public         heap    postgres    false            ?            1259    25081    personel_guncelle    TABLE     u   CREATE TABLE public.personel_guncelle (
    id integer NOT NULL,
    personel_id integer,
    guncelle_id integer
);
 %   DROP TABLE public.personel_guncelle;
       public         heap    postgres    false            ?            1259    25080    personel_guncelle_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personel_guncelle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.personel_guncelle_id_seq;
       public          postgres    false    230            ?           0    0    personel_guncelle_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.personel_guncelle_id_seq OWNED BY public.personel_guncelle.id;
          public          postgres    false    229            ?            1259    24577    personel_p.id_seq    SEQUENCE     ?   CREATE SEQUENCE public."personel_p.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."personel_p.id_seq";
       public          postgres    false    210            ?           0    0    personel_p.id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."personel_p.id_seq" OWNED BY public.personel.p_id;
          public          postgres    false    209            ?            1259    24622    sifredegistir    TABLE     5  CREATE TABLE public.sifredegistir (
    id integer NOT NULL,
    hesapno character varying NOT NULL,
    eski_sifre character varying NOT NULL,
    yeni_sifre character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 !   DROP TABLE public.sifredegistir;
       public         heap    postgres    false            ?            1259    24621    sifredegistir_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sifredegistir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sifredegistir_id_seq;
       public          postgres    false    220            ?           0    0    sifredegistir_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sifredegistir_id_seq OWNED BY public.sifredegistir.id;
          public          postgres    false    219            ?            1259    33271    systemgroup    TABLE     ?   CREATE TABLE public.systemgroup (
    id integer NOT NULL,
    gname character varying(250) NOT NULL,
    created timestamp without time zone,
    updated timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.systemgroup;
       public         heap    postgres    false            ?            1259    33270    systemgroup_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.systemgroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.systemgroup_id_seq;
       public          postgres    false    232            ?           0    0    systemgroup_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.systemgroup_id_seq OWNED BY public.systemgroup.id;
          public          postgres    false    231            ?            1259    33292 
   systemuser    TABLE     ?   CREATE TABLE public.systemuser (
    id integer NOT NULL,
    email character varying(250) NOT NULL,
    pass character varying(250) NOT NULL,
    ugroup integer NOT NULL
);
    DROP TABLE public.systemuser;
       public         heap    postgres    false            ?            1259    33291    systemuser_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.systemuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.systemuser_id_seq;
       public          postgres    false    234            ?           0    0    systemuser_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.systemuser_id_seq OWNED BY public.systemuser.id;
          public          postgres    false    233            ?            1259    24632    tranfermakbuz    TABLE       CREATE TABLE public.tranfermakbuz (
    id integer NOT NULL,
    "gonderilen.miktar" double precision NOT NULL,
    "guncel.bakiye" double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 !   DROP TABLE public.tranfermakbuz;
       public         heap    postgres    false            ?            1259    24631    tranfermakbuz_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tranfermakbuz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tranfermakbuz_id_seq;
       public          postgres    false    222            ?           0    0    tranfermakbuz_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tranfermakbuz_id_seq OWNED BY public.tranfermakbuz.id;
          public          postgres    false    221            ?            1259    24606    transfer    TABLE     ?  CREATE TABLE public.transfer (
    "t.id" integer NOT NULL,
    "alıcı_h_no" character varying NOT NULL,
    gonderen_h_no character varying NOT NULL,
    gonderilen_miktar double precision NOT NULL,
    "alıcı_guncel_bakiye" double precision NOT NULL,
    gonderen_guncel_bakiye double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.transfer;
       public         heap    postgres    false            ?            1259    24605    transfer_t.id_seq    SEQUENCE     ?   CREATE SEQUENCE public."transfer_t.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."transfer_t.id_seq";
       public          postgres    false    216            ?           0    0    transfer_t.id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."transfer_t.id_seq" OWNED BY public.transfer."t.id";
          public          postgres    false    215            ?           2604    25070    guncelle id    DEFAULT     j   ALTER TABLE ONLY public.guncelle ALTER COLUMN id SET DEFAULT nextval('public.guncelle_id_seq'::regclass);
 :   ALTER TABLE public.guncelle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            ?           2604    25071 
   hesap h_id    DEFAULT     j   ALTER TABLE ONLY public.hesap ALTER COLUMN h_id SET DEFAULT nextval('public."hesap_h.id_seq"'::regclass);
 9   ALTER TABLE public.hesap ALTER COLUMN h_id DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    25072    musteri m_id    DEFAULT     n   ALTER TABLE ONLY public.musteri ALTER COLUMN m_id SET DEFAULT nextval('public."musteri_m.id_seq"'::regclass);
 ;   ALTER TABLE public.musteri ALTER COLUMN m_id DROP DEFAULT;
       public          postgres    false    212    211    212            ?           2604    25073 
   paracek id    DEFAULT     h   ALTER TABLE ONLY public.paracek ALTER COLUMN id SET DEFAULT nextval('public.paracek_id_seq'::regclass);
 9   ALTER TABLE public.paracek ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            ?           2604    25074    parayukle id    DEFAULT     l   ALTER TABLE ONLY public.parayukle ALTER COLUMN id SET DEFAULT nextval('public.parayukle_id_seq'::regclass);
 ;   ALTER TABLE public.parayukle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            ?           2604    25075    parayuklemakbuz id    DEFAULT     x   ALTER TABLE ONLY public.parayuklemakbuz ALTER COLUMN id SET DEFAULT nextval('public.parayuklemakbuz_id_seq'::regclass);
 A   ALTER TABLE public.parayuklemakbuz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            ?           2604    25076    personel p_id    DEFAULT     p   ALTER TABLE ONLY public.personel ALTER COLUMN p_id SET DEFAULT nextval('public."personel_p.id_seq"'::regclass);
 <   ALTER TABLE public.personel ALTER COLUMN p_id DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    25084    personel_guncelle id    DEFAULT     |   ALTER TABLE ONLY public.personel_guncelle ALTER COLUMN id SET DEFAULT nextval('public.personel_guncelle_id_seq'::regclass);
 C   ALTER TABLE public.personel_guncelle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            ?           2604    33344    privilege id    DEFAULT     j   ALTER TABLE ONLY public.privilege ALTER COLUMN id SET DEFAULT nextval('public.modules_id_seq'::regclass);
 ;   ALTER TABLE public.privilege ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            ?           2604    25077    sifredegistir id    DEFAULT     t   ALTER TABLE ONLY public.sifredegistir ALTER COLUMN id SET DEFAULT nextval('public.sifredegistir_id_seq'::regclass);
 ?   ALTER TABLE public.sifredegistir ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    33274    systemgroup id    DEFAULT     p   ALTER TABLE ONLY public.systemgroup ALTER COLUMN id SET DEFAULT nextval('public.systemgroup_id_seq'::regclass);
 =   ALTER TABLE public.systemgroup ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            ?           2604    33295    systemuser id    DEFAULT     n   ALTER TABLE ONLY public.systemuser ALTER COLUMN id SET DEFAULT nextval('public.systemuser_id_seq'::regclass);
 <   ALTER TABLE public.systemuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            ?           2604    25078    tranfermakbuz id    DEFAULT     t   ALTER TABLE ONLY public.tranfermakbuz ALTER COLUMN id SET DEFAULT nextval('public.tranfermakbuz_id_seq'::regclass);
 ?   ALTER TABLE public.tranfermakbuz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    25079    transfer t.id    DEFAULT     r   ALTER TABLE ONLY public.transfer ALTER COLUMN "t.id" SET DEFAULT nextval('public."transfer_t.id_seq"'::regclass);
 >   ALTER TABLE public.transfer ALTER COLUMN "t.id" DROP DEFAULT;
       public          postgres    false    216    215    216            ?          0    24640    guncelle 
   TABLE DATA           [   COPY public.guncelle (id, p_hesapno, m_ad, m_soyad, m_sifre, created, updated) FROM stdin;
    public          postgres    false    224   ̱       ?          0    24598    hesap 
   TABLE DATA           H   COPY public.hesap (h_id, created, updated, hesapno, bakiye) FROM stdin;
    public          postgres    false    214   #?       ?          0    24588    musteri 
   TABLE DATA           \   COPY public.musteri (m_id, m_ad, m_soyad, m_sifre, created, updated, m_hesapno) FROM stdin;
    public          postgres    false    212   ??       ?          0    24996    paracek 
   TABLE DATA           g   COPY public.paracek (id, hesapno, bakiye, cekilen_miktar, guncel_bakiye, created, updated) FROM stdin;
    public          postgres    false    228   ??       ?          0    24614 	   parayukle 
   TABLE DATA           i   COPY public.parayukle (id, hesapno, eklenen_miktar, guncel_bakiye, created, updated, bakiye) FROM stdin;
    public          postgres    false    218   ݴ       ?          0    24658    parayuklemakbuz 
   TABLE DATA           d   COPY public.parayuklemakbuz (id, guncel_bakiye, created, updated, bakiye, eklenen_para) FROM stdin;
    public          postgres    false    226   {?       ?          0    24578    personel 
   TABLE DATA           d   COPY public.personel (p_id, p_ad, p_soyad, p_yas, p_sifre, created, updated, p_hesapno) FROM stdin;
    public          postgres    false    210   ??       ?          0    25081    personel_guncelle 
   TABLE DATA           I   COPY public.personel_guncelle (id, personel_id, guncelle_id) FROM stdin;
    public          postgres    false    230   ??       ?          0    33341 	   privilege 
   TABLE DATA           g   COPY public.privilege (id, sgroup, mname, icreate, iread, iupdate, idelete, ilist, irshow) FROM stdin;
    public          postgres    false    236   ?       ?          0    24622    sifredegistir 
   TABLE DATA           ^   COPY public.sifredegistir (id, hesapno, eski_sifre, yeni_sifre, created, updated) FROM stdin;
    public          postgres    false    220   #?       ?          0    33271    systemgroup 
   TABLE DATA           B   COPY public.systemgroup (id, gname, created, updated) FROM stdin;
    public          postgres    false    232   @?       ?          0    33292 
   systemuser 
   TABLE DATA           =   COPY public.systemuser (id, email, pass, ugroup) FROM stdin;
    public          postgres    false    234   ??       ?          0    24632    tranfermakbuz 
   TABLE DATA           c   COPY public.tranfermakbuz (id, "gonderilen.miktar", "guncel.bakiye", created, updated) FROM stdin;
    public          postgres    false    222   Ʒ       ?          0    24606    transfer 
   TABLE DATA           ?   COPY public.transfer ("t.id", "alıcı_h_no", gonderen_h_no, gonderilen_miktar, "alıcı_guncel_bakiye", gonderen_guncel_bakiye, created, updated) FROM stdin;
    public          postgres    false    216   ??       ?           0    0    guncelle_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.guncelle_id_seq', 8, true);
          public          postgres    false    223            ?           0    0    hesap_h.id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."hesap_h.id_seq"', 65, true);
          public          postgres    false    213            ?           0    0    modules_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.modules_id_seq', 1, true);
          public          postgres    false    235            ?           0    0    musteri_m.id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."musteri_m.id_seq"', 11, true);
          public          postgres    false    211            ?           0    0    paracek_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.paracek_id_seq', 1, true);
          public          postgres    false    227            ?           0    0    parayukle_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.parayukle_id_seq', 8, true);
          public          postgres    false    217            ?           0    0    parayuklemakbuz_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.parayuklemakbuz_id_seq', 1, false);
          public          postgres    false    225            ?           0    0    personel_guncelle_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.personel_guncelle_id_seq', 1, false);
          public          postgres    false    229            ?           0    0    personel_p.id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."personel_p.id_seq"', 17, true);
          public          postgres    false    209            ?           0    0    sifredegistir_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sifredegistir_id_seq', 1, false);
          public          postgres    false    219            ?           0    0    systemgroup_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.systemgroup_id_seq', 7, true);
          public          postgres    false    231            ?           0    0    systemuser_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.systemuser_id_seq', 1, false);
          public          postgres    false    233            ?           0    0    tranfermakbuz_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tranfermakbuz_id_seq', 1, false);
          public          postgres    false    221            ?           0    0    transfer_t.id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."transfer_t.id_seq"', 1, false);
          public          postgres    false    215            ?           2606    24648    guncelle guncelle_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT guncelle_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT guncelle_pkey;
       public            postgres    false    224            ?           2606    24750    hesap hesap_bakiye_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_bakiye_key UNIQUE (bakiye);
 @   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_bakiye_key;
       public            postgres    false    214            ?           2606    24666    hesap hesap_hesapno_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_hesapno_key UNIQUE (hesapno);
 A   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_hesapno_key;
       public            postgres    false    214            ?           2606    24604    hesap hesap_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_pkey PRIMARY KEY (h_id);
 :   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_pkey;
       public            postgres    false    214            ?           2606    33352    privilege modules_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT modules_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.privilege DROP CONSTRAINT modules_pkey;
       public            postgres    false    236            ?           2606    24771    musteri musteri_m_ad_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_ad_key UNIQUE (m_ad);
 B   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_ad_key;
       public            postgres    false    212            ?           2606    24670    musteri musteri_m_hesapno_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_hesapno_key UNIQUE (m_hesapno);
 G   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_hesapno_key;
       public            postgres    false    212            ?           2606    24787    musteri musteri_m_sifre_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_sifre_key UNIQUE (m_sifre);
 E   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_sifre_key;
       public            postgres    false    212            ?           2606    24778    musteri musteri_m_soyad_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_soyad_key UNIQUE (m_soyad);
 E   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_soyad_key;
       public            postgres    false    212            ?           2606    24596    musteri musteri_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_pkey PRIMARY KEY (m_id);
 >   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_pkey;
       public            postgres    false    212            ?           2606    25002    paracek paracek_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.paracek
    ADD CONSTRAINT paracek_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.paracek DROP CONSTRAINT paracek_pkey;
       public            postgres    false    228            ?           2606    24757    parayukle parayukle_bakiye_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_bakiye_key UNIQUE (bakiye);
 H   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_bakiye_key;
       public            postgres    false    218            ?           2606    24804 &   parayukle parayukle_eklenen_miktar_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_eklenen_miktar_key UNIQUE (eklenen_miktar);
 P   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_eklenen_miktar_key;
       public            postgres    false    218            ?           2606    24806 %   parayukle parayukle_guncel_bakiye_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_guncel_bakiye_key UNIQUE (guncel_bakiye);
 O   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_guncel_bakiye_key;
       public            postgres    false    218            ?           2606    24620    parayukle parayukle_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_pkey;
       public            postgres    false    218            ?           2606    24764 *   parayuklemakbuz parayuklemakbuz_bakiye_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT parayuklemakbuz_bakiye_key UNIQUE (bakiye);
 T   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT parayuklemakbuz_bakiye_key;
       public            postgres    false    226            ?           2606    24664 $   parayuklemakbuz parayuklemakbuz_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT parayuklemakbuz_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT parayuklemakbuz_pkey;
       public            postgres    false    226            ?           2606    25086 (   personel_guncelle personel_guncelle_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.personel_guncelle
    ADD CONSTRAINT personel_guncelle_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.personel_guncelle DROP CONSTRAINT personel_guncelle_pkey;
       public            postgres    false    230            ?           2606    24682    personel personel_p_hesapno_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_p_hesapno_key UNIQUE (p_hesapno);
 I   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_p_hesapno_key;
       public            postgres    false    210            ?           2606    24585    personel personel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_pkey PRIMARY KEY (p_id);
 @   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_pkey;
       public            postgres    false    210            ?           2606    24630     sifredegistir sifredegistir_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sifredegistir
    ADD CONSTRAINT sifredegistir_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sifredegistir DROP CONSTRAINT sifredegistir_pkey;
       public            postgres    false    220            ?           2606    33279 !   systemgroup systemgroup_gname_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.systemgroup
    ADD CONSTRAINT systemgroup_gname_key UNIQUE (gname);
 K   ALTER TABLE ONLY public.systemgroup DROP CONSTRAINT systemgroup_gname_key;
       public            postgres    false    232            ?           2606    33277    systemgroup systemgroup_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.systemgroup
    ADD CONSTRAINT systemgroup_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.systemgroup DROP CONSTRAINT systemgroup_pkey;
       public            postgres    false    232            ?           2606    33301    systemuser systemuser_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.systemuser
    ADD CONSTRAINT systemuser_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.systemuser DROP CONSTRAINT systemuser_email_key;
       public            postgres    false    234            ?           2606    33299    systemuser systemuser_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.systemuser
    ADD CONSTRAINT systemuser_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.systemuser DROP CONSTRAINT systemuser_pkey;
       public            postgres    false    234            ?           2606    24638     tranfermakbuz tranfermakbuz_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tranfermakbuz
    ADD CONSTRAINT tranfermakbuz_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tranfermakbuz DROP CONSTRAINT tranfermakbuz_pkey;
       public            postgres    false    222            ?           2606    24838 ,   transfer transfer_gonderen_guncel_bakiye_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_gonderen_guncel_bakiye_key UNIQUE (gonderen_guncel_bakiye);
 V   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_gonderen_guncel_bakiye_key;
       public            postgres    false    216            ?           2606    24836 '   transfer transfer_gonderilen_miktar_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_gonderilen_miktar_key UNIQUE (gonderilen_miktar);
 Q   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_gonderilen_miktar_key;
       public            postgres    false    216            ?           2606    24612    transfer transfer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_pkey PRIMARY KEY ("t.id");
 @   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_pkey;
       public            postgres    false    216                       2606    24798    guncelle guncelle_m._sifre_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT "guncelle_m._sifre_fkey" FOREIGN KEY (m_sifre) REFERENCES public.musteri(m_sifre) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT "guncelle_m._sifre_fkey";
       public          postgres    false    212    3270    224                       2606    24779    guncelle guncelle_m._soyad_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT "guncelle_m._soyad_fkey" FOREIGN KEY (m_soyad) REFERENCES public.musteri(m_soyad) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT "guncelle_m._soyad_fkey";
       public          postgres    false    224    212    3272                       2606    24772    guncelle guncelle_m_ad_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT guncelle_m_ad_fkey FOREIGN KEY (m_ad) REFERENCES public.musteri(m_ad) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT guncelle_m_ad_fkey;
       public          postgres    false    212    3266    224                       2606    24744     guncelle guncelle_p_hesapno_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT guncelle_p_hesapno_fkey FOREIGN KEY (p_hesapno) REFERENCES public.personel(p_hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT guncelle_p_hesapno_fkey;
       public          postgres    false    3262    210    224            ?           2606    24676    musteri hesapno    FK CONSTRAINT     ?   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT hesapno FOREIGN KEY (m_hesapno) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 9   ALTER TABLE ONLY public.musteri DROP CONSTRAINT hesapno;
       public          postgres    false    214    212    3278            ?           2606    24683    personel hesapno    FK CONSTRAINT     ?   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT hesapno FOREIGN KEY (p_hesapno) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 :   ALTER TABLE ONLY public.personel DROP CONSTRAINT hesapno;
       public          postgres    false    3278    214    210                       2606    33353    privilege modules_sgroup_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.privilege
    ADD CONSTRAINT modules_sgroup_fkey FOREIGN KEY (sgroup) REFERENCES public.systemgroup(id);
 G   ALTER TABLE ONLY public.privilege DROP CONSTRAINT modules_sgroup_fkey;
       public          postgres    false    3312    232    236                       2606    25016    paracek paracek_bakiye_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.paracek
    ADD CONSTRAINT paracek_bakiye_fkey FOREIGN KEY (bakiye) REFERENCES public.hesap(bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.paracek DROP CONSTRAINT paracek_bakiye_fkey;
       public          postgres    false    3276    214    228                       2606    25011    paracek paracek_hesapno_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.paracek
    ADD CONSTRAINT paracek_hesapno_fkey FOREIGN KEY (hesapno) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public.paracek DROP CONSTRAINT paracek_hesapno_fkey;
       public          postgres    false    3278    228    214            ?           2606    24758    parayukle parayukle_bakiye_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_bakiye_fkey FOREIGN KEY (bakiye) REFERENCES public.hesap(bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_bakiye_fkey;
       public          postgres    false    218    214    3276            ?           2606    24722     parayukle parayukle_hesapno_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_hesapno_fkey FOREIGN KEY (hesapno) REFERENCES public.musteri(m_hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_hesapno_fkey;
       public          postgres    false    218    3268    212                       2606    24765 +   parayuklemakbuz parayuklemakbuz_bakiye_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT parayuklemakbuz_bakiye_fkey FOREIGN KEY (bakiye) REFERENCES public.parayukle(bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT parayuklemakbuz_bakiye_fkey;
       public          postgres    false    3288    226    218                       2606    24812 2   parayuklemakbuz parayuklemakbuz_guncel.bakiye_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT "parayuklemakbuz_guncel.bakiye_fkey" FOREIGN KEY (guncel_bakiye) REFERENCES public.parayukle(guncel_bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ^   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT "parayuklemakbuz_guncel.bakiye_fkey";
       public          postgres    false    218    3292    226            
           2606    25092 4   personel_guncelle personel_guncelle_guncelle_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.personel_guncelle
    ADD CONSTRAINT personel_guncelle_guncelle_id_fkey FOREIGN KEY (guncelle_id) REFERENCES public.guncelle(id) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 ^   ALTER TABLE ONLY public.personel_guncelle DROP CONSTRAINT personel_guncelle_guncelle_id_fkey;
       public          postgres    false    3300    230    224            	           2606    25087 4   personel_guncelle personel_guncelle_personel_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.personel_guncelle
    ADD CONSTRAINT personel_guncelle_personel_id_fkey FOREIGN KEY (personel_id) REFERENCES public.personel(p_id) ON UPDATE CASCADE ON DELETE RESTRICT NOT VALID;
 ^   ALTER TABLE ONLY public.personel_guncelle DROP CONSTRAINT personel_guncelle_personel_id_fkey;
       public          postgres    false    230    3264    210            ?           2606    24830 +   sifredegistir sifredegistir_eski_sifre_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sifredegistir
    ADD CONSTRAINT sifredegistir_eski_sifre_fkey FOREIGN KEY (eski_sifre) REFERENCES public.musteri(m_sifre) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.sifredegistir DROP CONSTRAINT sifredegistir_eski_sifre_fkey;
       public          postgres    false    3270    220    212            ?           2606    24733 (   sifredegistir sifredegistir_hesapno_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sifredegistir
    ADD CONSTRAINT sifredegistir_hesapno_fkey FOREIGN KEY (hesapno) REFERENCES public.musteri(m_hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 R   ALTER TABLE ONLY public.sifredegistir DROP CONSTRAINT sifredegistir_hesapno_fkey;
       public          postgres    false    220    212    3268                       2606    33302 !   systemuser systemuser_ugroup_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.systemuser
    ADD CONSTRAINT systemuser_ugroup_fkey FOREIGN KEY (ugroup) REFERENCES public.systemgroup(id);
 K   ALTER TABLE ONLY public.systemuser DROP CONSTRAINT systemuser_ugroup_fkey;
       public          postgres    false    234    3312    232            ?           2606    24839 2   tranfermakbuz tranfermakbuz_gonderilen.miktar_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tranfermakbuz
    ADD CONSTRAINT "tranfermakbuz_gonderilen.miktar_fkey" FOREIGN KEY ("gonderilen.miktar") REFERENCES public.transfer(gonderilen_miktar) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ^   ALTER TABLE ONLY public.tranfermakbuz DROP CONSTRAINT "tranfermakbuz_gonderilen.miktar_fkey";
       public          postgres    false    222    3284    216                        2606    24844 .   tranfermakbuz tranfermakbuz_guncel.bakiye_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tranfermakbuz
    ADD CONSTRAINT "tranfermakbuz_guncel.bakiye_fkey" FOREIGN KEY ("guncel.bakiye") REFERENCES public.transfer(gonderen_guncel_bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Z   ALTER TABLE ONLY public.tranfermakbuz DROP CONSTRAINT "tranfermakbuz_guncel.bakiye_fkey";
       public          postgres    false    216    3282    222            ?           2606    24704 #   transfer transfer_alıcı_h_no_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT "transfer_alıcı_h_no_fkey" FOREIGN KEY ("alıcı_h_no") REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY public.transfer DROP CONSTRAINT "transfer_alıcı_h_no_fkey";
       public          postgres    false    214    216    3278            ?           2606    24709 $   transfer transfer_gonderen_h_no_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_gonderen_h_no_fkey FOREIGN KEY (gonderen_h_no) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 N   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_gonderen_h_no_fkey;
       public          postgres    false    214    3278    216            ?   G   x???46?@3N????<N??#??\?̌????H??D??\????????\???X??????P?+F??? kM?      ?   \  x???In?0E???#???%??G
??V??Y??|\?%?m ??8??j'?/??P??N?SLETl
?i?sP???D?Ed?;e4??ܛ??mH}?:?O-J?<(2R=ubm???ư???Z??1?@?*?~?Eϟ-*??$PKD?ȧ?7r=?
U???#??5?J<@{ĩhBG?>??"Vƛ??Aw???'ʤhB?@-GՖ????b??2??????T?0d?^?+֌?x?e???=¦?	??A??*7???fW|י???RW??e??ᢑ?T???<ҚK??g?F??H?Ĳ?4?+??????95????.?L{?M???<X?"?}? ?}????ԯ?      ?   ?   x?u?MN?0???Sd?b͏?kĮ????TD??Da??2;?JB?$[???gF??????P@?F?]O?c??$?YoP?AAR?Qէ?F?<O?+??E?&?<?o?`?dՋ??Ss:o<ܟ?? ?ǯ?z?????69t2Rg5??\#/L?^CL????_?njz???f??bF_e)?2w?꫟)?"ؼ}??v|??q7?$?.&??]{??61?un??/??(]?A???Gk??Y?\S      ?   E   x?Mɱ?0D?ڞ?%??؄x????
?W??????c?c??!?t ?ub?????聜?????? ="      ?   ?   x?]???0?T?x????Y6' ???H?kL??wԝs?s?G~P?ŕ?g?:?!ͼʀ ???n?a>D?z-?Á*tFg?????zƯ#??쪱/?+Z???L??????Z??fC???jGo?}j3      ?      x?????? ? ?      ?   A  x????Js1??;Oq^???k.3/3G? 8?zD?Vz??8;?3???*Z&?V?>KᤵYw??hpx?^#?E?I?	qc}??aU?H}?"ik????6???͛_D?7???T.}a*_?P?l?2vGmv5?p?Y=?lV?f5B@Dٮʺ(USEs???SL	r?*???n:<???uRP????I?Ze?j?q٧?6????Hoc?????6?IN;o??k?*?^?]?-?UR.????x?)?K $??_V??7Xc??l??!?fOK̇?a>_?6h~,nA?????D}b?R~?5J񼞋=Z??C?/$??      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?   Y   x?3?tL???????4202?50?5?T04?21?24?305556?2?t?H?,?Tej Vefhff?e??XZ???]?????????	W? )?=      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     