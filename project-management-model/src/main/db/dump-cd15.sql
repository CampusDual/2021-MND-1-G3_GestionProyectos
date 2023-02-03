--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16 (Debian 11.16-0+deb10u1)
-- Dumped by pg_dump version 14.2

-- Started on 2023-02-03 08:29:11

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

DROP DATABASE cd15;
--
-- TOC entry 3073 (class 1262 OID 188869)
-- Name: cd15; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE cd15 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


\connect cd15

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 221 (class 1259 OID 189605)
-- Name: area; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.area (
    area_id integer NOT NULL,
    area_name character varying(50)
);


--
-- TOC entry 224 (class 1259 OID 189891)
-- Name: levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.levels (
    valor_nivel integer NOT NULL,
    nivel character varying
);


--
-- TOC entry 218 (class 1259 OID 189518)
-- Name: project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project (
    project_id integer NOT NULL,
    project_name character varying(50),
    creation_date date,
    income integer,
    priority character varying(5),
    difficulty character varying(5),
    delivery_date date,
    area_project integer,
    priority_id integer,
    difficulty_id integer
);


--
-- TOC entry 217 (class 1259 OID 189516)
-- Name: project_project_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_project_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 217
-- Name: project_project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_project_id_seq OWNED BY public.project.project_id;


--
-- TOC entry 212 (class 1259 OID 189390)
-- Name: ti18n; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n (
    id_i18n integer NOT NULL,
    class_name character varying(150),
    i18n_description character varying(250)
);


--
-- TOC entry 211 (class 1259 OID 189388)
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ti18n_id_i18n_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 211
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ti18n_id_i18n_seq OWNED BY public.ti18n.id_i18n;


--
-- TOC entry 214 (class 1259 OID 189398)
-- Name: ti18n_value; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ti18n_value (
    id_i18n_value integer NOT NULL,
    id_i18n integer NOT NULL,
    key character varying(250),
    es_es character varying(10485760),
    en_us character varying(10485760),
    gl_es character varying(10485760)
);


--
-- TOC entry 213 (class 1259 OID 189396)
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ti18n_value_id_i18n_value_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 213
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ti18n_value_id_i18n_value_seq OWNED BY public.ti18n_value.id_i18n_value;


--
-- TOC entry 206 (class 1259 OID 189356)
-- Name: trequest_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trequest_statistics (
    id_request_statistics integer NOT NULL,
    service_name character varying(255),
    method_name character varying(50),
    user_name character varying(50),
    execution_date date,
    execution_time integer,
    method_params character varying(5000),
    service_exception character varying(5000)
);


--
-- TOC entry 205 (class 1259 OID 189354)
-- Name: trequest_statistics_id_request_statistics_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trequest_statistics_id_request_statistics_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 205
-- Name: trequest_statistics_id_request_statistics_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trequest_statistics_id_request_statistics_seq OWNED BY public.trequest_statistics.id_request_statistics;


--
-- TOC entry 200 (class 1259 OID 189212)
-- Name: trole; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole (
    id_rolename integer NOT NULL,
    rolename character varying(255),
    xmlclientpermission character varying(10485760)
);


--
-- TOC entry 199 (class 1259 OID 189210)
-- Name: trole_id_rolename_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trole_id_rolename_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 199
-- Name: trole_id_rolename_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trole_id_rolename_seq OWNED BY public.trole.id_rolename;


--
-- TOC entry 216 (class 1259 OID 189409)
-- Name: trole_server_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trole_server_permission (
    id_role_server_permission integer NOT NULL,
    id_rolename integer,
    id_server_permission integer
);


--
-- TOC entry 215 (class 1259 OID 189407)
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trole_server_permission_id_role_server_permission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 215
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trole_server_permission_id_role_server_permission_seq OWNED BY public.trole_server_permission.id_role_server_permission;


--
-- TOC entry 204 (class 1259 OID 189345)
-- Name: tserver_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tserver_permission (
    id_server_permission integer NOT NULL,
    permission_name character varying(10485760)
);


--
-- TOC entry 203 (class 1259 OID 189343)
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tserver_permission_id_server_permission_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 203
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tserver_permission_id_server_permission_seq OWNED BY public.tserver_permission.id_server_permission;


--
-- TOC entry 208 (class 1259 OID 189367)
-- Name: tsetting; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tsetting (
    id_setting integer NOT NULL,
    setting_key character varying(10485760),
    setting_value character varying(10485760),
    setting_comment character varying(10485760)
);


--
-- TOC entry 207 (class 1259 OID 189365)
-- Name: tsetting_id_setting_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tsetting_id_setting_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 207
-- Name: tsetting_id_setting_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tsetting_id_setting_seq OWNED BY public.tsetting.id_setting;


--
-- TOC entry 198 (class 1259 OID 189165)
-- Name: tuser; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser (
    user_ character varying(50) NOT NULL,
    password character varying(50),
    name character varying(50),
    surname character varying(50),
    email character varying(50),
    nif character varying(50),
    userblocked timestamp without time zone,
    lastpasswordupdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    firstlogin boolean DEFAULT true,
    area_user integer
);


--
-- TOC entry 210 (class 1259 OID 189378)
-- Name: tuser_preference; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_preference (
    id_user_preference integer NOT NULL,
    preference_name character varying(150),
    user_login character varying(150),
    preference_value character varying(10485760)
);


--
-- TOC entry 209 (class 1259 OID 189376)
-- Name: tuser_preference_id_user_preference_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tuser_preference_id_user_preference_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 209
-- Name: tuser_preference_id_user_preference_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tuser_preference_id_user_preference_seq OWNED BY public.tuser_preference.id_user_preference;


--
-- TOC entry 202 (class 1259 OID 189254)
-- Name: tuser_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tuser_role (
    id_user_role integer NOT NULL,
    id_rolename integer,
    user_ character varying(50)
);


--
-- TOC entry 201 (class 1259 OID 189252)
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tuser_role_id_user_role_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 201
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tuser_role_id_user_role_seq OWNED BY public.tuser_role.id_user_role;


--
-- TOC entry 225 (class 1259 OID 189915)
-- Name: vprojectarea; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.vprojectarea AS
 SELECT p.project_id,
    p.project_name,
    p.creation_date,
    p.income,
    p.priority_id,
    p.difficulty_id,
    p.delivery_date,
    p.area_project,
    a.area_name
   FROM (public.project p
     JOIN public.area a ON ((a.area_id = p.area_project)));


--
-- TOC entry 223 (class 1259 OID 189881)
-- Name: vuserrolearea; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.vuserrolearea AS
 SELECT t.user_,
    t.password,
    t.name,
    t.surname,
    t.email,
    t.nif,
    t.userblocked,
    t.lastpasswordupdate,
    t.firstlogin,
    t.area_user,
    tr.id_rolename,
    r.rolename,
    r.xmlclientpermission
   FROM ((public.tuser t
     JOIN public.tuser_role tr ON (((t.user_)::text = (tr.user_)::text)))
     JOIN public.trole r ON ((tr.id_rolename = r.id_rolename)));


--
-- TOC entry 220 (class 1259 OID 189526)
-- Name: workload; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.workload (
    id integer NOT NULL,
    user_ character varying(50),
    project_id integer,
    workload_percentage numeric(3,2)
);


--
-- TOC entry 222 (class 1259 OID 189876)
-- Name: vworkloaduserproject; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.vworkloaduserproject AS
 SELECT t.user_,
    t.password,
    t.name,
    t.surname,
    t.email,
    t.nif,
    t.userblocked,
    t.lastpasswordupdate,
    t.firstlogin,
    t.area_user,
    p.project_id,
    p.project_name,
    p.creation_date,
    p.income,
    p.priority,
    p.difficulty,
    p.delivery_date,
    p.area_project,
    w.id,
    w.workload_percentage
   FROM ((public.workload w
     JOIN public.tuser t ON (((w.user_)::text = (t.user_)::text)))
     JOIN public.project p ON ((p.project_id = w.project_id)));


--
-- TOC entry 219 (class 1259 OID 189524)
-- Name: workload_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.workload_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 219
-- Name: workload_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.workload_id_seq OWNED BY public.workload.id;


--
-- TOC entry 2879 (class 2604 OID 189521)
-- Name: project project_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project ALTER COLUMN project_id SET DEFAULT nextval('public.project_project_id_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 189393)
-- Name: ti18n id_i18n; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n ALTER COLUMN id_i18n SET DEFAULT nextval('public.ti18n_id_i18n_seq'::regclass);


--
-- TOC entry 2877 (class 2604 OID 189401)
-- Name: ti18n_value id_i18n_value; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value ALTER COLUMN id_i18n_value SET DEFAULT nextval('public.ti18n_value_id_i18n_value_seq'::regclass);


--
-- TOC entry 2873 (class 2604 OID 189359)
-- Name: trequest_statistics id_request_statistics; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics ALTER COLUMN id_request_statistics SET DEFAULT nextval('public.trequest_statistics_id_request_statistics_seq'::regclass);


--
-- TOC entry 2870 (class 2604 OID 189215)
-- Name: trole id_rolename; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole ALTER COLUMN id_rolename SET DEFAULT nextval('public.trole_id_rolename_seq'::regclass);


--
-- TOC entry 2878 (class 2604 OID 189412)
-- Name: trole_server_permission id_role_server_permission; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission ALTER COLUMN id_role_server_permission SET DEFAULT nextval('public.trole_server_permission_id_role_server_permission_seq'::regclass);


--
-- TOC entry 2872 (class 2604 OID 189348)
-- Name: tserver_permission id_server_permission; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tserver_permission ALTER COLUMN id_server_permission SET DEFAULT nextval('public.tserver_permission_id_server_permission_seq'::regclass);


--
-- TOC entry 2874 (class 2604 OID 189370)
-- Name: tsetting id_setting; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsetting ALTER COLUMN id_setting SET DEFAULT nextval('public.tsetting_id_setting_seq'::regclass);


--
-- TOC entry 2875 (class 2604 OID 189381)
-- Name: tuser_preference id_user_preference; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_preference ALTER COLUMN id_user_preference SET DEFAULT nextval('public.tuser_preference_id_user_preference_seq'::regclass);


--
-- TOC entry 2871 (class 2604 OID 189257)
-- Name: tuser_role id_user_role; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role ALTER COLUMN id_user_role SET DEFAULT nextval('public.tuser_role_id_user_role_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 189529)
-- Name: workload id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workload ALTER COLUMN id SET DEFAULT nextval('public.workload_id_seq'::regclass);


--
-- TOC entry 3066 (class 0 OID 189605)
-- Dependencies: 221
-- Data for Name: area; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.area VALUES (1, 'Marketing');
INSERT INTO public.area VALUES (2, 'Administracion');
INSERT INTO public.area VALUES (3, 'Informatica');
INSERT INTO public.area VALUES (4, 'Recursos humanos');
INSERT INTO public.area VALUES (5, 'Sistemas');


--
-- TOC entry 3067 (class 0 OID 189891)
-- Dependencies: 224
-- Data for Name: levels; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.levels VALUES (1, 'Baja');
INSERT INTO public.levels VALUES (2, 'Media');
INSERT INTO public.levels VALUES (3, 'Alta');


--
-- TOC entry 3063 (class 0 OID 189518)
-- Dependencies: 218
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.project VALUES (2, 'Transportes', '2020-08-08', 4400, 'Baja', 'Baja', '2022-04-11', 2, 2, 2);
INSERT INTO public.project VALUES (26, 'Navidades', '2021-12-09', 4000, NULL, NULL, '2021-12-22', 1, 3, 1);
INSERT INTO public.project VALUES (27, 'mario', '2022-04-19', 9000, NULL, NULL, '2022-04-20', 1, 2, 3);
INSERT INTO public.project VALUES (4, 'Namfix', '2020-01-30', 6467, 'Media', 'Media', '2022-01-01', 4, 2, 2);
INSERT INTO public.project VALUES (5, 'Bitwolf', '2020-04-06', 5728, 'Baja', 'Media', '2022-03-01', 5, 1, 2);
INSERT INTO public.project VALUES (7, 'Treeflex', '2020-04-02', 4239, 'Baja', 'Baja', '2022-05-11', 2, 1, 1);
INSERT INTO public.project VALUES (9, 'Zontrax', '2020-10-17', 4596, 'Baja', 'Media', '2022-10-11', 2, 1, 2);
INSERT INTO public.project VALUES (13, 'Greenlam', '2019-11-04', 3022, 'Media', 'Media', '2022-03-07', 5, 2, 2);
INSERT INTO public.project VALUES (14, 'Regrant', '2019-11-08', 4380, 'Baja', 'Baja', '2022-04-30', 1, 1, 1);
INSERT INTO public.project VALUES (15, 'Solarbreeze', '2018-12-14', 5343, 'Baja', 'Baja', '2022-01-25', 5, 1, 1);
INSERT INTO public.project VALUES (16, 'Viva', '2020-03-18', 4106, 'Media', 'Baja', '2022-10-11', 4, 2, 1);
INSERT INTO public.project VALUES (17, 'Bytecard', '2019-01-13', 8308, 'Media', 'Baja', '2022-12-01', 3, 2, 1);
INSERT INTO public.project VALUES (18, 'Voyatouch', '2020-06-25', 6751, 'Alta', 'Media', '2022-06-01', 4, 3, 2);
INSERT INTO public.project VALUES (19, 'Konklux', '2020-12-25', 7423, 'Baja', 'Baja', '2022-08-03', 1, 1, 1);
INSERT INTO public.project VALUES (20, 'Alpha', '2020-03-16', 4742, 'Media', 'Baja', '2022-03-11', 2, 2, 1);
INSERT INTO public.project VALUES (11, 'Holdlamis', '2018-12-30', 6110, 'Baja', 'Baja', '2022-11-11', 4, 2, 1);
INSERT INTO public.project VALUES (10, 'Keylex', '2019-10-23', 2592, 'Media', 'Baja', '2022-04-22', 4, 3, 2);
INSERT INTO public.project VALUES (12, 'Sonair', '2020-04-04', 9321, 'Baja', 'Baja', '2022-12-11', 1, 2, 1);
INSERT INTO public.project VALUES (23, 'Prueba', '2022-01-20', 4000, NULL, NULL, '2022-01-21', 1, 2, 2);
INSERT INTO public.project VALUES (1, 'FOX CAX', '2020-02-17', 1009, 'Baja', 'Baja', '2022-01-18', 3, 2, 1);
INSERT INTO public.project VALUES (25, 'Fixcox', '2022-01-25', 200, NULL, NULL, '2022-01-31', 1, 2, 1);


--
-- TOC entry 3057 (class 0 OID 189390)
-- Dependencies: 212
-- Data for Name: ti18n; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.ti18n VALUES (0, 'i18n.bundle', 'Resource bundle in database');


--
-- TOC entry 3059 (class 0 OID 189398)
-- Dependencies: 214
-- Data for Name: ti18n_value; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3051 (class 0 OID 189356)
-- Dependencies: 206
-- Data for Name: trequest_statistics; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- TOC entry 3045 (class 0 OID 189212)
-- Dependencies: 200
-- Data for Name: trole; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.trole VALUES (0, 'admin', '<?xml version="1.0" encoding="UTF-8"?><security></security>');
INSERT INTO public.trole VALUES (1, 'Programador', NULL);
INSERT INTO public.trole VALUES (2, 'Becario', NULL);
INSERT INTO public.trole VALUES (3, 'Administrativo', NULL);
INSERT INTO public.trole VALUES (4, 'Contable', NULL);
INSERT INTO public.trole VALUES (5, 'Scrum Master', NULL);


--
-- TOC entry 3061 (class 0 OID 189409)
-- Dependencies: 216
-- Data for Name: trole_server_permission; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.trole_server_permission VALUES (0, 0, 0);


--
-- TOC entry 3049 (class 0 OID 189345)
-- Dependencies: 204
-- Data for Name: tserver_permission; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tserver_permission VALUES (0, 'com.ontimize.jee.common.services.user.IUserInformationService/getUserInformation');


--
-- TOC entry 3053 (class 0 OID 189367)
-- Dependencies: 208
-- Data for Name: tsetting; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tsetting VALUES (0, 'mail_host', 'smtp.gmail.com', 'Host del servidor');
INSERT INTO public.tsetting VALUES (1, 'mail_port', '587', 'Puerto del servidor de email');
INSERT INTO public.tsetting VALUES (2, 'mail_protocol', 'smtp', 'Protocolo de env\u005cu00edo de mails');
INSERT INTO public.tsetting VALUES (3, 'mail_user', 'mi.mail@example.com', 'Usuario para el env\u005cu00edo de mails');
INSERT INTO public.tsetting VALUES (4, 'mail_password', 'mis_credenciales', 'Password del servidor de mail');
INSERT INTO public.tsetting VALUES (5, 'mail_encoding', 'UTF-8', 'Codificaci\u005cu00f3n de mails');
INSERT INTO public.tsetting VALUES (6, 'mail_properties', 'mail.smtp.auth:true;mail.smtp.starttls.enable:true;', 'Propiedades de mails');
INSERT INTO public.tsetting VALUES (7, 'report_folder', 'C:/applications/ontimize-boot-app/reports', 'Carpeta de las plantillas de report');


--
-- TOC entry 3043 (class 0 OID 189165)
-- Dependencies: 198
-- Data for Name: tuser; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser VALUES ('demo', 'demouser', 'demo', 'demo', NULL, '44460713B', NULL, NULL, NULL, NULL);
INSERT INTO public.tuser VALUES ('spleaden0', 'gC15MWE', 'Susanetta', 'Pleaden', 'spleaden0@com.com', '3072841276', '2018-08-02 00:00:00', '2019-08-31 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('ggerdes1', 'CsFQQgyXEuc', 'Garland', 'Gerdes', 'ggerdes1@admin.ch', '9381520399', '2017-04-02 00:00:00', '2019-03-03 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('ehambers5', 'JAoAWzX', 'Emylee', 'Hambers', 'ehambers5@cam.ac.uk', '4599773646', '2018-06-02 00:00:00', '2021-05-20 00:00:00', false, 2);
INSERT INTO public.tuser VALUES ('lloxly6', 'MZhEpUa5udJ', 'Lillian', 'Loxly', 'lloxly6@hostgator.com', '5114768875', '2017-08-18 00:00:00', '2019-11-19 00:00:00', false, 2);
INSERT INTO public.tuser VALUES ('oewings7', 'mpkjuu69mr', 'Orly', 'Ewings', 'oewings7@prlog.org', '4582087485', '2017-07-07 00:00:00', '2021-03-28 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('djolliffe8', 'VGHbrTK7x5z', 'Devon', 'Jolliffe', 'djolliffe8@canalblog.com', '9359664707', '2016-12-22 00:00:00', '2020-10-27 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('ncorradettia', 'S1l8ifAowj3Y', 'Nadine', 'Corradetti', 'ncorradettia@i2i.jp', '7007499082', '2018-09-16 00:00:00', '2020-04-08 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('dmcalpinb', 'BIp1pzWeI', 'Donna', 'McAlpin', 'dmcalpinb@symantec.com', '0658068180', '2018-04-29 00:00:00', '2020-04-18 00:00:00', true, 4);
INSERT INTO public.tuser VALUES ('gzoldc', 'RfSyA9yo2X3L', 'Gregor', 'Zold', 'gzoldc@privacy.gov.au', '4861647487', '2018-07-04 00:00:00', '2021-03-05 00:00:00', true, 4);
INSERT INTO public.tuser VALUES ('vgabbottd', 'rALkElgDUjjh', 'Vin', 'Gabbott', 'vgabbottd@senate.gov', '3509710525', '2017-07-21 00:00:00', '2020-11-20 00:00:00', false, 3);
INSERT INTO public.tuser VALUES ('pplastowe', 'o1aKxpv', 'Pietro', 'Plastow', 'pplastowe@cam.ac.uk', '7633617322', '2015-12-08 00:00:00', '2019-04-20 00:00:00', true, 5);
INSERT INTO public.tuser VALUES ('cmattheusf', 'KKtfTfZJQ', 'Corabella', 'Mattheus', 'cmattheusf@seattletimes.com', '2632824648', '2018-08-16 00:00:00', '2020-09-27 00:00:00', false, 4);
INSERT INTO public.tuser VALUES ('senochg', 'K9niTc', 'Selie', 'Enoch', 'senochg@mapy.cz', '8134317227', '2016-09-22 00:00:00', '2020-07-11 00:00:00', false, 4);
INSERT INTO public.tuser VALUES ('mpragnall3', '8eBiLib', 'Mannies', 'Pragnall', 'mpragnall3@si.edu', '3503022953', '2018-03-15 00:00:00', '2021-08-26 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('jmaccahee2', 'yo6Mo1', 'Joseyse', 'MacCahees', 'jmaccahee2@imageshack.us', '3674592770', '2017-11-26 00:00:00', '2019-02-04 00:00:00', true, 2);
INSERT INTO public.tuser VALUES ('nbowerbank9', 'oH9JbOtk1V', 'Norberto', 'Bank', 'nbowerbank9@squidoo.com', '6277571788', '2017-01-15 00:00:00', '2019-11-15 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('ldommerqueh', 'q8rO92RDKHvs', 'Layla', 'Dommerque', 'ldommerqueh@sciencedaily.com', '9468421899', '2017-07-10 00:00:00', '2021-08-29 00:00:00', true, 5);
INSERT INTO public.tuser VALUES ('ohawki', 'QzcP6C', 'Orlan', 'Hawk', 'ohawki@skyrock.com', '5111653287', '2016-12-16 00:00:00', '2021-09-11 00:00:00', false, 2);
INSERT INTO public.tuser VALUES ('thamblettj', 'SylMbPF', 'Tabb', 'Hamblett', 'thamblettj@theguardian.com', '9894219632', '2017-12-23 00:00:00', '2020-09-29 00:00:00', false, 1);
INSERT INTO public.tuser VALUES ('esiggensk', 'KTs6evti', 'Ellerey', 'Siggens', 'esiggensk@google.com.hk', '8435175332', '2017-02-01 00:00:00', '2020-02-25 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('sgunbiel', '17TcSGnFcF9', 'Sharity', 'Gunbie', 'sgunbiel@reddit.com', '2368280340', '2017-11-26 00:00:00', '2019-11-19 00:00:00', false, 1);
INSERT INTO public.tuser VALUES ('edalglieshm', 'xRThaoLvA1', 'Eleanor', 'Dalgliesh', 'edalglieshm@digg.com', '2708982184', '2016-03-25 00:00:00', '2019-11-12 00:00:00', false, 2);
INSERT INTO public.tuser VALUES ('odemetern', 'o7rifm06R', 'Ogdan', 'Demeter', 'odemetern@t.co', '0937632910', '2016-11-19 00:00:00', '2019-05-12 00:00:00', true, 2);
INSERT INTO public.tuser VALUES ('sduigano', 'GwADQQcx', 'Skip', 'Duigan', 'sduigano@go.com', '1436461499', '2017-07-15 00:00:00', '2019-06-29 00:00:00', true, 2);
INSERT INTO public.tuser VALUES ('dhustlerp', '5vOZNQat6HeM', 'Donnell', 'Hustler', 'dhustlerp@printfriendly.com', '1476357323', '2016-02-23 00:00:00', '2019-07-14 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('hpasslerq', 'tQIjrT2', 'Husein', 'Passler', 'hpasslerq@histats.com', '7261197114', '2017-03-12 00:00:00', '2019-06-23 00:00:00', true, 1);
INSERT INTO public.tuser VALUES ('hshealsr', 'lTJxDYPRT', 'Haily', 'Sheals', 'hshealsr@comsenz.com', '8881258927', '2018-10-15 00:00:00', '2020-03-20 00:00:00', false, 4);
INSERT INTO public.tuser VALUES ('eclothers', 'iW2zSkZQEfXn', 'Ellynn', 'Clother', 'eclothers@woothemes.com', '1298487463', '2017-02-13 00:00:00', '2021-06-05 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('iillemt', 'nexVPu5d8', 'Ivor', 'Illem', 'iillemt@blinklist.com', '5910096648', '2018-02-12 00:00:00', '2019-11-10 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('lgrelaku', '5rhGW9LWVu', 'Leela', 'Grelak', 'lgrelaku@weather.com', '4197447817', '2017-01-27 00:00:00', '2021-07-26 00:00:00', true, 4);
INSERT INTO public.tuser VALUES ('hgiovaniv', 'Z5ZK44', 'Honey', 'Giovani', 'hgiovaniv@apple.com', '1946775991', '2015-12-31 00:00:00', '2021-04-23 00:00:00', true, 4);
INSERT INTO public.tuser VALUES ('jcowsbyw', 'zCrZeVaZ3MK', 'Jaymee', 'Cowsby', 'jcowsbyw@purevolume.com', '4711070230', '2018-04-06 00:00:00', '2021-08-27 00:00:00', true, 1);
INSERT INTO public.tuser VALUES ('sdyottx', 'WV60XhHP3VSH', 'Skipper', 'Dyott', 'sdyottx@abc.net.au', '0616685513', '2016-11-17 00:00:00', '2019-11-07 00:00:00', true, 2);
INSERT INTO public.tuser VALUES ('zbremeny', 'B7wYwcNoGv', 'Zora', 'Bremen', 'zbremeny@blinklist.com', '4197298706', '2016-09-07 00:00:00', '2018-12-01 00:00:00', false, 3);
INSERT INTO public.tuser VALUES ('jfayerz', '8SDHNY5U3', 'Joe', 'Fayer', 'jfayerz@ocn.ne.jp', '2012958826', '2017-11-07 00:00:00', '2019-08-11 00:00:00', true, 5);
INSERT INTO public.tuser VALUES ('lfairleigh10', 'ys2TPGP', 'Lucila', 'Fairleigh', 'lfairleigh10@pcworld.com', '6389214308', '2017-11-04 00:00:00', '2020-08-03 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('dhucks11', 'bnG2bJCf2x', 'Deerdre', 'Hucks', 'dhucks11@census.gov', '9198593943', '2016-10-14 00:00:00', '2019-11-13 00:00:00', true, 4);
INSERT INTO public.tuser VALUES ('fblanket12', 'mfbqovx', 'Falkner', 'Blanket', 'fblanket12@columbia.edu', '3642675638', '2018-09-02 00:00:00', '2021-10-19 00:00:00', false, 3);
INSERT INTO public.tuser VALUES ('tbrakespear13', '8phLb6alnVi', 'Tabor', 'Brakespear', 'tbrakespear13@addtoany.com', '1376146711', '2017-08-17 00:00:00', '2021-07-05 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('jairton14', 'spEQXI', 'Jean', 'Airton', 'jairton14@exblog.jp', '9351232441', '2017-04-27 00:00:00', '2021-04-17 00:00:00', true, 1);
INSERT INTO public.tuser VALUES ('asurcombe15', 'jIZ9Wh1RDvsp', 'Austen', 'Surcombe', 'asurcombe15@cbc.ca', '5624640773', '2017-07-20 00:00:00', '2019-11-21 00:00:00', true, 3);
INSERT INTO public.tuser VALUES ('mwhopples16', 'sm7E0EKg', 'Miner', 'Whopples', 'mwhopples16@slashdot.org', '7206019757', '2018-10-31 00:00:00', '2020-12-22 00:00:00', false, 4);
INSERT INTO public.tuser VALUES ('dschruurs17', '8R9hr79c4orm', 'Deni', 'Schruurs', 'dschruurs17@nationalgeographic.com', '2743833920', '2016-01-23 00:00:00', '2020-03-21 00:00:00', true, 5);
INSERT INTO public.tuser VALUES ('ipancoust1a', 'gtrstrashs', 'Ingmar', 'Pancoust', 'ipancoust1a@home.pl', '2051927103', '2016-12-20 00:00:00', '2021-06-30 00:00:00', false, 2);
INSERT INTO public.tuser VALUES ('sgreenstead1b', 'X3SeunrgM', 'Shanda', 'Greenstead', 'sgreenstead1b@europa.eu', '5090115680', '2016-02-26 00:00:00', '2019-07-30 00:00:00', true, 4);
INSERT INTO public.tuser VALUES ('hjeandel19', '2bdVs5cFB', 'Hallys', 'Jeandelo', 'hjeandel19@lycos.com', '4152816082', '2016-04-19 00:00:00', '2019-11-27 00:00:00', false, 5);
INSERT INTO public.tuser VALUES ('carlos123', NULL, 'carlos', 'Araya', 'carlos.araya@campusdual.com', '11111111H', NULL, '2022-01-20 10:17:10.705381', true, NULL);
INSERT INTO public.tuser VALUES ('alemu', NULL, 'Alexandra', 'Muñoz', 'ycb@hotmail.com', '1236547891', NULL, '2022-01-25 23:53:21.984443', true, 3);
INSERT INTO public.tuser VALUES ('JulioG', NULL, 'Julio', 'Garcia', 'julio@gmail.com', '11111111H', NULL, '2022-01-27 12:55:09.220787', true, 4);
INSERT INTO public.tuser VALUES ('prueba', NULL, 'pepe', 'sanchez', 'prueba@prueba.com', '41234134123413', NULL, '2022-07-21 23:15:25.979686', true, 5);
INSERT INTO public.tuser VALUES ('borrar', NULL, 'borrar', 'que me borres', 'adf@dfa.com', '421341234', NULL, '2022-07-21 23:30:01.334', true, 2);
INSERT INTO public.tuser VALUES ('drm', NULL, 'd', 'r', 'drm@hotmail.com', '77454646F', NULL, '2022-07-22 20:35:04.566324', true, 3);


--
-- TOC entry 3055 (class 0 OID 189378)
-- Dependencies: 210
-- Data for Name: tuser_preference; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser_preference VALUES (0, 'user_preference', 'demo', 'Iw0KI1R1ZSBNYXkgMTYgMTI6NTc6MDYgQ0VTVCAyMDE3DQpkZW1vX2FwcF9zdGF0dXNfYmFyX3Zpc2libGU9eWVzDQpkZW1vX2FkanVzdF90cmVlX3NwYWNlPXRydWUNCmRlbW9fYXBwX3dpbmRvd19zdGF0ZT0wDQpkZW1vX3RhYmxlX2NvbmZfc29ydF9maWx0ZXJfZm9ybUN1c3RvbWVyLnhtbF9DdXN0b21lclNlcnZpY2UuY3VzdG9tZXJfVEVTVD1udWxsO251bGw7U1VSTkFNRVw9OThcOjF8SURcPTc1XDoyfE5BTUVcPTk5XDozfENVU1RPTUVSVFlQRUlEXD0wXDo0fENVU1RPTUVSSURcPTEyNVw6NXxBRERSRVNTXD0xMjNcOjZ8UEhPTkVcPTEyMVw6N3xTVEFSVERBVEVcPTEzNlw6OHxMT05HSVRVREVcPTExNlw6OXxMQVRJVFVERVw9MTEzXDoxMHxFTUFJTFw9MTcwXDoxMnw7QkFTRTY0ck8wQUJYTnlBQk5xWVhaaExuVjBhV3d1U0dGemFIUmhZbXhsRTdzUEpTRks1TGdEQUFKR0FBcHNiMkZrUm1GamRHOXlTUUFKZEdoeVpYTm9iMnhrZUhBL1FBQUFBQUFBQ0hjSUFBQUFDd0FBQUFCNA0KZGVtb190YWJsZV9jb25mX3NvcnRfZmlsdGVyX2NvbmZpZ3VyYXRpb25zX2Zvcm1DdXN0b21lci54bWxfQ3VzdG9tZXJTZXJ2aWNlLmN1c3RvbWVyPVRFU1QNCmRlbW9fdGFibGVfY29udHJvbF9wYW5lbF9mb3JtQWNjb3VudHMtZGV0YWlsLnhtbF9Nb3ZlbWVudFNlcnZpY2UubW92ZW1lbnQ9Z3JvdXB0YWJsZWtleTtkZWZhdWx0Y2hhcnRidXR0b247ZXhjZWxleHBvcnRidXR0b247c3Vtcm93YnV0dG9uO2NhbGN1bGVkY29sc2J1dHRvbjtwcmludGluZ2J1dHRvbjtmaWx0ZXJzYXZlYnV0dG9uO3Zpc2libGVjb2xzYnV0dG9uO2h0bWxleHBvcnRidXR0b247Y29weWJ1dHRvbjtncm91cHRhYmxla2V5O2luc2VydGJ1dHRvbjtyZWZyZXNoYnV0dG9uDQpkZW1vX2Zvcm1CcmFuY2hlcy1kZXRhaWwueG1sPTg4MDs1MDU7LTExNTA7MzY5DQpkZW1vX2RldGFpbF9kaWFsb2dfc2l6ZV9wb3NpdGlvbl9mb3JtQ3VzdG9tZXIueG1sX0N1c3RvbWVyU2VydmljZS5jdXN0b21lcj03NDk7MzUwOy0xOTA1OzM5MQ0KZGVtb19hcHBfdG9vbGJhcl9sb2NhdGlvbj1Ob3J0aA0KZGVtb19hcHBfd2luZG93X3Bvc2l0aW9uPS0xNTgwOzExDQpkZW1vX2FwcF93aW5kb3dfc2l6ZT0xNTg0OzEwNDQNCmRlbW9fZm9ybUVtcGxveWVlcy1kZXRhaWwueG1sPTExMTY7NzM5OzYxMDsxOTUNCmRlbW9fZm9ybUFjY291bnRzLWRldGFpbC54bWw9OTE1OzUwMDstMTE1MDszNjkNCg==');


--
-- TOC entry 3047 (class 0 OID 189254)
-- Dependencies: 202
-- Data for Name: tuser_role; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.tuser_role VALUES (47, 3, 'hjeandel19');
INSERT INTO public.tuser_role VALUES (101, NULL, 'carlos123');
INSERT INTO public.tuser_role VALUES (105, 1, 'alemu');
INSERT INTO public.tuser_role VALUES (108, 5, 'JulioG');
INSERT INTO public.tuser_role VALUES (110, 1, 'prueba');
INSERT INTO public.tuser_role VALUES (111, 0, 'borrar');
INSERT INTO public.tuser_role VALUES (114, 1, 'drm');
INSERT INTO public.tuser_role VALUES (0, 0, 'demo');
INSERT INTO public.tuser_role VALUES (1, 1, 'spleaden0');
INSERT INTO public.tuser_role VALUES (2, 2, 'ggerdes1');
INSERT INTO public.tuser_role VALUES (3, 3, 'jmaccahee2');
INSERT INTO public.tuser_role VALUES (4, 4, 'mpragnall3');
INSERT INTO public.tuser_role VALUES (6, 1, 'ehambers5');
INSERT INTO public.tuser_role VALUES (7, 2, 'lloxly6');
INSERT INTO public.tuser_role VALUES (8, 3, 'oewings7');
INSERT INTO public.tuser_role VALUES (9, 4, 'djolliffe8');
INSERT INTO public.tuser_role VALUES (10, 5, 'nbowerbank9');
INSERT INTO public.tuser_role VALUES (11, 1, 'ncorradettia');
INSERT INTO public.tuser_role VALUES (12, 1, 'dmcalpinb');
INSERT INTO public.tuser_role VALUES (13, 1, 'gzoldc');
INSERT INTO public.tuser_role VALUES (14, 1, 'vgabbottd');
INSERT INTO public.tuser_role VALUES (15, 1, 'pplastowe');
INSERT INTO public.tuser_role VALUES (16, 2, 'cmattheusf');
INSERT INTO public.tuser_role VALUES (17, 2, 'senochg');
INSERT INTO public.tuser_role VALUES (18, 2, 'ldommerqueh');
INSERT INTO public.tuser_role VALUES (19, 2, 'ohawki');
INSERT INTO public.tuser_role VALUES (20, 3, 'thamblettj');
INSERT INTO public.tuser_role VALUES (21, 3, 'esiggensk');
INSERT INTO public.tuser_role VALUES (22, 3, 'sgunbiel');
INSERT INTO public.tuser_role VALUES (23, 4, 'edalglieshm');
INSERT INTO public.tuser_role VALUES (24, 4, 'odemetern');
INSERT INTO public.tuser_role VALUES (25, 5, 'sduigano');
INSERT INTO public.tuser_role VALUES (26, 1, 'dhustlerp');
INSERT INTO public.tuser_role VALUES (27, 2, 'hpasslerq');
INSERT INTO public.tuser_role VALUES (29, 2, 'hshealsr');
INSERT INTO public.tuser_role VALUES (30, 3, 'eclothers');
INSERT INTO public.tuser_role VALUES (31, 3, 'iillemt');
INSERT INTO public.tuser_role VALUES (32, 4, 'lgrelaku');
INSERT INTO public.tuser_role VALUES (33, 4, 'hgiovaniv');
INSERT INTO public.tuser_role VALUES (34, 4, 'jcowsbyw');
INSERT INTO public.tuser_role VALUES (35, 4, 'sdyottx');
INSERT INTO public.tuser_role VALUES (36, 5, 'zbremeny');
INSERT INTO public.tuser_role VALUES (37, 5, 'jfayerz');
INSERT INTO public.tuser_role VALUES (38, 5, 'lfairleigh10');
INSERT INTO public.tuser_role VALUES (39, 5, 'dhucks11');
INSERT INTO public.tuser_role VALUES (40, 5, 'fblanket12');
INSERT INTO public.tuser_role VALUES (41, 5, 'tbrakespear13');
INSERT INTO public.tuser_role VALUES (42, 1, 'jairton14');
INSERT INTO public.tuser_role VALUES (43, 1, 'asurcombe15');
INSERT INTO public.tuser_role VALUES (44, 2, 'mwhopples16');
INSERT INTO public.tuser_role VALUES (45, 3, 'dschruurs17');
INSERT INTO public.tuser_role VALUES (48, 2, 'ipancoust1a');
INSERT INTO public.tuser_role VALUES (49, 3, 'sgreenstead1b');


--
-- TOC entry 3065 (class 0 OID 189526)
-- Dependencies: 220
-- Data for Name: workload; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.workload VALUES (107, 'spleaden0', 10, 0.25);
INSERT INTO public.workload VALUES (48, 'zbremeny', 20, 0.50);
INSERT INTO public.workload VALUES (26, 'tbrakespear13', 4, 0.25);
INSERT INTO public.workload VALUES (4, 'sgunbiel', 9, 1.00);
INSERT INTO public.workload VALUES (42, 'sgreenstead1b', 16, 0.75);
INSERT INTO public.workload VALUES (33, 'senochg', 19, 1.00);
INSERT INTO public.workload VALUES (21, 'pplastowe', 11, 0.50);
INSERT INTO public.workload VALUES (25, 'oewings7', 17, 0.25);
INSERT INTO public.workload VALUES (109, 'hjeandel19', 7, 0.25);
INSERT INTO public.workload VALUES (1, 'ncorradettia', 4, 0.25);
INSERT INTO public.workload VALUES (29, 'ncorradettia', 12, 0.25);
INSERT INTO public.workload VALUES (30, 'nbowerbank9', 12, 0.50);
INSERT INTO public.workload VALUES (31, 'mpragnall3', 20, 0.50);
INSERT INTO public.workload VALUES (15, 'ldommerqueh', 20, 0.50);
INSERT INTO public.workload VALUES (41, 'ldommerqueh', 17, 0.25);
INSERT INTO public.workload VALUES (37, 'jcowsbyw', 19, 0.50);
INSERT INTO public.workload VALUES (11, 'jairton14', 13, 1.00);
INSERT INTO public.workload VALUES (10, 'ipancoust1a', 7, 0.50);
INSERT INTO public.workload VALUES (46, 'ipancoust1a', 4, 0.25);
INSERT INTO public.workload VALUES (5, 'iillemt', 20, 0.25);
INSERT INTO public.workload VALUES (40, 'iillemt', 13, 0.25);
INSERT INTO public.workload VALUES (12, 'hgiovaniv', 9, 1.00);
INSERT INTO public.workload VALUES (22, 'gzoldc', 1, 0.25);
INSERT INTO public.workload VALUES (28, 'gzoldc', 10, 0.25);
INSERT INTO public.workload VALUES (47, 'ggerdes1', 1, 0.25);
INSERT INTO public.workload VALUES (13, 'ehambers5', 10, 1.00);
INSERT INTO public.workload VALUES (14, 'dmcalpinb', 11, 0.25);
INSERT INTO public.workload VALUES (45, 'djolliffe8', 18, 0.25);
INSERT INTO public.workload VALUES (6, 'cmattheusf', 15, 0.10);
INSERT INTO public.workload VALUES (32, 'cmattheusf', 1, 0.40);
INSERT INTO public.workload VALUES (39, 'asurcombe15', 15, 0.25);
INSERT INTO public.workload VALUES (119, 'vgabbottd', 17, 0.75);
INSERT INTO public.workload VALUES (121, 'tbrakespear13', 9, 0.50);
INSERT INTO public.workload VALUES (108, 'sduigano', 12, 1.00);
INSERT INTO public.workload VALUES (110, 'pplastowe', 9, 0.10);
INSERT INTO public.workload VALUES (72, 'zbremeny', 16, 0.50);
INSERT INTO public.workload VALUES (98, 'tbrakespear13', 11, 0.25);
INSERT INTO public.workload VALUES (70, 'spleaden0', 7, 0.50);
INSERT INTO public.workload VALUES (78, 'spleaden0', 15, 0.25);
INSERT INTO public.workload VALUES (50, 'sdyottx', 7, 0.25);
INSERT INTO public.workload VALUES (77, 'sdyottx', 18, 0.25);
INSERT INTO public.workload VALUES (82, 'sdyottx', 19, 0.25);
INSERT INTO public.workload VALUES (87, 'sdyottx', 11, 0.25);
INSERT INTO public.workload VALUES (94, 'ohawki', 15, 1.00);
INSERT INTO public.workload VALUES (44, 'oewings7', 14, 0.25);
INSERT INTO public.workload VALUES (73, 'oewings7', 12, 0.25);
INSERT INTO public.workload VALUES (53, 'odemetern', 5, 0.50);
INSERT INTO public.workload VALUES (84, 'odemetern', 2, 0.50);
INSERT INTO public.workload VALUES (76, 'ncorradettia', 9, 0.25);
INSERT INTO public.workload VALUES (95, 'ncorradettia', 16, 0.25);
INSERT INTO public.workload VALUES (57, 'mwhopples16', 20, 0.25);
INSERT INTO public.workload VALUES (81, 'mwhopples16', 7, 0.25);
INSERT INTO public.workload VALUES (93, 'mwhopples16', 1, 0.25);
INSERT INTO public.workload VALUES (97, 'mpragnall3', 14, 0.25);
INSERT INTO public.workload VALUES (59, 'jfayerz', 5, 1.00);
INSERT INTO public.workload VALUES (62, 'jcowsbyw', 1, 0.50);
INSERT INTO public.workload VALUES (65, 'iillemt', 15, 0.25);
INSERT INTO public.workload VALUES (79, 'hshealsr', 20, 0.25);
INSERT INTO public.workload VALUES (99, 'hshealsr', 16, 0.25);
INSERT INTO public.workload VALUES (74, 'hpasslerq', 11, 1.00);
INSERT INTO public.workload VALUES (49, 'hjeandel19', 15, 0.25);
INSERT INTO public.workload VALUES (89, 'hjeandel19', 1, 0.25);
INSERT INTO public.workload VALUES (100, 'hjeandel19', 2, 0.25);
INSERT INTO public.workload VALUES (36, 'ggerdes1', 2, 0.25);
INSERT INTO public.workload VALUES (96, 'ggerdes1', 20, 0.25);
INSERT INTO public.workload VALUES (88, 'esiggensk', 15, 0.50);
INSERT INTO public.workload VALUES (61, 'dmcalpinb', 13, 0.25);
INSERT INTO public.workload VALUES (85, 'dmcalpinb', 16, 0.25);
INSERT INTO public.workload VALUES (91, 'dmcalpinb', 7, 0.25);
INSERT INTO public.workload VALUES (71, 'djolliffe8', 5, 0.25);
INSERT INTO public.workload VALUES (90, 'djolliffe8', 16, 0.25);
INSERT INTO public.workload VALUES (63, 'dhustlerp', 4, 1.00);
INSERT INTO public.workload VALUES (19, 'dhucks11', 20, 0.75);
INSERT INTO public.workload VALUES (75, 'dhucks11', 15, 0.25);
INSERT INTO public.workload VALUES (56, 'cmattheusf', 20, 0.40);
INSERT INTO public.workload VALUES (55, 'asurcombe15', 19, 0.50);


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 217
-- Name: project_project_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.project_project_id_seq', 27, true);


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 211
-- Name: ti18n_id_i18n_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_id_i18n_seq', 1, false);


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 213
-- Name: ti18n_value_id_i18n_value_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.ti18n_value_id_i18n_value_seq', 1, false);


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 205
-- Name: trequest_statistics_id_request_statistics_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trequest_statistics_id_request_statistics_seq', 1, false);


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 199
-- Name: trole_id_rolename_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_id_rolename_seq', 1, true);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 215
-- Name: trole_server_permission_id_role_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.trole_server_permission_id_role_server_permission_seq', 1, false);


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 203
-- Name: tserver_permission_id_server_permission_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tserver_permission_id_server_permission_seq', 1, false);


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 207
-- Name: tsetting_id_setting_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tsetting_id_setting_seq', 1, false);


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 209
-- Name: tuser_preference_id_user_preference_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuser_preference_id_user_preference_seq', 1, false);


--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 201
-- Name: tuser_role_id_user_role_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tuser_role_id_user_role_seq', 115, true);


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 219
-- Name: workload_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.workload_id_seq', 122, true);


--
-- TOC entry 2906 (class 2606 OID 189677)
-- Name: area area_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_pk PRIMARY KEY (area_id);


--
-- TOC entry 2908 (class 2606 OID 189898)
-- Name: levels levels_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.levels
    ADD CONSTRAINT levels_pk PRIMARY KEY (valor_nivel);


--
-- TOC entry 2902 (class 2606 OID 189523)
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (project_id);


--
-- TOC entry 2896 (class 2606 OID 189395)
-- Name: ti18n ti18n_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n
    ADD CONSTRAINT ti18n_pkey PRIMARY KEY (id_i18n);


--
-- TOC entry 2898 (class 2606 OID 189406)
-- Name: ti18n_value ti18n_value_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ti18n_value
    ADD CONSTRAINT ti18n_value_pkey PRIMARY KEY (id_i18n_value);


--
-- TOC entry 2890 (class 2606 OID 189364)
-- Name: trequest_statistics trequest_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trequest_statistics
    ADD CONSTRAINT trequest_statistics_pkey PRIMARY KEY (id_request_statistics);


--
-- TOC entry 2884 (class 2606 OID 189220)
-- Name: trole trole_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole
    ADD CONSTRAINT trole_pkey PRIMARY KEY (id_rolename);


--
-- TOC entry 2900 (class 2606 OID 189414)
-- Name: trole_server_permission trole_server_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT trole_server_permission_pkey PRIMARY KEY (id_role_server_permission);


--
-- TOC entry 2888 (class 2606 OID 189353)
-- Name: tserver_permission tserver_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tserver_permission
    ADD CONSTRAINT tserver_permission_pkey PRIMARY KEY (id_server_permission);


--
-- TOC entry 2892 (class 2606 OID 189375)
-- Name: tsetting tsetting_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tsetting
    ADD CONSTRAINT tsetting_pkey PRIMARY KEY (id_setting);


--
-- TOC entry 2882 (class 2606 OID 189171)
-- Name: tuser tuser_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_pkey PRIMARY KEY (user_);


--
-- TOC entry 2894 (class 2606 OID 189386)
-- Name: tuser_preference tuser_preference_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_preference
    ADD CONSTRAINT tuser_preference_pkey PRIMARY KEY (id_user_preference);


--
-- TOC entry 2886 (class 2606 OID 189259)
-- Name: tuser_role tuser_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_pkey PRIMARY KEY (id_user_role);


--
-- TOC entry 2904 (class 2606 OID 189531)
-- Name: workload workload_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workload
    ADD CONSTRAINT workload_pkey PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 189415)
-- Name: trole_server_permission fk_trole_server_permission; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_trole_server_permission FOREIGN KEY (id_rolename) REFERENCES public.trole(id_rolename);


--
-- TOC entry 2913 (class 2606 OID 189420)
-- Name: trole_server_permission fk_tserver_permission; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trole_server_permission
    ADD CONSTRAINT fk_tserver_permission FOREIGN KEY (id_server_permission) REFERENCES public.tserver_permission(id_server_permission);


--
-- TOC entry 2914 (class 2606 OID 189836)
-- Name: project project_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_fk FOREIGN KEY (area_project) REFERENCES public.area(area_id);


--
-- TOC entry 2915 (class 2606 OID 189904)
-- Name: project project_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_fk_1 FOREIGN KEY (priority_id) REFERENCES public.levels(valor_nivel);


--
-- TOC entry 2916 (class 2606 OID 189909)
-- Name: project project_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_fk_2 FOREIGN KEY (difficulty_id) REFERENCES public.levels(valor_nivel);


--
-- TOC entry 2909 (class 2606 OID 189841)
-- Name: tuser tuser_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser
    ADD CONSTRAINT tuser_fk FOREIGN KEY (area_user) REFERENCES public.area(area_id);


--
-- TOC entry 2910 (class 2606 OID 189804)
-- Name: tuser_role tuser_role_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_fk FOREIGN KEY (user_) REFERENCES public.tuser(user_) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2911 (class 2606 OID 189809)
-- Name: tuser_role tuser_role_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tuser_role
    ADD CONSTRAINT tuser_role_fk_1 FOREIGN KEY (id_rolename) REFERENCES public.trole(id_rolename) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2917 (class 2606 OID 189738)
-- Name: workload workload_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workload
    ADD CONSTRAINT workload_fk FOREIGN KEY (project_id) REFERENCES public.project(project_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2918 (class 2606 OID 189743)
-- Name: workload workload_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.workload
    ADD CONSTRAINT workload_fk_1 FOREIGN KEY (user_) REFERENCES public.tuser(user_) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2023-02-03 08:29:15

--
-- PostgreSQL database dump complete
--

