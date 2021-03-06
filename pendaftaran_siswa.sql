PGDMP                         x            pendaftaran_siswa "   10.11 (Ubuntu 10.11-1.pgdg18.04+1)     12.1 (Ubuntu 12.1-1.pgdg18.04+1)     p           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            r           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            s           1262    16818    pendaftaran_siswa    DATABASE     �   CREATE DATABASE pendaftaran_siswa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 !   DROP DATABASE pendaftaran_siswa;
                postgres    false            �            1259    16821    data_calon_siswa    TABLE     d   CREATE TABLE public.data_calon_siswa (
    idsiswa integer NOT NULL,
    namasiswa text NOT NULL
);
 $   DROP TABLE public.data_calon_siswa;
       public            postgres    false            �            1259    16819    data_calon_siswa_idsiswa_seq    SEQUENCE     �   CREATE SEQUENCE public.data_calon_siswa_idsiswa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.data_calon_siswa_idsiswa_seq;
       public          postgres    false    197            t           0    0    data_calon_siswa_idsiswa_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.data_calon_siswa_idsiswa_seq OWNED BY public.data_calon_siswa.idsiswa;
          public          postgres    false    196            �            1259    16832    data_jurusan    TABLE     �   CREATE TABLE public.data_jurusan (
    idjurusan integer NOT NULL,
    idsiswa integer NOT NULL,
    namajurusan text NOT NULL
);
     DROP TABLE public.data_jurusan;
       public            postgres    false            �            1259    16830    data_jurusan_idjurusan_seq    SEQUENCE     �   CREATE SEQUENCE public.data_jurusan_idjurusan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.data_jurusan_idjurusan_seq;
       public          postgres    false    199            u           0    0    data_jurusan_idjurusan_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.data_jurusan_idjurusan_seq OWNED BY public.data_jurusan.idjurusan;
          public          postgres    false    198            �
           2604    16824    data_calon_siswa idsiswa    DEFAULT     �   ALTER TABLE ONLY public.data_calon_siswa ALTER COLUMN idsiswa SET DEFAULT nextval('public.data_calon_siswa_idsiswa_seq'::regclass);
 G   ALTER TABLE public.data_calon_siswa ALTER COLUMN idsiswa DROP DEFAULT;
       public          postgres    false    197    196    197            �
           2604    16835    data_jurusan idjurusan    DEFAULT     �   ALTER TABLE ONLY public.data_jurusan ALTER COLUMN idjurusan SET DEFAULT nextval('public.data_jurusan_idjurusan_seq'::regclass);
 E   ALTER TABLE public.data_jurusan ALTER COLUMN idjurusan DROP DEFAULT;
       public          postgres    false    198    199    199            k          0    16821    data_calon_siswa 
   TABLE DATA           >   COPY public.data_calon_siswa (idsiswa, namasiswa) FROM stdin;
    public          postgres    false    197          m          0    16832    data_jurusan 
   TABLE DATA           G   COPY public.data_jurusan (idjurusan, idsiswa, namajurusan) FROM stdin;
    public          postgres    false    199   ]       v           0    0    data_calon_siswa_idsiswa_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.data_calon_siswa_idsiswa_seq', 5, true);
          public          postgres    false    196            w           0    0    data_jurusan_idjurusan_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.data_jurusan_idjurusan_seq', 5, true);
          public          postgres    false    198            �
           2606    16829 &   data_calon_siswa data_calon_siswa_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.data_calon_siswa
    ADD CONSTRAINT data_calon_siswa_pkey PRIMARY KEY (idsiswa);
 P   ALTER TABLE ONLY public.data_calon_siswa DROP CONSTRAINT data_calon_siswa_pkey;
       public            postgres    false    197            �
           2606    16840    data_jurusan data_jurusan_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.data_jurusan
    ADD CONSTRAINT data_jurusan_pkey PRIMARY KEY (idjurusan);
 H   ALTER TABLE ONLY public.data_jurusan DROP CONSTRAINT data_jurusan_pkey;
       public            postgres    false    199            �
           2606    16841    data_jurusan idsiswa    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_jurusan
    ADD CONSTRAINT idsiswa FOREIGN KEY (idsiswa) REFERENCES public.data_calon_siswa(idsiswa);
 >   ALTER TABLE ONLY public.data_jurusan DROP CONSTRAINT idsiswa;
       public          postgres    false    2797    199    197            k   2   x�3�t��ut�2�tr��2��t�t��2�q1�2�F\1z\\\ �8	4      m   6   x�3�4��p�2�4��\ƜƜN����\&�&����!A�\���`U1z\\\ �"	A     