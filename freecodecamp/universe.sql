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
-- Name: astrological_sign; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astrological_sign (
    astrological_sign_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.astrological_sign OWNER TO freecodecamp;

--
-- Name: astrological_sign_astrological_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astrological_sign_astrological_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astrological_sign_astrological_id_seq OWNER TO freecodecamp;

--
-- Name: astrological_sign_astrological_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astrological_sign_astrological_id_seq OWNED BY public.astrological_sign.astrological_sign_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(60) NOT NULL,
    galaxy_types character varying(30),
    distance_from_earth integer
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
    name character varying(30) NOT NULL,
    description character varying(60) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    planet_types character varying(30),
    distance_from_earth numeric,
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
    name character varying(30) NOT NULL,
    description character varying(30) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_id integer NOT NULL
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
-- Name: astrological_sign astrological_sign_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrological_sign ALTER COLUMN astrological_sign_id SET DEFAULT nextval('public.astrological_sign_astrological_id_seq'::regclass);


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
-- Data for Name: astrological_sign; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astrological_sign VALUES (1, 'Orion', 'Bisa menunjukkan arah barat');
INSERT INTO public.astrological_sign VALUES (2, 'Hydra', 'Berbentuk ular');
INSERT INTO public.astrological_sign VALUES (3, 'Pali', 'Berbentuk seperti layang-layang atau pari');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bima Sakti', 'Galaksi ini tempat manusia tinggal', 'Tak Beraturan', 423402402);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nama lain galaksi ini adalah Messier 31', 'Spiral', 423402402);
INSERT INTO public.galaxy VALUES (3, 'Magellan', 'Galaksi ini berada', 'Tak Beraturan', 423402402);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Nama galaksi ini messier 104', 'Sombrero', 423402402);
INSERT INTO public.galaxy VALUES (5, 'The Rose', 'Bentuknya seperti bunga mawar', 'Spiral', 423402402);
INSERT INTO public.galaxy VALUES (6, 'Sculptor', 'Disebut sebagai galaksi paling terang', 'Ellips', 423402402);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Bulan', 'Moon yang dimiliki oleh bumi', false, true, 24024, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Bulan mars yang paling besar', false, true, 24024, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Bulan mars yang berbonggol', false, true, 24024, 4);
INSERT INTO public.moon VALUES (4, 'Ganimede', 'Bulan Jupiter terbesar', false, true, 24024, 5);
INSERT INTO public.moon VALUES (5, 'Kalisto', 'Bulan Jupiter terbesar Kedua', false, true, 24024, 5);
INSERT INTO public.moon VALUES (6, 'Aku', 'Paling aktif secara vulkanis', false, true, 24024, 5);
INSERT INTO public.moon VALUES (7, 'Eropa', 'Paling aktif secara vulkanis', false, true, 24024, 5);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (9, 'Hiperion', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (10, 'Prometheus', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (11, 'Pandora', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (12, 'Janus', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (13, 'Epimeteus', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (15, 'Lapetus', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (16, 'Febe', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (17, 'Tethys', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (18, 'Teleskop', 'Paling aktif secara vulkanis', false, true, 24024, 6);
INSERT INTO public.moon VALUES (19, 'Miranda', 'Paling aktif secara vulkanis', false, true, 24024, 7);
INSERT INTO public.moon VALUES (20, 'Ariel', 'Paling aktif secara vulkanis', false, true, 24024, 7);
INSERT INTO public.moon VALUES (21, 'Payung', 'Paling aktif secara vulkanis', false, true, 24024, 7);
INSERT INTO public.moon VALUES (22, 'Titania', 'Paling aktif secara vulkanis', false, true, 24024, 7);
INSERT INTO public.moon VALUES (23, 'Oberon', 'Paling aktif secara vulkanis', false, true, 24024, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (14, 'Crypton', 'Tempat Tinggal Superman', true, false, 'Hero', 4242024, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 'Venus dikenal sebagai bintang fajar', false, false, 'terrestrial', 108200000, 1);
INSERT INTO public.planet VALUES (3, 'Bumi', 'Bumi adalah planet yang kita tinggali', true, false, 'terrestrial', 0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Mars disebut dengan planet merah', true, false, 'terrestrial', 78000000, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Jupiter merupakan planet terbesar', true, false, 'jovian', 638000000, 2);
INSERT INTO public.planet VALUES (6, 'Saturnus', 'Saturnus dikenal sebagai planet yang memiliki cincin', true, false, 'jovian', 1300000000, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Uranus memiliki sumbu rotasi sebidang dengan sumbu edarnya', true, false, 'jovian', 2700000000, 3);
INSERT INTO public.planet VALUES (8, 'Neptunus', 'Neptunus sering disebut planet kembar dengan uranus', true, false, 'jovian', 4347000000, 3);
INSERT INTO public.planet VALUES (9, 'Ceres', 'Ceres terletak pada inti tata surya', false, false, 'dwarf', 4340202042, 3);
INSERT INTO public.planet VALUES (10, 'Pluto', 'Pluto adalah planet kerdil yang sebelumnya di planet utama', false, false, 'dwarf', 53002002, 3);
INSERT INTO public.planet VALUES (11, 'Haumea', 'Haumea adalah planet berbentuk oval', false, false, 'dwarf', 53002002, 3);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Makemake berada di  wilayah benda es berbentuk donat', false, false, 'dwarf', 53002002, 4);
INSERT INTO public.planet VALUES (13, 'Eris', 'Eris resmi masuk dalam planet kerdil sejak 2005', false, false, 'dwarf', 53002002, 4);
INSERT INTO public.planet VALUES (1, 'Merkurius', 'Merkurius adalah planet terdekat dengan matahari', false, false, 'terrestrial', 57900000, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 'Paling Terang', 100200, 1);
INSERT INTO public.star VALUES (2, 'Canopus', 'Paling terang ke-2', 100200, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 'Memiliki sistem bintang ganda', 100200, 1);
INSERT INTO public.star VALUES (4, 'Arcturus', 'Artinya penjaga beruang', 100200, 2);
INSERT INTO public.star VALUES (5, 'Vega', 'Masuk dalam kelompok AOVA', 100200, 2);
INSERT INTO public.star VALUES (6, 'Capella', 'Artinya kambing kecil', 100200, 2);


--
-- Name: astrological_sign_astrological_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astrological_sign_astrological_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astrological_sign astrological_sign_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrological_sign
    ADD CONSTRAINT astrological_sign_pkey PRIMARY KEY (astrological_sign_id);


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
-- Name: moon unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: astrological_sign unique_name_astrological; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrological_sign
    ADD CONSTRAINT unique_name_astrological UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: moon mofkpl; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT mofkpl FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet plfkst; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plfkst FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star stfk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stfk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

