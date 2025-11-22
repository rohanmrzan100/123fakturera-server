--
-- PostgreSQL database dump
--

\restrict qwapBtXilpnh5WBNQZhIiQax9eMmgEVx5GKHy2SoAdqUrDgeJ5PVpb3bbByeJtD

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.7 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: products; Type: TABLE; Schema: public; Owner: avnadmin
--

CREATE TABLE public.products (
    article_no character varying(50) NOT NULL,
    product_name character varying(255) NOT NULL,
    in_price numeric(18,2),
    price numeric(18,2),
    unit character varying(100),
    in_stock numeric(18,2),
    description text
);


ALTER TABLE public.products OWNER TO avnadmin;

--
-- Name: translations; Type: TABLE; Schema: public; Owner: avnadmin
--

CREATE TABLE public.translations (
    id integer NOT NULL,
    key text NOT NULL,
    language character varying(10) NOT NULL,
    value text NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.translations OWNER TO avnadmin;

--
-- Name: translations_id_seq; Type: SEQUENCE; Schema: public; Owner: avnadmin
--

CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.translations_id_seq OWNER TO avnadmin;

--
-- Name: translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avnadmin
--

ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: avnadmin
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.users OWNER TO avnadmin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: avnadmin
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO avnadmin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: avnadmin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: translations id; Type: DEFAULT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: avnadmin
--

COPY public.products (article_no, product_name, in_price, price, unit, in_stock, description) FROM stdin;
12356479	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
135643974	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
135643989	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
13563989	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
23563789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
33563789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
43563789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
53563789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
54563789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
54568789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
1356439	This isest product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
135643973	Thct with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
1234567891	This is  	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description 
135643979	This is a test pters this!	9000.00	1500800.00	rs/hour	2500600.00	This is the description with fifty characters this
12345679	This is a test productrs this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
1235679	This is a test pr	900500.00	1500800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
135643975	This is a test product with fifty characters this!	9005.00	15.00	kilom	25006.00	This is the deacters this
13563789	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is the d
135643933	This is a test product with fifty characters this!	900500.00	1500.00	kilometers/hour	2500600.00	This is the description with fifty characters this
13564393	This is a test product with fifty characters this!	900500.00	15000.00	kilometers/hour	2500600.00	This is ers this
135643976	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	250.00	This is the description with fifty characters this
135643977	This is a test product with fifty characters this!	900500.00	1500800.00	kilometers/hour	2500600.00	This is tis
135643978	This is a test product with fifty characters this!	900500.00	1500800.00	/hour	2500600.00	This is the description with fifty characters this
123567439	is!	900500.00	1500800.00	kilometers/hour	600.00	This is the description with fifty characters this
1234567890	Product 2	9.00	1.00	k	6.00	s
12356439	This is a t	0.00	1500800.00	hour	2500600.00	This is the description with fifty characters this
123456789	Product 1	900.00	800.00	kilometers/hour	2500600.00	This is the description with fifty characters this
123456479	Product newwwEEEEEEEEEDSFSDFFw	10.00	0.00	eDD	600.00	tion wiDth fDDDiftthis
\.


--
-- Data for Name: translations; Type: TABLE DATA; Schema: public; Owner: avnadmin
--

COPY public.translations (id, key, language, value, created_at, updated_at) FROM stdin;
1	Home	en	Home	2025-11-17 13:06:22.675921	2025-11-17 13:06:22.675921
2	Home	sv	Hem	2025-11-17 13:06:22.757807	2025-11-17 13:06:22.757807
3	Order	en	Order	2025-11-17 13:06:22.835622	2025-11-17 13:06:22.835622
4	Order	sv	Beställ	2025-11-17 13:06:22.914771	2025-11-17 13:06:22.914771
5	Our Customers	en	Our Customers	2025-11-17 13:06:22.995262	2025-11-17 13:06:22.995262
6	Our Customers	sv	Våra Kunder	2025-11-17 13:06:23.074491	2025-11-17 13:06:23.074491
7	About us	en	About us	2025-11-17 13:06:23.153398	2025-11-17 13:06:23.153398
8	About us	sv	Om oss	2025-11-17 13:06:23.235164	2025-11-17 13:06:23.235164
9	Contact Us	en	Contact Us	2025-11-17 13:06:23.319857	2025-11-17 13:06:23.319857
10	Contact Us	sv	Kontakta oss	2025-11-17 13:06:23.40133	2025-11-17 13:06:23.40133
11	Log in	en	Log in	2025-11-17 13:24:12.679597	2025-11-17 13:24:12.679597
12	Log in	sv	Logga in	2025-11-17 13:24:12.818618	2025-11-17 13:24:12.818618
13	Enter your email address	en	Enter your email address	2025-11-17 13:24:12.895046	2025-11-17 13:24:12.895046
14	Enter your email address	sv	Skriv in din epost adress	2025-11-17 13:24:12.972041	2025-11-17 13:24:12.972041
15	Email address	en	Email address	2025-11-17 13:24:13.049083	2025-11-17 13:24:13.049083
16	Email address	sv	Epost adress	2025-11-17 13:24:13.126099	2025-11-17 13:24:13.126099
17	Please enter a valid email address	en	Please enter a valid email address	2025-11-17 13:24:13.203602	2025-11-17 13:24:13.203602
18	Please enter a valid email address	sv	Vänligen skriv in en giltig epost adress	2025-11-17 13:24:13.280665	2025-11-17 13:24:13.280665
19	Enter your password	en	Enter your password	2025-11-17 13:24:13.357615	2025-11-17 13:24:13.357615
20	Enter your password	sv	Skriv in ditt lösenord	2025-11-17 13:24:13.434542	2025-11-17 13:24:13.434542
21	Password	en	Password	2025-11-17 13:24:13.511076	2025-11-17 13:24:13.511076
22	Password	sv	Lösenord	2025-11-17 13:24:13.58751	2025-11-17 13:24:13.58751
23	Register	en	Register	2025-11-17 13:24:13.665621	2025-11-17 13:24:13.665621
24	Register	sv	Registrera dig	2025-11-17 13:24:13.742459	2025-11-17 13:24:13.742459
25	Forgotten password?	en	Forgotten password?	2025-11-17 13:24:13.819032	2025-11-17 13:24:13.819032
26	Forgotten password?	sv	Glömt lösenord?s	2025-11-17 13:24:13.898759	2025-11-17 13:24:13.898759
27	This field cannot be empty	en	This field cannot be empty	2025-11-17 13:24:13.975147	2025-11-17 13:24:13.975147
28	This field cannot be empty	sv	Detta fält kan inte vara tomt	2025-11-17 13:24:14.051649	2025-11-17 13:24:14.051649
33	terms-text	sv	<p class=""><b>GENOM ATT</b> klicka på Fakturera Nu så väljer ni att registrera enligt den information som ni har lagt in och texten på registrerings sidan och villkoren här, och accepterar samtidigt villkoren här.</p>\n<p class="">Ni kan använda programmet GRATIS i 14 dagar.</p>\n<p class="">123 Fakturera är så lätt och självförklarande att chansen för att du kommer behöva support är minimal, men om du skulle behöva support, så är vi här för dig, med vårt kontor bemannat större delen av dygnet. Efter provperioden så fortsätter abonnemanget och kostar 99 kronor exkl. moms per månad, som faktureras årligen. Om du inte vill behålla programmet, så är det bara att avbryta provperioden genom att ge oss besked inom 14 dagar från registrering.</p>\n<p class="mt-6">Ni har självklart rätt att avsluta användningen av programmet utan kostnad, genom att ge oss besked per email inom 14 dagar från registrering, att ni inte vill fortsätta med programmet, och betalar då självklart inte heller något.</p>\n<p class="mb-6">Om vi inte inom 14 dagar från registrering mottar sådant besked från er, så kan ordern av naturliga orsaker inte ändras. Med registrering menas det datum och klockslag då ni valde att trycka på knappen Fakturera Nu.</p>\n<p class="">Fakturering sker för ett år i taget.</p>\n<p class="">Priset för 123 Fakturera (specialpris kr 99:- / ord. pris kr 159:- per månad) är för årsavgift Start för ett års användning av programmet.</p>\n<p class="">(Vid användning av specialpriset kr 99:- så räknas ett års perioden från registrering.)</p>\n<p class="">Alla priser är exkl. moms.</p>\n<p class="">Offert, Lagerstyrning, Medlemsfakturering, Fleranvändarversion och Engelsk utskrift är (eller kan vara) tilläggsmoduler som kan beställas senare.</p>\n<p class="">Förmedling, samt fakturering kan komma att ske från K-Soft Sverige AB, Box 2826, 187 28 Täby. Vi kan i framtiden välja att samarbeta med annat företag för t.ex. förmedling och fakturering. Kundförhållandet är dock självklart med oss. Betalningen görs till det företag som fakturan kommer från.</p>\n<p class="">Årsavgiften är löpande men om ni inte vill fortsätta att använda programmet, så är det bara att ge besked trettio dagar innan ingången av nästföljande ett års period.</p>\n<p class="">Introduktionspriset (kr 99:- per månad) är för årsavgift Start för det första året. Efter det första året faktureras ord. pris vilket för närvarande är, för årsavgift Start, ett hundra och femtinio kronor per månad, för årsavgift Fjärrstyrning, tre hundra kronor per månad och för årsavgift Pro, tre hundra och trettiotre kronor per månad. Efter ett år faktureras årsavgift Fjärrstyrning som standard men ni kan välja Start eller Pro genom att ge besked när som helst innan förfallodagen.</p>\n<p class="">Om ni väljer att behålla programmet genom att inte ge oss besked per email innan 14 dagar från registrering, om att ni inte vill fortsätta med programmet, så accepterar ni att ni kommer att betala fakturan för er beställning. Att inte betala fakturan eller sen betalning ger inte rätt till att annullera beställningen. Vi hjälper gärna att fiksa logo för er till självkostpris.</p>\n<p class="">Licens för användning av 123 Fakturera säljs självklart enligt gällande lagar.</p>\n<p class="">För att lättare kunna hjälpa er och ge er support samt för att följa lagarna, måste vi av naturliga orsaker spara er information.</p>\n<p class="">I samband med lagring av information så kräver lagen att vi ger er följande information:</p>\n<p class="">Om ni beställer som privatperson så har ni den ångerrätt som lagen fastställer. Er information sparas så att vi kan hjälpa er m.m. Vi kommer använda den för att kunna hjälpa er om ni behöver hjälp, följa lagarna ang. bokföring m.m. När det kommer uppgraderingar och liknande, kan vi komma att skicka er erbjudande och liknande om våra produkter och tjänster per email eller liknande. Ni kan också komma att bli kontaktad per email, post och telefon. Om ni inte vill bli kontaktad, bara skicka oss en email ang. det.</p>\n<p class="">Ni kan när som helst begära att inte få tillsänt information om uppgraderingar per email, brev eller liknande och vi kommer då självklart inte att göra det. Sådan begäran skickar ni till oss per email, brev eller liknande.</p>\n<p class="">Av naturliga orsaker måste vi spara, databehandla och flytta era data. Er information sparas tills vidare. Ni ger oss medgivande till att lagra, databehandla och flytta era data, samt att skicka er erbjudanden och liknande per email, brev och liknande, samt att informera andra om att ni är kund. Pga. sättet det fungerar på med programvara behöver medgivandet också ges till andra parter. Medgivandet ges därför till oss, samt till de företag och/eller person/personer som äger programvaran, källkod, hemsidan och liknande. Det ges också till nuvarande och framtida företag ägda och/eller kontrollerade av en eller flera av de som i dag äger och/eller kontrollerar oss. Det ges också till nuvarande och framtida personer (om några) som äger eller kommer till att äga programvaran, källkod, hemsidan och liknande. Detta både för nuvarande och framtida produkter och tjänster. Det ges också till ett annat företag, (som K-Soft Sverige AB), som vi kan använda för att skicka/sälja produkter, uppgraderingar och liknande, antingen genom att under förmedla programvaran eller på annat sätt.</p>\n<p class="">Ni har självklart rätt att begära tillgång till, rättelse eller radering av informationen vi har om er. Ni har också rätt att begära begränsning av behandlingen av era uppgifter, eller att invända mot behandling samt rätten till dataportabilitet. Ni har självklart rätt att klaga till tillsynsmyndighet. Mer juridisk info om oss hittar ni <a class="link-span" href="JavaScript:Utils.popupWindow('/us')">här</a>. Det är lagarna i Irland som är gällande lagar. Det är självklart helt frivilligt att lägga er order. Vi använder självklart inte någon automatiserad profilering och inte heller något automatiserat beslutsfattande.</p>\n<p class="">Om ni vill kontakta oss, vänligen använd då informationen på denna hemsidan.</p>\n<p class="">Klicka på Fakturera Nu för att registrera i enlighet med den information som ni har lagt in och villkoren här. (Datum och tidpunkt för inläggningen läggs in automatiskt i våra register.)</p>\n<p class="">Vår erfarenhet är att våra kunder är mycket nöjda med sättet vi arbetar på och vi hoppas och tror att det också kommer att bli er upplevelse.</p>\n<p class="">Ha en trevlig dag!</p>	2025-11-17 14:45:12.410721	2025-11-17 14:45:12.410721
31	terms-text	en	<p class=""><b>BY</b> clicking Invoice Now, you choose to register according to the information that you have typed in and the text on the registration page and the terms here, and you at the same time accept the terms here.</p>\n<p class="">You can use the program FOR FREE for 14 days.</p>\n<p class="">123 Fakturera is so easy and self-explanatory that the chance that you will need support is minimal, but if you should need support, we are here for you, with our office manned for the most part of the day. After the trial period, the subscription continues and costs SEK 99 excluding VAT per month, which is billed annually. If you do not want to keep the program, just cancel the trial period by giving notice before 14 days from registration.</p>\n<p class="mt-6">You have of course the right to terminate the use of the program without any costs, by giving us notice per email before 14 days from registration, that you do not want to continue with the program, and you then of course do not pay anything.</p>\n<p class="mb-6">If we do not receive such a notice from you before 14 days from registration, then the order, for natural reasons, cannot be changed. With registration it is meant the date and time when you did choose to press the button Invoice Now.</p>\n<p class="">Billing is for one year at a time.</p>\n<p class="">The price for 123 Fakturera (offer price SEK 99 per month / ordinary price SEK 159 per month) is for the annual fee Start for one year's use of the program.</p>\n<p class="">(When using the offer price of SEK 99, the one-year period is calculated from registration.)</p>\n<p class="">All prices are excluding. VAT.</p>\n<p class="">Offer, Inventory Control, Member Invoicing, Multiuser version and English printout are (or can be) additional modules that can be ordered later.</p>\n<p class="">Intermediation, as well as invoicing, may take place from K-Soft Sverige AB, Box 2826, 187 28 Täby. In the future, we may choose to cooperate with another company for e.g. intermediation and invoicing. However, the customer relationship is with us. The payment is made to the company from which the invoice comes.</p>\n<p class="">The annual fee is on a continuous basis, but if you do not wish to continue using the program, all you have to do is give notice thirty days before the start of the next one-year period.</p>\n<p class="">The introductory offer ( SEK 99 per month) is for the annual fee Start for the first year. After the first year, the ordinary price is billed, which is currently, for annual fee Start, one hundred and fifty-nine kroner per month, for annual fee Remote control, three hundred kroner per month and for annual fee Pro, three hundred and thirty-three kroner per month. After one year, the annual Remote Control fee is invoiced as standard, but you can choose Start or Pro by giving notice at any time before the due date.</p>\n<p class="">If you choose to keep the program by not notifying us by email within 14 days of registration that you do not wish to continue with the program, you accept that you will pay the invoice for your order. Failure to pay the invoice or late payment does not give the right to cancel the order. We are happy to help you with logo at a cost price.</p>\n<p class="">License for the use of 123 Fakturera is of course sold in accordance with applicable laws.</p>\n<p class="">In order to be able to help you more easily and provide you with support, as well as to comply with the laws, we, for natural reasons, have to store your information.</p>\n<p class="">In connection with the storage of information, the law requires that we provide you with the following information:</p>\n<p class="">If you order as a private person, you have the right to cancel as stated by law. Your information is stored so that we can help you, etc. We will use it to be able to help you if you need help, follow the laws regarding bookkeeping, etc. When there are upgrades and the like, we may send you offers and the like about our products and services by email or the like. You may be contacted by email, post and telephone. If you don't want to be contacted, just send us an email about it.</p>\n<p class="">You can at any time ask not to be sent information about upgrades by email, letter or the like, and we will of course not do that. You send such a request to us by email, post or similar.</p>\n<p class="">For natural reasons, we have to store, process and move your data. Your information is stored until further notice. You give us permission to store, process and move your data, as well as to send you offers and the like by email, letter and the like, and tell others that you are customer. Due to the way it works with software, permission also needs to be given to other parties. The permission is therefore granted to us, as well as to the companies and/or person(s) who own the software, the source code, the website and the like. It is also given to current and future companies owned and/or controlled by one or more of those who currently own and/or control us. It is also given to current and future companies owned and/or controlled by one or more of those who currently own and/or control the companies (if any), which own or will own the software, source code, website and the like. It is also given to current and future persons (if any) who own or will own the software, source code, website and the like. This applies both to current and future products and services. It is also given to another company, (like K-Soft Sverige AB), which we can use to send/sell products, upgrades and the like, either by intermediation or otherwise.</p>\n<p class="">You of course have the right to request access to, change and deletion of the information we hold about you. You also have the right to request restriction of data processing, and to object to data processing and the right to data portability. You have the right to complain to the supervisory authority. You can find more legal information about us <a class="link-span" href="JavaScript:Utils.popupWindow('/us')">here</a>. The laws of Ireland are the applicable laws. Placing an order is of course completely voluntary. Of course, we do not use any automated profiling or decisions.</p>\n<p class="">If you wish to contact us, please use the information on this website.</p>\n<p class="">Click on Invoice Now to register according to the information you have entered and the terms here. (Date and time of admission are entered automatically in our registers.)</p>\n<p class="">Our experience is that our customers are very satisfied with the way we work and hope and believe that this will also be your experience.</p>\n<p class="">Have a great day!</p>	2025-11-17 14:42:13.457896	2025-11-17 14:42:13.457896
36	Close and Go Back	en	Close and Go Back	2025-11-17 15:08:14.659025	2025-11-17 15:08:14.659025
37	Close and Go Back	sv	Stäng och gå tillbaka	2025-11-17 15:08:14.745515	2025-11-17 15:08:14.745515
38	Term	en	Term	2025-11-17 15:10:45.866091	2025-11-17 15:10:45.866091
39	Term	sv	Villkor	2025-11-17 15:10:45.952475	2025-11-17 15:10:45.952475
29	Terms	en	Terms	2025-11-17 14:17:14.781052	2025-11-17 14:17:14.781052
30	Terms	sv	Villkor	2025-11-17 14:17:14.871782	2025-11-17 14:17:14.871782
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: avnadmin
--

COPY public.users (id, email, password, created_at) FROM stdin;
1	user@email.com	$2b$10$AJVYcj/xxYtOObknXXikMOPN.I4jnb7Klsk2HSBf1sJw9ZTAWcQ5G	2025-11-17 13:48:14.647459
\.


--
-- Name: translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avnadmin
--

SELECT pg_catalog.setval('public.translations_id_seq', 41, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: avnadmin
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (article_no);


--
-- Name: translations translations_key_language_key; Type: CONSTRAINT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_key_language_key UNIQUE (key, language);


--
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: avnadmin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

\unrestrict qwapBtXilpnh5WBNQZhIiQax9eMmgEVx5GKHy2SoAdqUrDgeJ5PVpb3bbByeJtD

