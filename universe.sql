--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    dis_from_e integer,
    g_type character varying(25)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    size_km numeric,
    planet_id integer,
    dist_from_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    has_life boolean,
    has_water boolean,
    star_id integer,
    dist_from_star integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spacestation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacestation (
    spacestation_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    population numeric,
    galaxy_id integer
);


ALTER TABLE public.spacestation OWNER TO freecodecamp;

--
-- Name: spacestation_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacestation_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacestation_station_id_seq OWNER TO freecodecamp;

--
-- Name: spacestation_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacestation_station_id_seq OWNED BY public.spacestation.spacestation_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    age_in_mil numeric,
    s_type character varying(25),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: spacestation spacestation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation ALTER COLUMN spacestation_id SET DEFAULT nextval('public.spacestation_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'VIRGO A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'CANIS MAJOR DWARF GALAXY', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'CYGNUS A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'MAFFEI I', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'KEPLAR-10B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (8, 'DFGSDFG', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (9, 'DSFGSD', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (10, 'EYTJEYJ', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (11, 'KUMRYMRY', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (12, 'PROXIYNHWR B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (13, 'KEPLRTBERBHAR-10B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (14, 'DFGSDERYHRYFG', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (15, 'DSERYHERHFGSD', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (16, 'EYTJERHEEYJ', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (17, 'KUERHERYMRYMRY', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (18, 'PREHERERROXIYNHWR B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (24, 'KEPLREYERBHAR-10B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (25, 'DFGERRYHRYFG', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (26, 'HERRYHERHFGSD', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (27, 'EHERJERHEEYJ', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (28, 'ERHERYMRYMRY', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (29, 'PREHERERROERYNHWR B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (30, 'KEERBHAR-10B', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (31, 'DFGEFG', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (32, 'HERHFGSD', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (33, 'JERHEEYJ', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (34, 'ERHRYMRY', NULL, NULL, 7, NULL);
INSERT INTO public.moon VALUES (35, 'PREHERWR B', NULL, NULL, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'JUPITER', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (8, 'MARS', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (9, 'PLUTO', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (10, 'COROT-7B', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (11, 'KEPLAR-62F', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (12, 'PROXIMA CANTAURI B', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (13, 'KEPLAR-10B', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (14, 'DFGSDFG', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (15, 'DSFGSD', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (16, 'EYTJEYJ', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (17, 'KUMRYMRY', NULL, NULL, NULL, 4, NULL);
INSERT INTO public.planet VALUES (18, 'PROXIYNHWR B', NULL, NULL, NULL, 4, NULL);


--
-- Data for Name: spacestation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacestation VALUES (4, 'KEERBHAR-10B', NULL, NULL, 4);
INSERT INTO public.spacestation VALUES (5, 'DFGEFG', NULL, NULL, 4);
INSERT INTO public.spacestation VALUES (6, 'HERHFGSD', NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'ADHIL', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (5, 'ALMACH', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (6, 'ALPHERATZ', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (7, 'BUNA', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (8, 'MIRACH', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (9, 'NEMBUS', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (10, 'SIRIUS', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (11, 'BETELGEUSE', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (12, 'ANTARES', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (13, 'RIGEL', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (14, 'ARTURUS', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (15, 'VEGA', NULL, NULL, NULL, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 35, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: spacestation_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacestation_station_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: spacestation spacestation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation
    ADD CONSTRAINT spacestation_name_key UNIQUE (name);


--
-- Name: spacestation spacestation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation
    ADD CONSTRAINT spacestation_pkey PRIMARY KEY (spacestation_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: spacestation spacestation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacestation
    ADD CONSTRAINT spacestation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

