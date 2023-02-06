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
    type text NOT NULL,
    age integer NOT NULL,
    distance integer NOT NULL,
    has_life boolean NOT NULL
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
    type character varying NOT NULL,
    age numeric NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean NOT NULL,
    catalog text
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
    type character varying NOT NULL,
    age numeric NOT NULL,
    star_id integer NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    age numeric NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Barred Spiral', 20000, 0, false);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 'Spiral', 5000, 0, false);
INSERT INTO public.galaxy VALUES (10, 'Andromeda', 'Spiral', 12000, 3, false);
INSERT INTO public.galaxy VALUES (11, 'Milky Way 1', 'Barred Spiral', 20000, 0, false);
INSERT INTO public.galaxy VALUES (1, 'A1', 'Spiral', 12000, 3, false);
INSERT INTO public.galaxy VALUES (4, 'A2', 'Spiral', 12000, 3, false);
INSERT INTO public.galaxy VALUES (8, 'M1', 'Barred Spiral', 20000, 0, false);
INSERT INTO public.galaxy VALUES (5, 'M2', 'Barred Spiral', 20000, 0, false);
INSERT INTO public.galaxy VALUES (9, 'T1', 'Spiral', 5000, 0, false);
INSERT INTO public.galaxy VALUES (12, 'T2', 'Spiral', 5000, 0, false);
INSERT INTO public.galaxy VALUES (3, 'T3', 'Spiral', 5000, 0, false);
INSERT INTO public.galaxy VALUES (7, 'A3', 'Spiral', 12000, 3, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (4, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (5, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (6, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (7, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (8, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (9, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (10, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (11, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (12, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (13, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (14, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (15, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (16, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (17, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (18, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (19, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (20, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (21, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (22, 'Moon', 'Terrestrial', 4.5, 1, false, NULL);
INSERT INTO public.moon VALUES (23, 'Phobos', 'Terrestrial', 4.6, 2, false, NULL);
INSERT INTO public.moon VALUES (24, 'Deimos', 'Terrestrial', 4.7, 2, false, NULL);
INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 4.5, 1, false, '1');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Venus', 'Terrestrial', 4.5, 1, true);
INSERT INTO public.planet VALUES (5, 'Mars', 'Terrestrial', 4.6, 1, true);
INSERT INTO public.planet VALUES (13, 'Earth', 'Terrestrial', 4.54, 1, true);
INSERT INTO public.planet VALUES (10, 'E1', 'Terrestrial', 4.54, 1, true);
INSERT INTO public.planet VALUES (1, 'E2', 'Terrestrial', 4.54, 1, true);
INSERT INTO public.planet VALUES (4, 'E3', 'Terrestrial', 4.54, 1, true);
INSERT INTO public.planet VALUES (7, 'E4', 'Terrestrial', 4.54, 1, true);
INSERT INTO public.planet VALUES (8, 'M1', 'Terrestrial', 4.6, 1, true);
INSERT INTO public.planet VALUES (2, 'M2', 'Terrestrial', 4.6, 1, true);
INSERT INTO public.planet VALUES (11, 'M3', 'Terrestrial', 4.6, 1, true);
INSERT INTO public.planet VALUES (14, 'M4', 'Terrestrial', 4.6, 1, true);
INSERT INTO public.planet VALUES (12, 'V1', 'Terrestrial', 4.5, 1, true);
INSERT INTO public.planet VALUES (15, 'V2', 'Terrestrial', 4.5, 1, true);
INSERT INTO public.planet VALUES (9, 'V3', 'Terrestrial', 4.5, 1, true);
INSERT INTO public.planet VALUES (6, 'V4', 'Terrestrial', 4.5, 1, true);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'Atlas', 'Gas');
INSERT INTO public.rocket VALUES (2, 'Jupiter', 'Solid');
INSERT INTO public.rocket VALUES (3, 'Neptune', 'Gas');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 4.6, 2, true);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'M-type', 4.22, 1, true);
INSERT INTO public.star VALUES (9, 'Alpha Centauri A', 'G-type', 4.85, 1, true);
INSERT INTO public.star VALUES (12, 'A1', 'G-type', 4.85, 1, true);
INSERT INTO public.star VALUES (6, 'A2', 'G-type', 4.85, 1, true);
INSERT INTO public.star VALUES (3, 'A3', 'G-type', 4.85, 1, true);
INSERT INTO public.star VALUES (8, 'P1', 'M-type', 4.22, 1, true);
INSERT INTO public.star VALUES (2, 'P2', 'M-type', 4.22, 1, true);
INSERT INTO public.star VALUES (11, 'P3', 'M-type', 4.22, 1, true);
INSERT INTO public.star VALUES (10, 'S1', 'G-type', 4.6, 2, true);
INSERT INTO public.star VALUES (7, 'S2', 'G-type', 4.6, 2, true);
INSERT INTO public.star VALUES (4, 'S3', 'G-type', 4.6, 2, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_catalog; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_catalog UNIQUE (catalog);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: rocket unique_rocket_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT unique_rocket_name UNIQUE (name);


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

