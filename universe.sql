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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text
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
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
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
    distance_from_earth integer,
    age_in_millions_of_years integer,
    radius numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_planet (
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    star_planet_id character varying NOT NULL,
    name character varying
);


ALTER TABLE public.star_planet OWNER TO freecodecamp;

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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Alpha Centauri', 4, 4850, 'Closest star system to Solar System');
INSERT INTO public.galaxy VALUES (2, 'Polaris', 443, 70, 'Brightest star in the Ursa Minor constelation');
INSERT INTO public.galaxy VALUES (3, 'Sirius', 8, 250, 'Brightes star of the Canis Major Constelation');
INSERT INTO public.galaxy VALUES (4, 'Betelgeuse', 642, 9, 'Red Supergiant in the Orion constelation');
INSERT INTO public.galaxy VALUES (5, 'Vega', 25, 455, 'Brightest star in the Lyra constalation');
INSERT INTO public.galaxy VALUES (6, 'Antares', 550, 12, 'Red supergiant star in the constallation Scorpius');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Proxima b-I', 4, 4500, 'First moon orbiting Proxima b', 1);
INSERT INTO public.moon VALUES (2, 'Proxima b-II', 4, 4500, 'Second moon orbiting Proxima b', 1);
INSERT INTO public.moon VALUES (3, 'Proxima c-I', 4, 4600, 'First moon orbiting Proxima c', 2);
INSERT INTO public.moon VALUES (4, 'Proxima c-II', 4, 4600, 'Second moon orbiting Proxima c', 2);
INSERT INTO public.moon VALUES (5, 'Polaris Ab-I', 443, 60, 'Large icy moon orbiting Polaris Ab', 3);
INSERT INTO public.moon VALUES (6, 'Polaris Ab-II', 443, 60, 'Small rocky moon orbiting Polaris Ab', 3);
INSERT INTO public.moon VALUES (7, 'Polaris Bb-I', 443, 65, 'Distant moon orbiting Polaris Bb', 4);
INSERT INTO public.moon VALUES (8, 'Polaris Bb-II', 443, 65, 'Inner moon orbiting Polaris Bb', 4);
INSERT INTO public.moon VALUES (9, 'Sirius b-I', 8, 200, 'First moon orbiting Sirius b', 5);
INSERT INTO public.moon VALUES (10, 'Sirius b-II', 8, 200, 'Second moon orbiting Sirius b', 5);
INSERT INTO public.moon VALUES (11, 'Sirius c-I', 8, 220, 'First moon orbiting Sirius c', 6);
INSERT INTO public.moon VALUES (12, 'Sirius c-II', 8, 220, 'Second moon orbiting Sirius c', 6);
INSERT INTO public.moon VALUES (13, 'Betelgeuse b-I', 642, 8, 'Large gas giant moon orbiting Betelgeuse b', 7);
INSERT INTO public.moon VALUES (14, 'Betelgeuse b-II', 642, 8, 'Rocky moon orbiting Betelgeuse b', 7);
INSERT INTO public.moon VALUES (15, 'Betelgeuse c-I', 642, 9, 'Small moon orbiting Betelgeuse c', 8);
INSERT INTO public.moon VALUES (16, 'Betelgeuse c-II', 642, 9, 'Moon orbiting Betelgeuse c', 8);
INSERT INTO public.moon VALUES (17, 'Vega b-I', 25, 400, 'Moon orbiting Vega b', 9);
INSERT INTO public.moon VALUES (18, 'Vega b-II', 25, 400, 'Second moon orbiting Vega b', 9);
INSERT INTO public.moon VALUES (19, 'Vega c-I', 25, 420, 'Moon orbiting Vega c', 10);
INSERT INTO public.moon VALUES (20, 'Vega c-II', 25, 420, 'Moon orbiting Vega c', 10);
INSERT INTO public.moon VALUES (21, 'Antares b-I', 550, 10, 'Large moon orbiting Antares b', 11);
INSERT INTO public.moon VALUES (22, 'Antares b-II', 550, 10, 'Second moon orbiting Antares b', 11);
INSERT INTO public.moon VALUES (23, 'Antares c-I', 550, 11, 'Moon orbiting Antares c', 12);
INSERT INTO public.moon VALUES (24, 'Antares c-II', 550, 11, 'Second moon orbiting Antares c', 12);
INSERT INTO public.moon VALUES (25, 'Proxima b-III', 4, 4500, 'Third moon orbiting Proxima b', 1);
INSERT INTO public.moon VALUES (26, 'Proxima c-III', 4, 4600, 'Third moon orbiting Proxima c', 2);
INSERT INTO public.moon VALUES (27, 'Sirius b-III', 8, 200, 'Third moon orbiting Sirius b', 5);
INSERT INTO public.moon VALUES (28, 'Betelgeuse b-III', 642, 8, 'Third moon orbiting Betelgeuse b', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima b', 4, 4850, 0.95, 'Potentially habitable exoplanet orbiting Proxima Centauri', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Proxima c', 4, 4850, 1.15, 'Super-Earth orbiting Proxima Centauri', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Polaris Ab', 443, 70, 1.10, 'Gas giant in the Polaris system', false, true, 2);
INSERT INTO public.planet VALUES (4, 'Polaris Bb', 443, 70, 0.85, 'Icy planet in the Polaris system', false, true, 2);
INSERT INTO public.planet VALUES (5, 'Sirius b', 8, 250, 1.1, 'Exoplanet orbiting Sirius A', false, true, 3);
INSERT INTO public.planet VALUES (6, 'Sirius c', 8, 250, 1.05, 'Large rocky planet orbiting Sirius A', false, true, 3);
INSERT INTO public.planet VALUES (7, 'Betelgeuse b', 642, 9, 1.2, 'Massive gas giant orbiting Betelgeuse A', false, true, 4);
INSERT INTO public.planet VALUES (8, 'Betelgeuse c', 642, 9, 0.9, 'Distant rocky planet orbiting Betelgeuse A', false, true, 4);
INSERT INTO public.planet VALUES (9, 'Vega b', 25, 455, 0.95, 'Rocky planet orbiting Vega A', false, true, 5);
INSERT INTO public.planet VALUES (10, 'Vega c', 25, 455, 1.05, 'Potentially habitable exoplanet orbiting Vega A', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Antares b', 550, 12, 1.3, 'Giant gas planet orbiting Antares A', false, true, 6);
INSERT INTO public.planet VALUES (12, 'Antares c', 550, 12, 1.0, 'Rocky planet orbiting Antares A', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4, 4850, 'Closest known star to the Sun', 1);
INSERT INTO public.star VALUES (2, 'Polaris A', 443, 70, 'Supergiant star in the Polaris system', 2);
INSERT INTO public.star VALUES (3, 'Sirius A', 8, 250, 'Brightest star in the night sky', 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse A', 642, 9, 'Red supergiant star nearing the end of its life', 4);
INSERT INTO public.star VALUES (5, 'Vega A', 25, 455, 'Brightest star in the Lyra constellation', 5);
INSERT INTO public.star VALUES (6, 'Antares A', 550, 12, 'Red supergiant star in the Scorpius constellation', 6);


--
-- Data for Name: star_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_planet VALUES (1, 1, '1001', 'Proxima Prime');
INSERT INTO public.star_planet VALUES (3, 5, '1002', 'Sirius Terra');
INSERT INTO public.star_planet VALUES (4, 7, '1003', 'Betelgeuse Haven');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star_planet star_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT star_planet_pkey PRIMARY KEY (star_planet_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star_planet unique_star_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT unique_star_planet_name UNIQUE (star_planet_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star_planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star_planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

