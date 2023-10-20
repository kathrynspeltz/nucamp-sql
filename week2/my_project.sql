--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: national_parks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.national_parks (
    id integer NOT NULL,
    name text NOT NULL,
    state text NOT NULL,
    size integer,
    landscape text
);


ALTER TABLE public.national_parks OWNER TO postgres;

--
-- Name: national_parks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.national_parks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.national_parks_id_seq OWNER TO postgres;

--
-- Name: national_parks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.national_parks_id_seq OWNED BY public.national_parks.id;


--
-- Name: park_hikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.park_hikes (
    id integer NOT NULL,
    name text NOT NULL,
    coordinates integer NOT NULL,
    length integer,
    difficulty_rating text,
    national_park text
);


ALTER TABLE public.park_hikes OWNER TO postgres;

--
-- Name: park_hikes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.park_hikes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.park_hikes_id_seq OWNER TO postgres;

--
-- Name: park_hikes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.park_hikes_id_seq OWNED BY public.park_hikes.id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.states (
    id integer NOT NULL,
    name text NOT NULL,
    region text NOT NULL
);


ALTER TABLE public.states OWNER TO postgres;

--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.states_id_seq OWNER TO postgres;

--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- Name: national_parks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.national_parks ALTER COLUMN id SET DEFAULT nextval('public.national_parks_id_seq'::regclass);


--
-- Name: park_hikes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_hikes ALTER COLUMN id SET DEFAULT nextval('public.park_hikes_id_seq'::regclass);


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- Data for Name: national_parks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.national_parks (id, name, state, size, landscape) FROM stdin;
2345	Glacier National Park	Montana	1000000	mountains
6789	Everglades National Park	Florida	1500000	wetlands
3455	Arches National Park	Utah	76000	desert
\.


--
-- Data for Name: park_hikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.park_hikes (id, name, coordinates, length, difficulty_rating, national_park) FROM stdin;
34	Grinnell Glacier Trail	49	12	moderate	\N
56	Anhinga Trail	57	1	easy	\N
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.states (id, name, region) FROM stdin;
12	Utah	Mountain West
13	Montana	Mountain West
36	Florida	Southeastern
\.


--
-- Name: national_parks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.national_parks_id_seq', 1, false);


--
-- Name: park_hikes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.park_hikes_id_seq', 1, false);


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- Name: national_parks national_parks_address_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.national_parks
    ADD CONSTRAINT national_parks_address_key UNIQUE (state);


--
-- Name: national_parks national_parks_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.national_parks
    ADD CONSTRAINT national_parks_name_key UNIQUE (name);


--
-- Name: national_parks national_parks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.national_parks
    ADD CONSTRAINT national_parks_pkey PRIMARY KEY (id);


--
-- Name: park_hikes park_hikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.park_hikes
    ADD CONSTRAINT park_hikes_pkey PRIMARY KEY (id);


--
-- Name: states states_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_name_key UNIQUE (name);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

