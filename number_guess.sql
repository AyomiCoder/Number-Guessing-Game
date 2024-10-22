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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer,
    guesses integer NOT NULL,
    secret_number integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 13, 128);
INSERT INTO public.games VALUES (2, 2, 987, 986);
INSERT INTO public.games VALUES (3, 3, 323, 322);
INSERT INTO public.games VALUES (4, 4, 479, 478);
INSERT INTO public.games VALUES (5, 5, 298, 297);
INSERT INTO public.games VALUES (6, 6, 7, 84);
INSERT INTO public.games VALUES (7, 7, 266, 265);
INSERT INTO public.games VALUES (8, 7, 781, 780);
INSERT INTO public.games VALUES (9, 8, 863, 862);
INSERT INTO public.games VALUES (10, 8, 743, 742);
INSERT INTO public.games VALUES (11, 7, 114, 111);
INSERT INTO public.games VALUES (12, 7, 887, 885);
INSERT INTO public.games VALUES (13, 7, 668, 667);
INSERT INTO public.games VALUES (14, 6, 19, 943);
INSERT INTO public.games VALUES (15, 9, 417, 416);
INSERT INTO public.games VALUES (16, 9, 134, 133);
INSERT INTO public.games VALUES (17, 10, 706, 705);
INSERT INTO public.games VALUES (18, 10, 554, 553);
INSERT INTO public.games VALUES (19, 9, 223, 220);
INSERT INTO public.games VALUES (20, 9, 930, 928);
INSERT INTO public.games VALUES (21, 9, 196, 195);
INSERT INTO public.games VALUES (22, 11, 680, 679);
INSERT INTO public.games VALUES (23, 11, 286, 285);
INSERT INTO public.games VALUES (24, 12, 138, 137);
INSERT INTO public.games VALUES (25, 12, 485, 484);
INSERT INTO public.games VALUES (26, 11, 283, 280);
INSERT INTO public.games VALUES (27, 11, 380, 378);
INSERT INTO public.games VALUES (28, 11, 378, 377);
INSERT INTO public.games VALUES (29, 13, 12, 11);
INSERT INTO public.games VALUES (30, 13, 203, 202);
INSERT INTO public.games VALUES (31, 14, 166, 165);
INSERT INTO public.games VALUES (32, 14, 733, 732);
INSERT INTO public.games VALUES (33, 13, 812, 809);
INSERT INTO public.games VALUES (34, 13, 281, 279);
INSERT INTO public.games VALUES (35, 13, 28, 27);
INSERT INTO public.games VALUES (36, 15, 480, 479);
INSERT INTO public.games VALUES (37, 15, 677, 676);
INSERT INTO public.games VALUES (38, 16, 715, 714);
INSERT INTO public.games VALUES (39, 16, 684, 683);
INSERT INTO public.games VALUES (40, 15, 576, 573);
INSERT INTO public.games VALUES (41, 15, 504, 502);
INSERT INTO public.games VALUES (42, 15, 613, 612);
INSERT INTO public.games VALUES (43, 17, 62, 61);
INSERT INTO public.games VALUES (44, 17, 754, 753);
INSERT INTO public.games VALUES (45, 18, 522, 521);
INSERT INTO public.games VALUES (46, 18, 649, 648);
INSERT INTO public.games VALUES (47, 17, 935, 932);
INSERT INTO public.games VALUES (48, 17, 200, 198);
INSERT INTO public.games VALUES (49, 17, 541, 540);
INSERT INTO public.games VALUES (50, 6, 17, 385);
INSERT INTO public.games VALUES (51, 19, 398, 397);
INSERT INTO public.games VALUES (52, 19, 404, 403);
INSERT INTO public.games VALUES (53, 20, 387, 386);
INSERT INTO public.games VALUES (54, 20, 157, 156);
INSERT INTO public.games VALUES (55, 19, 934, 931);
INSERT INTO public.games VALUES (56, 19, 947, 945);
INSERT INTO public.games VALUES (57, 19, 446, 445);
INSERT INTO public.games VALUES (58, 21, 13, 64);
INSERT INTO public.games VALUES (59, 22, 119, 118);
INSERT INTO public.games VALUES (60, 22, 923, 922);
INSERT INTO public.games VALUES (61, 23, 801, 800);
INSERT INTO public.games VALUES (62, 23, 764, 763);
INSERT INTO public.games VALUES (63, 22, 462, 459);
INSERT INTO public.games VALUES (64, 22, 991, 989);
INSERT INTO public.games VALUES (65, 22, 682, 681);
INSERT INTO public.games VALUES (66, 24, 90, 89);
INSERT INTO public.games VALUES (67, 24, 943, 942);
INSERT INTO public.games VALUES (68, 25, 533, 532);
INSERT INTO public.games VALUES (69, 25, 295, 294);
INSERT INTO public.games VALUES (70, 24, 252, 249);
INSERT INTO public.games VALUES (71, 24, 983, 981);
INSERT INTO public.games VALUES (72, 24, 633, 632);
INSERT INTO public.games VALUES (73, 26, 345, 344);
INSERT INTO public.games VALUES (74, 26, 320, 319);
INSERT INTO public.games VALUES (75, 27, 856, 855);
INSERT INTO public.games VALUES (76, 27, 645, 644);
INSERT INTO public.games VALUES (77, 26, 783, 780);
INSERT INTO public.games VALUES (78, 26, 276, 274);
INSERT INTO public.games VALUES (79, 26, 34, 33);
INSERT INTO public.games VALUES (80, 28, 889, 888);
INSERT INTO public.games VALUES (81, 28, 847, 846);
INSERT INTO public.games VALUES (82, 29, 688, 687);
INSERT INTO public.games VALUES (83, 29, 175, 174);
INSERT INTO public.games VALUES (84, 28, 165, 162);
INSERT INTO public.games VALUES (85, 28, 520, 518);
INSERT INTO public.games VALUES (86, 28, 531, 530);
INSERT INTO public.games VALUES (87, 30, 357, 356);
INSERT INTO public.games VALUES (88, 30, 819, 818);
INSERT INTO public.games VALUES (89, 31, 754, 753);
INSERT INTO public.games VALUES (90, 31, 822, 821);
INSERT INTO public.games VALUES (91, 30, 640, 637);
INSERT INTO public.games VALUES (92, 30, 907, 905);
INSERT INTO public.games VALUES (93, 30, 962, 961);
INSERT INTO public.games VALUES (94, 32, 922, 921);
INSERT INTO public.games VALUES (95, 32, 294, 293);
INSERT INTO public.games VALUES (96, 33, 42, 41);
INSERT INTO public.games VALUES (97, 33, 657, 656);
INSERT INTO public.games VALUES (98, 32, 771, 768);
INSERT INTO public.games VALUES (99, 32, 147, 145);
INSERT INTO public.games VALUES (100, 32, 19, 18);
INSERT INTO public.games VALUES (101, 34, 163, 162);
INSERT INTO public.games VALUES (102, 34, 260, 259);
INSERT INTO public.games VALUES (103, 35, 388, 387);
INSERT INTO public.games VALUES (104, 35, 174, 173);
INSERT INTO public.games VALUES (105, 34, 838, 835);
INSERT INTO public.games VALUES (106, 34, 711, 709);
INSERT INTO public.games VALUES (107, 34, 879, 878);
INSERT INTO public.games VALUES (108, 36, 793, 792);
INSERT INTO public.games VALUES (109, 36, 204, 203);
INSERT INTO public.games VALUES (110, 37, 503, 502);
INSERT INTO public.games VALUES (111, 37, 102, 101);
INSERT INTO public.games VALUES (112, 36, 832, 829);
INSERT INTO public.games VALUES (113, 36, 4, 2);
INSERT INTO public.games VALUES (114, 36, 878, 877);
INSERT INTO public.games VALUES (115, 38, 64, 63);
INSERT INTO public.games VALUES (116, 38, 669, 668);
INSERT INTO public.games VALUES (117, 39, 457, 456);
INSERT INTO public.games VALUES (118, 39, 659, 658);
INSERT INTO public.games VALUES (119, 38, 752, 749);
INSERT INTO public.games VALUES (120, 38, 388, 386);
INSERT INTO public.games VALUES (121, 38, 54, 53);
INSERT INTO public.games VALUES (122, 40, 701, 700);
INSERT INTO public.games VALUES (123, 40, 733, 732);
INSERT INTO public.games VALUES (124, 41, 433, 432);
INSERT INTO public.games VALUES (125, 41, 3, 2);
INSERT INTO public.games VALUES (126, 40, 11, 8);
INSERT INTO public.games VALUES (127, 40, 707, 705);
INSERT INTO public.games VALUES (128, 40, 909, 908);
INSERT INTO public.games VALUES (129, 42, 525, 524);
INSERT INTO public.games VALUES (130, 42, 873, 872);
INSERT INTO public.games VALUES (131, 43, 780, 779);
INSERT INTO public.games VALUES (132, 43, 946, 945);
INSERT INTO public.games VALUES (133, 42, 229, 226);
INSERT INTO public.games VALUES (134, 42, 507, 505);
INSERT INTO public.games VALUES (135, 42, 935, 934);
INSERT INTO public.games VALUES (136, 44, 518, 517);
INSERT INTO public.games VALUES (137, 44, 157, 156);
INSERT INTO public.games VALUES (138, 45, 357, 356);
INSERT INTO public.games VALUES (139, 45, 135, 134);
INSERT INTO public.games VALUES (140, 44, 562, 559);
INSERT INTO public.games VALUES (141, 44, 776, 774);
INSERT INTO public.games VALUES (142, 44, 511, 510);
INSERT INTO public.games VALUES (143, 46, 319, 318);
INSERT INTO public.games VALUES (144, 46, 62, 61);
INSERT INTO public.games VALUES (145, 47, 399, 398);
INSERT INTO public.games VALUES (146, 47, 67, 66);
INSERT INTO public.games VALUES (147, 46, 717, 714);
INSERT INTO public.games VALUES (148, 46, 935, 933);
INSERT INTO public.games VALUES (149, 46, 728, 727);
INSERT INTO public.games VALUES (150, 48, 249, 248);
INSERT INTO public.games VALUES (151, 48, 846, 845);
INSERT INTO public.games VALUES (152, 49, 515, 514);
INSERT INTO public.games VALUES (153, 49, 832, 831);
INSERT INTO public.games VALUES (154, 48, 556, 553);
INSERT INTO public.games VALUES (155, 48, 331, 329);
INSERT INTO public.games VALUES (156, 48, 78, 77);
INSERT INTO public.games VALUES (157, 50, 330, 329);
INSERT INTO public.games VALUES (158, 50, 825, 824);
INSERT INTO public.games VALUES (159, 51, 768, 767);
INSERT INTO public.games VALUES (160, 51, 445, 444);
INSERT INTO public.games VALUES (161, 50, 726, 723);
INSERT INTO public.games VALUES (162, 50, 746, 744);
INSERT INTO public.games VALUES (163, 50, 829, 828);
INSERT INTO public.games VALUES (164, 52, 550, 549);
INSERT INTO public.games VALUES (165, 52, 780, 779);
INSERT INTO public.games VALUES (166, 53, 104, 103);
INSERT INTO public.games VALUES (167, 53, 86, 85);
INSERT INTO public.games VALUES (168, 52, 122, 119);
INSERT INTO public.games VALUES (169, 52, 275, 273);
INSERT INTO public.games VALUES (170, 52, 631, 630);
INSERT INTO public.games VALUES (171, 54, 752, 751);
INSERT INTO public.games VALUES (172, 54, 969, 968);
INSERT INTO public.games VALUES (173, 55, 348, 347);
INSERT INTO public.games VALUES (174, 55, 218, 217);
INSERT INTO public.games VALUES (175, 54, 255, 252);
INSERT INTO public.games VALUES (176, 54, 406, 404);
INSERT INTO public.games VALUES (177, 54, 89, 88);
INSERT INTO public.games VALUES (178, 56, 940, 939);
INSERT INTO public.games VALUES (179, 56, 998, 997);
INSERT INTO public.games VALUES (180, 57, 903, 902);
INSERT INTO public.games VALUES (181, 57, 266, 265);
INSERT INTO public.games VALUES (182, 56, 332, 329);
INSERT INTO public.games VALUES (183, 56, 523, 521);
INSERT INTO public.games VALUES (184, 56, 459, 458);
INSERT INTO public.games VALUES (185, 58, 646, 645);
INSERT INTO public.games VALUES (186, 58, 544, 543);
INSERT INTO public.games VALUES (187, 59, 591, 590);
INSERT INTO public.games VALUES (188, 59, 855, 854);
INSERT INTO public.games VALUES (189, 58, 772, 769);
INSERT INTO public.games VALUES (190, 58, 76, 74);
INSERT INTO public.games VALUES (191, 58, 328, 327);
INSERT INTO public.games VALUES (192, 60, 528, 527);
INSERT INTO public.games VALUES (193, 60, 993, 992);
INSERT INTO public.games VALUES (194, 61, 278, 277);
INSERT INTO public.games VALUES (195, 61, 869, 868);
INSERT INTO public.games VALUES (196, 60, 274, 271);
INSERT INTO public.games VALUES (197, 60, 485, 483);
INSERT INTO public.games VALUES (198, 60, 115, 114);
INSERT INTO public.games VALUES (199, 62, 571, 570);
INSERT INTO public.games VALUES (200, 62, 996, 995);
INSERT INTO public.games VALUES (201, 63, 491, 490);
INSERT INTO public.games VALUES (202, 63, 71, 70);
INSERT INTO public.games VALUES (203, 62, 225, 222);
INSERT INTO public.games VALUES (204, 62, 303, 301);
INSERT INTO public.games VALUES (205, 62, 189, 188);
INSERT INTO public.games VALUES (206, 64, 974, 973);
INSERT INTO public.games VALUES (207, 64, 934, 933);
INSERT INTO public.games VALUES (208, 65, 967, 966);
INSERT INTO public.games VALUES (209, 65, 637, 636);
INSERT INTO public.games VALUES (210, 64, 635, 632);
INSERT INTO public.games VALUES (211, 64, 820, 818);
INSERT INTO public.games VALUES (212, 64, 159, 158);
INSERT INTO public.games VALUES (213, 66, 880, 879);
INSERT INTO public.games VALUES (214, 66, 428, 427);
INSERT INTO public.games VALUES (215, 67, 599, 598);
INSERT INTO public.games VALUES (216, 67, 1001, 1000);
INSERT INTO public.games VALUES (217, 66, 69, 66);
INSERT INTO public.games VALUES (218, 66, 447, 445);
INSERT INTO public.games VALUES (219, 66, 139, 138);
INSERT INTO public.games VALUES (220, 68, 282, 281);
INSERT INTO public.games VALUES (221, 68, 122, 121);
INSERT INTO public.games VALUES (222, 69, 186, 185);
INSERT INTO public.games VALUES (223, 69, 277, 276);
INSERT INTO public.games VALUES (224, 68, 338, 335);
INSERT INTO public.games VALUES (225, 68, 129, 127);
INSERT INTO public.games VALUES (226, 68, 147, 146);
INSERT INTO public.games VALUES (227, 70, 688, 687);
INSERT INTO public.games VALUES (228, 70, 395, 394);
INSERT INTO public.games VALUES (229, 71, 505, 504);
INSERT INTO public.games VALUES (230, 71, 519, 518);
INSERT INTO public.games VALUES (231, 70, 887, 884);
INSERT INTO public.games VALUES (232, 70, 154, 152);
INSERT INTO public.games VALUES (233, 70, 277, 276);
INSERT INTO public.games VALUES (234, 72, 50, 49);
INSERT INTO public.games VALUES (235, 72, 3, 2);
INSERT INTO public.games VALUES (236, 73, 943, 942);
INSERT INTO public.games VALUES (237, 73, 188, 187);
INSERT INTO public.games VALUES (238, 72, 357, 354);
INSERT INTO public.games VALUES (239, 72, 348, 346);
INSERT INTO public.games VALUES (240, 72, 323, 322);
INSERT INTO public.games VALUES (241, 74, 882, 881);
INSERT INTO public.games VALUES (242, 74, 655, 654);
INSERT INTO public.games VALUES (243, 75, 148, 147);
INSERT INTO public.games VALUES (244, 75, 285, 284);
INSERT INTO public.games VALUES (245, 74, 341, 338);
INSERT INTO public.games VALUES (246, 74, 718, 716);
INSERT INTO public.games VALUES (247, 74, 226, 225);
INSERT INTO public.games VALUES (248, 76, 399, 398);
INSERT INTO public.games VALUES (249, 76, 172, 171);
INSERT INTO public.games VALUES (250, 77, 171, 170);
INSERT INTO public.games VALUES (251, 77, 371, 370);
INSERT INTO public.games VALUES (252, 76, 170, 167);
INSERT INTO public.games VALUES (253, 76, 753, 752);
INSERT INTO public.games VALUES (254, 76, 166, 165);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'a', 1, 13);
INSERT INTO public.users VALUES (2, 'user_1729556229301', 1, 987);
INSERT INTO public.users VALUES (56, 'user_1729557560731', 5, 332);
INSERT INTO public.users VALUES (3, 'user_1729556229300', 1, 323);
INSERT INTO public.users VALUES (4, 'user_1729556347721', 1, 479);
INSERT INTO public.users VALUES (5, 'user_1729556347720', 1, 298);
INSERT INTO public.users VALUES (44, 'user_1729557507168', 5, 157);
INSERT INTO public.users VALUES (18, 'user_1729557262101', 2, 649);
INSERT INTO public.users VALUES (66, 'user_1729557601380', 5, 69);
INSERT INTO public.users VALUES (31, 'user_1729557481785', 2, 822);
INSERT INTO public.users VALUES (17, 'user_1729557262102', 5, 200);
INSERT INTO public.users VALUES (6, 'T', 3, 7);
INSERT INTO public.users VALUES (8, 'user_1729556592462', 2, 743);
INSERT INTO public.users VALUES (7, 'user_1729556592463', 5, 114);
INSERT INTO public.users VALUES (30, 'user_1729557481786', 5, 640);
INSERT INTO public.users VALUES (20, 'user_1729557348748', 2, 157);
INSERT INTO public.users VALUES (47, 'user_1729557509213', 2, 67);
INSERT INTO public.users VALUES (10, 'user_1729556903188', 2, 554);
INSERT INTO public.users VALUES (19, 'user_1729557348749', 5, 404);
INSERT INTO public.users VALUES (9, 'user_1729556903189', 5, 134);
INSERT INTO public.users VALUES (21, 'er', 1, NULL);
INSERT INTO public.users VALUES (59, 'user_1729557586867', 2, 855);
INSERT INTO public.users VALUES (12, 'user_1729556939340', 2, 138);
INSERT INTO public.users VALUES (33, 'user_1729557484369', 2, 657);
INSERT INTO public.users VALUES (46, 'user_1729557509214', 5, 62);
INSERT INTO public.users VALUES (23, 'user_1729557411247', 2, 764);
INSERT INTO public.users VALUES (11, 'user_1729556939341', 5, 283);
INSERT INTO public.users VALUES (22, 'user_1729557411248', 5, 462);
INSERT INTO public.users VALUES (14, 'user_1729557072212', 2, 166);
INSERT INTO public.users VALUES (32, 'user_1729557484370', 5, 19);
INSERT INTO public.users VALUES (13, 'user_1729557072213', 5, 12);
INSERT INTO public.users VALUES (77, 'user_1729557698532', 2, 171);
INSERT INTO public.users VALUES (58, 'user_1729557586868', 5, 76);
INSERT INTO public.users VALUES (25, 'user_1729557442600', 2, 295);
INSERT INTO public.users VALUES (16, 'user_1729557095753', 2, 684);
INSERT INTO public.users VALUES (49, 'user_1729557511822', 2, 832);
INSERT INTO public.users VALUES (15, 'user_1729557095754', 5, 480);
INSERT INTO public.users VALUES (24, 'user_1729557442601', 5, 252);
INSERT INTO public.users VALUES (35, 'user_1729557487120', 2, 174);
INSERT INTO public.users VALUES (69, 'user_1729557604746', 2, 277);
INSERT INTO public.users VALUES (34, 'user_1729557487121', 5, 260);
INSERT INTO public.users VALUES (27, 'user_1729557452642', 2, 645);
INSERT INTO public.users VALUES (68, 'user_1729557604747', 5, 122);
INSERT INTO public.users VALUES (26, 'user_1729557452643', 5, 34);
INSERT INTO public.users VALUES (48, 'user_1729557511823', 5, 78);
INSERT INTO public.users VALUES (37, 'user_1729557491045', 2, 102);
INSERT INTO public.users VALUES (61, 'user_1729557592753', 2, 869);
INSERT INTO public.users VALUES (29, 'user_1729557465964', 2, 175);
INSERT INTO public.users VALUES (36, 'user_1729557491046', 5, 4);
INSERT INTO public.users VALUES (28, 'user_1729557465965', 5, 165);
INSERT INTO public.users VALUES (76, 'user_1729557698533', 5, 166);
INSERT INTO public.users VALUES (51, 'user_1729557513937', 2, 445);
INSERT INTO public.users VALUES (39, 'user_1729557496247', 2, 659);
INSERT INTO public.users VALUES (60, 'user_1729557592754', 5, 115);
INSERT INTO public.users VALUES (50, 'user_1729557513938', 5, 726);
INSERT INTO public.users VALUES (38, 'user_1729557496248', 5, 54);
INSERT INTO public.users VALUES (71, 'user_1729557612238', 2, 519);
INSERT INTO public.users VALUES (41, 'user_1729557501725', 2, 3);
INSERT INTO public.users VALUES (53, 'user_1729557525309', 2, 86);
INSERT INTO public.users VALUES (40, 'user_1729557501726', 5, 11);
INSERT INTO public.users VALUES (63, 'user_1729557595023', 2, 71);
INSERT INTO public.users VALUES (52, 'user_1729557525310', 5, 122);
INSERT INTO public.users VALUES (70, 'user_1729557612239', 5, 154);
INSERT INTO public.users VALUES (43, 'user_1729557504970', 2, 946);
INSERT INTO public.users VALUES (42, 'user_1729557504971', 5, 229);
INSERT INTO public.users VALUES (62, 'user_1729557595024', 5, 189);
INSERT INTO public.users VALUES (55, 'user_1729557532429', 2, 218);
INSERT INTO public.users VALUES (45, 'user_1729557507167', 2, 135);
INSERT INTO public.users VALUES (54, 'user_1729557532430', 5, 89);
INSERT INTO public.users VALUES (65, 'user_1729557598006', 2, 637);
INSERT INTO public.users VALUES (73, 'user_1729557616594', 2, 188);
INSERT INTO public.users VALUES (57, 'user_1729557560730', 2, 266);
INSERT INTO public.users VALUES (72, 'user_1729557616595', 5, 3);
INSERT INTO public.users VALUES (64, 'user_1729557598007', 5, 159);
INSERT INTO public.users VALUES (67, 'user_1729557601379', 2, 1001);
INSERT INTO public.users VALUES (75, 'user_1729557620098', 2, 285);
INSERT INTO public.users VALUES (74, 'user_1729557620099', 5, 226);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 254, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 77, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

