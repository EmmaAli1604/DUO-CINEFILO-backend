--
-- PostgreSQL database cluster dump
--

\restrict fap7SLiPBannZPkln31BvW2ltzdR5WqCBOJhhAap99r0AZJRq8w7dbYZQBnprH4

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:04mUhk9jxUvDyDcVfrtF3g==$+9tdtwdkYaesBIVkmjuZotlCAZCzHeqVhncI4UOU9BA=:oGJYeS0oTow3RI0tZtnvTa/+5FWg/rPmdkE1XM7LzRY=';

--
-- User Configurations
--








\unrestrict fap7SLiPBannZPkln31BvW2ltzdR5WqCBOJhhAap99r0AZJRq8w7dbYZQBnprH4

--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

\restrict p2Mvsff7WpRSOTLJx9giSzvw7kqx0yhDVCNjgwWWICtnoFy1XPNOQBTs53YjGgb

-- Dumped from database version 16.11 (Debian 16.11-1.pgdg13+1)
-- Dumped by pg_dump version 16.11 (Debian 16.11-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\unrestrict p2Mvsff7WpRSOTLJx9giSzvw7kqx0yhDVCNjgwWWICtnoFy1XPNOQBTs53YjGgb
\connect template1
\restrict p2Mvsff7WpRSOTLJx9giSzvw7kqx0yhDVCNjgwWWICtnoFy1XPNOQBTs53YjGgb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\unrestrict p2Mvsff7WpRSOTLJx9giSzvw7kqx0yhDVCNjgwWWICtnoFy1XPNOQBTs53YjGgb
\connect template1
\restrict p2Mvsff7WpRSOTLJx9giSzvw7kqx0yhDVCNjgwWWICtnoFy1XPNOQBTs53YjGgb

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict p2Mvsff7WpRSOTLJx9giSzvw7kqx0yhDVCNjgwWWICtnoFy1XPNOQBTs53YjGgb

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

\restrict V2qcPRjAJoKdKKcdwDUXSUrYGn2jT1kvykupbTYDQYyD5rCNEuPwJe56mErKokV

-- Dumped from database version 16.11 (Debian 16.11-1.pgdg13+1)
-- Dumped by pg_dump version 16.11 (Debian 16.11-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\unrestrict V2qcPRjAJoKdKKcdwDUXSUrYGn2jT1kvykupbTYDQYyD5rCNEuPwJe56mErKokV
\connect postgres
\restrict V2qcPRjAJoKdKKcdwDUXSUrYGn2jT1kvykupbTYDQYyD5rCNEuPwJe56mErKokV

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS '';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: cineteca; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cineteca (
    idcineteca bigint NOT NULL,
    nombre character varying(50),
    direccion character varying(50)
);


ALTER TABLE public.cineteca OWNER TO postgres;

--
-- Name: COLUMN cineteca.idcineteca; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cineteca.idcineteca IS 'Identificador único de la cineteca (Llave Primaria)';


--
-- Name: COLUMN cineteca.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cineteca.nombre IS 'Nombre del complejo de cine';


--
-- Name: COLUMN cineteca.direccion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.cineteca.direccion IS 'Dirección física de la cineteca';


--
-- Name: comentario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentario (
    idcomentario bigint NOT NULL,
    idusuario character varying(15) NOT NULL,
    idpelicula bigint NOT NULL,
    calificacion bigint NOT NULL,
    texto character varying(500),
    fecha timestamp without time zone
);


ALTER TABLE public.comentario OWNER TO postgres;

--
-- Name: COLUMN comentario.idcomentario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.comentario.idcomentario IS 'Identificador único del comentario (Llave Primaria)';


--
-- Name: COLUMN comentario.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.comentario.idusuario IS 'Llave foránea que referencia al usuario que escribió el comentario';


--
-- Name: COLUMN comentario.idpelicula; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.comentario.idpelicula IS 'Llave foránea que referencia a la película comentada';


--
-- Name: COLUMN comentario.calificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.comentario.calificacion IS 'Cantidad de estrellas en el comentario';


--
-- Name: COLUMN comentario.texto; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.comentario.texto IS 'Contenido textual del comentario';


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: etiqueta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.etiqueta (
    idetiqueta bigint NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public.etiqueta OWNER TO postgres;

--
-- Name: COLUMN etiqueta.idetiqueta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.etiqueta.idetiqueta IS 'Llave primaria de la tabla Etiqueta';


--
-- Name: COLUMN etiqueta.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.etiqueta.nombre IS 'El nombre que tiene a etiqueta Ej. Terror, Drama, etc.';


--
-- Name: horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horario (
    idhorario bigint NOT NULL,
    idpelicula bigint NOT NULL,
    idcineteca bigint NOT NULL,
    horario timestamp without time zone
);


ALTER TABLE public.horario OWNER TO postgres;

--
-- Name: COLUMN horario.idhorario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.horario.idhorario IS 'Identificador único de la función/proyección (Llave Primaria)';


--
-- Name: COLUMN horario.idpelicula; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.horario.idpelicula IS 'Llave foránea que referencia a la película';


--
-- Name: COLUMN horario.idcineteca; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.horario.idcineteca IS 'Llave foránea que referencia a la cineteca';


--
-- Name: COLUMN horario.horario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.horario.horario IS 'Fecha y hora exacta de inicio de la función';


--
-- Name: pelicula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelicula (
    idpelicula bigint NOT NULL,
    nombre character varying(255),
    director character varying(50),
    productora character varying(100),
    "año" smallint,
    calificacion real,
    poster character varying(50),
    trailer character varying(50),
    sinopsis text
);


ALTER TABLE public.pelicula OWNER TO postgres;

--
-- Name: COLUMN pelicula.idpelicula; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.idpelicula IS 'Identificador único de la película (Llave Primaria)';


--
-- Name: COLUMN pelicula.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.nombre IS 'Título oficial de la película';


--
-- Name: COLUMN pelicula.director; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.director IS 'Nombre del director de la película';


--
-- Name: COLUMN pelicula.productora; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.productora IS 'Casa productora que realizó la película';


--
-- Name: COLUMN pelicula."año"; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula."año" IS 'Año de estreno de la película';


--
-- Name: COLUMN pelicula.calificacion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.calificacion IS 'Calificación promedio de la película (ej: 8.5)';


--
-- Name: COLUMN pelicula.poster; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.poster IS 'Ruta o URL de la imagen del póster';


--
-- Name: COLUMN pelicula.trailer; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.pelicula.trailer IS 'Ruta o URL del trailer (si esta disponible)';


--
-- Name: peliculaetiqueta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peliculaetiqueta (
    idetiqueta bigint NOT NULL,
    idpelicula bigint NOT NULL
);


ALTER TABLE public.peliculaetiqueta OWNER TO postgres;

--
-- Name: COLUMN peliculaetiqueta.idetiqueta; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.peliculaetiqueta.idetiqueta IS 'PK de la etiqueta';


--
-- Name: COLUMN peliculaetiqueta.idpelicula; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.peliculaetiqueta.idpelicula IS 'PK de la pelicula';


--
-- Name: users_usertoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_usertoken (
    id bigint NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    is_active boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users_usertoken OWNER TO postgres;

--
-- Name: users_usertoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users_usertoken ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_usertoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    idusuario character varying(15) NOT NULL,
    password character varying(255),
    nombre character varying(50),
    apellidopaterno character varying(50),
    apellidomaterno character varying(50),
    fechanacimiento date,
    genero character(1),
    token character varying(255),
    email character varying(255)
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: COLUMN usuario.idusuario; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.idusuario IS 'Identificador único del usuario (Llave Primaria)';


--
-- Name: COLUMN usuario.password; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.password IS 'Hash de la contraseña del usuario';


--
-- Name: COLUMN usuario.nombre; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.nombre IS 'Nombre(s) del usuario';


--
-- Name: COLUMN usuario.apellidopaterno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.apellidopaterno IS 'Apellido paterno del usuario';


--
-- Name: COLUMN usuario.apellidomaterno; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.apellidomaterno IS 'Apellido materno del usuario';


--
-- Name: COLUMN usuario.fechanacimiento; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.fechanacimiento IS 'Fecha de nacimiento del usuario';


--
-- Name: COLUMN usuario.genero; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.genero IS 'Género (ej: M, F, O)';


--
-- Name: COLUMN usuario.token; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN public.usuario.token IS 'Token de sesión o autenticación';


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add pelicula	7	add_pelicula
26	Can change pelicula	7	change_pelicula
27	Can delete pelicula	7	delete_pelicula
28	Can view pelicula	7	view_pelicula
29	Can add usuario	8	add_usuario
30	Can change usuario	8	change_usuario
31	Can delete usuario	8	delete_usuario
32	Can view usuario	8	view_usuario
33	Can add user token	9	add_usertoken
34	Can change user token	9	change_usertoken
35	Can delete user token	9	delete_usertoken
36	Can view user token	9	view_usertoken
37	Can add comentario	10	add_comentario
38	Can change comentario	10	change_comentario
39	Can delete comentario	10	delete_comentario
40	Can view comentario	10	view_comentario
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cineteca; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cineteca (idcineteca, nombre, direccion) FROM stdin;
1	Cineteca Nacional	Av. México Coyoacán 389, CDMX
2	Cinépolis Diana	Paseo de la Reforma 423, CDMX
3	Cinemex Reforma 222	Paseo de la Reforma 222, CDMX
4	Cine Tonalá Roma	Tonalá 261, Roma Sur, CDMX
5	Cinematógrafo del Chopo	Dr. E. González Martínez 10, CDMX
\.


--
-- Data for Name: comentario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentario (idcomentario, idusuario, idpelicula, calificacion, texto, fecha) FROM stdin;
1764111015804	silson	1128650	0	¡Excelente película! Me encantó el final.	2025-11-25 22:50:15.742651
1763963119576	usuario1	1128650	2	¡Excelente película! Me encantó el final.	2023-11-18 16:54:13.792
1764112287645	silson	1128650	10	¡Excelente película! Me encantó el final.	2025-11-25 23:11:27.547294
1764112892062	silson	1128650	8	esta pelicula esta muy XD	2025-11-25 23:21:31.978375
1764134186055	silson	1481331	6	que es esta wea, XDXDXD	2025-11-26 05:16:26.003768
1764317946346	NuevoUsuario	1062722	8	esta pelicula esta muy buena, la recomiendo	2025-11-28 08:19:06.279825
1764319719890	NuevoUsuario2	1062722	10	me gusto la peli	2025-11-28 08:48:39.875588
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	catalog	pelicula
8	users	usuario
9	users	usertoken
10	reviews	comentario
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2025-11-23 01:43:26.551626+00
2	auth	0001_initial	2025-11-23 01:43:26.604405+00
3	admin	0001_initial	2025-11-23 01:43:26.619141+00
4	admin	0002_logentry_remove_auto_add	2025-11-23 01:43:26.626516+00
5	admin	0003_logentry_add_action_flag_choices	2025-11-23 01:43:26.635518+00
6	contenttypes	0002_remove_content_type_name	2025-11-23 01:43:26.655209+00
7	auth	0002_alter_permission_name_max_length	2025-11-23 01:43:26.664167+00
8	auth	0003_alter_user_email_max_length	2025-11-23 01:43:26.673154+00
9	auth	0004_alter_user_username_opts	2025-11-23 01:43:26.681936+00
10	auth	0005_alter_user_last_login_null	2025-11-23 01:43:26.69446+00
11	auth	0006_require_contenttypes_0002	2025-11-23 01:43:26.69634+00
12	auth	0007_alter_validators_add_error_messages	2025-11-23 01:43:26.707586+00
13	auth	0008_alter_user_username_max_length	2025-11-23 01:43:26.720876+00
14	auth	0009_alter_user_last_name_max_length	2025-11-23 01:43:26.731575+00
15	auth	0010_alter_group_name_max_length	2025-11-23 01:43:26.742491+00
16	auth	0011_update_proxy_permissions	2025-11-23 01:43:26.75092+00
17	auth	0012_alter_user_first_name_max_length	2025-11-23 01:43:26.760561+00
18	sessions	0001_initial	2025-11-23 01:43:26.769362+00
19	catalog	0001_initial	2025-11-24 15:51:33.635776+00
20	reviews	0001_initial	2025-11-24 15:51:33.646131+00
21	users	0001_initial	2025-11-24 15:51:33.6704+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
l0hn76k63cp12t2uph44cxp65diwt94l	.eJztVd9r2zAQ_ldueukGWZslC9tC1-GmhhYSO3PaQlnGOEvn2MzRZZJcGkr_98nOSpY-ZGWBPuXl9OOEvrvvO-nuhczR_cgL69gsRf_bvbCkFRnRF5X1Q0s4unN-dR4PA_HQ-sufslu7hwy2IO24BZrBkZ4xVBrBkF1UZB3CwvDM4ByVn6JBIMuHmxduAuZc4hbAadVu47tzf-gVTHgJ42B0cwj1bpp9reqRPoEiS2ghR0kGcl5-gePUHJ00xk8r51iDLNHaz1OROv2WF7JgPRXAWpaF_Om3Sd8WaOLG8frgOkxgECSX4TBMgoM3U3EyrdTHrvQ2QwnXHmeAxlFJBo-PVgj_CZWEg3gURmdB8genk_bakJDkebHKTyucE2A54x2hgpurs8dsOh96XQiWlVrHv5dpL9NeppeQaYOQLXqNyWQk69-2_lstWB-jDxFWsZH1WkFap5Wh_VWRwv7OWp1eTXxkMI4TiOLRaRKu9VLeqraCMRuIeJ4a2pHBmoZwcpmEUTx5AtPpQWidIc322Yw-XrWF0IjBdy_vampBNd2pySfDW2-tL0FZx4ZNV6sTaNjt6t2JrTvrUy7fw4XxpQgXuvCHnpXoPxr0_oW_5Av__vAbdeogKA:1vNk1F:l1Aw-fFeIAaBwZrmOvOjOn8ty1C9O8t6_06HBBJrqP0	2025-12-09 03:47:09.6853+00
5tu9vn1v6hhan22y4mq5wqlqz5m9e4e8	.eJxNijEKwzAMAL8iNJs8IFso3jKZ0qWUojYiyVArSDKkBP-93prp7uAOfC_kz2U1F_1ifz_QOE-s2GOxhoDOu7e6xQSXIV3jGNOANZzGl_j_GwVs5ewSIAs451mgZAJl2wqbE2wqs9KHpqakBGzSYX3UH-52L7Y:1vO9T5:lmXy-jILTVpZEnJxv7RFCPAcapmuV6T22YSIdh3Kd9I	2025-12-10 06:57:35.419626+00
qcskf8mwf2zysr7chm55jrntrxk65jrs	e30:1vOAcY:lNzmeuiYNy7VATWtl9jEBIe0m6l_Khi8bPt7iqovTPw	2025-12-10 08:11:26.054358+00
0vrtoagscdpjalriw05zp7gmxhqnzzho	e30:1vOAjF:V7WBYy2dLQYoyYGJbgexmnplaB1nrtOs41hPBD8iPF4	2025-12-10 08:18:21.567233+00
67mblm7dqiviyi5gu6dqfukd8eako30e	e30:1vOAjf:fn5keAnKLvlvtRkAStLcXxeI_ovIDxN6eylPCVDp2OI	2025-12-10 08:18:47.806971+00
9ikmg01hg0zav44u6fmp12zvqdnxe4d5	e30:1vOAjo:a23lu2GvTtPeL4pLbDzjUlMWvPi-uB6Vgltcqe9Iq2Q	2025-12-10 08:18:56.143037+00
wch7gt0ym89ci5dk4wm5qnc4z7t325ew	e30:1vOAjy:Efavw68143L4tXPqz6wF7HAskqp39gapiiAyocDkFbk	2025-12-10 08:19:06.878449+00
1uatqo9v0cgpx7dgvv7h8nmrd8ktj2pr	e30:1vOAkS:1xVvN9VyjRd4_4Dxa7navZlqz-6gQzGgyf5ugn5WrS8	2025-12-10 08:19:36.550774+00
fzcn46pi01f3pqgtyzm99kuz7lz0sai0	e30:1vOAoO:iPFiHghisdq9xgHgryjNtWKZPc9TQZ82IqTgVhfx920	2025-12-10 08:23:40.538149+00
ia5mujqyjvzdip2ngwt1z4j5dc0qh4t3	e30:1vOApu:37zlw4Kr7tw4yzFkLBck6WlJ94sWaa9MSGheOe8aexs	2025-12-10 08:25:14.136375+00
71xgrsxo0fxj316l3n5h1w53e9962znb	e30:1vOAqD:HQ-jLmQ08Hfe92awK-h520bc7D0EW6MsR_84aDLWO4I	2025-12-10 08:25:33.741312+00
rzl4lr5y6xlnirnsp0th5xqbkdmiah1a	e30:1vOAuZ:4ROfXWlBan4EoaJc4LQz4JT3-mWXSA0EdPFZ3VHHZ2E	2025-12-10 08:30:03.544632+00
vs8bg4nz87qp3oh7m0v9t5c99f72hcik	e30:1vOAvD:i-lPXQ9cYf8lhO4AWrbtcTaYX4kkW1GHdFdYPGJqbSY	2025-12-10 08:30:43.693608+00
16be9jj2s1mbjyzdrwg0mx4k63ekuvqg	e30:1vOAz3:hjCPtnNKZ1zdS7u0whumILz0f0FAig6CcWXTUDjoWV4	2025-12-10 08:34:41.496291+00
fxop6xowhz7wzty2gxk0fru9cw8fp253	e30:1vOB0t:l1N9vLOIMrIzrm8XzTLUUsMEeAMr3TuhPOc2UyMI0IQ	2025-12-10 08:36:35.143486+00
1vudl52ii9t7npornou8b2b02g0twcch	e30:1vOB1Q:Fp9msxjAgBQSObeHnA2n6PhExKoS2hBhazjIb4_fnqU	2025-12-10 08:37:08.468503+00
w5ly6l0a7i5hj6kt7bhrx0kzqxbu28f6	e30:1vOB2D:TtuyHQg661HEx3rsgxpxrqGU7W3y8HjCfZE7jpyA-9g	2025-12-10 08:37:57.319168+00
lmneogozwudbxw01b1qilt2x2b2keicx	e30:1vOB2e:KXasFhB2K7MHPwoZDeN3RxrkfeXwyo7VvmC5ARG-1Gc	2025-12-10 08:38:24.920371+00
4g3u3iq42q05b8oke8mq150pn3u0phwu	e30:1vOB62:PyZevGRFmO7WfKsQ-3z9OVAiC-8nvUmT7HEmZ_vcON0	2025-12-10 08:41:54.664148+00
aa1un8gft0af9h2bqcfkb2f0llmx8hae	e30:1vOB64:oBJh6OHulA8vERIqbu0YZBNX-F4NtMiCHhsTjqof8HE	2025-12-10 08:41:56.527882+00
t5h6sjkpjnuoghzn3r3e8g8mum78wn6g	e30:1vOB67:-VkxpVHrhWbtHD8YSkxzQH5oiYvRnYyN9TdZ5_T5aEQ	2025-12-10 08:41:59.904897+00
z5gc7tnylxnd416sfwuas5e1t1hqo9bv	e30:1vOB6A:DlQdAewyc7ixw4r4EaArQgI6jxj07aDLE5_pKLNn6l4	2025-12-10 08:42:02.17945+00
8plgt46x770kyz65qkippaw45ud6g14z	e30:1vOB92:TCVNy21yrY0Zx-I3IHfwVrk3AFy-6Hooi2tSIh1i8vY	2025-12-10 08:45:00.557797+00
1ewwhir5ovma9gjbubjf3xljm9nx3g0i	e30:1vOB95:1ZrecXHYrbkfOApeLZKhO9Lj1FQN1Chbe3df4nMLoUQ	2025-12-10 08:45:03.831339+00
7znlx3nbio8mc80morjivqi7wxen5yqd	e30:1vOB9R:lwBqjUU4ZC3PW5Gj_mWpr3YiUAgl5RxgmEkQlRCdxL0	2025-12-10 08:45:25.596555+00
xvw4vvj8m04cgprdoa4jtd8d07czbwtw	e30:1vOB9o:Yz2catYVjTShAfQdc0oAkYyFnX3I8cypUczlGVrUNWE	2025-12-10 08:45:48.784096+00
uxfda4figpx0ru4xdni5tkv4rttgq5z2	e30:1vOB9u:SH2BXB5symZE30yWO1cUEhk8qFqmcclHuw4KdAgpK20	2025-12-10 08:45:54.309143+00
prg0eiyxblozs0q69l4dighjng9iq9wg	e30:1vOB9w:UxZYlHiQB-J2jY9LJjJFTMrj46zdTGJw3QpdV6DESgU	2025-12-10 08:45:56.391193+00
ckwbevmyd0atkcx125b598cf71e7qub6	e30:1vOBAL:xXdMOsDJ4Tpu8QqKsRTgM_qbFVB2-oXcsQ1nXObAhZo	2025-12-10 08:46:21.639812+00
ioa2ghcwbw4acck3b8iouv54vroodx1c	e30:1vOBB9:tfRwFu0Wk_mowhMMDWlxbuNX2S_unXCg6Y1qc55PaTc	2025-12-10 08:47:11.890121+00
sko2hee6oonf6hvbn2l4x7tmn2z7z14k	e30:1vOBBA:v49sEPXj0MevrvCCMikyd0Ign-7AZRyh-zyGZALlBwo	2025-12-10 08:47:12.978275+00
d63p7vgp27u1wmnfyjv5hbr9xc001leq	e30:1vOBDv:4GOPQzwj0V5JxpXr-39BeinbI2wh0PhL_w4xOue0DXc	2025-12-10 08:50:03.59376+00
x1vnbc9mjfm64t64wug3gai66xepkotj	e30:1vOBEA:eIvhKDD4Ufqg_6LUQhP1_VlBbsedsDuBg5Hl3bCTQLw	2025-12-10 08:50:18.239887+00
3skpmys5v01vyk1m3m2s70adnui0funs	e30:1vOBF2:IFYTJgJNBY8XLiCzA92owk6N9dSO-FCKEqV_VhuCKi4	2025-12-10 08:51:12.100758+00
q5dw331m93xgliwril1ac5ag2axozjoc	e30:1vOBF6:qH0-9nmKl_Cr7sUHDZEXixyh8DqUxReTzPPuA_NB3mo	2025-12-10 08:51:16.54693+00
a8jxgzor27focrt9i8zor7m9jgxwhbxl	e30:1vOBFu:9Fjs1noNT0BwAmmeqHF0h0vAlOMJBMQeO1nSUC9L1zI	2025-12-10 08:52:06.802086+00
573wzm23xd27isytcc3e7r245blycutq	e30:1vOBFy:fFP9PiedSB8Jp5Lc9vbbdihRjUz55HgcWYbhKs2DgH8	2025-12-10 08:52:10.956009+00
qfayjs1w1rzu77zyzsdf78d6lkcuowjl	e30:1vOBG4:JNbb5ONO2UAFb4LY9KWPfKB6U51BDrsGIJC57e9k-Rg	2025-12-10 08:52:16.05188+00
ut8y7fubqnlu0l46qe9yti9j6b380x2b	eyJib3RfY29udGV4dCI6eyJ1c2VybmFtZSI6IiIsInVzZXJpZCI6InRvY2luZXRhMiIsInRva2VuIjoiNi1IWE0zbTRwaVVvVUJlWF9nbXM0Z3g3dzZPLTk0dmpLdjd0bnoyUUFpQSJ9fQ:1vOBJg:aCk0e3PcUTmJk3O4WS2Q10QVXfLGVpSz6HwgxYmgujA	2025-12-10 08:56:00.776188+00
tq8hb18j8v6r65si48mnbc4hddik2hx6	.eJyrVkrKL4lPzs8rSa0oUbKqViotTi3KS8xNVbJSUtIB8zJTIOyS_OzUPBCzthYABb4Rww:1vOBJo:_IzlYHuP562Z8cP_cXBw6_QhEpOC5Jdvcz7ChZDKvPg	2025-12-10 08:56:08.091759+00
9kkf39x727uzuspaykdmm62cnlng4xel	eyJib3RfY29udGV4dCI6eyJ1c2VybmFtZSI6IiIsInVzZXJpZCI6InRvY2luZXRhMiIsInRva2VuIjoiNi1IWE0zbTRwaVVvVUJlWF9nbXM0Z3g3dzZPLTk0dmpLdjd0bnoyUUFpQSJ9fQ:1vOBK9:m5ZfrA4SlEH_qBvUKfYrDmRtYaE2eIYAylbFsgeDa9c	2025-12-10 08:56:29.851159+00
g3nq2jlfm972qgvhb39mu0oc447ppbdc	.eJyrVkrKL4lPzs8rSa0oUbKqViotTi3KS8xNVbJSUtIB8zJTIOyS_OzUPBCzthYABb4Rww:1vOBKD:SFheoJ7F5aofkKzXc1lKdePNS7x5iuAHakNghvPRl8E	2025-12-10 08:56:33.571705+00
oozsq0yh21p82mix5817lm03codgcjf8	.eJyrVkrKL4lPzs8rSa0oUbKqViotTi3KS8xNVbJSUtIB8zJTIOyS_OzUPBCzthYABb4Rww:1vOBKJ:ZDTokV4L5gi7zNXn9q9mB-nDJS0F46vDAp4o-mxgzMU	2025-12-10 08:56:39.930515+00
ls69ac7kx1w9dug1u173z8xbft2mg32a	eyJib3RfY29udGV4dCI6eyJ1c2VyaWQiOiJ0b2NpbmV0YTIiLCJ0b2tlbiI6IjYtSFhNM200cGlVb1VCZVhfZ21zNGd4N3c2Ty05NHZqS3Y3dG56MlFBaUEifX0:1vOBSs:aUehN1iPcRMd1mLHa6XFAwVTGmyImHDA2wj3wDAtvZ8	2025-12-10 09:05:30.982352+00
davb81bq96iisxa4p89vfcz1h4mxcjsm	e30:1vOBSz:oIf0B2KPa-Loj9Jb5qMTQ4s1Q9SpTTavrpPMEqWgMjA	2025-12-10 09:05:37.996246+00
rg97t4z9q0q8etzu1lyqxr9i2yuwj9tw	e30:1vOBVO:RCQZMz_wV-2E6Rb5dotMAAPxJD3rxRTU6GXXqprCZr8	2025-12-10 09:08:06.975873+00
\.


--
-- Data for Name: etiqueta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.etiqueta (idetiqueta, nombre) FROM stdin;
28	Acción
80	Crimen
53	Suspense
35	Comedia
18	Drama
27	Terror
14	Fantasía
12	Aventura
878	Ciencia ficción
10751	Familia
10749	Romance
16	Animación
9648	Misterio
10402	Música
10752	Bélica
36	Historia
\.


--
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horario (idhorario, idpelicula, idcineteca, horario) FROM stdin;
1	1062722	1	2025-12-11 22:45:00
2	1062722	1	2026-01-12 13:00:00
3	1062722	2	2026-01-29 22:00:00
4	1062722	2	2025-12-26 21:00:00
5	1062722	3	2026-01-06 22:00:00
6	1062722	4	2025-12-14 16:30:00
7	1062722	4	2026-01-24 20:30:00
8	1062722	5	2025-12-01 16:15:00
9	1062722	5	2026-01-03 15:00:00
10	1062722	5	2026-01-01 22:45:00
11	1062722	5	2026-01-16 23:45:00
12	1033462	1	2025-12-01 22:45:00
13	1033462	2	2026-01-19 23:45:00
14	1033462	2	2026-01-28 14:00:00
15	1033462	2	2025-12-04 16:30:00
16	1033462	2	2025-12-08 14:00:00
17	1033462	3	2025-12-26 21:30:00
18	1033462	3	2026-01-13 15:15:00
19	1033462	3	2025-12-09 13:15:00
20	1033462	3	2026-01-31 13:30:00
21	1033462	4	2026-01-22 16:00:00
22	1033462	4	2025-12-20 18:15:00
23	1033462	4	2026-01-19 14:15:00
24	1033462	4	2025-12-15 22:00:00
25	1033462	5	2026-01-23 22:00:00
26	1033462	5	2026-01-09 12:45:00
27	1033462	5	2026-01-23 11:45:00
28	1033462	5	2025-12-29 15:45:00
29	1084222	1	2026-01-02 21:30:00
30	1084222	1	2026-01-29 18:45:00
31	1084222	2	2026-01-19 21:15:00
32	1084222	3	2025-12-23 23:30:00
33	1084222	3	2025-12-27 13:45:00
34	1084222	3	2026-01-29 20:00:00
35	1084222	3	2025-12-21 19:30:00
36	1084222	4	2026-01-28 18:00:00
37	1084222	5	2026-01-23 15:15:00
38	1084222	5	2026-01-17 23:15:00
39	1084222	5	2026-01-08 22:15:00
40	1481331	1	2026-01-04 16:45:00
41	1481331	1	2025-12-13 13:45:00
42	1481331	2	2026-01-04 19:30:00
43	1481331	2	2026-01-20 13:30:00
44	1481331	2	2026-01-07 18:00:00
45	1481331	2	2025-12-29 20:45:00
46	1481331	3	2026-01-22 22:30:00
47	1481331	3	2025-12-14 20:45:00
48	1481331	3	2025-12-09 18:15:00
49	1481331	4	2026-01-03 12:15:00
50	1481331	4	2025-12-20 13:15:00
51	1481331	4	2026-01-03 18:45:00
52	1481331	5	2025-12-07 11:30:00
53	1481331	5	2026-01-05 23:30:00
54	1481331	5	2025-12-16 15:15:00
55	1242898	1	2025-12-16 19:15:00
56	1242898	1	2025-12-25 21:30:00
57	1242898	1	2026-01-15 13:00:00
58	1242898	1	2026-01-11 17:15:00
59	1242898	2	2026-01-12 11:00:00
60	1242898	2	2025-12-28 18:45:00
61	1242898	2	2025-12-14 14:15:00
62	1242898	2	2025-12-02 12:45:00
63	1242898	3	2026-01-20 23:30:00
64	1242898	3	2026-01-01 16:30:00
65	1242898	3	2025-12-07 11:45:00
66	1242898	4	2026-01-16 21:15:00
67	1242898	4	2026-01-24 12:30:00
68	1242898	4	2025-12-23 13:45:00
69	1242898	4	2025-12-03 17:15:00
70	1242898	5	2026-01-23 18:30:00
71	1242898	5	2025-12-18 20:30:00
72	1242898	5	2025-12-09 13:30:00
73	1242898	5	2025-12-14 11:15:00
74	967941	1	2026-01-13 12:15:00
75	967941	1	2025-12-31 22:15:00
76	967941	2	2025-12-10 16:00:00
77	967941	2	2025-12-06 13:30:00
78	967941	2	2026-01-24 16:45:00
79	967941	3	2025-12-25 16:45:00
80	967941	3	2025-12-20 22:00:00
81	967941	3	2026-01-08 16:00:00
82	967941	3	2025-12-20 16:30:00
83	967941	4	2025-12-07 21:00:00
84	967941	4	2025-12-21 12:45:00
85	967941	4	2026-01-05 13:15:00
86	967941	5	2025-12-23 12:45:00
87	967941	5	2025-12-22 20:00:00
88	967941	5	2026-01-07 18:30:00
89	1426968	1	2026-01-01 14:30:00
90	1426968	2	2025-12-11 11:15:00
91	1426968	3	2026-01-13 19:45:00
92	1426968	4	2025-12-10 11:15:00
93	1426968	4	2025-12-09 16:00:00
94	1426968	4	2026-01-06 23:00:00
95	1426968	5	2025-12-27 20:30:00
96	1426968	5	2026-01-16 15:15:00
97	1426968	5	2026-01-21 20:45:00
98	1296504	1	2026-01-24 20:00:00
99	1296504	1	2026-01-06 22:45:00
100	1296504	2	2026-01-04 21:15:00
101	1296504	2	2025-12-17 21:30:00
102	1296504	3	2026-01-16 11:45:00
103	1296504	3	2025-12-16 19:45:00
104	1296504	4	2025-12-28 19:15:00
105	1296504	4	2025-12-21 15:15:00
106	1296504	4	2026-01-02 19:45:00
107	1296504	5	2026-01-09 17:00:00
108	1296504	5	2026-01-06 21:15:00
109	1197137	1	2025-12-19 21:30:00
110	1197137	1	2026-01-11 20:45:00
111	1197137	1	2025-12-30 13:30:00
112	1197137	2	2026-01-11 20:00:00
113	1197137	2	2026-01-02 14:30:00
114	1197137	3	2025-12-22 15:00:00
115	1197137	3	2026-01-20 17:30:00
116	1197137	3	2025-12-31 12:45:00
117	1197137	3	2026-01-02 19:45:00
118	1197137	4	2025-12-21 23:30:00
119	1197137	4	2026-01-24 11:15:00
120	1197137	5	2025-12-15 11:45:00
121	1197137	5	2025-12-20 16:30:00
122	1026821	1	2026-01-06 20:15:00
123	1026821	2	2025-12-16 17:15:00
124	1026821	2	2025-12-27 13:15:00
125	1026821	2	2026-01-17 21:45:00
126	1026821	3	2026-01-17 15:00:00
127	1026821	3	2026-01-21 13:00:00
128	1026821	3	2026-01-18 22:00:00
129	1026821	3	2026-01-03 11:15:00
130	1026821	4	2026-01-07 17:45:00
131	1026821	4	2026-01-07 12:00:00
132	1026821	4	2026-01-28 13:00:00
133	1026821	4	2025-12-26 22:15:00
134	1026821	5	2025-12-06 14:45:00
135	1026821	5	2026-01-15 14:45:00
136	1026821	5	2026-01-15 19:00:00
137	1026821	5	2025-12-24 15:00:00
138	1429738	1	2025-12-12 19:45:00
139	1429738	1	2026-01-26 18:00:00
140	1429738	2	2025-12-22 14:45:00
141	1429738	2	2025-12-23 21:15:00
142	1429738	3	2025-12-04 13:45:00
143	1429738	3	2025-12-16 23:00:00
144	1429738	4	2025-12-09 20:30:00
145	1429738	5	2025-12-19 13:15:00
146	937941	1	2025-12-20 14:45:00
147	937941	1	2025-12-07 21:30:00
148	937941	1	2025-12-05 12:15:00
149	937941	2	2026-01-31 23:15:00
150	937941	2	2026-01-24 19:15:00
151	937941	3	2026-01-26 20:45:00
152	937941	4	2026-01-24 23:45:00
153	937941	4	2026-01-04 22:45:00
154	937941	5	2025-12-27 15:00:00
155	937941	5	2025-12-27 14:30:00
156	937941	5	2026-01-04 11:00:00
157	937941	5	2025-12-29 16:30:00
158	1280518	1	2026-01-15 11:00:00
159	1280518	1	2026-01-08 23:30:00
160	1280518	1	2026-01-04 14:45:00
161	1280518	2	2026-01-11 17:15:00
162	1280518	2	2025-12-23 14:00:00
163	1280518	3	2026-01-23 12:00:00
164	1280518	3	2026-01-14 20:45:00
165	1280518	3	2025-12-02 20:30:00
166	1280518	4	2025-12-26 18:30:00
167	1280518	4	2025-12-18 22:45:00
168	1280518	4	2026-01-12 15:00:00
169	1280518	4	2025-12-05 16:00:00
170	1280518	5	2026-01-09 17:15:00
171	1280518	5	2025-12-27 13:00:00
172	1280518	5	2025-12-23 13:15:00
173	1280518	5	2026-01-18 21:00:00
174	1214140	1	2026-01-25 23:00:00
175	1214140	1	2025-12-19 23:30:00
176	1214140	2	2025-12-24 11:45:00
177	1214140	2	2025-12-01 11:00:00
178	1214140	3	2026-01-24 20:15:00
179	1214140	4	2026-01-11 17:45:00
180	1214140	4	2026-01-19 12:00:00
181	1214140	4	2025-12-30 14:15:00
182	1214140	5	2026-01-07 20:00:00
183	1214140	5	2026-01-19 13:45:00
184	803796	1	2025-12-02 11:45:00
185	803796	2	2026-01-29 17:30:00
186	803796	3	2026-01-11 16:15:00
187	803796	4	2025-12-07 23:45:00
188	803796	4	2025-12-15 22:00:00
189	803796	4	2026-01-02 20:30:00
190	803796	4	2025-12-18 11:15:00
191	803796	5	2025-12-01 19:30:00
192	803796	5	2026-01-28 22:45:00
193	1134278	1	2026-01-29 18:15:00
194	1134278	1	2025-12-10 12:45:00
195	1134278	1	2025-12-12 14:45:00
196	1134278	1	2025-12-30 12:15:00
197	1134278	2	2026-01-08 19:30:00
198	1134278	2	2026-01-24 11:00:00
199	1134278	2	2025-12-03 14:15:00
200	1134278	3	2025-12-16 15:30:00
201	1134278	3	2025-12-13 12:45:00
202	1134278	4	2025-12-27 20:00:00
203	1134278	4	2025-12-07 18:15:00
204	1134278	5	2026-01-20 17:00:00
205	1161617	1	2026-01-29 20:30:00
206	1161617	1	2026-01-16 17:45:00
207	1161617	2	2025-12-25 20:15:00
208	1161617	2	2025-12-09 14:45:00
209	1161617	2	2025-12-02 22:30:00
210	1161617	3	2026-01-14 15:45:00
211	1161617	4	2025-12-08 23:30:00
212	1161617	5	2026-01-04 16:00:00
213	1161617	5	2025-12-22 21:45:00
214	1117857	1	2025-12-26 13:45:00
215	1117857	1	2025-12-07 21:45:00
216	1117857	1	2026-01-26 21:15:00
217	1117857	1	2025-12-29 18:45:00
218	1117857	2	2026-01-02 16:00:00
219	1117857	2	2025-12-01 23:30:00
220	1117857	3	2026-01-15 17:15:00
221	1117857	3	2025-12-31 18:45:00
222	1117857	3	2026-01-29 19:00:00
223	1117857	4	2025-12-30 14:30:00
224	1117857	4	2025-12-15 19:45:00
225	1117857	5	2026-01-19 20:00:00
226	1117857	5	2025-12-12 11:45:00
227	1117857	5	2026-01-08 23:30:00
228	1117857	5	2026-01-21 21:45:00
229	1511789	1	2025-12-09 16:15:00
230	1511789	1	2025-12-25 15:30:00
231	1511789	1	2026-01-21 15:00:00
232	1511789	2	2026-01-08 18:15:00
233	1511789	2	2026-01-22 15:15:00
234	1511789	3	2026-01-03 13:15:00
235	1511789	3	2026-01-14 11:45:00
236	1511789	3	2026-01-21 19:30:00
237	1511789	3	2025-12-03 15:45:00
238	1511789	4	2025-12-08 23:00:00
239	1511789	4	2026-01-04 22:00:00
240	1511789	4	2026-01-22 23:45:00
241	1511789	4	2026-01-27 21:45:00
242	1511789	5	2025-12-01 15:45:00
243	1511789	5	2025-12-07 23:15:00
244	1511789	5	2026-01-31 21:30:00
245	1511789	5	2026-01-16 14:00:00
246	1242419	1	2025-12-09 22:00:00
247	1242419	2	2025-12-31 18:30:00
248	1242419	3	2026-01-25 11:45:00
249	1242419	3	2026-01-23 22:15:00
250	1242419	3	2025-12-04 11:15:00
251	1242419	4	2025-12-02 12:30:00
252	1242419	5	2025-12-09 17:30:00
253	1242419	5	2026-01-20 19:45:00
254	1244531	1	2025-12-31 19:45:00
255	1244531	1	2025-12-03 20:00:00
256	1244531	2	2025-12-01 18:15:00
257	1244531	2	2026-01-06 14:00:00
258	1244531	2	2026-01-01 21:15:00
259	1244531	3	2026-01-20 13:15:00
260	1244531	3	2026-01-19 18:15:00
261	1244531	3	2025-12-09 23:30:00
262	1244531	3	2025-12-14 22:15:00
263	1244531	4	2025-12-26 15:15:00
264	1244531	4	2026-01-18 11:30:00
265	1244531	4	2026-01-31 11:00:00
266	1244531	4	2025-12-27 22:30:00
267	1244531	5	2026-01-20 20:15:00
268	1244531	5	2025-12-12 22:15:00
269	1244531	5	2025-12-01 11:15:00
270	1244531	5	2025-12-19 13:45:00
271	507244	1	2025-12-21 11:45:00
272	507244	1	2026-01-16 18:00:00
273	507244	2	2025-12-22 21:30:00
274	507244	3	2026-01-08 20:30:00
275	507244	3	2025-12-25 21:15:00
276	507244	4	2025-12-29 23:45:00
277	507244	4	2025-12-14 14:15:00
278	507244	4	2025-12-07 22:45:00
279	507244	4	2026-01-15 17:30:00
280	507244	5	2026-01-24 11:45:00
281	507244	5	2026-01-12 20:15:00
282	1323475	1	2026-01-18 22:30:00
283	1323475	1	2025-12-16 15:00:00
284	1323475	2	2026-01-27 11:00:00
285	1323475	2	2026-01-03 12:45:00
286	1323475	2	2025-12-01 14:30:00
287	1323475	2	2025-12-27 18:15:00
288	1323475	3	2025-12-09 17:15:00
289	1323475	3	2025-12-24 21:00:00
290	1323475	4	2026-01-15 21:15:00
291	1323475	4	2025-12-20 14:30:00
292	1323475	4	2026-01-13 21:30:00
293	1323475	4	2026-01-16 20:15:00
294	1323475	5	2025-12-12 16:45:00
295	1323475	5	2026-01-11 19:30:00
296	1425122	1	2025-12-22 22:15:00
297	1425122	1	2025-12-15 11:15:00
298	1425122	1	2026-01-10 22:30:00
299	1425122	2	2025-12-11 19:15:00
300	1425122	2	2026-01-29 14:45:00
301	1425122	3	2025-12-28 18:45:00
302	1425122	3	2025-12-13 18:30:00
303	1425122	4	2025-12-16 19:45:00
304	1425122	4	2025-12-04 20:45:00
305	1425122	4	2025-12-11 11:30:00
306	1425122	4	2025-12-15 22:15:00
307	1425122	5	2025-12-12 21:15:00
308	1425122	5	2025-12-11 12:15:00
309	1425122	5	2025-12-28 13:15:00
310	1061474	1	2025-12-27 17:15:00
311	1061474	2	2026-01-09 13:00:00
312	1061474	2	2025-12-21 21:15:00
313	1061474	2	2026-01-26 19:45:00
314	1061474	3	2025-12-21 11:45:00
315	1061474	3	2026-01-22 11:15:00
316	1061474	3	2026-01-03 20:45:00
317	1061474	4	2026-01-08 23:45:00
318	1061474	4	2025-12-10 19:30:00
319	1061474	5	2025-12-20 22:15:00
320	1061474	5	2025-12-26 12:15:00
321	1061474	5	2025-12-05 18:30:00
322	1061474	5	2025-12-27 16:45:00
323	861451	1	2026-01-24 23:15:00
324	861451	1	2026-01-23 21:15:00
325	861451	1	2025-12-16 22:45:00
326	861451	2	2026-01-13 20:45:00
327	861451	2	2025-12-21 14:45:00
328	861451	2	2025-12-22 14:45:00
329	861451	3	2025-12-01 12:00:00
330	861451	3	2025-12-10 22:30:00
331	861451	4	2026-01-06 20:15:00
332	861451	5	2026-01-30 16:45:00
333	861451	5	2025-12-24 14:30:00
334	861451	5	2026-01-24 15:15:00
335	1299209	1	2025-12-16 22:45:00
336	1299209	2	2026-01-19 19:45:00
337	1299209	2	2025-12-16 12:00:00
338	1299209	2	2026-01-21 18:30:00
339	1299209	3	2025-12-18 17:45:00
340	1299209	3	2026-01-16 20:45:00
341	1299209	3	2025-12-17 19:15:00
342	1299209	4	2026-01-19 20:30:00
343	1299209	5	2025-12-21 11:45:00
344	1419406	1	2025-12-09 18:45:00
345	1419406	1	2025-12-14 12:45:00
346	1419406	1	2025-12-24 19:15:00
347	1419406	2	2026-01-23 21:00:00
348	1419406	3	2026-01-23 14:30:00
349	1419406	3	2025-12-09 17:30:00
350	1419406	4	2026-01-28 15:15:00
351	1419406	4	2026-01-07 13:30:00
352	1419406	4	2025-12-06 17:30:00
353	1419406	5	2026-01-07 11:30:00
354	1419406	5	2026-01-14 12:00:00
355	1363123	1	2026-01-06 13:30:00
356	1363123	1	2025-12-21 16:30:00
357	1363123	1	2025-12-23 14:15:00
358	1363123	2	2025-12-28 11:00:00
359	1363123	2	2025-12-21 11:00:00
360	1363123	2	2026-01-02 15:15:00
361	1363123	3	2026-01-26 11:00:00
362	1363123	3	2026-01-16 22:30:00
363	1363123	3	2025-12-22 18:45:00
364	1363123	3	2026-01-10 11:30:00
365	1363123	4	2025-12-11 16:45:00
366	1363123	4	2025-12-09 11:45:00
367	1363123	4	2025-12-13 14:30:00
368	1363123	5	2025-12-19 18:30:00
369	1054867	1	2026-01-26 13:30:00
370	1054867	1	2026-01-22 12:15:00
371	1054867	1	2025-12-15 21:30:00
372	1054867	1	2025-12-21 12:45:00
373	1054867	2	2026-01-04 14:00:00
374	1054867	2	2026-01-09 15:30:00
375	1054867	2	2025-12-03 21:15:00
376	1054867	2	2026-01-26 23:15:00
377	1054867	3	2026-01-28 15:00:00
378	1054867	3	2025-12-13 21:45:00
379	1054867	3	2026-01-28 17:15:00
380	1054867	4	2026-01-09 17:15:00
381	1054867	4	2026-01-28 23:00:00
382	1054867	4	2025-12-11 22:00:00
383	1054867	5	2025-12-24 11:15:00
384	1116465	1	2025-12-27 17:45:00
385	1116465	1	2026-01-14 22:45:00
386	1116465	2	2025-12-28 14:15:00
387	1116465	2	2025-12-12 11:15:00
388	1116465	2	2025-12-08 13:45:00
389	1116465	2	2025-12-16 12:30:00
390	1116465	3	2026-01-29 15:30:00
391	1116465	3	2026-01-17 15:15:00
392	1116465	4	2025-12-27 16:15:00
393	1116465	5	2025-12-21 12:45:00
394	1128650	1	2026-01-07 17:00:00
395	1128650	1	2026-01-28 21:15:00
396	1128650	1	2025-12-31 14:45:00
397	1128650	1	2025-12-04 16:45:00
398	1128650	2	2026-01-10 23:45:00
399	1128650	2	2026-01-31 21:15:00
400	1128650	2	2025-12-03 13:30:00
401	1128650	2	2026-01-17 13:45:00
402	1128650	3	2026-01-09 21:15:00
403	1128650	3	2025-12-11 16:15:00
404	1128650	3	2026-01-04 22:00:00
405	1128650	4	2026-01-20 11:00:00
406	1128650	4	2026-01-27 17:15:00
407	1128650	4	2026-01-16 17:00:00
408	1128650	5	2025-12-27 15:00:00
409	1128650	5	2026-01-26 15:15:00
410	1128650	5	2025-12-30 18:15:00
411	1128650	5	2025-12-10 12:45:00
412	1160360	1	2025-12-15 20:00:00
413	1160360	1	2025-12-31 21:00:00
414	1160360	2	2025-12-23 11:45:00
415	1160360	2	2025-12-25 12:00:00
416	1160360	2	2025-12-16 21:15:00
417	1160360	2	2025-12-27 16:30:00
418	1160360	3	2026-01-29 13:15:00
419	1160360	3	2026-01-27 15:45:00
420	1160360	3	2025-12-23 19:30:00
421	1160360	3	2025-12-13 20:00:00
422	1160360	4	2026-01-21 16:00:00
423	1160360	4	2026-01-20 21:45:00
424	1160360	4	2025-12-12 13:00:00
425	1160360	4	2025-12-27 22:45:00
426	1160360	5	2026-01-30 23:00:00
427	1229910	1	2025-12-29 20:45:00
428	1229910	1	2025-12-21 16:15:00
429	1229910	1	2026-01-27 22:45:00
430	1229910	1	2026-01-05 16:45:00
431	1229910	2	2025-12-20 23:45:00
432	1229910	3	2026-01-31 19:00:00
433	1229910	3	2026-01-12 22:30:00
434	1229910	3	2026-01-10 15:15:00
435	1229910	3	2025-12-03 12:30:00
436	1229910	4	2026-01-19 19:00:00
437	1229910	4	2025-12-05 21:15:00
438	1229910	4	2025-12-19 21:45:00
439	1229910	5	2026-01-09 18:00:00
440	1135303	1	2025-12-28 18:00:00
441	1135303	1	2026-01-08 21:30:00
442	1135303	1	2026-01-12 20:15:00
443	1135303	2	2026-01-20 14:00:00
444	1135303	2	2025-12-03 20:00:00
445	1135303	2	2026-01-13 13:30:00
446	1135303	2	2025-12-12 18:30:00
447	1135303	3	2026-01-10 11:15:00
448	1135303	3	2025-12-09 19:45:00
449	1135303	3	2025-12-14 17:00:00
450	1135303	4	2025-12-31 13:15:00
451	1135303	5	2026-01-15 20:30:00
452	1135303	5	2025-12-31 11:00:00
453	1135303	5	2026-01-03 11:00:00
454	1135303	5	2025-12-10 23:45:00
455	269149	1	2026-01-03 11:45:00
456	269149	2	2026-01-08 12:15:00
457	269149	2	2026-01-25 15:00:00
458	269149	2	2025-12-23 21:00:00
459	269149	3	2025-12-27 11:30:00
460	269149	4	2026-01-12 11:15:00
461	269149	4	2025-12-23 13:45:00
462	269149	4	2025-12-27 15:30:00
463	269149	4	2026-01-26 19:30:00
464	269149	5	2025-12-27 20:30:00
465	793387	1	2026-01-05 15:15:00
466	793387	2	2025-12-23 23:30:00
467	793387	3	2026-01-27 17:00:00
468	793387	3	2025-12-01 14:30:00
469	793387	3	2026-01-31 18:45:00
470	793387	3	2026-01-08 13:00:00
471	793387	4	2025-12-27 22:45:00
472	793387	4	2025-12-08 18:00:00
473	793387	5	2025-12-05 16:45:00
474	793387	5	2026-01-09 18:30:00
475	793387	5	2025-12-21 14:00:00
476	1072699	1	2026-01-15 23:15:00
477	1072699	1	2025-12-24 21:00:00
478	1072699	1	2025-12-25 13:30:00
479	1072699	1	2025-12-03 12:45:00
480	1072699	2	2025-12-21 11:30:00
481	1072699	2	2025-12-15 23:45:00
482	1072699	2	2025-12-08 12:00:00
483	1072699	3	2026-01-17 18:15:00
484	1072699	3	2026-01-28 23:45:00
485	1072699	4	2026-01-17 20:45:00
486	1072699	4	2026-01-08 19:15:00
487	1072699	4	2025-12-23 17:15:00
488	1072699	5	2026-01-21 12:15:00
489	1072699	5	2026-01-02 14:00:00
490	1072699	5	2026-01-28 15:45:00
491	1403735	1	2026-01-02 12:45:00
492	1403735	1	2025-12-19 18:45:00
493	1403735	1	2026-01-29 16:15:00
494	1403735	1	2025-12-21 21:30:00
495	1403735	2	2026-01-25 11:00:00
496	1403735	2	2026-01-06 13:30:00
497	1403735	2	2026-01-19 21:30:00
498	1403735	3	2025-12-02 13:30:00
499	1403735	4	2025-12-10 12:15:00
500	1403735	5	2026-01-25 17:15:00
501	1403735	5	2026-01-07 22:30:00
502	338969	1	2025-12-11 19:45:00
503	338969	1	2026-01-14 16:30:00
504	338969	1	2026-01-12 18:15:00
505	338969	1	2026-01-18 13:30:00
506	338969	2	2025-12-18 18:00:00
507	338969	2	2026-01-19 23:45:00
508	338969	3	2025-12-23 12:30:00
509	338969	3	2025-12-01 23:15:00
510	338969	4	2026-01-21 23:45:00
511	338969	5	2025-12-03 13:45:00
512	338969	5	2026-01-04 15:15:00
513	1548092	1	2026-01-21 22:15:00
514	1548092	1	2026-01-01 19:00:00
515	1548092	2	2026-01-26 22:30:00
516	1548092	2	2025-12-08 20:15:00
517	1548092	2	2026-01-30 12:45:00
518	1548092	3	2026-01-21 16:00:00
519	1548092	3	2026-01-31 11:00:00
520	1548092	3	2026-01-17 22:15:00
521	1548092	4	2026-01-17 17:00:00
522	1548092	5	2026-01-24 11:00:00
523	1548092	5	2025-12-31 20:00:00
524	1175942	1	2026-01-07 16:15:00
525	1175942	2	2026-01-24 18:15:00
526	1175942	2	2025-12-05 21:30:00
527	1175942	2	2025-12-02 14:15:00
528	1175942	2	2026-01-09 20:15:00
529	1175942	3	2026-01-14 12:15:00
530	1175942	3	2026-01-03 16:45:00
531	1175942	4	2025-12-03 19:45:00
532	1175942	5	2025-12-17 13:45:00
533	1310672	1	2025-12-10 17:30:00
534	1310672	1	2026-01-10 23:45:00
535	1310672	2	2026-01-05 11:00:00
536	1310672	2	2026-01-27 18:45:00
537	1310672	2	2026-01-15 15:15:00
538	1310672	2	2025-12-11 15:45:00
539	1310672	3	2026-01-25 17:45:00
540	1310672	3	2025-12-19 11:30:00
541	1310672	4	2025-12-08 19:15:00
542	1310672	5	2025-12-01 13:30:00
543	1310672	5	2026-01-05 17:15:00
544	1310672	5	2026-01-12 16:45:00
545	1269021	1	2025-12-25 11:30:00
546	1269021	2	2026-01-31 15:45:00
547	1269021	2	2025-12-04 11:00:00
548	1269021	2	2026-01-08 19:30:00
549	1269021	2	2025-12-29 11:15:00
550	1269021	3	2025-12-09 16:45:00
551	1269021	3	2025-12-15 18:45:00
552	1269021	4	2025-12-23 13:15:00
553	1269021	5	2025-12-11 18:30:00
554	1269021	5	2026-01-08 16:15:00
555	1269021	5	2026-01-31 14:30:00
556	1269021	5	2025-12-24 21:15:00
557	83533	1	2026-01-17 16:00:00
558	83533	1	2026-01-07 23:45:00
559	83533	1	2026-01-21 18:15:00
560	83533	1	2026-01-26 23:45:00
561	83533	2	2025-12-29 23:30:00
562	83533	2	2026-01-30 12:45:00
563	83533	2	2025-12-04 20:30:00
564	83533	3	2026-01-08 13:00:00
565	83533	3	2026-01-06 15:00:00
566	83533	3	2026-01-10 19:30:00
567	83533	3	2025-12-29 21:15:00
568	83533	4	2026-01-16 11:45:00
569	83533	4	2026-01-27 20:30:00
570	83533	5	2025-12-22 17:30:00
571	1309012	1	2026-01-04 19:00:00
572	1309012	1	2025-12-24 12:45:00
573	1309012	2	2025-12-05 13:45:00
574	1309012	2	2026-01-10 21:00:00
575	1309012	2	2026-01-03 15:30:00
576	1309012	3	2025-12-27 15:45:00
577	1309012	3	2026-01-31 16:45:00
578	1309012	3	2026-01-23 12:15:00
579	1309012	3	2025-12-06 18:15:00
580	1309012	4	2025-12-11 12:45:00
581	1309012	5	2026-01-30 21:30:00
582	1309012	5	2026-01-18 23:00:00
583	533533	1	2026-01-28 13:00:00
584	533533	2	2026-01-22 11:45:00
585	533533	2	2026-01-19 12:30:00
586	533533	3	2026-01-07 20:30:00
587	533533	3	2025-12-14 15:15:00
588	533533	3	2026-01-04 20:30:00
589	533533	3	2025-12-19 23:15:00
590	533533	4	2026-01-13 11:30:00
591	533533	4	2026-01-26 11:00:00
592	533533	4	2026-01-28 13:00:00
593	533533	5	2026-01-26 19:15:00
594	533533	5	2026-01-05 21:45:00
595	533533	5	2026-01-18 14:30:00
596	1186350	1	2026-01-20 23:45:00
597	1186350	1	2025-12-29 17:00:00
598	1186350	2	2026-01-17 16:45:00
599	1186350	2	2025-12-20 14:15:00
600	1186350	2	2026-01-26 12:30:00
601	1186350	3	2026-01-26 12:00:00
602	1186350	3	2025-12-10 18:30:00
603	1186350	4	2025-12-27 23:30:00
604	1186350	4	2025-12-14 17:00:00
605	1186350	4	2025-12-03 16:00:00
606	1186350	5	2026-01-26 12:30:00
607	1186350	5	2025-12-07 21:45:00
608	145341	1	2025-12-07 11:15:00
609	145341	1	2025-12-30 15:15:00
610	145341	1	2025-12-11 11:15:00
611	145341	2	2025-12-13 11:45:00
612	145341	2	2025-12-10 12:15:00
613	145341	2	2026-01-07 15:30:00
614	145341	2	2026-01-24 12:00:00
615	145341	3	2026-01-18 12:00:00
616	145341	3	2026-01-30 17:45:00
617	145341	3	2025-12-23 11:00:00
618	145341	3	2025-12-21 11:00:00
619	145341	4	2026-01-21 11:15:00
620	145341	4	2025-12-31 16:00:00
621	145341	4	2026-01-22 23:30:00
622	145341	5	2026-01-10 11:45:00
623	145341	5	2025-12-25 22:00:00
624	81672	1	2026-01-22 19:30:00
625	81672	1	2026-01-13 21:45:00
626	81672	1	2026-01-30 20:15:00
627	81672	1	2026-01-10 15:45:00
628	81672	2	2026-01-23 13:00:00
629	81672	3	2025-12-26 12:00:00
630	81672	3	2025-12-06 23:15:00
631	81672	3	2025-12-05 16:00:00
632	81672	4	2026-01-09 20:15:00
633	81672	4	2025-12-12 20:45:00
634	81672	4	2026-01-24 17:15:00
635	81672	5	2026-01-17 14:00:00
636	81672	5	2026-01-26 17:15:00
637	1340828	1	2026-01-13 16:45:00
638	1340828	1	2026-01-01 18:00:00
639	1340828	2	2026-01-23 20:45:00
640	1340828	2	2025-12-21 16:00:00
641	1340828	2	2025-12-01 19:45:00
642	1340828	3	2025-12-17 13:15:00
643	1340828	3	2026-01-29 22:15:00
644	1340828	3	2025-12-10 16:45:00
645	1340828	4	2026-01-26 19:30:00
646	1340828	4	2026-01-16 17:15:00
647	1340828	4	2026-01-14 19:30:00
648	1340828	5	2025-12-17 19:30:00
649	1340828	5	2026-01-19 20:00:00
650	505953	1	2025-12-13 23:45:00
651	505953	1	2026-01-29 18:00:00
652	505953	2	2025-12-31 22:30:00
653	505953	2	2025-12-09 22:30:00
654	505953	3	2026-01-26 14:15:00
655	505953	4	2026-01-07 21:15:00
656	505953	4	2026-01-23 11:45:00
657	505953	4	2025-12-23 14:30:00
658	505953	5	2025-12-07 19:15:00
659	505953	5	2026-01-06 11:00:00
660	505953	5	2026-01-02 11:00:00
661	1248226	1	2026-01-18 16:00:00
662	1248226	1	2026-01-03 12:15:00
663	1248226	1	2025-12-25 15:15:00
664	1248226	2	2026-01-07 17:30:00
665	1248226	2	2025-12-10 19:45:00
666	1248226	2	2026-01-21 22:30:00
667	1248226	2	2025-12-20 16:00:00
668	1248226	3	2025-12-23 19:15:00
669	1248226	4	2026-01-28 12:45:00
670	1248226	5	2025-12-08 18:45:00
671	755898	1	2025-12-27 11:45:00
672	755898	1	2025-12-30 14:15:00
673	755898	1	2025-12-08 13:45:00
674	755898	1	2026-01-22 22:00:00
675	755898	2	2025-12-25 14:30:00
676	755898	2	2025-12-09 16:45:00
677	755898	2	2025-12-06 12:00:00
678	755898	2	2026-01-30 21:45:00
679	755898	3	2026-01-18 23:15:00
680	755898	4	2026-01-16 13:30:00
681	755898	4	2025-12-23 13:30:00
682	755898	5	2026-01-13 14:00:00
683	755898	5	2026-01-30 20:00:00
684	1539104	1	2025-12-24 19:45:00
685	1539104	1	2025-12-14 14:45:00
686	1539104	2	2025-12-05 20:00:00
687	1539104	2	2025-12-17 16:45:00
688	1539104	2	2025-12-16 15:30:00
689	1539104	3	2026-01-05 17:00:00
690	1539104	3	2025-12-17 20:30:00
691	1539104	3	2026-01-16 18:15:00
692	1539104	4	2025-12-04 23:00:00
693	1539104	4	2025-12-16 23:45:00
694	1539104	5	2026-01-15 21:15:00
695	1539104	5	2026-01-17 21:30:00
696	1539104	5	2025-12-28 19:30:00
697	425274	1	2025-12-22 11:00:00
698	425274	2	2025-12-23 23:15:00
699	425274	2	2025-12-14 20:00:00
700	425274	2	2026-01-31 19:45:00
701	425274	2	2025-12-07 17:15:00
702	425274	3	2026-01-28 18:30:00
703	425274	3	2025-12-26 20:15:00
704	425274	3	2026-01-03 12:00:00
705	425274	3	2025-12-18 12:15:00
706	425274	4	2026-01-01 23:30:00
707	425274	4	2026-01-22 22:15:00
708	425274	5	2025-12-12 21:45:00
709	1311031	1	2025-12-22 14:45:00
710	1311031	2	2026-01-12 13:30:00
711	1311031	2	2025-12-29 16:15:00
712	1311031	3	2026-01-05 22:45:00
713	1311031	3	2025-12-18 20:00:00
714	1311031	3	2025-12-07 22:00:00
715	1311031	3	2026-01-30 18:00:00
716	1311031	4	2026-01-25 16:45:00
717	1311031	4	2025-12-12 18:45:00
718	1311031	4	2025-12-01 21:30:00
719	1311031	4	2026-01-18 20:30:00
720	1311031	5	2026-01-03 17:45:00
721	7451	1	2026-01-15 14:15:00
722	7451	1	2026-01-08 21:30:00
723	7451	1	2026-01-18 13:45:00
724	7451	1	2025-12-27 12:15:00
725	7451	2	2025-12-19 18:00:00
726	7451	2	2026-01-17 21:45:00
727	7451	2	2025-12-07 22:00:00
728	7451	3	2025-12-25 15:00:00
729	7451	3	2025-12-01 16:45:00
730	7451	4	2025-12-10 19:30:00
731	7451	4	2026-01-19 23:45:00
732	7451	5	2026-01-29 13:30:00
733	1468417	1	2025-12-06 14:30:00
734	1468417	1	2026-01-10 22:45:00
735	1468417	1	2025-12-30 16:30:00
736	1468417	1	2026-01-03 17:30:00
737	1468417	2	2025-12-09 18:45:00
738	1468417	2	2025-12-30 17:00:00
739	1468417	2	2026-01-19 22:15:00
740	1468417	2	2026-01-20 15:45:00
741	1468417	3	2025-12-22 17:00:00
742	1468417	3	2026-01-28 20:30:00
743	1468417	3	2025-12-06 14:15:00
744	1468417	3	2025-12-27 16:30:00
745	1468417	4	2025-12-20 18:45:00
746	1468417	4	2025-12-12 20:00:00
747	1468417	5	2026-01-16 20:30:00
748	1084242	1	2025-12-07 11:30:00
749	1084242	1	2026-01-20 15:15:00
750	1084242	1	2025-12-24 11:00:00
751	1084242	2	2025-12-23 19:00:00
752	1084242	2	2026-01-08 15:00:00
753	1084242	2	2025-12-21 21:15:00
754	1084242	2	2026-01-30 18:30:00
755	1084242	3	2026-01-30 17:15:00
756	1084242	4	2025-12-16 21:00:00
757	1084242	4	2026-01-31 17:15:00
758	1084242	4	2026-01-14 18:15:00
759	1084242	5	2026-01-21 22:00:00
760	1218925	1	2025-12-19 19:45:00
761	1218925	1	2025-12-06 17:15:00
762	1218925	2	2025-12-17 17:30:00
763	1218925	2	2025-12-05 19:30:00
764	1218925	3	2026-01-16 14:30:00
765	1218925	3	2026-01-02 23:00:00
766	1218925	4	2025-12-09 11:00:00
767	1218925	4	2025-12-16 11:15:00
768	1218925	5	2025-12-22 21:45:00
769	1218925	5	2026-01-01 11:15:00
770	1218925	5	2026-01-07 21:00:00
771	1241983	1	2025-12-27 16:45:00
772	1241983	1	2026-01-28 22:00:00
773	1241983	1	2026-01-23 18:45:00
774	1241983	2	2026-01-17 23:30:00
775	1241983	3	2026-01-15 18:15:00
776	1241983	3	2026-01-07 15:00:00
777	1241983	3	2026-01-03 15:30:00
778	1241983	3	2026-01-30 19:30:00
779	1241983	4	2025-12-03 22:30:00
780	1241983	4	2025-12-26 17:45:00
781	1241983	4	2025-12-31 22:45:00
782	1241983	5	2026-01-04 13:15:00
783	1241983	5	2025-12-28 17:45:00
784	1265063	1	2026-01-09 18:45:00
785	1265063	1	2026-01-24 17:00:00
786	1265063	1	2025-12-20 20:00:00
787	1265063	1	2025-12-02 20:00:00
788	1265063	2	2025-12-18 19:00:00
789	1265063	3	2025-12-16 12:15:00
790	1265063	3	2025-12-21 21:15:00
791	1265063	3	2026-01-08 17:15:00
792	1265063	3	2025-12-20 12:15:00
793	1265063	4	2026-01-19 16:15:00
794	1265063	4	2025-12-30 22:30:00
795	1265063	5	2026-01-13 13:45:00
796	1265063	5	2025-12-18 11:30:00
797	1265063	5	2026-01-11 15:00:00
798	1265063	5	2025-12-11 21:15:00
799	1038392	1	2025-12-09 17:30:00
800	1038392	1	2025-12-06 12:30:00
801	1038392	2	2025-12-05 11:30:00
802	1038392	3	2026-01-02 20:30:00
803	1038392	3	2025-12-10 23:30:00
804	1038392	3	2026-01-05 13:30:00
805	1038392	3	2025-12-11 13:45:00
806	1038392	4	2025-12-05 23:45:00
807	1038392	4	2025-12-02 12:15:00
808	1038392	4	2026-01-24 18:45:00
809	1038392	4	2026-01-31 12:45:00
810	1038392	5	2025-12-04 19:45:00
811	1038392	5	2025-12-25 22:45:00
812	1038392	5	2026-01-20 23:00:00
813	402431	1	2026-01-28 15:15:00
814	402431	1	2026-01-02 23:45:00
815	402431	2	2026-01-01 21:15:00
816	402431	2	2025-12-02 13:00:00
817	402431	3	2026-01-27 15:15:00
818	402431	4	2025-12-09 21:15:00
819	402431	4	2026-01-22 21:00:00
820	402431	4	2026-01-12 22:00:00
821	402431	5	2025-12-28 12:15:00
822	402431	5	2026-01-26 20:00:00
823	402431	5	2025-12-02 12:00:00
824	297802	1	2025-12-27 22:45:00
825	297802	1	2026-01-14 14:45:00
826	297802	1	2025-12-15 17:15:00
827	297802	1	2026-01-28 21:45:00
828	297802	2	2025-12-21 22:45:00
829	297802	2	2025-12-29 12:30:00
830	297802	2	2026-01-09 20:30:00
831	297802	2	2026-01-29 16:00:00
832	297802	3	2026-01-10 23:15:00
833	297802	4	2026-01-08 13:15:00
834	297802	4	2025-12-02 21:00:00
835	297802	4	2026-01-15 21:15:00
836	297802	4	2026-01-12 23:15:00
837	297802	5	2025-12-05 12:15:00
838	297802	5	2025-12-20 17:30:00
839	1025527	1	2025-12-22 13:00:00
840	1025527	1	2025-12-24 12:45:00
841	1025527	1	2026-01-15 17:15:00
842	1025527	1	2025-12-30 17:00:00
843	1025527	2	2026-01-05 22:30:00
844	1025527	2	2026-01-30 12:30:00
845	1025527	3	2026-01-19 23:00:00
846	1025527	4	2025-12-08 15:30:00
847	1025527	4	2026-01-27 15:30:00
848	1025527	4	2026-01-30 12:00:00
849	1025527	4	2025-12-03 21:15:00
850	1025527	5	2026-01-03 22:15:00
851	617126	1	2025-12-16 19:45:00
852	617126	1	2025-12-26 14:30:00
853	617126	1	2025-12-20 18:30:00
854	617126	1	2025-12-16 23:15:00
855	617126	2	2025-12-16 13:30:00
856	617126	2	2025-12-28 14:15:00
857	617126	2	2026-01-03 18:30:00
858	617126	3	2026-01-31 18:45:00
859	617126	4	2026-01-06 19:15:00
860	617126	4	2026-01-09 16:30:00
861	617126	4	2026-01-27 13:30:00
862	617126	5	2026-01-02 14:00:00
863	617126	5	2026-01-07 20:00:00
864	798645	1	2025-12-27 22:45:00
865	798645	1	2025-12-06 13:15:00
866	798645	2	2025-12-28 14:30:00
867	798645	2	2026-01-21 19:45:00
868	798645	2	2025-12-12 11:30:00
869	798645	3	2026-01-15 18:15:00
870	798645	3	2025-12-01 17:00:00
871	798645	4	2026-01-22 13:45:00
872	798645	4	2025-12-04 21:45:00
873	798645	5	2026-01-20 12:00:00
874	798645	5	2025-12-26 22:15:00
875	798645	5	2025-12-04 16:45:00
876	798645	5	2026-01-12 11:15:00
877	1214130	1	2025-12-28 18:30:00
878	1214130	1	2026-01-05 14:45:00
879	1214130	2	2025-12-19 23:15:00
880	1214130	2	2026-01-06 11:30:00
881	1214130	3	2025-12-16 18:15:00
882	1214130	3	2025-12-07 16:30:00
883	1214130	4	2025-12-31 12:00:00
884	1214130	4	2025-12-02 13:00:00
885	1214130	4	2026-01-19 19:00:00
886	1214130	4	2026-01-27 11:15:00
887	1214130	5	2025-12-20 19:45:00
888	575265	1	2025-12-02 13:00:00
889	575265	1	2026-01-02 20:00:00
890	575265	2	2026-01-11 11:15:00
891	575265	2	2026-01-01 21:15:00
892	575265	3	2026-01-11 19:45:00
893	575265	4	2025-12-02 22:45:00
894	575265	4	2025-12-21 22:15:00
895	575265	4	2025-12-15 14:45:00
896	575265	4	2025-12-23 21:15:00
897	575265	5	2025-12-13 22:15:00
898	575265	5	2025-12-12 21:45:00
899	575265	5	2026-01-26 16:00:00
900	575265	5	2025-12-17 19:00:00
901	1096563	1	2026-01-15 11:30:00
902	1096563	1	2026-01-20 16:00:00
903	1096563	2	2025-12-17 18:00:00
904	1096563	3	2025-12-29 17:30:00
905	1096563	4	2025-12-06 14:15:00
906	1096563	5	2026-01-21 11:45:00
907	1096563	5	2025-12-05 11:00:00
908	1096563	5	2026-01-09 14:15:00
909	1215106	1	2026-01-26 23:45:00
910	1215106	1	2025-12-11 22:15:00
911	1215106	1	2025-12-22 23:30:00
912	1215106	1	2026-01-08 18:45:00
913	1215106	2	2026-01-31 21:45:00
914	1215106	2	2026-01-16 19:15:00
915	1215106	2	2026-01-09 12:30:00
916	1215106	3	2026-01-22 11:00:00
917	1215106	3	2026-01-05 15:30:00
918	1215106	3	2025-12-13 23:30:00
919	1215106	3	2026-01-08 15:15:00
920	1215106	4	2025-12-19 16:15:00
921	1215106	4	2026-01-07 14:00:00
922	1215106	4	2026-01-06 12:45:00
923	1215106	4	2026-01-09 12:45:00
924	1215106	5	2026-01-30 16:30:00
925	1215106	5	2025-12-04 13:15:00
926	1215106	5	2026-01-18 16:30:00
927	1215106	5	2026-01-03 20:45:00
928	1234821	1	2026-01-19 12:15:00
929	1234821	1	2025-12-27 23:45:00
930	1234821	2	2026-01-03 16:00:00
931	1234821	2	2026-01-18 13:15:00
932	1234821	2	2026-01-15 13:15:00
933	1234821	2	2025-12-03 21:45:00
934	1234821	3	2025-12-04 17:15:00
935	1234821	4	2025-12-30 21:00:00
936	1234821	4	2025-12-08 19:15:00
937	1234821	5	2026-01-04 12:15:00
938	1234821	5	2026-01-31 16:00:00
939	1316147	1	2026-01-24 20:45:00
940	1316147	1	2025-12-09 16:00:00
941	1316147	1	2025-12-02 18:45:00
942	1316147	2	2026-01-03 22:15:00
943	1316147	3	2025-12-06 13:00:00
944	1316147	4	2026-01-20 14:45:00
945	1316147	4	2025-12-20 19:15:00
946	1316147	4	2026-01-19 13:45:00
947	1316147	5	2026-01-29 14:45:00
948	1316147	5	2025-12-03 17:15:00
949	1316147	5	2025-12-10 13:45:00
950	639988	1	2026-01-01 21:45:00
951	639988	1	2026-01-11 16:45:00
952	639988	1	2025-12-27 18:15:00
953	639988	2	2025-12-24 19:45:00
954	639988	2	2025-12-19 17:45:00
955	639988	2	2026-01-18 15:45:00
956	639988	2	2026-01-17 13:15:00
957	639988	3	2025-12-19 23:45:00
958	639988	3	2025-12-28 16:15:00
959	639988	3	2026-01-12 13:30:00
960	639988	3	2025-12-02 16:45:00
961	639988	4	2025-12-22 18:15:00
962	639988	4	2025-12-03 20:15:00
963	639988	5	2026-01-25 13:45:00
964	639988	5	2025-12-26 17:45:00
965	639988	5	2025-12-28 19:45:00
966	1156594	1	2025-12-31 15:45:00
967	1156594	1	2026-01-22 11:00:00
968	1156594	1	2026-01-31 15:15:00
969	1156594	1	2026-01-29 20:45:00
970	1156594	2	2025-12-25 12:45:00
971	1156594	2	2025-12-14 18:30:00
972	1156594	2	2026-01-10 22:15:00
973	1156594	2	2026-01-28 21:30:00
974	1156594	3	2025-12-14 11:45:00
975	1156594	3	2026-01-14 15:30:00
976	1156594	4	2026-01-22 23:15:00
977	1156594	5	2026-01-12 23:00:00
978	1223601	1	2025-12-20 22:15:00
979	1223601	1	2026-01-21 22:30:00
980	1223601	2	2026-01-02 13:15:00
981	1223601	2	2025-12-20 23:30:00
982	1223601	3	2025-12-19 19:30:00
983	1223601	3	2026-01-11 11:15:00
984	1223601	3	2025-12-02 23:15:00
985	1223601	4	2026-01-08 20:30:00
986	1223601	5	2026-01-30 15:15:00
987	1223601	5	2025-12-31 14:30:00
988	1223601	5	2025-12-31 12:00:00
989	1305717	1	2025-12-25 16:15:00
990	1305717	1	2026-01-12 21:00:00
991	1305717	1	2026-01-31 22:45:00
992	1305717	1	2025-12-07 19:30:00
993	1305717	2	2025-12-22 19:00:00
994	1305717	2	2026-01-27 13:30:00
995	1305717	2	2025-12-11 11:30:00
996	1305717	2	2025-12-22 19:30:00
997	1305717	3	2025-12-19 15:15:00
998	1305717	4	2026-01-01 21:45:00
999	1305717	4	2026-01-03 14:45:00
1000	1305717	4	2025-12-11 18:15:00
1001	1305717	4	2026-01-30 22:45:00
1002	1305717	5	2025-12-27 20:00:00
1003	1305717	5	2025-12-28 14:00:00
1004	1305717	5	2025-12-25 13:30:00
1005	1305717	5	2026-01-04 20:45:00
1006	1246049	1	2026-01-14 21:15:00
1007	1246049	2	2025-12-04 23:00:00
1008	1246049	2	2025-12-21 11:30:00
1009	1246049	2	2026-01-11 11:00:00
1010	1246049	2	2026-01-11 19:00:00
1011	1246049	3	2026-01-03 12:15:00
1012	1246049	3	2025-12-28 11:00:00
1013	1246049	3	2026-01-23 12:45:00
1014	1246049	3	2026-01-23 19:30:00
1015	1246049	4	2025-12-16 14:00:00
1016	1246049	4	2026-01-08 13:30:00
1017	1246049	5	2025-12-17 16:15:00
1018	1246049	5	2026-01-30 18:15:00
1019	1246049	5	2025-12-14 14:00:00
1020	1246049	5	2026-01-30 20:30:00
1021	1029575	1	2026-01-05 19:30:00
1022	1029575	1	2026-01-19 23:15:00
1023	1029575	2	2026-01-13 12:45:00
1024	1029575	2	2026-01-05 22:45:00
1025	1029575	2	2025-12-03 18:30:00
1026	1029575	2	2025-12-26 19:00:00
1027	1029575	3	2025-12-11 15:30:00
1028	1029575	3	2026-01-10 17:00:00
1029	1029575	4	2025-12-29 22:00:00
1030	1029575	4	2026-01-17 21:45:00
1031	1029575	4	2026-01-08 22:30:00
1032	1029575	4	2025-12-18 22:45:00
1033	1029575	5	2026-01-15 21:45:00
1034	1029575	5	2025-12-22 19:30:00
1035	911430	1	2025-12-14 23:00:00
1036	911430	1	2026-01-11 14:00:00
1037	911430	1	2025-12-04 11:15:00
1038	911430	2	2025-12-04 21:45:00
1039	911430	3	2026-01-22 12:00:00
1040	911430	3	2026-01-29 15:00:00
1041	911430	4	2026-01-24 16:45:00
1042	911430	5	2026-01-06 12:00:00
1043	911430	5	2026-01-19 19:45:00
1044	911430	5	2026-01-31 14:45:00
1045	106	1	2025-12-14 11:45:00
1046	106	1	2025-12-03 18:15:00
1047	106	2	2025-12-19 13:45:00
1048	106	2	2025-12-14 18:15:00
1049	106	3	2025-12-30 22:30:00
1050	106	3	2026-01-16 21:30:00
1051	106	3	2025-12-13 14:00:00
1052	106	3	2025-12-23 16:30:00
1053	106	4	2026-01-17 20:15:00
1054	106	5	2026-01-22 20:30:00
1055	106	5	2025-12-23 23:45:00
1056	106	5	2025-12-12 22:30:00
1057	106	5	2025-12-07 15:30:00
1058	1010581	1	2025-12-29 19:45:00
1059	1010581	1	2026-01-27 18:45:00
1060	1010581	2	2026-01-16 15:00:00
1061	1010581	2	2025-12-09 12:00:00
1062	1010581	3	2025-12-02 18:00:00
1063	1010581	3	2025-12-23 12:30:00
1064	1010581	4	2026-01-31 16:30:00
1065	1010581	4	2026-01-26 20:45:00
1066	1010581	4	2025-12-31 22:15:00
1067	1010581	4	2025-12-07 20:30:00
1068	1010581	5	2026-01-19 16:00:00
1069	1010581	5	2026-01-20 14:00:00
1070	1010581	5	2025-12-28 19:30:00
1071	1280450	1	2026-01-25 22:00:00
1072	1280450	2	2025-12-26 11:45:00
1073	1280450	3	2025-12-11 22:45:00
1074	1280450	3	2026-01-08 22:15:00
1075	1280450	3	2025-12-08 15:15:00
1076	1280450	3	2025-12-11 16:30:00
1077	1280450	4	2025-12-29 14:30:00
1078	1280450	5	2026-01-06 16:45:00
1079	1280450	5	2025-12-13 18:15:00
1080	24428	1	2026-01-18 15:30:00
1081	24428	1	2025-12-14 20:30:00
1082	24428	1	2025-12-04 19:00:00
1083	24428	1	2025-12-04 20:15:00
1084	24428	2	2026-01-08 23:15:00
1085	24428	2	2025-12-23 20:45:00
1086	24428	2	2025-12-09 15:15:00
1087	24428	3	2026-01-21 15:45:00
1088	24428	3	2026-01-06 22:45:00
1089	24428	3	2026-01-23 20:45:00
1090	24428	3	2026-01-03 23:30:00
1091	24428	4	2026-01-15 22:30:00
1092	24428	5	2026-01-23 13:30:00
1093	24428	5	2026-01-09 15:45:00
1094	24428	5	2026-01-21 20:00:00
1095	24428	5	2026-01-14 19:30:00
1096	1257009	1	2026-01-05 17:00:00
1097	1257009	1	2025-12-20 16:45:00
1098	1257009	1	2026-01-14 21:00:00
1099	1257009	2	2026-01-23 23:45:00
1100	1257009	2	2025-12-29 21:30:00
1101	1257009	3	2025-12-18 15:15:00
1102	1257009	4	2026-01-25 23:15:00
1103	1257009	5	2025-12-30 15:30:00
1104	1257009	5	2025-12-12 17:15:00
1105	1257009	5	2025-12-27 22:15:00
1106	1235746	1	2026-01-14 20:15:00
1107	1235746	1	2026-01-10 13:45:00
1108	1235746	2	2025-12-15 13:45:00
1109	1235746	2	2026-01-09 12:45:00
1110	1235746	3	2025-12-05 15:30:00
1111	1235746	4	2025-12-08 12:30:00
1112	1235746	4	2025-12-03 16:30:00
1113	1235746	4	2025-12-31 19:30:00
1114	1235746	5	2025-12-15 19:30:00
1115	1235746	5	2025-12-11 17:30:00
1116	1235746	5	2025-12-30 12:30:00
1117	1007734	1	2026-01-11 14:15:00
1118	1007734	1	2026-01-27 22:15:00
1119	1007734	1	2026-01-11 15:30:00
1120	1007734	2	2025-12-05 21:45:00
1121	1007734	3	2025-12-01 13:00:00
1122	1007734	3	2025-12-15 18:00:00
1123	1007734	3	2026-01-22 19:45:00
1124	1007734	3	2025-12-07 14:30:00
1125	1007734	4	2026-01-22 19:45:00
1126	1007734	4	2026-01-31 16:45:00
1127	1007734	4	2026-01-10 13:15:00
1128	1007734	4	2025-12-31 15:45:00
1129	1007734	5	2026-01-16 20:45:00
1130	1007734	5	2026-01-20 15:45:00
1131	1007734	5	2026-01-07 11:15:00
1132	1007734	5	2026-01-15 14:00:00
1133	1284120	1	2025-12-17 20:15:00
1134	1284120	1	2026-01-19 21:00:00
1135	1284120	1	2025-12-18 13:30:00
1136	1284120	1	2025-12-13 21:00:00
1137	1284120	2	2026-01-27 11:00:00
1138	1284120	2	2026-01-06 19:30:00
1139	1284120	2	2026-01-03 19:30:00
1140	1284120	2	2025-12-19 15:00:00
1141	1284120	3	2025-12-18 22:30:00
1142	1284120	3	2026-01-16 16:30:00
1143	1284120	3	2025-12-07 21:45:00
1144	1284120	3	2026-01-18 19:45:00
1145	1284120	4	2026-01-06 17:15:00
1146	1284120	4	2025-12-11 11:30:00
1147	1284120	4	2026-01-06 15:30:00
1148	1284120	5	2026-01-29 22:45:00
1149	1284120	5	2026-01-28 15:30:00
1150	1284120	5	2025-12-25 17:30:00
1151	1284120	5	2025-12-12 15:15:00
1152	1087192	1	2025-12-10 21:15:00
1153	1087192	1	2025-12-27 14:00:00
1154	1087192	1	2026-01-20 23:00:00
1155	1087192	1	2025-12-14 14:30:00
1156	1087192	2	2026-01-12 23:15:00
1157	1087192	3	2025-12-27 15:45:00
1158	1087192	3	2025-12-10 16:30:00
1159	1087192	4	2025-12-03 17:30:00
1160	1087192	4	2026-01-19 21:30:00
1161	1087192	5	2025-12-22 17:15:00
1162	1087192	5	2026-01-18 19:15:00
1163	1081208	1	2026-01-28 17:30:00
1164	1081208	1	2026-01-23 11:15:00
1165	1081208	1	2025-12-06 11:30:00
1166	1081208	2	2025-12-15 18:00:00
1167	1081208	2	2026-01-20 15:00:00
1168	1081208	2	2026-01-20 18:00:00
1169	1081208	3	2026-01-28 20:00:00
1170	1081208	4	2026-01-26 11:30:00
1171	1081208	5	2026-01-03 20:30:00
1172	157336	1	2025-12-02 14:30:00
1173	157336	2	2025-12-11 15:45:00
1174	157336	2	2026-01-30 20:45:00
1175	157336	3	2026-01-04 15:30:00
1176	157336	3	2026-01-10 11:00:00
1177	157336	3	2025-12-12 15:00:00
1178	157336	4	2026-01-15 17:45:00
1179	157336	5	2025-12-18 13:45:00
1180	157336	5	2026-01-31 17:15:00
1181	604079	1	2026-01-03 11:15:00
1182	604079	1	2026-01-05 19:45:00
1183	604079	1	2026-01-14 16:15:00
1184	604079	2	2026-01-16 22:15:00
1185	604079	3	2026-01-16 12:15:00
1186	604079	4	2025-12-26 11:00:00
1187	604079	5	2025-12-21 17:45:00
1188	604079	5	2025-12-16 13:30:00
1189	604079	5	2026-01-10 23:15:00
1190	604079	5	2026-01-27 15:45:00
1191	1010756	1	2025-12-07 18:00:00
1192	1010756	1	2026-01-18 21:00:00
1193	1010756	1	2026-01-04 19:15:00
1194	1010756	1	2025-12-23 19:15:00
1195	1010756	2	2026-01-12 18:15:00
1196	1010756	3	2025-12-29 14:45:00
1197	1010756	3	2026-01-04 21:45:00
1198	1010756	4	2025-12-20 12:45:00
1199	1010756	4	2025-12-11 15:30:00
1200	1010756	5	2026-01-01 16:15:00
1201	1010756	5	2025-12-01 13:45:00
1202	1010756	5	2026-01-29 11:00:00
1203	1401318	1	2025-12-31 18:00:00
1204	1401318	1	2025-12-18 17:30:00
1205	1401318	1	2026-01-08 23:30:00
1206	1401318	1	2025-12-18 20:45:00
1207	1401318	2	2026-01-20 12:30:00
1208	1401318	3	2025-12-07 14:45:00
1209	1401318	4	2026-01-31 11:45:00
1210	1401318	4	2025-12-08 23:30:00
1211	1401318	5	2026-01-07 13:00:00
1212	1035259	1	2025-12-27 19:45:00
1213	1035259	1	2026-01-23 20:30:00
1214	1035259	2	2025-12-13 19:45:00
1215	1035259	2	2025-12-20 11:15:00
1216	1035259	3	2025-12-15 19:15:00
1217	1035259	3	2025-12-20 16:15:00
1218	1035259	4	2026-01-25 23:00:00
1219	1035259	4	2025-12-11 21:30:00
1220	1035259	5	2025-12-20 13:45:00
1221	1035259	5	2025-12-02 19:30:00
1222	980477	1	2026-01-30 13:15:00
1223	980477	1	2026-01-09 12:15:00
1224	980477	2	2025-12-31 14:30:00
1225	980477	2	2026-01-19 15:00:00
1226	980477	2	2026-01-23 14:30:00
1227	980477	2	2025-12-02 22:30:00
1228	980477	3	2026-01-04 14:30:00
1229	980477	3	2025-12-30 12:45:00
1230	980477	3	2026-01-21 21:45:00
1231	980477	4	2025-12-27 15:30:00
1232	980477	4	2025-12-12 15:15:00
1233	980477	5	2025-12-14 23:45:00
1234	980477	5	2026-01-03 22:30:00
1235	541671	1	2026-01-31 17:30:00
1236	541671	2	2025-12-20 15:00:00
1237	541671	2	2026-01-13 23:45:00
1238	541671	2	2026-01-24 17:00:00
1239	541671	2	2025-12-10 23:15:00
1240	541671	3	2026-01-18 22:15:00
1241	541671	4	2026-01-02 14:00:00
1242	541671	4	2025-12-19 21:00:00
1243	541671	4	2026-01-03 19:15:00
1244	541671	5	2026-01-01 19:45:00
1245	552524	1	2025-12-13 22:30:00
1246	552524	1	2025-12-25 12:00:00
1247	552524	1	2026-01-10 22:45:00
1248	552524	1	2025-12-19 18:15:00
1249	552524	2	2026-01-06 17:00:00
1250	552524	3	2025-12-04 11:15:00
1251	552524	3	2026-01-25 21:45:00
1252	552524	4	2026-01-01 23:45:00
1253	552524	4	2026-01-16 13:30:00
1254	552524	4	2025-12-30 18:15:00
1255	552524	4	2025-12-15 20:00:00
1256	552524	5	2025-12-07 11:45:00
\.


--
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelicula (idpelicula, nombre, director, productora, "año", calificacion, poster, trailer, sinopsis) FROM stdin;
1062722	Frankenstein	Guillermo del Toro	Double Dare You	2025	7.763	/hTj8x0ElKldJyAjTYvaqxkQNxxN.jpg	ZwV0TPOBXaU	El Dr. Victor Frankenstein, un científico brillante pero egoísta, da vida a una criatura en un monstruoso experimento que finalmente conduce a la ruina tanto del creador como de su trágica creación.
1033462	749局	陆川	华文映像影视传媒有限公司	2024	4.333	/xW640PVBXLlzhrkQnAcvWNsehIO.jpg	\N	Sinopsis no disponible.
1084222	Operation Blood Hunt	Louis Mandylor	Hillin Entertainment	2024	6.784	/x4hebEzPIn8WeyTEQSj2jotpYzM.jpg	\N	Sinopsis no disponible.
1481331	Nahual	Ricardo Islas	\N	2025	3.25	/gQZn4Rx3LpIBnFunH1AKxAMYYd9.jpg	\N	Sinopsis no disponible.
1242898	Depredador: Tierras salvajes	Dan Trachtenberg	20th Century Studios	2025	7.4	/r7TEWHLr1lsIsTkiEFwtM3hAWma.jpg	nHAcTr7Y-m4	En el futuro, en un planeta remoto, un joven Depredador, marginado de su clan, encuentra un aliado inesperado en Thia y se embarca en un peligroso viaje en busca del adversario definitivo.
967941	Wicked: Por siempre	Jon M. Chu	Universal Pictures	2025	6.6	/nyGp2Aysk951mmkSPrSEjRxW72X.jpg	I5FMRnh8-qs	Mientras una turba enfurecida se levanta contra la Malvada Bruja, Glinda y Elphaba deberán reunirse por última vez. Con su singular amistad como el eje de su destino, deberán verse realmente, con honestidad y empatía, si quieren cambiarse a sí mismas… y cambiar Oz por siempre.
1426968	Ya no quedan junglas	Gabriel Beristain	SDB Films	2025	6.4	/pzKeASTj4HitqVXB1cdvswmMV50.jpg	\N	Sinopsis no disponible.
1296504	Stand Your Ground	Fansu Njie	Highfield Grange Studios	2025	4.491	/3kliZ6mw8ZgnhfmHw14Zye6GyPS.jpg	\N	Sinopsis no disponible.
1197137	Teléfono negro 2	Scott Derrickson	Blumhouse Productions	2025	6.9	/i5OfOjbZMxNfiFGkdETdbJUOLAq.jpg	T84cC4AA8U4	A sus 17 años, Finney Blake lucha por su vida tras su cautiverio. Sin embargo, su hermana Gwen empieza a recibir llamadas de un teléfono negro en sus sueños y visiones inquietantes qué los conduce a ambos en un campamento de invierno.
1026821	大雨	不思凡	Horgos Coloroom Pictures	2024	6.182	/3CsivmtcjwMUvU0Mu7zZgnK9QaR.jpg	\N	Sinopsis no disponible.
1429738	Tee Yai: Nacido para el crimen	Nonzee Nimibutr	18 Tanwa	2025	4.814	/wM125GkMUzSyjPzNqvx9j2UHYV7.jpg	\N	Bangkok, años 80. Un astuto ladrón realiza una serie de robos audaces que desconciertan a todos..., hasta que un policía se decide a detenerlo.
937941	Terror En Shelby Oaks	Chris Stuckmann	Paper Street Pictures	2025	5.693	/posg4KruTmo7Maf0xAYTRdeSpzY.jpg	nuKaQmWsWGI	Doce años después de la desaparición de su hermana, líder de un equipo paranormal, Mia Brennan descubre una inquietante cinta que sugiere que el demonio de su infancia podría ser real. Decidida a encontrar respuestas, se adentra en una aterradora investigación que revela un horror oculto en las sombras.
1280518	Laberinto de sombras	Alfredo Contreras	\N	2024	4.5	/565kBAr0hvgLbJKyAd3dUKk2xn0.jpg	\N	Sinopsis no disponible.
1214140	Orang Ikan	Mike Wiluan	Gorylah Pictures	2025	5.716	/x1JOs4xWNr1QYjDAXHxWw1NJ7Sq.jpg	\N	Sinopsis no disponible.
803796	Las guerreras k-pop	Chris Appelhans	Sony Pictures Animation	2025	8.2	/swQRKmW7RLhncPYHvM0RHz8b7bT.jpg	61EyTn4ZxYk	Cuando no están llenando estadios, las superestrellas del k‑pop Rumi, Mira y Zoey usan sus superpoderes secretos para proteger a sus fans de amenazas sobrenaturales.
1134278	Maraé	Jacques Kluger	Darklight Content	2024	4.382	/jw5lampy4gLzwLVnm6vQH6zYuCX.jpg	\N	Sinopsis no disponible.
1161617	Código 3	Christopher Leone	Wayfarer Studios	2025	6.721	/3hPPcGOS8XUciA2TDLWEE5hwikH.jpg	\N	Un paramédico quemado por el trabajo se fuerza a renunciar. Sin embargo, antes debe embarcarse en un último turno de 24 horas para formar a su sustituto.
1117857	En sueños	Alex Woo	Kuku Studios	2025	7.08	/qBfJ4x6rrhtU4Frwp3GFoBwFzsU.jpg	Dz0KcNJREoQ	Stevie y su hermano menor Elliot emprenden un viaje al universo absurdo de sus propios sueños para pedirle a Sandman que les conceda un deseo: tener una familia perfecta.
1511789	Captain Hook: The Cursed Tides	Lars Janssen	Rêvasser Films	2025	4.923	/bcP7FtskwsNp1ikpMQJzDPjofP5.jpg	\N	Tras ser derrotado por el Almirante Smee, el Capitán Hook se refugia en un pueblo maldito. Allí, se alía con un herrero local que busca venganza por el asesinato de su hermana.
1242419	Un Buen Ladrón	Derek Cianfrance	Limelight	2025	7.207	/cntGBm2Kr1ZP9nwoES8tdaPnmo3.jpg	Xffmu-6Fg6I	Después de escapar de prisión, el exsoldado y ladrón profesional Jeffrey Manchester encuentra refugio en una tienda Toys "R" Us, donde logra sobrevivir durante meses sin ser descubierto mientras planea su próximo movimiento. Sin embargo, cuando se enamora de una madre divorciada, su doble vida comienza a desmoronarse.
1244531	Tiburón blanco: La bestia del mar	Kiah Roache-Turner	Bronte Pictures	2025	6.3	/58xC3Vj5Td1UXhNaOQDOj2ygAH6.jpg	\N	Dos jóvenes reclutas, varados en una balsa en el océano abierto tras un ataque enemigo, deben luchar por sobrevivir contra un enorme y hambriento tiburón blanco.
507244	Cazadores Del Fin Del Mundo	J.J. Perry	Endurance Media	2025	6.9	/6VTnUQx6nY3UsZUV0BQX5S6l1Nq.jpg	6oASFmb8PB0	Un grupo de cazadores de tesoros postapocalípticos busca reliquias antiguas en una tierra que ha quedado casi destruida por una enorme erupción solar.
1323475	El encanto del champán	Mark Steven Johnson	Off Camera Entertainment	2025	6.298	/yey6ihLZVwx2sjMXhObUyFusqyX.jpg	\N	Una ambiciosa ejecutiva estadounidense viaja a París decidida a adquirir una marca de champán antes de Navidad..., pero se enamora del heredero de ese burbujeante imperio.
1425122	A Very Jonas Christmas Movie	Jessica Yu	20th Television	2025	6.777	/rQp9P3CigiN3bgNm0NkYoSl3bMv.jpg	\N	Los Hermanos Jonas luchan por llegar a casa para pasar Navidad con sus familias.
1061474	Superman	James Gunn	DC Studios	2025	7.414	/q8r0H7SmWi3UtU4UJM2hbEHWDOz.jpg	EfW7epUCcBk	Mientras el mundo pierde la fe en la bondad, Clark Kent, un periodista en Metrópolis, se embarca en un viaje para reconciliar su herencia kryptoniana con su educación humana como Superman.
861451	Martin	A. P. Arjun	Uday K Mehta Productions	2024	4.14	/rmCJCFrEwPC0u0Y1smihwDo4Cf1.jpg	\N	El viaje de un hombre que se descubre a sí mismo, encuentra el amor y lucha por su patria.
1299209	El hijo de mil hombres	Daniel Rezende	Biônica Filmes	2025	7.036	/yfkecTToGVoq7hUE1xlay7ccM9e.jpg	\N	En un pequeño pueblo, un solitario pescador que anhela un hijo es atraído por una luz etérea que lo vincula con otras personas... y sus más recónditos secretos.
1248226	Un día fuera de control	Luke Greenfield	Nickel City Pictures	2025	6.197	/nWprcqzpw41jslTgGrGcf4QhZ7Z.jpg	\N	Cuando el contador desempleado Brian se reúne con Jeff, papá de tiempo completo, para que sus hijos jueguen juntos, él espera una tarde tranquila. En cambio, los persiguen unos mercenarios, y Brian no está preparado para sobrevivir a un obstáculo absurdo tras otro. La vida de un papá suburbano se convierte en una película de acción en esta caótica e hilarante aventura.
1419406	The Shadow's Edge	Larry Yang	iQIYI Pictures	2025	6.374	/e0RU6KpdnrqFxDKlI3NOqN8nHL6.jpg	\N	Unos astutos y traicioneros ladrones desafian a la Policía Judicial de Macao. La Policía, que se encontraba en una dura batalla, invita de nuevo al experto en rastreo Huang De Zhong, retirado desde hace muchos años, a unir fuerzas con la joven élite del Departamento de Investigación Criminal de la Policía Judicial. Bajo la colisión de las técnicas tradicionales de rastreo y la alta tecnología, la policía y los criminales luchan con ingenio y valentía, y se lanzan a un duelo entre el bien y el mal parecido al juego del gato y el ratón.
1363123	Plan familiar 2	Simon Cellan Jones	Skydance Media	2025	6.568	/guYWtcg2FXkRHvlUg7VKz4srO3.jpg	3WoEPRpdTIU	Los días de asesino de Dan quedaron atrás, ahora solo quiere tener tiempo de calidad con sus hijos para Navidad. Pero se entera de que su hija tiene sus propios planes, un viaje familiar a Londres, eso los pone en la mira de un enemigo inesperado.
1054867	Una batalla tras otra	Paul Thomas Anderson	Warner Bros. Pictures	2025	7.49	/iZ1499F6hYxDxiqioy8oSUaxipG.jpg	-W4aTfmPcKA	Cuando su malvado némesis resurge después de 16 años, una banda de ex revolucionarios se reúne para rescatar a la hija de uno de los suyos.
1116465	El descubridor de leyendas	唐季禮	Bona Film Group	2024	6.672	/foDFUrj7gm6nK6dNcbRoU9aBkPn.jpg	QGVZADdh6Gc	Un arqueólogo notó que la textura de las reliquias descubiertas durante la excavación de un glaciar se parecía mucho a un colgante de jade visto en uno de sus sueños. Luego, él y su equipo se embarcan en una expedición a las profundidades del glaciar.
1128650	El Fiscal	甄子丹	Mandarin Motion Pictures	2024	6.721	/hLAek7EiM5NpLiotmQkmS8SIZw9.jpg	\N	La trama sigue a un joven, Ma Ka-kit, que es injustamente acusado de tráfico de drogas después de alquilar su dirección para ganar dinero extra. Un fiscal, Fok, con fuertes convicciones, investiga el caso a pesar de las dudas y la oposición, descubriendo una trama de corrupción que involucra a un sindicato del crimen y a un abogado corrupto. Fok se ve obligado a arriesgar su carrera y su vida para destapar la verdad y llevar a los verdaderos culpables ante la justicia.
1160360	Si pudiera, te daría una patada	Mary Bronstein	A24	2025	6.712	/gkIFK1HzqfgQg4v4ifeNKogHtPG.jpg	jAV81_II-ck	Con su vida literalmente derrumbándose a su alrededor, Linda intenta lidiar con la misteriosa enfermedad de su hija, su marido ausente, una persona desaparecida y una relación cada vez más hostil con su terapeuta.
1229910	Kryptic	Kourtney Roy	Z56film	2025	5.056	/tO4PLOx2Ey9PZunmwEAsGhc4Ah0.jpg	\N	Una mujer busca a un cazador de monstruos desaparecido, dándose cuenta de que tiene un vínculo inextricable con la criatura perseguida.
1135303	The Senior	Rod Lurie	Wayfarer Studios	2025	6.45	/sv3kE86knrukjpGTtLLfg246JFx.jpg	\N	Sinopsis no disponible.
269149	Zootopia	Byron Howard	Walt Disney Animation Studios	2016	7.751	/lyYyI5YPQ5dUqvhDSds59IuPnU8.jpg	\N	Decidida a demostrar su valía, la oficial Judy Hopps, la primera conejita de la fuerza policial de Zootopia, aprovecha la oportunidad de resolver su primer caso, incluso si eso significa asociarse con el zorro estafador Nick Wilde para resolver el misterio.
793387	Noche de paz: Cazadores de demonios	Lim Dae-hee	Big Punch Pictures	2025	6.7	/7MGnHpfhF8savUsrUJoI8Q7dTk9.jpg	\N	Sinopsis no disponible.
1072699	Furioza 2	Cyprian T. Olencki	2 Hungry Crocodiles	2025	6.554	/3f98fpG9s666xLcxX4rL0KRWRiE.jpg	\N	Tras un asesinato, Golden asume el mando de la implacable banda de hinchas violentos Furioza y busca expandir su poder más allá de la frontera.
1403735	లైలా	Ram Narayan	Shine Screens	2025	5.2	/l4gsNxFPGpzbq0D6QK1a8vO1lBz.jpg	\N	Sinopsis no disponible.
338969	El Vengador Toxico	Macon Blair	Legendary Pictures	2025	6.2	/kHrWK8OPsmrUkdrOeY1LOUxrbmS.jpg	\N	Un chico ingenuo se transforma en un poderoso superhéroe después de ser arrojado a una tina de desechos tóxicos.
1548092	Las Locuras	Rodrigo García	Panorama Global	2025	5	/8DkQBVesn5ihgYSD66JE7gigzGt.jpg	\N	La experiencia humana en un día intenso. Examina cómo los individuos son llevados al límite cuando desafían las limitaciones, ya sean restricciones autoimpuestas, expectativas familiares o presiones sociales.
1175942	Los tipos malos 2	Pierre Perifel	DreamWorks Animation	2025	7.75	/mZmnKDhIS2yNmtfzde5vtdCYzBF.jpg	8i8KXqdpP98	Un genial equipo de animales que no respetan la ley, los ahora muy reformados Tipos Malos, se esfuerzan (mucho, muchísimo) en ser buenos, pero se ven envueltos involuntariamente en un golpe de envergadura mundial planeado por un inesperado grupo de criminales: las Tipas Malas.
1310672	風都探偵 仮面ライダースカルの肖像	椛島洋介	Ishimori Production	2024	7.9	/fZ5Rl7b8ZeFuVjXpsybswT8kbBg.jpg	\N	Sinopsis no disponible.
1269021	Wake	Thom Arizmendi	\N	2024	5.375	/nMcBXvnLqoTKXZnyEeYFOIBlwLX.jpg	\N	Desesperada por conseguir un papel en un remake, una actriz que se encuentra en su peor momento busca a la protagonista de la película original. Encuentra a la enigmática, que ahora vive recluida, pero entonces empiezan a ocurrir cosas extrañas.
83533	Avatar: Fuego y ceniza	James Cameron	20th Century Studios	2025	0	/coJkkPBDeBsYecxoqMnZm8TKlBL.jpg	_VdVwVw0ou0	Devastados por la guerra contra la RDA y la perdida de su hijo mayor, Jake Sully y Neytiri se enfrentan a una nueva amenaza en Pandora: el pueblo de la ceniza, una violenta tribu Na'vi ávida de poder liderada por los despiadados Varang.
1309012	Altered	Timo Vuorensola	Studio Atlantic	2025	6.8	/n8Gn8xNIeOxAzHP6uusdGlUYu4s.jpg	\N	Sinopsis no disponible.
533533	TRON: Ares	Joachim Rønning	Walt Disney Pictures	2025	6.35	/qShQABLVRMZKnv5mWOPXWniBeB3.jpg	lOwBC4KPNCo	Un programa altamente sofisticado llamado Ares es enviado del mundo digital al mundo real en una misión peligrosa, marcando el primer encuentro de la humanidad con seres de IA.
1186350	Marco	Haneef Adeni	Cubes Entertainments	2024	6.6	/6Nj8Y1A9lcReqZZvRHOSiO3iTl6.jpg	\N	En Kerala, la familia Adat reina en el comercio del oro y otros negocios influyentes. Con George Peter como respetado patriarca y Marco como temible hijo adoptivo, su imperio se basa en el poder y la lealtad, pero su mundo está plagado de peligros y conflictos.
145341	Pułkownik Kwiatkowski	Kazimierz Kutz	Ikam	1996	6.7	/q6Jb1IdOJ8k7QO9vk3tJkaMGyIF.jpg	\N	Sinopsis no disponible.
81672	Appassionata	Gianluigi Calderone	Produzioni Atlas Consorziate	1974	5.709	/4LcH5gDuxKBvN1IyQH6PAvW38oC.jpg	\N	Sinopsis no disponible.
1340828	A Little Women's Christmas	Brandon Clark	Great American Media	2024	7.5	/p8rgVgxbyxn2SopgyWRdh0qa6eu.jpg	\N	Sinopsis no disponible.
505953	Storm Boy	Shawn Seet	Best FX Adelaide	2019	7.142	/geQ8xR84vmv44NuYgjmhvHF5HNm.jpg	\N	Sinopsis no disponible.
1096563	Fin de la lealtad	Hiroshi Katagiri	\N	2023	5.429	/jjUlgLcZDLiJ3KvlstUjiXrh5s4.jpg	\N	Cuando el jefe de una famosa familia criminal es asesinado, su hijo Grant está empeñado en vengarse y la única persona que puede evitar que destroce la ciudad y se destruya a sí mismo en el proceso es su mejor amigo y agente federal, Ray Rose.
755898	La guerra de los mundos	Rich Lee	Universal Pictures	2025	4.294	/fjgSlNGECNgVeMJaOdDAXmGh7ZM.jpg	\N	Will Radford, un destacado analista de ciberseguridad, pasa sus días rastreando posibles amenazas a la seguridad nacional a través de un programa de vigilancia masiva. Un ataque de una entidad desconocida le lleva a cuestionarse si el gobierno le está ocultando algo a él... y al resto del mundo.
1539104	JUJUTSU KAISEN: Ejecución	御所園翔太	MAPPA	2025	3.517	/a4QuZ6oW71zCpwVW08u3fHBxc6E.jpg	tcX0BLPayF4	Durante Halloween en Shibuya, un misterioso velo atrapa a la multitud dentro del distrito. Como consecuencia, diez colonias japonesas se convierten en zonas dominadas por maldiciones.
425274	Los ilusionistas 3: Ahora me ves, ahora no	Ruben Fleischer	Secret Hideout	2025	6.226	/k2VMqWWsdGiqyZ6UEjSgOoFK6mI.jpg	i_h4zRIe7I4	La historia remota un robo de diamantes que involucra a dos generaciones de ilusionistas, lo que forza a los Jinetes a salir de su retiro y unirse a los nuevos protagonistas para detener a un poderoso grupo de criminales.
1311031	Demon Slayer: Kimetsu no Yaiba Castillo infinito	外崎春雄	ufotable	2025	7.583	/6N21gcFbhT4ocdTU4MGREAaM5Vz.jpg	sqgSm8fWe1s	Tanjirō Kamado es un chico que se unió a una organización dedicada a cazar demonios después de que su hermana menor, Nezuko, fuera convertida. Mientras los miembros de la organización y los Pilares participaban en un programa de entrenamiento grupal, como preparación para la inminente batalla contra los demonios, Muzan Kibutsuji aparece en la Mansión Ubuyashiki. Con el jefe de la organización en peligro, Tanjirō y los Pilares corren hacia la mansión, pero son arrastrados a un espacio misterioso por obra de Kibutsuji. El lugar al que han caído Tanjirō y los cazadores es el bastión de los demonios: el Castillo Infinito. Así, el campo de batalla queda establecido para dar fin a la guerra entre humanos y demonios.
7451	xXx - Triple X	Rob Cohen	Revolution Studios	2002	5.976	/2S3CTv5CyDb99mquNuptBvCVAHd.jpg	\N	Xander Cage es tu adicto a la adrenalina estándar sin miedo y con una actitud pésima. Cuando el gobierno de los Estados Unidos lo "recluta" para ir a una misión, no está precisamente emocionado. Su misión: recopilar información sobre una organización que puede estar planeando la destrucción del mundo, dirigida por el nihilista Yorgi.
1468417	First Moon	Peter McLeod	\N	2025	4.159	/uJ13k79tpmsFDhXX2YUAlsRFzDT.jpg	\N	Una joven camarera es secuestrada por una secta religiosa, que está empeñada en curarla de un virus de hombre lobo de transmisión sexual... o matarla en el proceso. Escapará antes de la primera luna llena?
1084242	Zootopia 2	Jared Bush	Walt Disney Animation Studios	2025	7.3	/LrMBxFwnsMgXTnaWqHYinn3vDN.jpg	4_KaABhCPPk	Después de resolver el caso más importante en la historia de Zootopia, los policías novatos Judy Hopps y Nick Wilde descubren que su asociación no es tan sólida como pensaban cuando el Jefe Bogo les ordena unirse al programa de consejería "Compañeros en Crisis". Pero no pasa mucho tiempo para que su asociación se ponga a prueba al máximo, cuando la llegada de Gary, la serpiente, pone la ciudad patas arriba.
1218925	Chainsaw Man la película -Arco de Reze	吉原達矢	MAPPA	2025	7.805	/1CfZCb56vWjq37uXtbKNMevMzwG.jpg	4ab245e7JNU	En una brutal guerra entre demonios, cazadores y enemigos secretos, una misteriosa chica llamada Reze ha entrado en el mundo de Denji, y él enfrenta su batalla más mortal hasta ahora, impulsado por el amor en un mundo donde la supervivencia no conoce reglas.
1241983	Sueños de trenes	Clint Bentley	Kamala Films	2025	7.711	/aKvcYAt8VwZ246FM1HmXvYEV6gA.jpg	\N	Un leñador que lleva una vida tranquila experimenta el amor y la pérdida durante una era de cambios monumentales en los Estados Unidos de principios del siglo XX.
1265063	Cacería de brujas	Luca Guadagnino	Frenesy Film	2025	6.025	/3pjS6bkDl8zBC6jp6KjBZzxyofY.jpg	EOu8S8bjqcE	Una profesora universitaria que se encuentra en una encrucijada personal y profesional cuando una estudiante destacada presenta una acusación contra uno de sus colegas, y un oscuro secreto de su propio pasado amenaza con salir a la luz.
1038392	El Conjuro 4: Últimos ritos	Michael Chaves	New Line Cinema	2025	6.983	/dyW5mX4wwDoZWgTYObx6pg9V0i9.jpg	9n7b0ORr-U4	En 1986, los investigadores paranormales, Ed y Lorraine Warren, salen de su retiro para investigar, junto con su hija adulta Judy y su compañero Tony, el caso Smurl, una entidad demoníaca más oscura.
402431	Wicked	Jon M. Chu	Universal Pictures	2024	6.914	/hDQXqvmmikekQ15uxhisBDwEA63.jpg	hWHniTySg4Q	La historia de cómo una mujer de piel verde esmeralda se convierte en la Malvada Bruja del Oeste; largometraje basado en el musical de Broadway.
297802	Aquaman	James Wan	Warner Bros. Pictures	2018	6.872	/yTzr6Nc4RcTXVw9SsWQNJdcjTz5.jpg	FR1V6iRB02w	Cuando Arthur Curry (Jason Momoa) descubre que es mitad humano y mitad atlante, emprenderá el viaje de su vida en esta aventura que no sólo le obligará a enfrentarse a quién es en realidad, sino también a descubrir si es digno de cumplir con su destino: ser rey, y convertirse en Aquaman.
1025527	Seis días: Caza al asesino	Juan Carlos Medina	Empreinte Cinéma	2024	5.873	/vTaGbyHe0vJXbE2t90OVQZsE3G4.jpg	\N	Hace 11 años, el inspector Malik no pudo resolver un caso de secuestro y una niña murió. Ahora, a pocos días de que se cierre el caso, decide reabrirlo. Malik se lo debe a la madre y a sí mismo. Mientras indaga en el pasado, una niña vuelve a ser secuestrada. El patrón es el mismo que hace una década, no es casualidad. Malik sabe que dispone de pocos días para arreglar las cosas y hacer justicia. El tiempo corre...
617126	Los 4 Fantásticos: Primeros pasos	Matt Shakman	Marvel Studios	2025	7.043	/lESwYExnRVCDscOmdvklWxZgWUp.jpg	6NNwtpzrFTs	Con un estruendoso trasfondo en un mundo retrofuturista inspirado en los años 60, la Primera Familia de Marvel enfrenta su desafío más intimidante hasta ahora. Obligados a equilibrar sus roles como héroes con la fuerza de su vínculo familiar, deben defender la Tierra de un voraz dios espacial llamado Galactus y su enigmático heraldo, Silver Surfer.
798645	El sobreviviente	Edgar Wright	Paramount Pictures	2025	6.845	/qlDwhPwaCGXAPCtT2gDgON7AZBr.jpg	Sx3jRH7pIj4	Un hombre se une a un programa de juegos en el que los concursantes, a los que se les permite ir a cualquier parte del mundo, son perseguidos por cazadores empleados para matarlos.
1214130	Frankie y Los Monstruos	Steve Hudson	GFM Animation	2025	6.6	/kXsI6DluqNnBfJenlXNuIpiPTOU.jpg	\N	Es la historia de Frankie, un extraño joven creado por un científico loco que vive junto a sus creaciones espeluznantes. Sueña con ver el mundo, pero teme los peligros que podría encontrar. Un giro moderno sobre la clásica historia de Frankenstein, Stitch Head es una emocionante y divertida película sobre la amistad, la familia y la aventura.
575265	Misión: Imposible - La sentencia final	Christopher McQuarrie	Paramount Pictures	2025	7.263	/haOjJGUV00dKlZaJWgjM1UD1cJV.jpg	B8-eBVeEBFA	La Entidad, la IA experimental que se ha convertido en el villano de la historia, sigue activa y cuenta con el apoyo del malvado Gabriel en el mundo de los cárnicos. Por suerte, Ethan y su equipo tienen la llave que les podría dar el control de la Entidad, algo que les obligará a arriesgarse para eliminar a esa IA que descansa en el fondo del mar.
1215106	หมู่บ้านโคกะโหลก	พชร์ อานนท์	M Studio	2025	3.8	/pRWBabtsYvqpPmxNYcejIUe6lc3.jpg	\N	Sinopsis no disponible.
1234821	Jurassic World: Renace	Gareth Edwards	Universal Pictures	2025	6.384	/v49ceVcpW4Vj0tveTWlzrRdsFf4.jpg	erCVQDKXobA	Cinco años después de los acontecimientos de Jurassic World Dominion, Zora Bennett, una experta en operaciones encubiertas, es contratada para dirigir a un equipo de especialistas cuya misión es conseguir fabricar un medicamento hecho de ADN de tres criaturas más grandes para la raza humana.
1316147	El gran premio a toda velocidad	Waldemar Fast	Mack Media	2025	7.3	/uOEgCIpKtZZ7Iz6kXe3LvTPldje.jpg	\N	Edda, una joven ratona e hija del operador de feria Erwin, sueña con convertirse en piloto de carreras. En vísperas del 50 aniversario del Gran Premio de Europa, Edda tiene la oportunidad de conocer a su ídolo, la estrella de las carreras Ed, y de ayudar a su padre a salvar su negocio en quiebra. Pero para ello, tendrá que ponerse ella misma al volante.
639988	No hay otra opción	Park Chan-wook	CJ ENM Studios	2025	7.8	/9w7WGjQes0Cs0s4U3Qr09Tg1Sra.jpg	\N	Después de estar desempleado durante varios años, un hombre idea un plan único para conseguir un nuevo trabajo: eliminar a su competencia.
1156594	Culpa nuestra	Domingo González	Pokeepsie Films	2025	7.514	/1x6IEK3GwKzMfmYi1sgF4sh7yPU.jpg	kuiOAsu8UsA	La relación entre Nick y Noah está pasando por su mejor momento. Se van a producir una serie de eventos para que ambos puedan comprender finalmente si de verdad están hechos el uno para el otro o, si de lo contrario, lo que más les conviene es seguir caminos separados.
1223601	Sisu: Camino a la vengaza	Jalmari Helander	Cosmic Snowball	2025	7.909	/gXIPPJVzxsNkajLsBZzEuJhZMNi.jpg	Vs_dkgvjJUc	En plena Segunda Guerra Mundial, un hombre conocido como "el hombre que se niega a morir" regresa a la casa donde su familia fue brutalmente asesinada. Con determinación, desmantela la casa, la carga en un camión y se propone reconstruirla en un lugar seguro en honor a sus seres queridos. Cuando el comandante del Ejército Rojo responsable de la masacre regresa decidido a eliminarlo, se desata una implacable y espectacular persecución a través del país. La película está llena de escenas de acción trepidantes y una lucha a muerte, reafirmando la leyenda de un guerrero solitario que no se detiene ante nada ni nadie. "Sisu: Camino a la venganza" es una secuela de la exitosa "Sisu" (2022) y combina aventura, acción y drama de guerra con influencias de Indiana Jones y James Bond bajo la dirección de Jalmari Helander.
1305717	Zona de caza	Derek Barnes	Kemodo Entertainment	2025	6.7	/u6DNzvz4y3XS5QYqsvvauIx4Xvc.jpg	\N	Una madre que huye de su marido, relacionado con la mafia, encuentra refugio en casa de un vagabundo llamado Jake, pero cuando los hombres de su marido se acercan, Jake resulta ser más peligroso que cualquiera de los que ella huye.
1246049	Drácula	Luc Besson	EuropaCorp	2025	7.1	/3SQVpeacrCIn3GF3BXNDoPcQxEz.jpg	\N	Tras la muerte de su esposa, un príncipe del siglo XV renuncia a Dios y se convierte en vampiro. Siglos más tarde, en el Londres del siglo XIX, ve a una mujer parecida a su difunta esposa y la persigue, sellando así su propio destino.
1029575	Plan familiar	Simon Cellan Jones	Municipal Pictures	2023	7.243	/mBiylEUJgWikljJJNB61u7dDPON.jpg	KpV1w6ciVnY	Dan Morgan es un hombre con muchas identidades: es un esposo devoto, un padre amoroso y un reconocido vendedor de autos. También es un asesino retirado. Cuando su pasado pone en riesgo a su presente, se ve forzado a llevar a su ingenua familia en un viaje como ningún otro.
911430	F1 la película	Joseph Kosinski	Plan B Entertainment	2025	7.8	/yKIG63pXN89EfbTA7yKpwxAU1rf.jpg	Pa42UZgXiYk	El piloto legendario Sonny Hayes es convencido de salir de su retiro para liderar a un equipo de la Fórmula 1 en dificultades y ser mentor de un joven piloto talentoso, mientras se busca una última oportunidad de gloria.
106	Depredador	John McTiernan	20th Century Fox	1987	7.541	/bzLLeqhNBNmO6WImHrrmLNyhMxi.jpg	\N	Un grupo de mercenarios es contratado por la CIA para rescatar a unos pilotos que han sido apresados por la guerrilla en la selva centroamericana. La misión es un éxito, pero durante el viaje de regreso se dan cuenta de que algo misterioso e invisible está dándoles caza uno a uno. Ese algo resulta ser un cazador alienígena que se queda con las calaveras de sus víctimas como trofeos.
1010581	Culpa mía	Domingo González	Pokeepsie Films	2023	7.764	/gp31EwMH5D2bftOjscwkgTmoLAB.jpg	\N	Noah debe dejar su ciudad, novio y amigos para mudarse a la mansión del nuevo marido de su madre. Allí conoce a su nuevo hermanastro Nick y sus personalidades chocan desde el primer momento. Pero la atracción que sienten les llevará a vivir una relación prohibida, donde el carácter rebelde y atormentado de cada uno de ellos pondrá del revés sus mundos haciendo que acaben perdidamente enamorados. Adaptación del primer libro de la trilogía "Culpables" de Mercedes Ron.
1280450	La niña robada	James Kent	Voltage Pictures	2025	6.537	/fFKcNfjOUbfaC8hPuiMxJ8PAudy.jpg	\N	En 1993, Amina, la hija de seis años de Maureen, es sacada a escondidas del país por su exmarido, Karim. Tras años de intentos infructuosos por encontrarla, Maureen se cruza con un profesional que recupera niños secuestrados internacionalmente, quien promete ayudarla a encontrar a Amina a cambio de su colaboración.
24428	Avengers: Los Vengadores	Joss Whedon	Marvel Studios	2012	7.856	/ugX4WZJO3jEvTOerctAWJLinujo.jpg	yNXfOOL8824	Cuando un enemigo inesperado surge como una gran amenaza para la seguridad mundial, Nick Fury, director de la Agencia SHIELD, decide reclutar a un equipo para salvar al mundo de un desastre casi seguro. Adaptación del cómic de Marvel "Los Vengadores", el legendario grupo de superhéroes formado por Ironman, Hulk, Thor y el Capitán América entre otros.
1257009	Primitive War	Luke Sparke	Sparke Films	2025	6.838	/aJc0Ej0mAIpNPoQh46oOnUQCqxE.jpg	\N	Vietnam. 1968. Una unidad de reconocimiento conocida como Escuadrón Buitre es enviada a un valle aislado de la jungla para descubrir el destino de un pelotón de Boina Verde desaparecido. Pronto descubren que no están solos.
1235746	Dead of Winter	Brian Kirk	Stampede Ventures	2025	6.522	/5DcrN62sGAiRJxt8rXSRlSRLwIE.jpg	\N	Una mujer, que viaja sola por el norte nevado de Minnesota, interrumpe el secuestro de una adolescente. A horas del pueblo más cercano y sin cobertura telefónica, se da cuenta de que es la única esperanza de la joven.
1007734	Nadie 2	Timo Tjahjanto	Universal Pictures	2025	7.064	/qwdBh0102NX5fslXv3L9MSlXqKc.jpg	2iRy8l8oWlk	El ex asesino Hutch Mansell lleva a su familia a unas nostálgicas vacaciones a un parque temático de una pequeña ciudad, solo para volver a verse arrastrado a la violencia cuando se enfrentan a un operador corrupto, un sheriff corrupto y un despiadado jefe criminal.
1284120	La hermanastra fea	Emilie Blichfeldt	Mer Film	2025	7.319	/uI8ho9i1Dl6LUyyJ8ZqkE7SxVq4.jpg	IrCxnbR1jck	En un reino de cuento de hadas donde la belleza es un asunto brutal, Elvira lucha para competir con su increíblemente bella hermanastra Cenicienta, y hará lo que sea para llamar la atención del príncipe.
1087192	Cómo entrenar a tu dragón	Dean DeBlois	DreamWorks Animation	2025	7.996	/kjQXYc2Abhy3TBgAZGzJRhN1JaV.jpg	FQM-V1CF-Zw	En la agreste isla de Berk, donde vikingos y dragones han sido enemigos acérrimos durante generaciones, Hipo se distingue, desafiando siglos de tradición al entablar amistad con Desdentao, un temido dragón Furia Nocturna. Su improbable vínculo revela la verdadera naturaleza de los dragones, desafiando los cimientos de la sociedad vikinga.
1081208	The Dogs	Valerie Buhagiar	Wild Media Entertainment	2025	6.5	/8dsBBNw3uJkOvLPb2nz8VJAkGbM.jpg	\N	Perseguidos por su padre, Cameron y su madre se mudan a una granja aislada donde Cameron ve y oye cosas que no son posibles. Comienza a cuestionarse todo lo que le rodea y debe descubrir los misterios antes de que le destrocen.
157336	Interestelar	Christopher Nolan	Legendary Pictures	2014	8.463	/cQuuBjG78j4b2r1dFpAjnjbUplv.jpg	la8DwjkLHoE	Cooper y un grupo de exploradores utilizan un agujero de gusano recién descubierto para superar las limitaciones de los viajes espaciales humanos y conquistar las vastas distancias que implica un viaje interestelar.
604079	Camina o muere	Francis Lawrence	Lionsgate	2025	6.928	/kXIw6UiO2zANEPyStiYoEIopN0q.jpg	Ae4pHnVUG9U	Un grupo de adolescentes compite en un concurso anual conocido como "La Larga Marcha", en el que deben mantener una cierta velocidad al caminar o recibir un disparo.
1010756	Los Extraños: Capítulo 2	Renny Harlin	Lionsgate	2025	6.015	/3PQBfVcFlk4JIgIPscqdD7Gt7B3.jpg	\N	Después de descubrir que una de sus víctimas, Maya, sigue con vida, tres maníacos enmascarados regresan para terminar el trabajo. Sin un lugar donde esconderse y sin nadie en quien confiar, Maya pronto se ve envuelta en una brutal lucha por sobrevivir contra unos psicópatas dispuestos a matar a cualquiera que se interponga en su camino.
1401318	Una Navidad EXtra	Steve Carr	Hartbreak Films	2025	6.24	/zbDmE67pbPRlP4WHlJvDtdFxnw1.jpg	\N	Kate y Everett, una pareja separada, intentan celebrar una última Navidad juntos con sus hijos antes de su divorcio. Sin embargo, la nueva novia del marido se une a las festividades, provocando tensión y caos durante las fiestas.
1035259	¿Y dónde está el policía?	Akiva Schaffer	Fuzzy Door Productions	2025	6.528	/5RM9cbIQfrtYYSbb6KEL4bo8JYj.jpg	n2Ij4N1XcQc	El torpe teniente Frank Drebin Jr. intenta resolver un asesinato vinculado a un magnate tecnológico. Mientras investiga, su unidad policial corre peligro de ser cerrada. Con la ayuda de una escritora de crímenes, Frank se verá envuelto en situaciones tan absurdas como explosivas. Reboot de la popular franquicia de comedia "Agárralo como puedas" y la serie de televisión "Police Squad!".
980477	Ne Zha 2: El Renacer del Alma	饺子	Chengdu Coco Cartoon	2025	8.028	/rSBlnopTGL6aGpD2gTG1Bfqb2Om.jpg	\N	Después de la catástrofe, aunque las almas de Nezha y Aobing fueron salvadas, sus cuerpos pronto serían destrozados. Taiyi Zhenren planeaba usar el loto de siete colores para reconstruir sus cuerpos.
541671	Bailarina	Len Wiseman	Thunder Road	2025	7.311	/llpNGX1H5sQdGRHeteyFXELuoMz.jpg	4aNi761ChCI	Eve Macarro es una asesina entrenada por la Ruska Roma desde su infancia, la misma organización criminal encargada del adiestramiento de John Wick. En esta violenta historia de venganza, Eve intentará por todos los medios averiguar quién está detrás del asesinato de su padre. En su lucha por conocer la verdad, tendrá que atenerse a las normas de la Alta Mesa y, por supuesto, a las del Hotel Continental, donde descubrirá que existen secretos ocultos sobre su pasado.
552524	Lilo y Stitch	Dean Fleischer Camp	Walt Disney Pictures	2025	7.245	/4oLLOAT55JhAoe73VliaSKFvEEr.jpg	9JIyINjMfcc	Remake en imagen real de «Lilo & Stitch». Narra la historia de una niña hawaiana solitaria y un extraterrestre fugitivo que la ayuda a recomponer su rota familia.
\.


--
-- Data for Name: peliculaetiqueta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peliculaetiqueta (idetiqueta, idpelicula) FROM stdin;
28	1419406
80	1419406
53	1419406
28	1363123
35	1363123
18	1062722
27	1062722
14	1062722
28	1054867
53	1054867
80	1054867
28	1116465
12	1116465
14	1116465
28	1033462
12	1033462
878	1033462
28	1084222
12	1084222
27	1084222
28	1128650
18	1128650
80	1128650
53	1128650
28	1242898
878	1242898
12	1242898
28	1248226
35	1248226
10751	1248226
878	755898
53	755898
10749	967941
14	967941
12	967941
16	1539104
28	1539104
28	1426968
80	1426968
53	1426968
53	425274
80	425274
9648	425274
28	1296504
53	1296504
80	1296504
27	1197137
53	1197137
16	1311031
28	1311031
14	1311031
53	1311031
28	7451
12	7451
53	7451
80	7451
18	7451
16	1026821
14	1026821
28	1026821
12	1026821
80	1429738
28	1429738
18	1429738
27	1468417
53	1468417
16	1084242
10751	1084242
35	1084242
12	1084242
9648	1084242
27	937941
9648	937941
27	1280518
16	1218925
28	1218925
10749	1218925
14	1218925
27	1214140
14	1214140
28	1214140
53	1214140
18	1241983
14	803796
10402	803796
35	803796
16	803796
27	1134278
53	1134278
18	1265063
28	1161617
35	1161617
27	1038392
16	1117857
10751	1117857
35	1117857
12	1117857
14	1117857
18	402431
10749	402431
14	402431
28	297802
12	297802
14	297802
12	1511789
28	1511789
27	1511789
53	1025527
28	1025527
878	617126
12	617126
28	617126
35	1242419
18	1242419
80	1242419
28	798645
53	798645
878	798645
16	1214130
12	1214130
10751	1214130
35	1214130
28	575265
53	575265
53	1244531
27	1244531
10752	1244531
28	1244531
878	507244
28	507244
35	507244
80	1096563
28	1096563
10749	1323475
35	1323475
35	1215106
27	1215106
53	1215106
35	1425122
10402	1425122
878	1234821
12	1234821
28	1234821
878	1061474
12	1061474
28	1061474
16	1316147
12	1316147
35	1316147
28	861451
18	861451
53	861451
80	639988
53	639988
35	639988
10749	1156594
18	1156594
18	1299209
28	1223601
10752	1223601
28	1305717
53	1305717
27	1246049
14	1246049
10749	1246049
18	1160360
53	1160360
35	1160360
28	1029575
35	1029575
10751	1029575
27	1229910
53	1229910
18	1229910
28	911430
18	911430
878	106
28	106
12	106
53	106
18	1010581
10749	1010581
53	1010581
18	1135303
16	269149
12	269149
10751	269149
35	269149
53	1280450
28	1280450
12	1280450
878	24428
28	24428
12	24428
28	793387
14	793387
27	793387
53	793387
28	1072699
80	1072699
53	1072699
35	1403735
10749	1403735
28	1257009
27	1257009
10752	1257009
28	338969
35	338969
878	338969
53	1235746
28	1007734
53	1007734
18	1548092
27	1284120
35	1284120
14	1284120
18	1284120
14	1087192
10751	1087192
28	1087192
12	1087192
10751	1175942
35	1175942
80	1175942
12	1175942
16	1175942
16	1310672
28	1310672
12	1310672
35	1310672
27	1081208
53	1081208
9648	1081208
12	157336
18	157336
878	157336
27	1269021
53	1269021
53	604079
878	604079
27	604079
27	1010756
53	1010756
878	83533
12	83533
14	83533
10749	1401318
35	1401318
28	1035259
35	1035259
80	1035259
878	1309012
28	1309012
878	533533
12	533533
28	533533
16	980477
14	980477
12	980477
28	980477
28	541671
53	541671
80	541671
28	1186350
80	1186350
53	1186350
10751	552524
878	552524
35	552524
12	552524
35	145341
36	145341
18	81672
35	1340828
10749	1340828
18	1340828
18	505953
12	505953
10751	505953
\.


--
-- Data for Name: users_usertoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_usertoken (id, token, created_at, is_active, user_id) FROM stdin;
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (idusuario, password, nombre, apellidopaterno, apellidomaterno, fechanacimiento, genero, token, email) FROM stdin;
usuario1	607e2cb7dda0621e99f121fdad9b0207a62387c20937a290cc4c95b25cfee9b7	Juan	Pérez	García	2000-01-15	M	5SOkMPGjRpeJdiFwu6d0701Ic_db22YQl_G2DRTg4Uw	\N
amico	607e2cb7dda0621e99f121fdad9b0207a62387c20937a290cc4c95b25cfee9b7	Juan	Pérez	García	2000-01-15	M	\N	hola123@gmail.com
tocineta	af460717ffd4d603d5a4c4fcd3b9a1fedc35e4013990fb109408b94656121087	Alejandro	Jaocm	MISIM	2003-07-16	M	\N	alejandrojacome63@gmail.com
tocineta2	af460717ffd4d603d5a4c4fcd3b9a1fedc35e4013990fb109408b94656121087	Alejandro	Jaocm	MISIM	2003-07-16	M	6-HXM3m4piUoUBeX_gms4gx7w6O-94vjKv7tnz2QAiA	alejandrojacome63@gmail.com
tocineta3	a2c5f1f1440f8d36cd1125d5e1211c757cc8e6b1219728d921e6f6d4b06c810f	Alejandro	Jaocm	Delagado	2000-10-17	M	\N	libodio0401@outlook.com
NuevoUsuario	8de664138440814ba977707621fa4437d468344daf7b39b8a63df583fc4fe8a4	Juan	Solano	Perez	2019-01-14	M	\N	correoejemplo@gmail.com
NuevoUsuario2	d4db286f391157b0c116d9c1bedc41d9f48bb984cd3f39d012d886cb02f85c37	Alejandro	Solano	Perez	2009-01-28	M	\N	correo@fake.com
silson	607e2cb7dda0621e99f121fdad9b0207a62387c20937a290cc4c95b25cfee9b7	Juan	Pérez	García	2000-01-15	M	U9mBipfETzabUMDD3QuHujCWBrAGVDFGpQLrwWlm0cg	\N
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: users_usertoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_usertoken_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: cineteca cineteca_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cineteca
    ADD CONSTRAINT cineteca_pkey PRIMARY KEY (idcineteca);


--
-- Name: comentario comentario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT comentario_pkey PRIMARY KEY (idcomentario);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: etiqueta etiqueta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.etiqueta
    ADD CONSTRAINT etiqueta_pkey PRIMARY KEY (idetiqueta);


--
-- Name: horario horario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT horario_pkey PRIMARY KEY (idhorario);


--
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (idpelicula);


--
-- Name: users_usertoken users_usertoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_usertoken
    ADD CONSTRAINT users_usertoken_pkey PRIMARY KEY (id);


--
-- Name: users_usertoken users_usertoken_token_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_usertoken
    ADD CONSTRAINT users_usertoken_token_key UNIQUE (token);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: users_usertoken_token_e335eac8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_usertoken_token_e335eac8_like ON public.users_usertoken USING btree (token varchar_pattern_ops);


--
-- Name: users_usertoken_user_id_bf4600b5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_usertoken_user_id_bf4600b5 ON public.users_usertoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comentario fk_comentario_pelicula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk_comentario_pelicula FOREIGN KEY (idpelicula) REFERENCES public.pelicula(idpelicula) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: comentario fk_comentario_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentario
    ADD CONSTRAINT fk_comentario_usuario FOREIGN KEY (idusuario) REFERENCES public.usuario(idusuario) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: peliculaetiqueta fk_etiqueta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculaetiqueta
    ADD CONSTRAINT fk_etiqueta FOREIGN KEY (idetiqueta) REFERENCES public.etiqueta(idetiqueta) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: horario fk_horario_cineteca; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_horario_cineteca FOREIGN KEY (idcineteca) REFERENCES public.cineteca(idcineteca) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: horario fk_horario_pelicula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT fk_horario_pelicula FOREIGN KEY (idpelicula) REFERENCES public.pelicula(idpelicula) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: peliculaetiqueta fk_pelicula; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peliculaetiqueta
    ADD CONSTRAINT fk_pelicula FOREIGN KEY (idpelicula) REFERENCES public.pelicula(idpelicula) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: users_usertoken users_usertoken_user_id_bf4600b5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_usertoken
    ADD CONSTRAINT users_usertoken_user_id_bf4600b5_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict V2qcPRjAJoKdKKcdwDUXSUrYGn2jT1kvykupbTYDQYyD5rCNEuPwJe56mErKokV

--
-- PostgreSQL database cluster dump complete
--

