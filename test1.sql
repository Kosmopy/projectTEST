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
    id_galaxy integer NOT NULL,
    name character varying,
    age integer,
    radius integer,
    distance numeric,
    water boolean,
    life boolean,
    notes text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id_galaxy;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    id_moon integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text,
    id_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.id_moon;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    id_planet integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text,
    id_star integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.id_planet;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    id_star integer NOT NULL,
    name character varying NOT NULL,
    age integer,
    radius integer,
    distance numeric NOT NULL,
    water boolean,
    life boolean,
    notes text,
    id_galaxy integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.id_star;


--
-- Name: galaxy id_galaxy; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id_galaxy SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon id_moon; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id_moon SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet id_planet; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id_planet SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star id_star; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id_star SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (8, 'a', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'b', NULL, NULL, 122, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'c', NULL, NULL, 1223, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'ab', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'abd', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'ad', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'adf', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'ade', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'al', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'ak', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'ar', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'am', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'an', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'ah', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'bh', NULL, NULL, 122, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'ch', NULL, NULL, 1223, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'ahb', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'abdh', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'adh', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'adeh', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'ahl', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'akh', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'arh', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'amh', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'anh', NULL, NULL, 12, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, 122, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, 1223, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'ab', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'abd', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'ad', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'adm', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'ade', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'al', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'ak', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'ar', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'am', NULL, NULL, 12, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'an', NULL, NULL, 12, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (8, 'a', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'b', NULL, NULL, 122, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'c', NULL, NULL, 1223, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'ab', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'abd', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'ad', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'adh', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'ade', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'al', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'ak', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'ar', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 'am', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'an', NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 32, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 13, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 20, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (id_galaxy);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (id_moon);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (id_planet);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (id_star);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (id_galaxy) REFERENCES public.galaxy(id_galaxy);


--
-- Name: planet fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk FOREIGN KEY (id_star) REFERENCES public.star(id_star);


--
-- Name: moon fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk FOREIGN KEY (id_planet) REFERENCES public.planet(id_planet);


--
-- PostgreSQL database dump complete
--

