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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(255) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 18, 1, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (2, 3, 2, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 1, 2, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 18, 3, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 1, 4, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 2, 5, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 3, 6, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 18, 7, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 2, 8, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 5, 9, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 3, 10, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 6, 11, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 1, 12, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 4, 13, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 7, 14, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 18, 15, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 24, 15, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (18, 16, 6, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 15, 16, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 24, 6, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 16, 17, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 15, 3, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 6, 8, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 24, 18, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 6, 19, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 8, 7, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 18, 20, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 24, 21, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 16, 11, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 17, 22, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 15, 9, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 3, 23, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('Croatia', 1);
INSERT INTO public.teams VALUES ('England', 2);
INSERT INTO public.teams VALUES ('Belgium', 3);
INSERT INTO public.teams VALUES ('Russia', 4);
INSERT INTO public.teams VALUES ('Sweden', 5);
INSERT INTO public.teams VALUES ('Brazil', 6);
INSERT INTO public.teams VALUES ('Uruguay', 7);
INSERT INTO public.teams VALUES ('Colombia', 8);
INSERT INTO public.teams VALUES ('Switzerland', 9);
INSERT INTO public.teams VALUES ('Japan', 10);
INSERT INTO public.teams VALUES ('Mexico', 11);
INSERT INTO public.teams VALUES ('Denmark', 12);
INSERT INTO public.teams VALUES ('Spain', 13);
INSERT INTO public.teams VALUES ('Portugal', 14);
INSERT INTO public.teams VALUES ('Argentina', 15);
INSERT INTO public.teams VALUES ('Netherlands', 16);
INSERT INTO public.teams VALUES ('Costa Rica', 17);
INSERT INTO public.teams VALUES ('France', 18);
INSERT INTO public.teams VALUES ('Chile', 19);
INSERT INTO public.teams VALUES ('Nigeria', 20);
INSERT INTO public.teams VALUES ('Algeria', 21);
INSERT INTO public.teams VALUES ('Greece', 22);
INSERT INTO public.teams VALUES ('United States', 23);
INSERT INTO public.teams VALUES ('Germany', 24);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

