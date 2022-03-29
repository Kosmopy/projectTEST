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
    name character varying,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text,
    planet_id integer
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
    name character varying NOT NULL,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text,
    star_id integer
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
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rockets_id integer NOT NULL,
    name character varying NOT NULL,
    distance numeric NOT NULL
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_rockets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_rockets_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_rockets_id_seq OWNED BY public.rockets.rockets_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text,
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rockets rockets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rockets_id SET DEFAULT nextval('public.rockets_rockets_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'mue', NULL, NULL, 2343, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'alph', NULL, NULL, 5743889, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'bet', NULL, NULL, 3459379, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'delt', NULL, NULL, 642835464237, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'hex', NULL, NULL, 87877000, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'penta', NULL, NULL, 9347002953204, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'ho', NULL, NULL, 7002953204, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, 'a', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'b', NULL, NULL, 122, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'c', NULL, NULL, 1223, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'ab', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (12, 'abd', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'ad', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'adf', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'ade', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'al', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'ak', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'ar', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'am', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'an', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (21, 'ah', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (22, 'bh', NULL, NULL, 122, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (23, 'ch', NULL, NULL, 1223, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (24, 'ahb', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (25, 'abdh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (26, 'adh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (27, 'adeh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (28, 'ahl', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (29, 'akh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (30, 'arh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (31, 'amh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (32, 'anh', NULL, NULL, 12, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, 122, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, 1223, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (4, 'ab', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (5, 'abd', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (6, 'ad', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (7, 'adm', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (8, 'ade', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'al', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (10, 'ak', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (11, 'ar', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (12, 'am', NULL, NULL, 12, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (13, 'an', NULL, NULL, 12, NULL, NULL, NULL, 8);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (1, 'jshf', 46534);
INSERT INTO public.rockets VALUES (2, 'bfdsdz', 464);
INSERT INTO public.rockets VALUES (3, 'fdbsjd', 6546);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (8, 'a', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (9, 'b', NULL, NULL, 122, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (10, 'c', NULL, NULL, 1223, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (11, 'ab', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (12, 'abd', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (13, 'ad', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (14, 'adh', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (15, 'ade', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (16, 'al', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (17, 'ak', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (18, 'ar', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (19, 'am', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (20, 'an', NULL, NULL, 12, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (21, 'mue', NULL, NULL, 2343, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (22, 'alph', NULL, NULL, 5743889, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (23, 'bet', NULL, NULL, 3459379, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (24, 'delt', NULL, NULL, 642835464237, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (25, 'hex', NULL, NULL, 87877000, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (26, 'penta', NULL, NULL, 9347002953204, NULL, NULL, NULL, 1);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: rockets_rockets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_rockets_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: rockets rockets_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_name_key UNIQUE (name);


--
-- Name: rockets rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_pkey PRIMARY KEY (rockets_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


