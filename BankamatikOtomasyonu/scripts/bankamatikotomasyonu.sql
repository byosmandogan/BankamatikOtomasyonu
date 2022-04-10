PGDMP     $    5        
        z            BankamatikOtomasyonu    14.2    14.2 j    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24576    BankamatikOtomasyonu    DATABASE     s   CREATE DATABASE "BankamatikOtomasyonu" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
 &   DROP DATABASE "BankamatikOtomasyonu";
                postgres    false            �            1259    24640    guncelle    TABLE     W  CREATE TABLE public.guncelle (
    id integer NOT NULL,
    p_hesapno character varying NOT NULL,
    m_ad character varying NOT NULL,
    "m._soyad" character varying NOT NULL,
    "m._sifre" character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.guncelle;
       public         heap    postgres    false            �            1259    24639    guncelle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.guncelle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.guncelle_id_seq;
       public          postgres    false    224            �           0    0    guncelle_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.guncelle_id_seq OWNED BY public.guncelle.id;
          public          postgres    false    223            �            1259    24598    hesap    TABLE     �   CREATE TABLE public.hesap (
    h_id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    hesapno character varying NOT NULL,
    bakiye double precision
);
    DROP TABLE public.hesap;
       public         heap    postgres    false            �            1259    24597    hesap_h.id_seq    SEQUENCE     �   CREATE SEQUENCE public."hesap_h.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."hesap_h.id_seq";
       public          postgres    false    214            �           0    0    hesap_h.id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."hesap_h.id_seq" OWNED BY public.hesap.h_id;
          public          postgres    false    213            �            1259    24588    musteri    TABLE     I  CREATE TABLE public.musteri (
    m_id integer NOT NULL,
    m_ad character varying NOT NULL,
    m_soyad character varying NOT NULL,
    m_sifre character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    m_hesapno character varying
);
    DROP TABLE public.musteri;
       public         heap    postgres    false            �            1259    24587    musteri_m.id_seq    SEQUENCE     �   CREATE SEQUENCE public."musteri_m.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."musteri_m.id_seq";
       public          postgres    false    212            �           0    0    musteri_m.id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."musteri_m.id_seq" OWNED BY public.musteri.m_id;
          public          postgres    false    211            �            1259    24996    paracek    TABLE     Z  CREATE TABLE public.paracek (
    id integer NOT NULL,
    hesapno character varying NOT NULL,
    bakiye double precision NOT NULL,
    cekilen_miktar double precision NOT NULL,
    guncel_bakiye double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.paracek;
       public         heap    postgres    false            �            1259    24995    paracek_id_seq    SEQUENCE     �   CREATE SEQUENCE public.paracek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.paracek_id_seq;
       public          postgres    false    228            �           0    0    paracek_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.paracek_id_seq OWNED BY public.paracek.id;
          public          postgres    false    227            �            1259    24614 	   parayukle    TABLE     N  CREATE TABLE public.parayukle (
    id integer NOT NULL,
    hesapno character varying NOT NULL,
    eklenen_miktar double precision NOT NULL,
    guncel_bakiye double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated time with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    bakiye double precision
);
    DROP TABLE public.parayukle;
       public         heap    postgres    false            �            1259    24613    parayukle_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parayukle_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parayukle_id_seq;
       public          postgres    false    218            �           0    0    parayukle_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.parayukle_id_seq OWNED BY public.parayukle.id;
          public          postgres    false    217            �            1259    24658    parayuklemakbuz    TABLE     3  CREATE TABLE public.parayuklemakbuz (
    id integer NOT NULL,
    "eklenen.para" double precision NOT NULL,
    "guncel.bakiye" double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    bakiye double precision
);
 #   DROP TABLE public.parayuklemakbuz;
       public         heap    postgres    false            �            1259    24657    parayuklemakbuz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parayuklemakbuz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.parayuklemakbuz_id_seq;
       public          postgres    false    226            �           0    0    parayuklemakbuz_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.parayuklemakbuz_id_seq OWNED BY public.parayuklemakbuz.id;
          public          postgres    false    225            �            1259    24578    personel    TABLE     �  CREATE TABLE public.personel (
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
       public         heap    postgres    false            �            1259    24577    personel_p.id_seq    SEQUENCE     �   CREATE SEQUENCE public."personel_p.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."personel_p.id_seq";
       public          postgres    false    210            �           0    0    personel_p.id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."personel_p.id_seq" OWNED BY public.personel.p_id;
          public          postgres    false    209            �            1259    24622    sifredegistir    TABLE     5  CREATE TABLE public.sifredegistir (
    id integer NOT NULL,
    hesapno character varying NOT NULL,
    eski_sifre character varying NOT NULL,
    yeni_sifre character varying NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 !   DROP TABLE public.sifredegistir;
       public         heap    postgres    false            �            1259    24621    sifredegistir_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sifredegistir_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sifredegistir_id_seq;
       public          postgres    false    220            �           0    0    sifredegistir_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sifredegistir_id_seq OWNED BY public.sifredegistir.id;
          public          postgres    false    219            �            1259    24632    tranfermakbuz    TABLE       CREATE TABLE public.tranfermakbuz (
    id integer NOT NULL,
    "gonderilen.miktar" double precision NOT NULL,
    "guncel.bakiye" double precision NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 !   DROP TABLE public.tranfermakbuz;
       public         heap    postgres    false            �            1259    24631    tranfermakbuz_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tranfermakbuz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.tranfermakbuz_id_seq;
       public          postgres    false    222            �           0    0    tranfermakbuz_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.tranfermakbuz_id_seq OWNED BY public.tranfermakbuz.id;
          public          postgres    false    221            �            1259    24606    transfer    TABLE     �  CREATE TABLE public.transfer (
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
       public         heap    postgres    false            �            1259    24605    transfer_t.id_seq    SEQUENCE     �   CREATE SEQUENCE public."transfer_t.id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."transfer_t.id_seq";
       public          postgres    false    216            �           0    0    transfer_t.id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."transfer_t.id_seq" OWNED BY public.transfer."t.id";
          public          postgres    false    215            �           2604    24643    guncelle id    DEFAULT     j   ALTER TABLE ONLY public.guncelle ALTER COLUMN id SET DEFAULT nextval('public.guncelle_id_seq'::regclass);
 :   ALTER TABLE public.guncelle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    24601 
   hesap h_id    DEFAULT     j   ALTER TABLE ONLY public.hesap ALTER COLUMN h_id SET DEFAULT nextval('public."hesap_h.id_seq"'::regclass);
 9   ALTER TABLE public.hesap ALTER COLUMN h_id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    24591    musteri m_id    DEFAULT     n   ALTER TABLE ONLY public.musteri ALTER COLUMN m_id SET DEFAULT nextval('public."musteri_m.id_seq"'::regclass);
 ;   ALTER TABLE public.musteri ALTER COLUMN m_id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    24999 
   paracek id    DEFAULT     h   ALTER TABLE ONLY public.paracek ALTER COLUMN id SET DEFAULT nextval('public.paracek_id_seq'::regclass);
 9   ALTER TABLE public.paracek ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    24617    parayukle id    DEFAULT     l   ALTER TABLE ONLY public.parayukle ALTER COLUMN id SET DEFAULT nextval('public.parayukle_id_seq'::regclass);
 ;   ALTER TABLE public.parayukle ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    24661    parayuklemakbuz id    DEFAULT     x   ALTER TABLE ONLY public.parayuklemakbuz ALTER COLUMN id SET DEFAULT nextval('public.parayuklemakbuz_id_seq'::regclass);
 A   ALTER TABLE public.parayuklemakbuz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    24581    personel p_id    DEFAULT     p   ALTER TABLE ONLY public.personel ALTER COLUMN p_id SET DEFAULT nextval('public."personel_p.id_seq"'::regclass);
 <   ALTER TABLE public.personel ALTER COLUMN p_id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    24625    sifredegistir id    DEFAULT     t   ALTER TABLE ONLY public.sifredegistir ALTER COLUMN id SET DEFAULT nextval('public.sifredegistir_id_seq'::regclass);
 ?   ALTER TABLE public.sifredegistir ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    24635    tranfermakbuz id    DEFAULT     t   ALTER TABLE ONLY public.tranfermakbuz ALTER COLUMN id SET DEFAULT nextval('public.tranfermakbuz_id_seq'::regclass);
 ?   ALTER TABLE public.tranfermakbuz ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    24609    transfer t.id    DEFAULT     r   ALTER TABLE ONLY public.transfer ALTER COLUMN "t.id" SET DEFAULT nextval('public."transfer_t.id_seq"'::regclass);
 >   ALTER TABLE public.transfer ALTER COLUMN "t.id" DROP DEFAULT;
       public          postgres    false    215    216    216            y          0    24640    guncelle 
   TABLE DATA           a   COPY public.guncelle (id, p_hesapno, m_ad, "m._soyad", "m._sifre", created, updated) FROM stdin;
    public          postgres    false    224   [�       o          0    24598    hesap 
   TABLE DATA           H   COPY public.hesap (h_id, created, updated, hesapno, bakiye) FROM stdin;
    public          postgres    false    214   x�       m          0    24588    musteri 
   TABLE DATA           \   COPY public.musteri (m_id, m_ad, m_soyad, m_sifre, created, updated, m_hesapno) FROM stdin;
    public          postgres    false    212   �       }          0    24996    paracek 
   TABLE DATA           g   COPY public.paracek (id, hesapno, bakiye, cekilen_miktar, guncel_bakiye, created, updated) FROM stdin;
    public          postgres    false    228   -�       s          0    24614 	   parayukle 
   TABLE DATA           i   COPY public.parayukle (id, hesapno, eklenen_miktar, guncel_bakiye, created, updated, bakiye) FROM stdin;
    public          postgres    false    218   J�       {          0    24658    parayuklemakbuz 
   TABLE DATA           h   COPY public.parayuklemakbuz (id, "eklenen.para", "guncel.bakiye", created, updated, bakiye) FROM stdin;
    public          postgres    false    226   g�       k          0    24578    personel 
   TABLE DATA           d   COPY public.personel (p_id, p_ad, p_soyad, p_yas, p_sifre, created, updated, p_hesapno) FROM stdin;
    public          postgres    false    210   ��       u          0    24622    sifredegistir 
   TABLE DATA           ^   COPY public.sifredegistir (id, hesapno, eski_sifre, yeni_sifre, created, updated) FROM stdin;
    public          postgres    false    220   �       w          0    24632    tranfermakbuz 
   TABLE DATA           c   COPY public.tranfermakbuz (id, "gonderilen.miktar", "guncel.bakiye", created, updated) FROM stdin;
    public          postgres    false    222   $�       q          0    24606    transfer 
   TABLE DATA           �   COPY public.transfer ("t.id", "alıcı_h_no", gonderen_h_no, gonderilen_miktar, "alıcı_guncel_bakiye", gonderen_guncel_bakiye, created, updated) FROM stdin;
    public          postgres    false    216   A�       �           0    0    guncelle_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.guncelle_id_seq', 1, false);
          public          postgres    false    223            �           0    0    hesap_h.id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."hesap_h.id_seq"', 30, true);
          public          postgres    false    213            �           0    0    musteri_m.id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."musteri_m.id_seq"', 1, false);
          public          postgres    false    211            �           0    0    paracek_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.paracek_id_seq', 1, false);
          public          postgres    false    227            �           0    0    parayukle_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parayukle_id_seq', 1, false);
          public          postgres    false    217            �           0    0    parayuklemakbuz_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.parayuklemakbuz_id_seq', 1, false);
          public          postgres    false    225            �           0    0    personel_p.id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."personel_p.id_seq"', 3, true);
          public          postgres    false    209            �           0    0    sifredegistir_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sifredegistir_id_seq', 1, false);
          public          postgres    false    219            �           0    0    tranfermakbuz_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tranfermakbuz_id_seq', 1, false);
          public          postgres    false    221            �           0    0    transfer_t.id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."transfer_t.id_seq"', 1, false);
          public          postgres    false    215            �           2606    24648    guncelle guncelle_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT guncelle_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT guncelle_pkey;
       public            postgres    false    224            �           2606    24750    hesap hesap_bakiye_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_bakiye_key UNIQUE (bakiye);
 @   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_bakiye_key;
       public            postgres    false    214            �           2606    24666    hesap hesap_hesapno_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_hesapno_key UNIQUE (hesapno);
 A   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_hesapno_key;
       public            postgres    false    214            �           2606    24604    hesap hesap_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.hesap
    ADD CONSTRAINT hesap_pkey PRIMARY KEY (h_id);
 :   ALTER TABLE ONLY public.hesap DROP CONSTRAINT hesap_pkey;
       public            postgres    false    214            �           2606    24771    musteri musteri_m_ad_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_ad_key UNIQUE (m_ad);
 B   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_ad_key;
       public            postgres    false    212            �           2606    24670    musteri musteri_m_hesapno_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_hesapno_key UNIQUE (m_hesapno);
 G   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_hesapno_key;
       public            postgres    false    212            �           2606    24787    musteri musteri_m_sifre_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_sifre_key UNIQUE (m_sifre);
 E   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_sifre_key;
       public            postgres    false    212            �           2606    24778    musteri musteri_m_soyad_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_m_soyad_key UNIQUE (m_soyad);
 E   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_m_soyad_key;
       public            postgres    false    212            �           2606    24596    musteri musteri_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT musteri_pkey PRIMARY KEY (m_id);
 >   ALTER TABLE ONLY public.musteri DROP CONSTRAINT musteri_pkey;
       public            postgres    false    212            �           2606    25002    paracek paracek_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.paracek
    ADD CONSTRAINT paracek_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.paracek DROP CONSTRAINT paracek_pkey;
       public            postgres    false    228            �           2606    24757    parayukle parayukle_bakiye_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_bakiye_key UNIQUE (bakiye);
 H   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_bakiye_key;
       public            postgres    false    218            �           2606    24804 &   parayukle parayukle_eklenen_miktar_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_eklenen_miktar_key UNIQUE (eklenen_miktar);
 P   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_eklenen_miktar_key;
       public            postgres    false    218            �           2606    24806 %   parayukle parayukle_guncel_bakiye_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_guncel_bakiye_key UNIQUE (guncel_bakiye);
 O   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_guncel_bakiye_key;
       public            postgres    false    218            �           2606    24620    parayukle parayukle_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_pkey;
       public            postgres    false    218            �           2606    24764 *   parayuklemakbuz parayuklemakbuz_bakiye_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT parayuklemakbuz_bakiye_key UNIQUE (bakiye);
 T   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT parayuklemakbuz_bakiye_key;
       public            postgres    false    226            �           2606    24664 $   parayuklemakbuz parayuklemakbuz_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT parayuklemakbuz_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT parayuklemakbuz_pkey;
       public            postgres    false    226            �           2606    24682    personel personel_p_hesapno_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_p_hesapno_key UNIQUE (p_hesapno);
 I   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_p_hesapno_key;
       public            postgres    false    210            �           2606    24585    personel personel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT personel_pkey PRIMARY KEY (p_id);
 @   ALTER TABLE ONLY public.personel DROP CONSTRAINT personel_pkey;
       public            postgres    false    210            �           2606    24630     sifredegistir sifredegistir_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sifredegistir
    ADD CONSTRAINT sifredegistir_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sifredegistir DROP CONSTRAINT sifredegistir_pkey;
       public            postgres    false    220            �           2606    24638     tranfermakbuz tranfermakbuz_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.tranfermakbuz
    ADD CONSTRAINT tranfermakbuz_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.tranfermakbuz DROP CONSTRAINT tranfermakbuz_pkey;
       public            postgres    false    222            �           2606    24838 ,   transfer transfer_gonderen_guncel_bakiye_key 
   CONSTRAINT     y   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_gonderen_guncel_bakiye_key UNIQUE (gonderen_guncel_bakiye);
 V   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_gonderen_guncel_bakiye_key;
       public            postgres    false    216            �           2606    24836 '   transfer transfer_gonderilen_miktar_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_gonderilen_miktar_key UNIQUE (gonderilen_miktar);
 Q   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_gonderilen_miktar_key;
       public            postgres    false    216            �           2606    24612    transfer transfer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_pkey PRIMARY KEY ("t.id");
 @   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_pkey;
       public            postgres    false    216            �           2606    24798    guncelle guncelle_m._sifre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT "guncelle_m._sifre_fkey" FOREIGN KEY ("m._sifre") REFERENCES public.musteri(m_sifre) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT "guncelle_m._sifre_fkey";
       public          postgres    false    3239    212    224            �           2606    24779    guncelle guncelle_m._soyad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT "guncelle_m._soyad_fkey" FOREIGN KEY ("m._soyad") REFERENCES public.musteri(m_soyad) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 K   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT "guncelle_m._soyad_fkey";
       public          postgres    false    212    224    3241            �           2606    24772    guncelle guncelle_m_ad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT guncelle_m_ad_fkey FOREIGN KEY (m_ad) REFERENCES public.musteri(m_ad) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT guncelle_m_ad_fkey;
       public          postgres    false    3235    224    212            �           2606    24744     guncelle guncelle_p_hesapno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.guncelle
    ADD CONSTRAINT guncelle_p_hesapno_fkey FOREIGN KEY (p_hesapno) REFERENCES public.personel(p_hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.guncelle DROP CONSTRAINT guncelle_p_hesapno_fkey;
       public          postgres    false    3231    210    224            �           2606    24676    musteri hesapno    FK CONSTRAINT     �   ALTER TABLE ONLY public.musteri
    ADD CONSTRAINT hesapno FOREIGN KEY (m_hesapno) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 9   ALTER TABLE ONLY public.musteri DROP CONSTRAINT hesapno;
       public          postgres    false    212    214    3247            �           2606    24683    personel hesapno    FK CONSTRAINT     �   ALTER TABLE ONLY public.personel
    ADD CONSTRAINT hesapno FOREIGN KEY (p_hesapno) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 :   ALTER TABLE ONLY public.personel DROP CONSTRAINT hesapno;
       public          postgres    false    210    214    3247            �           2606    25016    paracek paracek_bakiye_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paracek
    ADD CONSTRAINT paracek_bakiye_fkey FOREIGN KEY (bakiye) REFERENCES public.hesap(bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY public.paracek DROP CONSTRAINT paracek_bakiye_fkey;
       public          postgres    false    3245    214    228            �           2606    25011    paracek paracek_hesapno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.paracek
    ADD CONSTRAINT paracek_hesapno_fkey FOREIGN KEY (hesapno) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 F   ALTER TABLE ONLY public.paracek DROP CONSTRAINT paracek_hesapno_fkey;
       public          postgres    false    3247    214    228            �           2606    24758    parayukle parayukle_bakiye_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_bakiye_fkey FOREIGN KEY (bakiye) REFERENCES public.hesap(bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_bakiye_fkey;
       public          postgres    false    218    3245    214            �           2606    24722     parayukle parayukle_hesapno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parayukle
    ADD CONSTRAINT parayukle_hesapno_fkey FOREIGN KEY (hesapno) REFERENCES public.musteri(m_hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 J   ALTER TABLE ONLY public.parayukle DROP CONSTRAINT parayukle_hesapno_fkey;
       public          postgres    false    212    218    3237            �           2606    24765 +   parayuklemakbuz parayuklemakbuz_bakiye_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT parayuklemakbuz_bakiye_fkey FOREIGN KEY (bakiye) REFERENCES public.parayukle(bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT parayuklemakbuz_bakiye_fkey;
       public          postgres    false    218    226    3257            �           2606    24807 1   parayuklemakbuz parayuklemakbuz_eklenen.para_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT "parayuklemakbuz_eklenen.para_fkey" FOREIGN KEY ("eklenen.para") REFERENCES public.parayukle(eklenen_miktar) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ]   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT "parayuklemakbuz_eklenen.para_fkey";
       public          postgres    false    226    218    3259            �           2606    24812 2   parayuklemakbuz parayuklemakbuz_guncel.bakiye_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.parayuklemakbuz
    ADD CONSTRAINT "parayuklemakbuz_guncel.bakiye_fkey" FOREIGN KEY ("guncel.bakiye") REFERENCES public.parayukle(guncel_bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ^   ALTER TABLE ONLY public.parayuklemakbuz DROP CONSTRAINT "parayuklemakbuz_guncel.bakiye_fkey";
       public          postgres    false    226    218    3261            �           2606    24830 +   sifredegistir sifredegistir_eski_sifre_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sifredegistir
    ADD CONSTRAINT sifredegistir_eski_sifre_fkey FOREIGN KEY (eski_sifre) REFERENCES public.musteri(m_sifre) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 U   ALTER TABLE ONLY public.sifredegistir DROP CONSTRAINT sifredegistir_eski_sifre_fkey;
       public          postgres    false    212    220    3239            �           2606    24733 (   sifredegistir sifredegistir_hesapno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sifredegistir
    ADD CONSTRAINT sifredegistir_hesapno_fkey FOREIGN KEY (hesapno) REFERENCES public.musteri(m_hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 R   ALTER TABLE ONLY public.sifredegistir DROP CONSTRAINT sifredegistir_hesapno_fkey;
       public          postgres    false    212    220    3237            �           2606    24839 2   tranfermakbuz tranfermakbuz_gonderilen.miktar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tranfermakbuz
    ADD CONSTRAINT "tranfermakbuz_gonderilen.miktar_fkey" FOREIGN KEY ("gonderilen.miktar") REFERENCES public.transfer(gonderilen_miktar) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ^   ALTER TABLE ONLY public.tranfermakbuz DROP CONSTRAINT "tranfermakbuz_gonderilen.miktar_fkey";
       public          postgres    false    3253    222    216            �           2606    24844 .   tranfermakbuz tranfermakbuz_guncel.bakiye_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tranfermakbuz
    ADD CONSTRAINT "tranfermakbuz_guncel.bakiye_fkey" FOREIGN KEY ("guncel.bakiye") REFERENCES public.transfer(gonderen_guncel_bakiye) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 Z   ALTER TABLE ONLY public.tranfermakbuz DROP CONSTRAINT "tranfermakbuz_guncel.bakiye_fkey";
       public          postgres    false    216    222    3251            �           2606    24704 #   transfer transfer_alıcı_h_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT "transfer_alıcı_h_no_fkey" FOREIGN KEY ("alıcı_h_no") REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY public.transfer DROP CONSTRAINT "transfer_alıcı_h_no_fkey";
       public          postgres    false    214    216    3247            �           2606    24709 $   transfer transfer_gonderen_h_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transfer
    ADD CONSTRAINT transfer_gonderen_h_no_fkey FOREIGN KEY (gonderen_h_no) REFERENCES public.hesap(hesapno) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 N   ALTER TABLE ONLY public.transfer DROP CONSTRAINT transfer_gonderen_h_no_fkey;
       public          postgres    false    3247    216    214            y      x������ � �      o   �   x���K�@CדS�G���'g���TJa�╟�-
��h� ��
;��T�G�ANP����?5k͑fiQ���GM�B�O�'[{?:Za@��z&f:�;��h���:��f��V9�۰�>}�+__�U�n�>�      m      x������ � �      }      x������ � �      s      x������ � �      {      x������ � �      k   s   x�3��/�M��t�O�F����FFF�ƺF�
F�VFFV�Fz��F��&���MaЄ˘�?���3��Ɯ�#��l��ldlb
5�h����������������%>)��\1z\\\ �*'�      u      x������ � �      w      x������ � �      q      x������ � �     