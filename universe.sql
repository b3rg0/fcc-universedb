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
    name character varying NOT NULL,
    light_years integer,
    discoverer text,
    year_of_discover numeric,
    miss_universe boolean,
    humans boolean,
    black_hole integer
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
    name character varying NOT NULL,
    ligh_years integer,
    discoverer text,
    year_of_discover numeric,
    miss_universe boolean,
    humans boolean,
    planet_id integer NOT NULL,
    holes integer
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    light_years integer,
    discoverer text,
    year_of_discover numeric,
    miss_universe boolean,
    humans boolean,
    star_id integer NOT NULL,
    continent integer
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    light_years integer,
    discoverer text,
    year_of_discover numeric,
    miss_universe boolean,
    humans boolean,
    galaxy_id integer NOT NULL,
    size integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: starship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starship (
    starship_id integer NOT NULL,
    name character varying NOT NULL,
    engine integer,
    size integer
);


ALTER TABLE public.starship OWNER TO freecodecamp;

--
-- Name: starships_starships_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starships_starships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starships_starships_id_seq OWNER TO freecodecamp;

--
-- Name: starships_starships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starships_starships_id_seq OWNED BY public.starship.starship_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: starship starship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship ALTER COLUMN starship_id SET DEFAULT nextval('public.starships_starships_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 2500000, 'Azophi', 964, false, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'del triangulo', 750000, 'Giovanni Hodiierna', 1654, false, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'milky way', NULL, 'Mitologias egipcias, griegas y romanas', NULL, true, true, 100000000);
INSERT INTO public.galaxy VALUES (4, 'enana del can mayor', 25000, NULL, 2003, false, false, NULL);
INSERT INTO public.galaxy VALUES (5, 'enana del can eliptica de sagitario', 78000, NULL, 1994, false, false, NULL);
INSERT INTO public.galaxy VALUES (6, 'enana de la osa menor', 215000, 'A. G. Wilson', 1954, false, false, NULL);
INSERT INTO public.galaxy VALUES (7, 'muy muy lejana', NULL, 'George Lucas', 1999, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', NULL, NULL, NULL, NULL, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'luna de pluton', NULL, NULL, NULL, NULL, NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'ohma-D''un', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Onoam', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Veruna', NULL, NULL, NULL, NULL, NULL, 3, NULL);
INSERT INTO public.moon VALUES (6, 'clepresdan', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (7, 'cobarb', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (8, 'flitrude', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (9, 'Millius Prime', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (10, 'Rawnde', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (11, 'Uncovalor', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'Winlion', NULL, NULL, NULL, NULL, NULL, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Centax 3', NULL, NULL, NULL, NULL, NULL, 12, NULL);
INSERT INTO public.moon VALUES (14, 'titan', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (15, 'mimas', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (16, 'encelado', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (17, 'tetis', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (18, 'dione', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (19, 'rea', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (20, 'hiperion', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (21, 'japeto', NULL, NULL, NULL, NULL, NULL, 13, NULL);
INSERT INTO public.moon VALUES (22, 'febe', NULL, NULL, NULL, NULL, NULL, 13, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tierra', NULL, NULL, NULL, true, true, 7, 6);
INSERT INTO public.planet VALUES (2, 'tatooine', NULL, NULL, NULL, NULL, true, 8, NULL);
INSERT INTO public.planet VALUES (3, 'naboo', NULL, NULL, NULL, NULL, true, 8, NULL);
INSERT INTO public.planet VALUES (4, 'pluton', 31, NULL, NULL, NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (5, 'Jakku', NULL, NULL, NULL, NULL, false, 8, NULL);
INSERT INTO public.planet VALUES (6, 'lego', NULL, NULL, NULL, NULL, true, 8, NULL);
INSERT INTO public.planet VALUES (7, 'namekusei', NULL, NULL, NULL, NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (8, 'calypso', NULL, NULL, NULL, NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (9, 'solis', NULL, NULL, NULL, NULL, true, 7, NULL);
INSERT INTO public.planet VALUES (10, 'supersolis', NULL, NULL, NULL, NULL, false, 7, NULL);
INSERT INTO public.planet VALUES (11, 'kashyyk', NULL, NULL, NULL, NULL, false, 8, NULL);
INSERT INTO public.planet VALUES (12, 'coruscant', NULL, NULL, NULL, NULL, true, 8, NULL);
INSERT INTO public.planet VALUES (13, 'Saturno', NULL, NULL, NULL, NULL, NULL, 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'altair', 16, NULL, NULL, NULL, NULL, 3, 2);
INSERT INTO public.star VALUES (2, 'deneb', 1425, NULL, NULL, NULL, NULL, 3, 210);
INSERT INTO public.star VALUES (3, 'vega', 25, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES (4, 'albireo', 385, NULL, NULL, NULL, NULL, 3, 50);
INSERT INTO public.star VALUES (5, 'sadr', 1500, NULL, NULL, NULL, NULL, 3, 150);
INSERT INTO public.star VALUES (6, 'Alpheratz', 98, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.star VALUES (7, 'Sol', 0, NULL, NULL, NULL, NULL, 3, 1391016);
INSERT INTO public.star VALUES (8, 'tatoo', NULL, NULL, NULL, NULL, NULL, 7, NULL);


--
-- Data for Name: starship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starship VALUES (1, 'millennium falcon', NULL, 8);
INSERT INTO public.starship VALUES (2, 'death star', NULL, NULL);
INSERT INTO public.starship VALUES (3, 'swordbreaker', NULL, NULL);
INSERT INTO public.starship VALUES (4, 'alien radio ship', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 1, false);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: starships_starships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starships_starships_id_seq', 4, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: starship starship_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_id UNIQUE (starship_id);


--
-- Name: starship starship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starship
    ADD CONSTRAINT starship_pkey PRIMARY KEY (starship_id);


--
-- Name: star fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

