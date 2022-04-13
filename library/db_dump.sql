Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO luis_banderas;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO luis_banderas;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO luis_banderas;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO luis_banderas;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO luis_banderas;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO luis_banderas;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: luis_banderas
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


ALTER TABLE public.auth_user OWNER TO luis_banderas;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO luis_banderas;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO luis_banderas;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO luis_banderas;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO luis_banderas;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO luis_banderas;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO luis_banderas;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO luis_banderas;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(156) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    category_id bigint NOT NULL,
    publisher_id bigint NOT NULL
);


ALTER TABLE public.books_book OWNER TO luis_banderas;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO luis_banderas;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO luis_banderas;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO luis_banderas;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_bookscovers; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_bookscovers (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    cover_id bigint NOT NULL
);


ALTER TABLE public.books_bookscovers OWNER TO luis_banderas;

--
-- Name: books_bookscovers_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_bookscovers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookscovers_id_seq OWNER TO luis_banderas;

--
-- Name: books_bookscovers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_bookscovers_id_seq OWNED BY public.books_bookscovers.id;


--
-- Name: books_category; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_category (
    id bigint NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.books_category OWNER TO luis_banderas;

--
-- Name: books_category_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_category_id_seq OWNER TO luis_banderas;

--
-- Name: books_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_category_id_seq OWNED BY public.books_category.id;


--
-- Name: books_cover; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_cover (
    id bigint NOT NULL,
    cover_type character varying(64) NOT NULL
);


ALTER TABLE public.books_cover OWNER TO luis_banderas;

--
-- Name: books_cover_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_cover_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_cover_id_seq OWNER TO luis_banderas;

--
-- Name: books_cover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_cover_id_seq OWNED BY public.books_cover.id;


--
-- Name: books_publisher; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.books_publisher (
    id bigint NOT NULL,
    name character varying(64) NOT NULL
);


ALTER TABLE public.books_publisher OWNER TO luis_banderas;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.books_publisher_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_publisher_id_seq OWNER TO luis_banderas;

--
-- Name: books_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.books_publisher_id_seq OWNED BY public.books_publisher.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: luis_banderas
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


ALTER TABLE public.django_admin_log OWNER TO luis_banderas;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO luis_banderas;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO luis_banderas;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO luis_banderas;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO luis_banderas;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO luis_banderas;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO luis_banderas;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO luis_banderas;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO luis_banderas;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO luis_banderas;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: luis_banderas
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO luis_banderas;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: luis_banderas
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: users_user; Type: TABLE; Schema: public; Owner: luis_banderas
--

CREATE TABLE public.users_user (
    user_ptr_id integer NOT NULL
);


ALTER TABLE public.users_user OWNER TO luis_banderas;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_bookscovers id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_bookscovers ALTER COLUMN id SET DEFAULT nextval('public.books_bookscovers_id_seq'::regclass);


--
-- Name: books_category id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_category ALTER COLUMN id SET DEFAULT nextval('public.books_category_id_seq'::regclass);


--
-- Name: books_cover id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_cover ALTER COLUMN id SET DEFAULT nextval('public.books_cover_id_seq'::regclass);


--
-- Name: books_publisher id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_publisher ALTER COLUMN id SET DEFAULT nextval('public.books_publisher_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: luis_banderas
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
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add category	9	add_category
34	Can change category	9	change_category
35	Can delete category	9	delete_category
36	Can view category	9	view_category
37	Can add cover	10	add_cover
38	Can change cover	10	change_cover
39	Can delete cover	10	delete_cover
40	Can view cover	10	view_cover
41	Can add publisher	11	add_publisher
42	Can change publisher	11	change_publisher
43	Can delete publisher	11	delete_publisher
44	Can view publisher	11	view_publisher
45	Can add books covers	12	add_bookscovers
46	Can change books covers	12	change_bookscovers
47	Can delete books covers	12	delete_bookscovers
48	Can view books covers	12	view_bookscovers
49	Can add books authors	13	add_booksauthors
50	Can change books authors	13	change_booksauthors
51	Can delete books authors	13	delete_booksauthors
52	Can view books authors	13	view_booksauthors
53	Can add blacklisted token	14	add_blacklistedtoken
54	Can change blacklisted token	14	change_blacklistedtoken
55	Can delete blacklisted token	14	delete_blacklistedtoken
56	Can view blacklisted token	14	view_blacklistedtoken
57	Can add outstanding token	15	add_outstandingtoken
58	Can change outstanding token	15	change_outstandingtoken
59	Can delete outstanding token	15	delete_outstandingtoken
60	Can view outstanding token	15	view_outstandingtoken
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$icBbtrL7ixleUBMo0cHsdJ$jPGfrsvPMmh4G9PNZ2XUvnuFwTTPleo7wxhSld4WhUY=	\N	t	admin			admin@admin.com	t	t	2022-04-12 16:15:01.475529+00
2		\N	f	nuevousuario			nuevo@usuario.com	f	t	2022-04-12 17:08:15.051596+00
4	admin123	\N	f	admin2			admin2@admin2.com	f	t	2022-04-12 17:33:23.687746+00
5	nuevo3	\N	f	nuexo3			nuevo3@usuario.com	f	t	2022-04-12 17:45:37.715927+00
6	nuevo4	\N	f	nuevo4			nuevo4@usuario.com	f	t	2022-04-12 17:48:05.073577+00
7	pbkdf2_sha256$320000$n9zdiKlkKn7XvuYuJgtKXN$5quWWSHHwRJPwiE67QqReqo4iyl02PrmVO9ywjdYab8=	\N	f	nuevo6			nuevo6@usuario.com	f	t	2022-04-12 18:06:51.357223+00
8	pbkdf2_sha256$320000$WaZ5iqxcrVLFDqBTiFEqSU$+ETJvoMCXKv2XbQ8KKXBhhuBXDe7qsISf0iZsWCX0mM=	\N	f	nuevo7			nuevo7@usuario.com	f	t	2022-04-12 20:47:53.79494+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at, category_id, publisher_id) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_bookscovers; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_bookscovers (id, book_id, cover_id) FROM stdin;
\.


--
-- Data for Name: books_category; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_category (id, name) FROM stdin;
\.


--
-- Data for Name: books_cover; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_cover (id, cover_type) FROM stdin;
\.


--
-- Data for Name: books_publisher; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.books_publisher (id, name) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	category
10	books	cover
11	books	publisher
12	books	bookscovers
13	books	booksauthors
14	token_blacklist	blacklistedtoken
15	token_blacklist	outstandingtoken
16	users	user
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 15:26:43.876993+00
2	auth	0001_initial	2022-04-12 15:26:43.950651+00
3	admin	0001_initial	2022-04-12 15:26:43.969595+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 15:26:43.975736+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 15:26:43.981498+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 15:26:43.993066+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 15:26:43.999981+00
8	auth	0003_alter_user_email_max_length	2022-04-12 15:26:44.00589+00
9	auth	0004_alter_user_username_opts	2022-04-12 15:26:44.011379+00
10	auth	0005_alter_user_last_login_null	2022-04-12 15:26:44.017271+00
11	auth	0006_require_contenttypes_0002	2022-04-12 15:26:44.019345+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 15:26:44.024889+00
13	auth	0008_alter_user_username_max_length	2022-04-12 15:26:44.034766+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 15:26:44.04097+00
15	auth	0010_alter_group_name_max_length	2022-04-12 15:26:44.049069+00
16	auth	0011_update_proxy_permissions	2022-04-12 15:26:44.056371+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 15:26:44.063634+00
18	books	0001_initial	2022-04-12 15:26:44.133035+00
19	sessions	0001_initial	2022-04-12 15:26:44.145561+00
20	token_blacklist	0001_initial	2022-04-12 16:22:28.815469+00
21	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 16:22:28.82352+00
22	token_blacklist	0003_auto_20171017_2007	2022-04-12 16:22:28.834035+00
23	token_blacklist	0004_auto_20171017_2013	2022-04-12 16:22:28.845029+00
24	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 16:22:28.852805+00
25	token_blacklist	0006_auto_20171017_2113	2022-04-12 16:22:28.859969+00
26	token_blacklist	0007_auto_20171017_2214	2022-04-12 16:22:28.88173+00
27	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 16:22:28.922712+00
28	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 16:22:28.935412+00
29	token_blacklist	0011_linearizes_history	2022-04-12 16:22:28.937173+00
30	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 16:22:28.944114+00
31	users	0001_initial	2022-04-12 17:33:18.18779+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:30:18.590999+00	24
2	2022-04-12 21:38:10.944276+00	31
3	2022-04-12 21:40:18.710552+00	33
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg2NzE1OSwiaWF0IjoxNjQ5NzgwNzU5LCJqdGkiOiI2OTA2OWFkM2E4NWU0NjZkODZmNjQyNzI0ODBiZDIwNyIsInVzZXJfaWQiOjF9.8b6ak7uS8Fxr1UQpYz9BbDy1yWnbTIuO9sllUdf8tYw	2022-04-12 16:25:59.444251+00	2022-04-13 16:25:59+00	1	69069ad3a85e466d86f64272480bd207
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3MDE0NywiaWF0IjoxNjQ5NzgzNzQ3LCJqdGkiOiJmZjZlYmVhZDc0MjY0NGNiOTUzZjEwMTg3Yzk4NjgyMCIsInVzZXJfaWQiOjF9.gclfMyCi8mwdNmySerZycCeTvUUmsZq96NW0kqqmoqE	2022-04-12 17:15:47.78783+00	2022-04-13 17:15:47+00	1	ff6ebead742644cb953f10187c986820
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3MDE2MCwiaWF0IjoxNjQ5NzgzNzYwLCJqdGkiOiIyM2E1ZmQyNDI5MDM0ZGJmYWQzZTNhODU4NDJlOWYzNCIsInVzZXJfaWQiOjF9.ltSzD_mX4PRDvIyE6xRi_mF3ZAg4cDnB06PgaJJAS_w	2022-04-12 17:16:00.873124+00	2022-04-13 17:16:00+00	1	23a5fd2429034dbfad3e3a85842e9f34
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg3MzIxNywiaWF0IjoxNjQ5Nzg2ODE3LCJqdGkiOiIwNTRhNzdiNDFhYjE0MmI2ODQ5YTYzOTA1NjY0NTJlMSIsInVzZXJfaWQiOjd9.RU-hYVl0FCfNeKhIaVm3dP1cZnThaVF99v4XvYgyBUo	2022-04-12 18:06:57.091745+00	2022-04-13 18:06:57+00	7	054a77b41ab142b6849a6390566452e1
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MzIzOCwiaWF0IjoxNjQ5Nzk2ODM4LCJqdGkiOiI1ZjI4MTMxZWU0MGE0NWNlODY1NTYyMTE5YjdjYjUyMSIsInVzZXJfaWQiOjh9.3xvsHHtV21JownLEHhN3LNMV0Og0Wq7XyZQrSyl1p6E	2022-04-12 20:53:58.181761+00	2022-04-13 20:53:58+00	8	5f28131ee40a45ce865562119b7cb521
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MzczMiwiaWF0IjoxNjQ5Nzk3MzMyLCJqdGkiOiI5NGMxNTJmZWJlMTQ0NTk3ODUwMTkwYjEwZDgxNTkxOCIsInVzZXJfaWQiOjF9.oEIb7F9QgUXTd2_8vEx7BP3gnbiob1L4KI_vt18w5HQ	2022-04-12 21:02:12.48664+00	2022-04-13 21:02:12+00	1	94c152febe144597850190b10d815918
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MzgzMywiaWF0IjoxNjQ5Nzk3NDMzLCJqdGkiOiJjMmNiYmZjYjkzYzE0MTJkOTg1MmI1NTE1MzVmYWRiZCIsInVzZXJfaWQiOjF9.4MHQfCimEVt_Yiv2Fc37TmZ62NICt_ySI8jwdG2zRDY	2022-04-12 21:03:53.248256+00	2022-04-13 21:03:53+00	1	c2cbbfcb93c1412d9852b551535fadbd
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Mzg1MiwiaWF0IjoxNjQ5Nzk3NDUyLCJqdGkiOiJjMTA1MWYzMjgyMDg0YjE1YTU2ZWE5MDFmYzE0NWM2NyIsInVzZXJfaWQiOjF9.X5vIrau8Jk6zRTG-jG1t2ZGriMrNOzC2EuZ6rlFpEP8	2022-04-12 21:04:12.781219+00	2022-04-13 21:04:12+00	1	c1051f3282084b15a56ea901fc145c67
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4MzkwNywiaWF0IjoxNjQ5Nzk3NTA3LCJqdGkiOiI5MWQzZmQyZjlkMjM0MWQ5ODNlMmI5OWFlZTQ5NTBmNCIsInVzZXJfaWQiOjF9.zHsn7sBiGD6NcrxSzWtGVIpNvaQ-1Nt9WPidx782EUo	2022-04-12 21:05:07.820766+00	2022-04-13 21:05:07+00	1	91d3fd2f9d2341d983e2b99aee4950f4
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Mzk1MywiaWF0IjoxNjQ5Nzk3NTUzLCJqdGkiOiJmNDYzODdmNmQ4Mjg0ZDY4YWMxYTdmYWM1YmVmZDVlZiIsInVzZXJfaWQiOjF9.XAFfp8zmQ6oUUn_GSGV0RP6jzRGPsSiGQQNsYRDBAnA	2022-04-12 21:05:53.076556+00	2022-04-13 21:05:53+00	1	f46387f6d8284d68ac1a7fac5befd5ef
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDAwNiwiaWF0IjoxNjQ5Nzk3NjA2LCJqdGkiOiI4MTFjOGE3OWVkNDQ0OWQyYjc1N2FjZTI0ZjVmY2FlNSIsInVzZXJfaWQiOjF9.XsbxwQJQt9UnXiCqIwfBAIqCFxYfpkogxTBQwgvScwo	2022-04-12 21:06:46.96933+00	2022-04-13 21:06:46+00	1	811c8a79ed4449d2b757ace24f5fcae5
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDIwNiwiaWF0IjoxNjQ5Nzk3ODA2LCJqdGkiOiIyZjQwMWI4NDVlMTg0YzkwYTMwNTFlMWJkZmRjYTVlNiIsInVzZXJfaWQiOjF9.EQLAm1fhQE7wZVMz-dllZRrhcZ-qmlzYX7bdScp2tqg	2022-04-12 21:10:06.2154+00	2022-04-13 21:10:06+00	1	2f401b845e184c90a3051e1bdfdca5e6
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDIyNiwiaWF0IjoxNjQ5Nzk3ODI2LCJqdGkiOiIzMzg5MGJhZjM4YzE0ZTc0OGIxNmIwN2Q5NmVhYTc5NSIsInVzZXJfaWQiOjF9.wByi0iOT244hHAT2gy5NQQUdvFPCzyMrpsAjGRhUWhs	2022-04-12 21:10:26.173175+00	2022-04-13 21:10:26+00	1	33890baf38c14e748b16b07d96eaa795
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDIzNywiaWF0IjoxNjQ5Nzk3ODM3LCJqdGkiOiJjMmNlMDgxODU5MDE0NWM1YjE1ZGVlNmJhZDdkMGNjNCIsInVzZXJfaWQiOjF9.-HQhOzpGM0RKouzqg1nJSj3jQTGWUEJjJYXXPDR0Dkc	2022-04-12 21:10:37.968423+00	2022-04-13 21:10:37+00	1	c2ce0818590145c5b15dee6bad7d0cc4
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDI1NiwiaWF0IjoxNjQ5Nzk3ODU2LCJqdGkiOiI1MjgyNmY5MDAxNDk0YWI4YjliYWEwNzY3YWNlOGFkYiIsInVzZXJfaWQiOjF9.Cpmr63lLsWHNv2F0gGqfRmeLGu7MEzYM6pZcQCF0z04	2022-04-12 21:10:56.699529+00	2022-04-13 21:10:56+00	1	52826f9001494ab8b9baa0767ace8adb
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDI2NSwiaWF0IjoxNjQ5Nzk3ODY1LCJqdGkiOiJkOTEwM2VlNTc4NzM0ZmQ2YTFmZWMxNTgyNThlMGZjZiIsInVzZXJfaWQiOjF9.HR1biHqTd7VILXKxgnpTSWlaZM2PGQwj391oSq8uhyo	2022-04-12 21:11:05.01326+00	2022-04-13 21:11:05+00	1	d9103ee578734fd6a1fec158258e0fcf
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDM2NSwiaWF0IjoxNjQ5Nzk3OTY1LCJqdGkiOiJmNzI1NDM3Y2UxMTA0ZDZlODAzMzg1ZTEwMGY3ZWU3OCIsInVzZXJfaWQiOjF9.vhvJ3dxUI5Fqp2ksqsrGNS15xWfEqwDvszvZeJkVcmw	2022-04-12 21:12:45.026588+00	2022-04-13 21:12:45+00	1	f725437ce1104d6e803385e100f7ee78
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDM4NCwiaWF0IjoxNjQ5Nzk3OTg0LCJqdGkiOiI1NGVjNDM2NDk5MjU0NDdmYTg5NDFlZmYzN2VjODBiMSIsInVzZXJfaWQiOjF9.AjU8yJOKzMlSFtS-mWW2j5IkhM2FLqZuajcGR4ffKDI	2022-04-12 21:13:04.499198+00	2022-04-13 21:13:04+00	1	54ec43649925447fa8941eff37ec80b1
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTAzOSwiaWF0IjoxNjQ5Nzk4NjM5LCJqdGkiOiIzNjI3MzQ2ZGY4ZWU0NGYwYTUzNTQzNjAxNDRlYzMzYSIsInVzZXJfaWQiOjF9.vPHI4NVXdjgIjp-i78bUhwFx8SWrdKRGCxdYgw-Xcyw	2022-04-12 21:23:59.327116+00	2022-04-13 21:23:59+00	1	3627346df8ee44f0a5354360144ec33a
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTA1NiwiaWF0IjoxNjQ5Nzk4NjU2LCJqdGkiOiJkN2U2MDVkNDkxZjc0MTNmODI4YzZlMmIwNzgwYzBkMiIsInVzZXJfaWQiOjF9.lE_06feUHRJAyALESEdaPe9i0gYJW8dNVqEoFw3gGd4	2022-04-12 21:24:16.666502+00	2022-04-13 21:24:16+00	1	d7e605d491f7413f828c6e2b0780c0d2
21	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTA3NywiaWF0IjoxNjQ5Nzk4Njc3LCJqdGkiOiJjNTBmN2QzYTlkYmU0NzhiYTQwNTIwODRiYzg3YTNkMSIsInVzZXJfaWQiOjF9.csrZLc3o9fk17twKrSIGQaE36FQJcGpd1ANYgF4MiXY	2022-04-12 21:24:37.020263+00	2022-04-13 21:24:37+00	1	c50f7d3a9dbe478ba4052084bc87a3d1
22	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTEwMSwiaWF0IjoxNjQ5Nzk4NzAxLCJqdGkiOiIwMmNhZDA1YmIzZDc0MGYwODhlNmZmNTRhNDYyNWE4OSIsInVzZXJfaWQiOjF9.0cfVl9cUY78UL1_USxJP612EagEUqV1bgneD5Tf4T3w	2022-04-12 21:25:01.954548+00	2022-04-13 21:25:01+00	1	02cad05bb3d740f088e6ff54a4625a89
23	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTE3NSwiaWF0IjoxNjQ5Nzk4Nzc1LCJqdGkiOiI1YWUxYTYzZjZiZmM0MzMxYTQ4NjFhNmM5NjU0NDNmNyIsInVzZXJfaWQiOjF9.EHCrom88rbcws2cj2eFP_nT0ZdIbWAxJHPVVRoepkrM	2022-04-12 21:26:15.316648+00	2022-04-13 21:26:15+00	1	5ae1a63f6bfc4331a4861a6c965443f7
24	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTM3OCwiaWF0IjoxNjQ5Nzk4OTc4LCJqdGkiOiI2ODcxODUyYTdkNGI0YmIxOWQ4ZDVmNWY2ZTJiODM0ZiIsInVzZXJfaWQiOjh9.xQQ1rfxFwuHmvzH06vj4wpICZvyukaF4OH35l6xfgOs	2022-04-12 21:29:38.147614+00	2022-04-13 21:29:38+00	8	6871852a7d4b4bb19d8d5f5f6e2b834f
25	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTQzMywiaWF0IjoxNjQ5Nzk5MDMzLCJqdGkiOiJhOTcxNzhlNTczN2E0OTE5ODE4NzU0NWMwZjFiZTljOCIsInVzZXJfaWQiOjF9.ElFe0L_JQnRFEvSdcVTrHt7VbKZIOiVUdMjs5E9pHcw	2022-04-12 21:30:33.32155+00	2022-04-13 21:30:33+00	1	a97178e5737a49198187545c0f1be9c8
26	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTU3MiwiaWF0IjoxNjQ5Nzk5MTcyLCJqdGkiOiJjODUwNmJmZmUzOTg0ZDIwYmYyNGZhMDQ4YjljZjM4MyIsInVzZXJfaWQiOjF9.zccZQDDIAJr7QsRws7dqs1ztJgolRH9oavzvGZf0l4s	2022-04-12 21:32:52.776598+00	2022-04-13 21:32:52+00	1	c8506bffe3984d20bf24fa048b9cf383
27	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTU5NCwiaWF0IjoxNjQ5Nzk5MTk0LCJqdGkiOiI1OWQ1MTdiMzAxOTQ0OTI5YWI1ZTQzYjJmMTMwMmJiNyIsInVzZXJfaWQiOjF9.1lEyx822mkK-15pOhQDqa7gKCXIVAcibHDjrtc4rptk	2022-04-12 21:33:14.16394+00	2022-04-13 21:33:14+00	1	59d517b301944929ab5e43b2f1302bb7
28	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTYyMSwiaWF0IjoxNjQ5Nzk5MjIxLCJqdGkiOiJiZGIzZmMwMjIxZWM0ZTc3OTExZmJmYzNiZDcyNTU1YSIsInVzZXJfaWQiOjF9.fUbe-TUn9p8PSmi_KUL52WBvHgT6ETTRKYsSx1SAZNg	2022-04-12 21:33:41.225812+00	2022-04-13 21:33:41+00	1	bdb3fc0221ec4e77911fbfc3bd72555a
29	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTY1NywiaWF0IjoxNjQ5Nzk5MjU3LCJqdGkiOiIxNDM1YTdkMDQwMzk0YzFjYjI2MTEyYWZjMmMxZmQyYyIsInVzZXJfaWQiOjF9.-GJmy2yQ76DxRgqQxz-7FGiIfDUWJyLS50XyGM7YSGQ	2022-04-12 21:34:17.006344+00	2022-04-13 21:34:17+00	1	1435a7d040394c1cb26112afc2c1fd2c
30	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTcyMCwiaWF0IjoxNjQ5Nzk5MzIwLCJqdGkiOiIyN2U5NTFmN2E2YzM0NThhYTMxNzFmZWE3MDQ3MjljMSIsInVzZXJfaWQiOjh9.SPuitlpjcCCOkUsJMfxdwSXBqBFlsm4o2f9Yi1BOvIs	2022-04-12 21:35:20.004588+00	2022-04-13 21:35:20+00	8	27e951f7a6c3458aa3171fea704729c1
31	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTg0NywiaWF0IjoxNjQ5Nzk5NDQ3LCJqdGkiOiIyMmVmYzAwYTcxOWM0ZjVlOTMzNGNiMGNjMGYzNDBjYyIsInVzZXJfaWQiOjh9.xWOtC6pU4tGuE8if1ocPO1lmOOrjzyCZG3eD2tvuSbg	2022-04-12 21:37:27.294743+00	2022-04-13 21:37:27+00	8	22efc00a719c4f5e9334cb0cc0f340cc
32	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTkwNSwiaWF0IjoxNjQ5Nzk5NTA1LCJqdGkiOiI4NzNjNTkzYTY5ODM0NmI5OTdjNjQ0YWUxNDU5MTAzNSIsInVzZXJfaWQiOjF9.oPt6JzFuB0VC6Sk-qfDoHyQ9HrIZwt4ufD0G11k6IyY	2022-04-12 21:38:25.455188+00	2022-04-13 21:38:25+00	1	873c593a698346b997c644ae14591035
33	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTk4NywiaWF0IjoxNjQ5Nzk5NTg3LCJqdGkiOiIzZWNkZjMzN2Q4OGE0ZTMwODhjNDdlMjM1ZTgyNmVjNSIsInVzZXJfaWQiOjh9.8GS9qRc1uWZHEZHhGmF4zKRlCwmL7gHHWD11qUCSqEk	2022-04-12 21:39:47.44857+00	2022-04-13 21:39:47+00	8	3ecdf337d88a4e3088c47e235e826ec5
34	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjA5MiwiaWF0IjoxNjQ5Nzk5NjkyLCJqdGkiOiI1M2E2MWQyY2VmMTM0MTQ1ODRkOWQzN2QyMDQ2M2I0MCIsInVzZXJfaWQiOjF9.hUWU0mSQWekyQwsXC9UmlKmf9LLGSTnoYVv3_1lpZpc	2022-04-12 21:41:32.632087+00	2022-04-13 21:41:32+00	1	53a61d2cef13414584d9d37d20463b40
35	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjIzNCwiaWF0IjoxNjQ5Nzk5ODM0LCJqdGkiOiI2M2FiZWVkMDAwMGU0MjYwODk4NDgyODQ0MTk4MDhhZCIsInVzZXJfaWQiOjF9.InA4bAkEFWEEG1KTOPsPtBPk7aHK5PW6pMc5jrueFVc	2022-04-12 21:43:54.762765+00	2022-04-13 21:43:54+00	1	63abeed0000e426089848284419808ad
36	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM5MiwiaWF0IjoxNjQ5Nzk5OTkyLCJqdGkiOiI4ZGExYWZjMjUxNWQ0NDRhOGY4OGQzMWQ4ZTdkODg2MiIsInVzZXJfaWQiOjF9.HESwXU7lvlCRlOB22sHVcghPIRfEfi_GZ-ZDWC6HF6Y	2022-04-12 21:46:32.221606+00	2022-04-13 21:46:32+00	1	8da1afc2515d444a8f88d31d8e7d8862
37	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQzMywiaWF0IjoxNjQ5ODAwMDMzLCJqdGkiOiI2MDEyMmZkZmE1YWE0OTZkYWM3YTk5Mzg0MGNlZmZlZiIsInVzZXJfaWQiOjF9.mQHfgpWZVkTnCi6ppXZkRYkj_p3rEzYAqkbslePrO4E	2022-04-12 21:47:13.427064+00	2022-04-13 21:47:13+00	1	60122fdfa5aa496dac7a993840ceffef
38	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjUzNCwiaWF0IjoxNjQ5ODAwMTM0LCJqdGkiOiJhNDM0MmExNmM0YmY0YWY4OGRkMjY2NDhlNDhkYmQzYyIsInVzZXJfaWQiOjF9.jd3u_qNx9Au2kqOj9slxB_49sljmfXIw28dxE3Bdx30	2022-04-12 21:48:54.393826+00	2022-04-13 21:48:54+00	1	a4342a16c4bf4af88dd26648e48dbd3c
39	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njc4NywiaWF0IjoxNjQ5ODAwMzg3LCJqdGkiOiJlMTJhMDg0MDY3NzY0YmM0ODY2MTUyNGYzZmU5ZTM4NSIsInVzZXJfaWQiOjF9.jrYGVwHCfRFwJaCsWi_PEZ5uiyahcwsy_u1RvSJ-xGs	2022-04-12 21:53:07.747715+00	2022-04-13 21:53:07+00	1	e12a084067764bc48661524f3fe9e385
40	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjgxNiwiaWF0IjoxNjQ5ODAwNDE2LCJqdGkiOiIyNzIxYjE0ZTUwYmQ0ODc2ODA4ZWQwNWZlNDQ5MDJhYiIsInVzZXJfaWQiOjF9.fP8jae8sVbOouvLQ8lv1xQAV3115nd_0uoJpt758n-0	2022-04-12 21:53:36.074477+00	2022-04-13 21:53:36+00	1	2721b14e50bd4876808ed05fe44902ab
41	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njk4NiwiaWF0IjoxNjQ5ODAwNTg2LCJqdGkiOiJmZjdjN2ZlYjU0YmU0YmY5OGMyOThmOGExYWM5NmU3NiIsInVzZXJfaWQiOjF9.zrCQWWIrn6BScPlpL6pNUNNTHtXs-3FuFqLQmwvk8_o	2022-04-12 21:56:26.144935+00	2022-04-13 21:56:26+00	1	ff7c7feb54be4bf98c298f8a1ac96e76
42	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzAzNiwiaWF0IjoxNjQ5ODAwNjM2LCJqdGkiOiJhNWE4ODQzODNkNmY0ZGQ0Yjc2Y2FjNDc5OTQ4ZmYyNyIsInVzZXJfaWQiOjF9.pPhA3A-TW8ds_cirjlrgbB7hucs7Yg4aJXhXX9wcDgI	2022-04-12 21:57:16.731929+00	2022-04-13 21:57:16+00	1	a5a884383d6f4dd4b76cac479948ff27
43	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzIxOSwiaWF0IjoxNjQ5ODAwODE5LCJqdGkiOiI2MTdlMDJjOTliMDc0MzI2YjViYWFiNjA2MWI3ODk3ZiIsInVzZXJfaWQiOjF9.sgV4sXdY_EmnrfOpaOEtMXIr3U-Kpd-37R_8m07KoTE	2022-04-12 22:00:19.684902+00	2022-04-13 22:00:19+00	1	617e02c99b074326b5baab6061b7897f
44	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzI2OSwiaWF0IjoxNjQ5ODAwODY5LCJqdGkiOiJkNTg0YmNjMDA3OWY0ODY2YWRmYTljNGFjMmM3ZTg0OCIsInVzZXJfaWQiOjF9.DRTNGqj6V-jW0H9WX2WIQsTXGhyb8sby2V_rSc7taoE	2022-04-12 22:01:09.677098+00	2022-04-13 22:01:09+00	1	d584bcc0079f4866adfa9c4ac2c7e848
45	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzMwOCwiaWF0IjoxNjQ5ODAwOTA4LCJqdGkiOiI1NDk4YjJlNTExNmQ0M2YyYTFmMjQyOTE5NzIwNDkzNiIsInVzZXJfaWQiOjF9.g_XTmPe2pp34QA_a3ngwxzvG5lyNDdJx-YWJkLaW82s	2022-04-12 22:01:48.74528+00	2022-04-13 22:01:48+00	1	5498b2e5116d43f2a1f2429197204936
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: luis_banderas
--

COPY public.users_user (user_ptr_id) FROM stdin;
4
5
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_bookscovers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_bookscovers_id_seq', 1, false);


--
-- Name: books_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_category_id_seq', 1, false);


--
-- Name: books_cover_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_cover_id_seq', 1, false);


--
-- Name: books_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.books_publisher_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 3, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: luis_banderas
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 45, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_bookscovers books_bookscovers_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_bookscovers
    ADD CONSTRAINT books_bookscovers_pkey PRIMARY KEY (id);


--
-- Name: books_category books_category_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_category
    ADD CONSTRAINT books_category_pkey PRIMARY KEY (id);


--
-- Name: books_cover books_cover_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_cover
    ADD CONSTRAINT books_cover_pkey PRIMARY KEY (id);


--
-- Name: books_publisher books_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_publisher
    ADD CONSTRAINT books_publisher_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_book_category_id_406d8649; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX books_book_category_id_406d8649 ON public.books_book USING btree (category_id);


--
-- Name: books_book_publisher_id_189e6c56; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX books_book_publisher_id_189e6c56 ON public.books_book USING btree (publisher_id);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_bookscovers_book_id_bc3ee600; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX books_bookscovers_book_id_bc3ee600 ON public.books_bookscovers USING btree (book_id);


--
-- Name: books_bookscovers_cover_id_486336a3; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX books_bookscovers_cover_id_486336a3 ON public.books_bookscovers USING btree (cover_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: luis_banderas
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_category_id_406d8649_fk_books_category_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_category_id_406d8649_fk_books_category_id FOREIGN KEY (category_id) REFERENCES public.books_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_book books_book_publisher_id_189e6c56_fk_books_publisher_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_publisher_id_189e6c56_fk_books_publisher_id FOREIGN KEY (publisher_id) REFERENCES public.books_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookscovers books_bookscovers_book_id_bc3ee600_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_bookscovers
    ADD CONSTRAINT books_bookscovers_book_id_bc3ee600_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookscovers books_bookscovers_cover_id_486336a3_fk_books_cover_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.books_bookscovers
    ADD CONSTRAINT books_bookscovers_cover_id_486336a3_fk_books_cover_id FOREIGN KEY (cover_id) REFERENCES public.books_cover(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user users_user_user_ptr_id_dad4eb89_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: luis_banderas
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_user_ptr_id_dad4eb89_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

