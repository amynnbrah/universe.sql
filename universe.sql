--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: dark; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dark (
    name character varying(255),
    dark_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.dark OWNER TO freecodecamp;

--
-- Name: dark_dark_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dark_dark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dark_dark_id_seq OWNER TO freecodecamp;

--
-- Name: dark_dark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dark_dark_id_seq OWNED BY public.dark.dark_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(255),
    galaxy_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    age integer,
    series numeric NOT NULL,
    connection numeric NOT NULL,
    description text,
    reference integer NOT NULL
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
-- Name: galaxy_reference_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_reference_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_reference_seq OWNER TO freecodecamp;

--
-- Name: galaxy_reference_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_reference_seq OWNED BY public.galaxy.reference;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(255),
    moon_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    age integer,
    series numeric NOT NULL,
    connection numeric NOT NULL,
    description text,
    moon_connection integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_galaxy_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(255),
    planet_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    age integer,
    series numeric NOT NULL,
    planet_connection integer NOT NULL,
    description text,
    moon_connection integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_galaxy_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_moon_connection_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_moon_connection_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_moon_connection_seq OWNER TO freecodecamp;

--
-- Name: planet_moon_connection_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_moon_connection_seq OWNED BY public.planet.moon_connection;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(255),
    star_id integer NOT NULL,
    has_life boolean,
    distance_from_earth integer,
    age integer,
    series numeric NOT NULL,
    connection numeric NOT NULL,
    description text,
    reference integer,
    planet_connection integer NOT NULL
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

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.star_id;


--
-- Name: star_planet_connection_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_connection_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_connection_seq OWNER TO freecodecamp;

--
-- Name: star_planet_connection_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_connection_seq OWNED BY public.star.planet_connection;


--
-- Name: dark dark_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark ALTER COLUMN dark_id SET DEFAULT nextval('public.dark_dark_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy reference; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN reference SET DEFAULT nextval('public.galaxy_reference_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_galaxy_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_galaxy_id_seq'::regclass);


--
-- Name: planet moon_connection; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN moon_connection SET DEFAULT nextval('public.planet_moon_connection_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star planet_connection; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN planet_connection SET DEFAULT nextval('public.star_planet_connection_seq'::regclass);


--
-- Data for Name: dark; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dark VALUES ('bad', 1, true, 350, 200);
INSERT INTO public.dark VALUES ('bad', 2, true, 350, 200);
INSERT INTO public.dark VALUES ('bad', 3, true, 350, 200);
INSERT INTO public.dark VALUES ('now', 4, false, 450, 210);
INSERT INTO public.dark VALUES ('now', 5, false, 450, 210);
INSERT INTO public.dark VALUES ('now', 6, false, 450, 210);
INSERT INTO public.dark VALUES ('now', 7, false, 450, 210);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('bad', 1, true, 350, 200, 65, 5, 'great', 1);
INSERT INTO public.galaxy VALUES ('spoon', 2, true, 350, 200, 65, 5, 'there', 2);
INSERT INTO public.galaxy VALUES ('loke', 3, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.galaxy VALUES ('bad', 4, false, 330, 200, 85, 5, 'great', 4);
INSERT INTO public.galaxy VALUES ('bad', 5, false, 350, 230, 65, 5, 'no', 5);
INSERT INTO public.galaxy VALUES ('why', 6, true, 350, 200, 65, 5, 'bottle', 6);
INSERT INTO public.galaxy VALUES ('bad', 7, false, 350, 200, 5, 25, 'ok', 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('bad', 1, true, 350, 200, 65, 5, 'great', 3);
INSERT INTO public.moon VALUES ('spoon', 2, true, 350, 200, 65, 5, 'there', 3);
INSERT INTO public.moon VALUES ('loke', 3, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.moon VALUES ('bad', 4, false, 330, 200, 85, 5, 'great', 3);
INSERT INTO public.moon VALUES ('why', 6, true, 350, 200, 65, 5, 'bottle', 3);
INSERT INTO public.moon VALUES ('bad', 7, false, 350, 200, 5, 25, 'ok', 3);
INSERT INTO public.moon VALUES ('spoon', 8, true, 350, 200, 65, 5, 'there', 3);
INSERT INTO public.moon VALUES ('loke', 9, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.moon VALUES ('bad', 10, false, 330, 200, 85, 5, 'great', 3);
INSERT INTO public.moon VALUES ('why', 12, true, 350, 200, 65, 5, 'bottle', 3);
INSERT INTO public.moon VALUES ('bad', 13, false, 350, 200, 5, 25, 'ok', 3);
INSERT INTO public.moon VALUES ('spoon', 14, true, 350, 200, 65, 5, 'there', 3);
INSERT INTO public.moon VALUES ('loke', 15, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.moon VALUES ('bad', 16, false, 330, 200, 85, 5, 'great', 3);
INSERT INTO public.moon VALUES ('why', 18, true, 350, 200, 65, 5, 'bottle', 3);
INSERT INTO public.moon VALUES ('bad', 19, false, 350, 200, 5, 25, 'ok', 3);
INSERT INTO public.moon VALUES ('loke', 20, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.moon VALUES ('bad', 21, false, 330, 200, 85, 5, 'great', 3);
INSERT INTO public.moon VALUES ('why', 23, true, 350, 200, 65, 5, 'bottle', 3);
INSERT INTO public.moon VALUES ('bad', 24, false, 350, 200, 5, 25, 'ok', 3);
INSERT INTO public.moon VALUES ('loke', 25, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.moon VALUES ('bad', 26, false, 330, 200, 85, 5, 'great', 3);
INSERT INTO public.moon VALUES ('why', 28, true, 350, 200, 65, 5, 'bottle', 3);
INSERT INTO public.moon VALUES ('bad', 29, false, 350, 200, 5, 25, 'ok', 3);
INSERT INTO public.moon VALUES ('loke', 30, true, 350, 200, 65, 5, 'ad', 3);
INSERT INTO public.moon VALUES ('bad', 31, false, 330, 200, 85, 5, 'great', 3);
INSERT INTO public.moon VALUES ('why', 33, true, 350, 200, 65, 5, 'bottle', 3);
INSERT INTO public.moon VALUES ('bad', 34, false, 350, 200, 5, 25, 'ok', 3);
INSERT INTO public.moon VALUES ('bad', 5, false, 350, 230, 65, 5, 'no', 4);
INSERT INTO public.moon VALUES ('bad', 11, false, 350, 230, 65, 5, 'no', 4);
INSERT INTO public.moon VALUES ('bad', 17, false, 350, 230, 65, 5, 'no', 4);
INSERT INTO public.moon VALUES ('bad', 22, false, 350, 230, 65, 5, 'no', 4);
INSERT INTO public.moon VALUES ('bad', 27, false, 350, 230, 65, 5, 'no', 4);
INSERT INTO public.moon VALUES ('bad', 32, false, 350, 230, 65, 5, 'no', 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('bad', 1, true, 350, 200, 65, 2, 'great', 1);
INSERT INTO public.planet VALUES ('spoon', 2, true, 350, 200, 65, 2, 'there', 2);
INSERT INTO public.planet VALUES ('loke', 3, true, 350, 200, 65, 2, 'ad', 3);
INSERT INTO public.planet VALUES ('why', 6, true, 350, 200, 65, 2, 'bottle', 4);
INSERT INTO public.planet VALUES ('spoon', 8, true, 350, 200, 65, 2, 'there', 5);
INSERT INTO public.planet VALUES ('loke', 9, true, 350, 200, 65, 2, 'ad', 6);
INSERT INTO public.planet VALUES ('why', 12, true, 350, 200, 65, 2, 'bottle', 7);
INSERT INTO public.planet VALUES ('spoon', 14, true, 350, 200, 65, 2, 'there', 8);
INSERT INTO public.planet VALUES ('loke', 15, true, 350, 200, 65, 2, 'ad', 9);
INSERT INTO public.planet VALUES ('why', 18, true, 350, 200, 65, 2, 'bottle', 10);
INSERT INTO public.planet VALUES ('bad', 4, false, 330, 200, 85, 3, 'great', 11);
INSERT INTO public.planet VALUES ('bad', 10, false, 330, 200, 85, 3, 'great', 12);
INSERT INTO public.planet VALUES ('bad', 16, false, 330, 200, 85, 3, 'great', 13);
INSERT INTO public.planet VALUES ('bad', 7, false, 350, 200, 5, 4, 'ok', 14);
INSERT INTO public.planet VALUES ('bad', 13, false, 350, 200, 5, 4, 'ok', 15);
INSERT INTO public.planet VALUES ('bad', 19, false, 350, 200, 5, 4, 'ok', 16);
INSERT INTO public.planet VALUES ('bad', 5, false, 350, 230, 65, 2, 'no', 17);
INSERT INTO public.planet VALUES ('bad', 11, false, 350, 230, 65, 2, 'no', 18);
INSERT INTO public.planet VALUES ('bad', 17, false, 350, 230, 65, 2, 'no', 19);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('bad', 1, true, 350, 200, 65, 5, 'great', 2, 1);
INSERT INTO public.star VALUES ('spoon', 2, true, 350, 200, 65, 5, 'there', 2, 2);
INSERT INTO public.star VALUES ('loke', 3, true, 350, 200, 65, 5, 'ad', 2, 3);
INSERT INTO public.star VALUES ('bad', 4, false, 330, 200, 85, 5, 'great', 2, 4);
INSERT INTO public.star VALUES ('bad', 5, false, 350, 230, 65, 5, 'no', 2, 5);
INSERT INTO public.star VALUES ('why', 6, true, 350, 200, 65, 5, 'bottle', 2, 6);
INSERT INTO public.star VALUES ('bad', 7, false, 350, 200, 5, 25, 'ok', 3, 7);


--
-- Name: dark_dark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dark_dark_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: galaxy_reference_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_reference_seq', 7, true);


--
-- Name: moon_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_galaxy_id_seq', 34, true);


--
-- Name: planet_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_galaxy_id_seq', 19, true);


--
-- Name: planet_moon_connection_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_moon_connection_seq', 19, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 75, true);


--
-- Name: star_planet_connection_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_connection_seq', 7, true);


--
-- Name: dark dark_dark_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark
    ADD CONSTRAINT dark_dark_id_key UNIQUE (dark_id);


--
-- Name: dark dark_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark
    ADD CONSTRAINT dark_pkey PRIMARY KEY (dark_id);


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
-- Name: galaxy galaxy_reference_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_reference_key UNIQUE (reference);


--
-- Name: moon moon_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_key UNIQUE (planet_id);


--
-- Name: planet planet_moon_connection_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_connection_key UNIQUE (moon_connection);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_connection_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_connection_key UNIQUE (planet_connection);


--
-- Name: moon moon_moon_connection_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_connection_fkey FOREIGN KEY (moon_connection) REFERENCES public.planet(moon_connection);


--
-- Name: planet planet_planet_connection_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_connection_fkey FOREIGN KEY (planet_connection) REFERENCES public.star(planet_connection);


--
-- Name: star star_reference_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_reference_fkey FOREIGN KEY (reference) REFERENCES public.galaxy(reference);


--
-- PostgreSQL database dump complete
--

