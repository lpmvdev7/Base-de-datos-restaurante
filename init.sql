--
-- PostgreSQL database dump
--

\restrict h5dDRUbK8iL7tjnH3RGwuZkjsJPiuJmQpdnDw1pI50wkR60u0IlmkmIE0zhk8IA

-- Dumped from database version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.13 (Ubuntu 16.13-0ubuntu0.24.04.1)

-- Started on 2026-05-09 09:37:23 CST

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
-- TOC entry 216 (class 1259 OID 16390)
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16389)
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 215
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- TOC entry 220 (class 1259 OID 16411)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    nombre character varying(100) NOT NULL,
    telefono character varying(20)
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16410)
-- Name: cliente_id_cliente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cliente_id_cliente_seq OWNER TO postgres;

--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 219
-- Name: cliente_id_cliente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;


--
-- TOC entry 237 (class 1259 OID 16514)
-- Name: detallepedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detallepedido (
    id_detalle_pedido integer NOT NULL,
    id_pedido integer NOT NULL,
    id_platillo integer NOT NULL,
    cantidad integer NOT NULL,
    precio_unitario numeric(10,2) NOT NULL,
    subtotal numeric(10,2) NOT NULL
);


ALTER TABLE public.detallepedido OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 16513)
-- Name: detallepedido_id_detalle_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.detallepedido_id_detalle_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.detallepedido_id_detalle_pedido_seq OWNER TO postgres;

--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 236
-- Name: detallepedido_id_detalle_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.detallepedido_id_detalle_pedido_seq OWNED BY public.detallepedido.id_detalle_pedido;


--
-- TOC entry 224 (class 1259 OID 16425)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    id_empleado integer NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo character varying(50),
    telefono character varying(20),
    salario numeric(10,2),
    turno character varying(50),
    id_sucursal integer NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16424)
-- Name: empleado_id_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_id_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_id_empleado_seq OWNER TO postgres;

--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 223
-- Name: empleado_id_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_id_empleado_seq OWNED BY public.empleado.id_empleado;


--
-- TOC entry 234 (class 1259 OID 16492)
-- Name: ingredientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingredientes (
    id_ingrediente integer NOT NULL,
    nombre_ingrediente character varying(100) NOT NULL,
    unidad_medida character varying(50)
);


ALTER TABLE public.ingredientes OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16491)
-- Name: ingredientes_id_ingrediente_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingredientes_id_ingrediente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ingredientes_id_ingrediente_seq OWNER TO postgres;

--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 233
-- Name: ingredientes_id_ingrediente_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ingredientes_id_ingrediente_seq OWNED BY public.ingredientes.id_ingrediente;


--
-- TOC entry 241 (class 1259 OID 16548)
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    id_inventario integer NOT NULL,
    id_ingrediente integer NOT NULL,
    id_sucursal integer NOT NULL,
    stock_actual numeric(10,2) NOT NULL
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16547)
-- Name: inventario_id_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_id_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_id_inventario_seq OWNER TO postgres;

--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 240
-- Name: inventario_id_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_id_inventario_seq OWNED BY public.inventario.id_inventario;


--
-- TOC entry 226 (class 1259 OID 16437)
-- Name: mesa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mesa (
    id_mesa integer NOT NULL,
    capacidad integer NOT NULL,
    numero_mesa integer NOT NULL,
    estado character varying(50),
    id_sucursal integer NOT NULL
);


ALTER TABLE public.mesa OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16436)
-- Name: mesa_id_mesa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mesa_id_mesa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.mesa_id_mesa_seq OWNER TO postgres;

--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 225
-- Name: mesa_id_mesa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mesa_id_mesa_seq OWNED BY public.mesa.id_mesa;


--
-- TOC entry 230 (class 1259 OID 16471)
-- Name: pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pago (
    id_pago integer NOT NULL,
    monto numeric(10,2) NOT NULL,
    id_pedido integer NOT NULL,
    fecha date NOT NULL,
    metodo_pago character varying(50)
);


ALTER TABLE public.pago OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16470)
-- Name: pago_id_pago_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pago_id_pago_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pago_id_pago_seq OWNER TO postgres;

--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 229
-- Name: pago_id_pago_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pago_id_pago_seq OWNED BY public.pago.id_pago;


--
-- TOC entry 228 (class 1259 OID 16449)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    id_pedido integer NOT NULL,
    fecha_hora timestamp without time zone NOT NULL,
    estado character varying(50),
    total numeric(10,2),
    id_cliente integer NOT NULL,
    id_mesa integer NOT NULL,
    id_empleado integer NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16448)
-- Name: pedido_id_pedido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_id_pedido_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedido_id_pedido_seq OWNER TO postgres;

--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 227
-- Name: pedido_id_pedido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_id_pedido_seq OWNED BY public.pedido.id_pedido;


--
-- TOC entry 218 (class 1259 OID 16397)
-- Name: platillo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.platillo (
    id_platillo integer NOT NULL,
    nombre character varying(100) NOT NULL,
    precio numeric(10,2) NOT NULL,
    id_categoria integer NOT NULL,
    descripcion text
);


ALTER TABLE public.platillo OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16396)
-- Name: platillo_id_platillo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.platillo_id_platillo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.platillo_id_platillo_seq OWNER TO postgres;

--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 217
-- Name: platillo_id_platillo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.platillo_id_platillo_seq OWNED BY public.platillo.id_platillo;


--
-- TOC entry 232 (class 1259 OID 16483)
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedor (
    id_proveedor integer NOT NULL,
    nombre character varying(100) NOT NULL,
    telefono character varying(20),
    email character varying(100),
    direccion character varying(200),
    tipo character varying(100)
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16482)
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proveedor_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNER TO postgres;

--
-- TOC entry 3630 (class 0 OID 0)
-- Dependencies: 231
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proveedor_id_proveedor_seq OWNED BY public.proveedor.id_proveedor;


--
-- TOC entry 235 (class 1259 OID 16498)
-- Name: proveedoringrediente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proveedoringrediente (
    id_proveedor integer NOT NULL,
    id_ingrediente integer NOT NULL,
    precio_compra numeric(10,2) NOT NULL
);


ALTER TABLE public.proveedoringrediente OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16531)
-- Name: receta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.receta (
    id_receta integer NOT NULL,
    id_platillo integer NOT NULL,
    id_ingrediente integer NOT NULL,
    cantidad numeric(10,2) NOT NULL,
    unidad_medida character varying(50)
);


ALTER TABLE public.receta OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16530)
-- Name: receta_id_receta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.receta_id_receta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.receta_id_receta_seq OWNER TO postgres;

--
-- TOC entry 3631 (class 0 OID 0)
-- Dependencies: 238
-- Name: receta_id_receta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.receta_id_receta_seq OWNED BY public.receta.id_receta;


--
-- TOC entry 222 (class 1259 OID 16418)
-- Name: sucursal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sucursal (
    id_sucursal integer NOT NULL,
    direccion character varying(200) NOT NULL,
    telefono character varying(20),
    ciudad character varying(100),
    capacidad integer
);


ALTER TABLE public.sucursal OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16417)
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sucursal_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNER TO postgres;

--
-- TOC entry 3632 (class 0 OID 0)
-- Dependencies: 221
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNED BY public.sucursal.id_sucursal;


--
-- TOC entry 3389 (class 2604 OID 16393)
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- TOC entry 3391 (class 2604 OID 16414)
-- Name: cliente id_cliente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);


--
-- TOC entry 3399 (class 2604 OID 16517)
-- Name: detallepedido id_detalle_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallepedido ALTER COLUMN id_detalle_pedido SET DEFAULT nextval('public.detallepedido_id_detalle_pedido_seq'::regclass);


--
-- TOC entry 3393 (class 2604 OID 16428)
-- Name: empleado id_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN id_empleado SET DEFAULT nextval('public.empleado_id_empleado_seq'::regclass);


--
-- TOC entry 3398 (class 2604 OID 16495)
-- Name: ingredientes id_ingrediente; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredientes ALTER COLUMN id_ingrediente SET DEFAULT nextval('public.ingredientes_id_ingrediente_seq'::regclass);


--
-- TOC entry 3401 (class 2604 OID 16551)
-- Name: inventario id_inventario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN id_inventario SET DEFAULT nextval('public.inventario_id_inventario_seq'::regclass);


--
-- TOC entry 3394 (class 2604 OID 16440)
-- Name: mesa id_mesa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesa ALTER COLUMN id_mesa SET DEFAULT nextval('public.mesa_id_mesa_seq'::regclass);


--
-- TOC entry 3396 (class 2604 OID 16474)
-- Name: pago id_pago; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago ALTER COLUMN id_pago SET DEFAULT nextval('public.pago_id_pago_seq'::regclass);


--
-- TOC entry 3395 (class 2604 OID 16452)
-- Name: pedido id_pedido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido ALTER COLUMN id_pedido SET DEFAULT nextval('public.pedido_id_pedido_seq'::regclass);


--
-- TOC entry 3390 (class 2604 OID 16400)
-- Name: platillo id_platillo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platillo ALTER COLUMN id_platillo SET DEFAULT nextval('public.platillo_id_platillo_seq'::regclass);


--
-- TOC entry 3397 (class 2604 OID 16486)
-- Name: proveedor id_proveedor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor ALTER COLUMN id_proveedor SET DEFAULT nextval('public.proveedor_id_proveedor_seq'::regclass);


--
-- TOC entry 3400 (class 2604 OID 16534)
-- Name: receta id_receta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receta ALTER COLUMN id_receta SET DEFAULT nextval('public.receta_id_receta_seq'::regclass);


--
-- TOC entry 3392 (class 2604 OID 16421)
-- Name: sucursal id_sucursal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursal_id_sucursal_seq'::regclass);


--
-- TOC entry 3589 (class 0 OID 16390)
-- Dependencies: 216
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id_categoria, nombre) FROM stdin;
1	Entradas
2	Sopas y Caldos
3	Platillos Fuertes
4	Mariscos
5	Pastas
6	Ensaladas
7	Postres
8	Bebidas
9	Antojitos
10	Desayunos
\.


--
-- TOC entry 3593 (class 0 OID 16411)
-- Dependencies: 220
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id_cliente, nombre, telefono) FROM stdin;
1	Alejandro Reyes Mora	4771300001
2	Sofía Castro Ibáñez	4771300002
3	Miguel Ángel Vega Torres	4771300003
4	Fernanda López Ríos	4771300004
5	Carlos Eduardo Soto Ponce	4771300005
6	Valeria Mendoza Herrera	4771300006
7	Jorge Luis Ramírez Fuentes	4771300007
8	Ana Karen Guzmán Salinas	4771300008
9	Roberto Flores Cisneros	4771300009
10	Daniela Ortega Bravo	4771300010
11	Luis Fernando Jiménez Cruz	4771300011
12	Mariana Serrano Leal	4771300012
13	Óscar Navarro Medina	4771300013
14	Paola Díaz Rojas	4771300014
15	Héctor Morales Vargas	4771300015
16	Karla Romero Sandoval	4771300016
17	Eduardo Alvarado Campos	4771300017
18	Stephanie Peña Vidal	4771300018
19	Andrés Cabrera Estrada	4771300019
20	Lorena Espinoza Aguilar	4771300020
21	Iván Guerrero Acosta	4771300021
22	Verónica Treviño Ochoa	4771300022
23	Mauricio Lara Mondragón	4771300023
24	Diana Molina Torres	4771300024
25	Gerardo Ávila Carrillo	4771300025
26	Claudia Pedraza Suárez	4771300026
27	Arturo Herrera Zamora	4771300027
28	Beatriz Fuentes Paredes	4771300028
29	Ernesto Solis Bermúdez	4771300029
30	Liliana Ibáñez Quiroz	4771300030
31	Hugo Domínguez Perea	4771300031
32	Margarita Valencia Cortés	4771300032
33	Rubén Cárdenas Olvera	4771300033
34	Yolanda Trejo Gutiérrez	4771300034
35	Adrián Acosta Cisneros	4771300035
36	Fabiola Montes León	4771300036
37	Alejandra Prado Ibarra	4771300037
38	Armando Muñoz Blanco	4771300038
39	Esperanza Garza Lozano	4771300039
40	Cristian Ramos Delgado	4771300040
41	Silvia Valdez Nuñez	4771300041
42	Julián Medina Rojas	4771300042
43	Norma Sandoval Paz	4771300043
44	Fernando Aguilar Ríos	4771300044
45	Gabriela Castro Bravo	4771300045
46	Ricardo Peña Torres	4771300046
47	Leticia Ortega Serna	4771300047
48	Javier Hernández Ruiz	4771300048
49	Patricia Flores Vega	4771300049
50	Samuel Díaz Mora	4771300050
51	Laura Reyes Fuentes	4771300051
52	Enrique Serrano Leal	4771300052
53	Isabel Navarro Campos	4771300053
54	Ángel Romero Estrada	4771300054
55	Mónica Morales Sandoval	4771300055
56	David Alvarado Aguilar	4771300056
57	Carmen Treviño Acosta	4771300057
58	Rafael Lara Ochoa	4771300058
59	Guadalupe Molina Carrillo	4771300059
60	Francisco Herrera Zamora	4771300060
61	Rebeca Fuentes Suárez	4771300061
62	Ignacio Solis Paredes	4771300062
63	Alma Ibáñez Bermúdez	4771300063
64	Tomás Domínguez Quiroz	4771300064
65	Cecilia Valencia Perea	4771300065
66	Marco Antonio Cárdenas Cortés	4771300066
67	Dulce María Trejo Olvera	4771300067
68	Ernesto Acosta Gutiérrez	4771300068
69	Blanca Montes Cisneros	4771300069
70	Rodrigo Prado León	4771300070
71	Marisol Muñoz Ibarra	4771300071
72	Erick Garza Blanco	4771300072
73	Adriana Ramos Lozano	4771300073
74	Víctor Valdez Delgado	4771300074
75	Erika Medina Nuñez	4771300075
76	Pablo Sandoval Rojas	4771300076
77	Angélica Aguilar Paz	4771300077
78	Mario Castro Ríos	4771300078
79	Irene Peña Bravo	4771300079
80	José Hernández Serna	4771300080
81	Alicia Flores Torres	4771300081
82	Benjamín Díaz Vega	4771300082
83	Cristina Reyes Mora	4771300083
84	Daniel Serrano Fuentes	4771300084
85	Elena Navarro Leal	4771300085
86	Felipe Romero Campos	4771300086
87	Gloria Morales Estrada	4771300087
88	Horacio Alvarado Sandoval	4771300088
89	Inés Treviño Aguilar	4771300089
90	Jacinto Lara Acosta	4771300090
91	Karina Molina Ochoa	4771300091
92	Leonardo Herrera Carrillo	4771300092
93	Martha Fuentes Zamora	4771300093
94	Nicolás Solis Suárez	4771300094
95	Olivia Ibáñez Paredes	4771300095
96	Pedro Domínguez Bermúdez	4771300096
97	Querida Valencia Quiroz	4771300097
98	René Cárdenas Perea	4771300098
99	Sara Trejo Cortés	4771300099
100	Teodoro Acosta Olvera	4771300100
101	Úrsula Montes Gutiérrez	4771300101
102	Vicente Prado Cisneros	4771300102
103	Wendy Muñoz León	4771300103
104	Xavier Garza Ibarra	4771300104
105	Yesenia Ramos Blanco	4771300105
106	Zacarías Valdez Lozano	4771300106
107	Aída Medina Delgado	4771300107
108	Bruno Sandoval Nuñez	4771300108
109	Consuelo Aguilar Rojas	4771300109
110	Diego Castro Paz	4771300110
111	Elsa Peña Ríos	4771300111
112	Fabio Hernández Bravo	4771300112
113	Gisela Flores Serna	4771300113
114	Hipólito Díaz Torres	4771300114
115	Ingrid Reyes Vega	4771300115
116	Joel Serrano Mora	4771300116
117	Karla Navarro Fuentes	4771300117
118	Lourdes Romero Leal	4771300118
119	Marcos Morales Campos	4771300119
120	Natalia Alvarado Estrada	4771300120
121	Omar Treviño Sandoval	4771300121
122	Paloma Lara Aguilar	4771300122
123	Quintín Molina Acosta	4771300123
124	Rocío Herrera Ochoa	4771300124
125	Sergio Fuentes Carrillo	4771300125
126	Teresa Solis Zamora	4771300126
127	Ulises Ibáñez Suárez	4771300127
128	Valeria Domínguez Paredes	4771300128
129	Walter Valencia Bermúdez	4771300129
130	Ximena Cárdenas Quiroz	4771300130
131	Yazmín Trejo Perea	4771300131
132	Zeus Acosta Cortés	4771300132
133	Abigail Montes Olvera	4771300133
134	Baldomero Prado Gutiérrez	4771300134
135	Camila Muñoz Cisneros	4771300135
136	Darío Garza León	4771300136
137	Estela Ramos Ibarra	4771300137
138	Florencio Valdez Blanco	4771300138
139	Griselda Medina Lozano	4771300139
140	Herminio Sandoval Delgado	4771300140
141	Isidro Aguilar Nuñez	4771300141
142	Jimena Castro Rojas	4771300142
143	Kenji Peña Paz	4771300143
144	Libertad Hernández Ríos	4771300144
145	Melchor Flores Bravo	4771300145
146	Nadia Díaz Serna	4771300146
147	Obdulia Reyes Torres	4771300147
148	Porfirio Serrano Vega	4771300148
149	Quirina Navarro Mora	4771300149
150	Raymundo Romero Fuentes	4771300150
151	Susana Morales Leal	4771300151
152	Timoteo Alvarado Campos	4771300152
153	Uriel Treviño Estrada	4771300153
154	Vanessa Lara Sandoval	4771300154
155	Wilfrido Molina Aguilar	4771300155
156	Xóchitl Herrera Acosta	4771300156
157	Yolanda Fuentes Ochoa	4771300157
158	Zenón Solis Carrillo	4771300158
159	Araceli Ibáñez Zamora	4771300159
160	Bernardo Domínguez Suárez	4771300160
161	Catalina Valencia Paredes	4771300161
162	Donato Cárdenas Bermúdez	4771300162
163	Eugenia Trejo Quiroz	4771300163
164	Fermín Acosta Perea	4771300164
165	Georgina Montes Cortés	4771300165
166	Hilario Prado Olvera	4771300166
167	Isadora Muñoz Gutiérrez	4771300167
168	Jenaro Garza Cisneros	4771300168
169	Kimberly Ramos León	4771300169
170	Lamberto Valdez Ibarra	4771300170
171	Minerva Medina Blanco	4771300171
172	Nazario Sandoval Lozano	4771300172
173	Ofelia Aguilar Delgado	4771300173
174	Primitivo Castro Nuñez	4771300174
175	Quezia Peña Rojas	4771300175
176	Rigoberto Hernández Paz	4771300176
177	Salomé Flores Ríos	4771300177
178	Tranquilino Díaz Bravo	4771300178
179	Uvaldo Reyes Serna	4771300179
180	Valentina Serrano Torres	4771300180
181	Wenceslao Navarro Vega	4771300181
182	Xiomara Romero Mora	4771300182
183	Yair Morales Fuentes	4771300183
184	Zenaida Alvarado Leal	4771300184
185	Abundio Treviño Campos	4771300185
186	Belén Lara Estrada	4771300186
187	Cirilo Molina Sandoval	4771300187
188	Dolores Herrera Aguilar	4771300188
189	Esteban Fuentes Acosta	4771300189
190	Fidelia Solis Ochoa	4771300190
191	Genaro Ibáñez Carrillo	4771300191
192	Hermila Domínguez Zamora	4771300192
193	Isidora Valencia Suárez	4771300193
194	Jeremías Cárdenas Paredes	4771300194
195	Kristel Trejo Bermúdez	4771300195
196	Ladislao Acosta Quiroz	4771300196
197	Macaria Montes Perea	4771300197
198	Nepomuceno Prado Cortés	4771300198
199	Obdulio Muñoz Olvera	4771300199
200	Perpetua Garza Gutiérrez	4771300200
201	Queridamor Ramos Cisneros	4771300201
202	Rosalba Valdez León	4771300202
203	Saturnino Medina Ibarra	4771300203
204	Trinidad Sandoval Blanco	4771300204
205	Ubaldo Aguilar Lozano	4771300205
206	Verónica Castro Delgado	4771300206
207	Wilebaldo Peña Nuñez	4771300207
208	Xenia Hernández Rojas	4771300208
209	Yadira Flores Paz	4771300209
210	Zulema Díaz Ríos	4771300210
211	Alfonso Reyes Bravo	4771300211
212	Bárbara Serrano Serna	4771300212
213	Casimiro Navarro Torres	4771300213
214	Delia Romero Vega	4771300214
215	Evaristo Morales Mora	4771300215
216	Filomena Alvarado Fuentes	4771300216
217	Gonzalo Treviño Leal	4771300217
218	Hermelinda Lara Campos	4771300218
219	Inocencio Molina Estrada	4771300219
220	Josefina Herrera Sandoval	4771300220
221	Karlo Fuentes Aguilar	4771300221
222	Lupita Solis Acosta	4771300222
223	Maximiliano Ibáñez Ochoa	4771300223
224	Natividad Domínguez Carrillo	4771300224
225	Onésimo Valencia Zamora	4771300225
226	Pilar Cárdenas Suárez	4771300226
227	Quirino Trejo Paredes	4771300227
228	Rafaela Acosta Bermúdez	4771300228
229	Silverio Montes Quiroz	4771300229
230	Tania Prado Perea	4771300230
231	Urbano Muñoz Cortés	4771300231
232	Velia Garza Olvera	4771300232
233	Waldo Ramos Gutiérrez	4771300233
234	Xitlali Valdez Cisneros	4771300234
235	Yesica Medina León	4771300235
236	Zoila Sandoval Ibarra	4771300236
237	Abrahán Aguilar Blanco	4771300237
238	Beatrice Castro Lozano	4771300238
239	Casandra Peña Delgado	4771300239
240	Demetrio Hernández Nuñez	4771300240
241	Eduviges Flores Rojas	4771300241
242	Facundo Díaz Paz	4771300242
243	Genoveva Reyes Ríos	4771300243
244	Heriberto Serrano Bravo	4771300244
245	Iliana Navarro Serna	4771300245
246	Jerónimo Romero Torres	4771300246
247	Karoline Morales Vega	4771300247
248	Lázaro Alvarado Mora	4771300248
249	Magdalena Treviño Fuentes	4771300249
250	Nabor Lara Leal	4771300250
251	Octavia Molina Campos	4771300251
252	Próspero Herrera Estrada	4771300252
253	Querétaro Fuentes Sandoval	4771300253
254	Reginaldo Solis Aguilar	4771300254
255	Silvana Ibáñez Acosta	4771300255
256	Teófilo Domínguez Ochoa	4771300256
257	Ursulina Valencia Carrillo	4771300257
258	Vidal Cárdenas Zamora	4771300258
259	Wilma Trejo Suárez	4771300259
260	Ximena Acosta Paredes	4771300260
261	Yamile Montes Bermúdez	4771300261
262	Zenobio Prado Quiroz	4771300262
263	Alondra Muñoz Perea	4771300263
264	Baldemar Garza Cortés	4771300264
265	Celeste Ramos Olvera	4771300265
266	Dámaso Valdez Gutiérrez	4771300266
267	Eloísa Medina Cisneros	4771300267
268	Fortino Sandoval León	4771300268
269	Guadalberto Aguilar Ibarra	4771300269
270	Higinia Castro Blanco	4771300270
271	Idalia Peña Lozano	4771300271
272	Juventino Hernández Delgado	4771300272
273	Kenia Flores Nuñez	4771300273
274	Leobardo Díaz Rojas	4771300274
275	Melitón Reyes Paz	4771300275
276	Nicolasa Serrano Ríos	4771300276
277	Onesiforo Navarro Bravo	4771300277
278	Pureza Romero Serna	4771300278
279	Quintiliano Morales Torres	4771300279
280	Remedios Alvarado Vega	4771300280
281	Serafín Treviño Mora	4771300281
282	Telesfora Lara Fuentes	4771300282
283	Uziel Molina Leal	4771300283
284	Ventura Herrera Campos	4771300284
285	Waldemar Fuentes Estrada	4771300285
286	Xanath Solis Sandoval	4771300286
287	Yolotzin Ibáñez Aguilar	4771300287
288	Zaida Domínguez Acosta	4771300288
289	Amador Valencia Ochoa	4771300289
290	Briseyda Cárdenas Carrillo	4771300290
291	Clementino Trejo Zamora	4771300291
292	Delfina Acosta Suárez	4771300292
293	Epigmenio Montes Paredes	4771300293
294	Fátima Prado Bermúdez	4771300294
295	Galilea Muñoz Quiroz	4771300295
296	Humberto Garza Perea	4771300296
297	Isaura Ramos Cortés	4771300297
298	Juventina Valdez Olvera	4771300298
299	Kaled Medina Gutiérrez	4771300299
300	Leocadia Sandoval Cisneros	4771300300
301	Melquiades Aguilar León	4771300301
302	Nicomedes Castro Ibarra	4771300302
303	Odalys Peña Blanco	4771300303
304	Primitiva Hernández Lozano	4771300304
305	Querubin Flores Delgado	4771300305
306	Rosenda Díaz Nuñez	4771300306
307	Santiago Reyes Rojas	4771300307
308	Tomasa Serrano Paz	4771300308
309	Uldarico Navarro Ríos	4771300309
310	Viviana Romero Bravo	4771300310
311	Wulfrano Morales Serna	4771300311
312	Xiadani Alvarado Torres	4771300312
313	Yerlan Treviño Vega	4771300313
314	Zorayda Lara Mora	4771300314
315	Absalón Molina Fuentes	4771300315
316	Brenda Herrera Leal	4771300316
317	Ciro Fuentes Campos	4771300317
318	Dora Solis Estrada	4771300318
319	Efraín Ibáñez Sandoval	4771300319
320	Flor Valencia Aguilar	4771300320
321	Genobeba Cárdenas Acosta	4771300321
322	Herón Trejo Ochoa	4771300322
323	Ileana Acosta Carrillo	4771300323
324	Jerusa Montes Zamora	4771300324
325	Kiros Prado Suárez	4771300325
326	Lina Muñoz Paredes	4771300326
327	Maclovio Garza Bermúdez	4771300327
328	Nallely Ramos Quiroz	4771300328
329	Odilón Valdez Perea	4771300329
330	Perla Medina Cortés	4771300330
331	Quinceañera Sandoval Olvera	4771300331
332	Rosaura Aguilar Gutiérrez	4771300332
333	Secundino Castro Cisneros	4771300333
334	Tahití Peña León	4771300334
335	Usbaldo Hernández Ibarra	4771300335
336	Verónica Flores Blanco	4771300336
337	Winni Díaz Lozano	4771300337
338	Xiulan Reyes Delgado	4771300338
339	Yamilé Serrano Nuñez	4771300339
340	Zita Navarro Rojas	4771300340
341	Amada Romero Paz	4771300341
342	Bladimir Morales Ríos	4771300342
343	Celia Alvarado Bravo	4771300343
344	Donaciano Treviño Serna	4771300344
345	Emperatriz Lara Torres	4771300345
346	Faustino Molina Vega	4771300346
347	Gudelia Herrera Mora	4771300347
348	Heladio Fuentes Fuentes	4771300348
349	Imelda Solis Leal	4771300349
350	Jenifer Ibáñez Campos	4771300350
351	Karol Valencia Estrada	4771300351
352	Leovigildo Cárdenas Sandoval	4771300352
353	Marciana Trejo Aguilar	4771300353
354	Nemesio Acosta Acosta	4771300354
355	Olimpia Montes Ochoa	4771300355
356	Pascual Prado Carrillo	4771300356
357	Quirina Muñoz Zamora	4771300357
358	Rosario Garza Suárez	4771300358
359	Sidronio Ramos Paredes	4771300359
360	Talia Valdez Bermúdez	4771300360
361	Uvaldina Medina Quiroz	4771300361
362	Veneranda Sandoval Perea	4771300362
363	Weneslada Aguilar Cortés	4771300363
364	Xochiquetzal Castro Olvera	4771300364
365	Yesid Peña Gutiérrez	4771300365
366	Zeferino Hernández Cisneros	4771300366
367	Agustina Flores León	4771300367
368	Benigno Díaz Ibarra	4771300368
369	Conchita Reyes Blanco	4771300369
370	Dagoberto Serrano Lozano	4771300370
371	Elvira Navarro Delgado	4771300371
372	Fulgencio Romero Nuñez	4771300372
373	Gumersindo Morales Rojas	4771300373
374	Hortensia Alvarado Paz	4771300374
375	Inmaculada Treviño Ríos	4771300375
376	Jacoba Lara Bravo	4771300376
377	Kiyomi Molina Serna	4771300377
378	Leopoldo Herrera Torres	4771300378
379	Manuela Fuentes Vega	4771300379
380	Nicanor Solis Mora	4771300380
381	Obdulia Ibáñez Fuentes	4771300381
382	Pantaleón Valencia Leal	4771300382
383	Quirina Cárdenas Campos	4771300383
384	Ruperta Trejo Estrada	4771300384
385	Servando Acosta Sandoval	4771300385
386	Teodora Montes Aguilar	4771300386
387	Urania Prado Acosta	4771300387
388	Valentín Muñoz Ochoa	4771300388
389	Wenceslada Garza Carrillo	4771300389
390	Xelhua Ramos Zamora	4771300390
391	Yesenia Valdez Suárez	4771300391
392	Zenón Medina Paredes	4771300392
393	Adalberto Sandoval Bermúdez	4771300393
394	Benita Aguilar Quiroz	4771300394
395	Cleofe Castro Perea	4771300395
396	Demetria Peña Cortés	4771300396
397	Eufemia Hernández Olvera	4771300397
398	Federico Flores Gutiérrez	4771300398
399	Genoveva Díaz Cisneros	4771300399
400	Higinio Reyes León	4771300400
401	Inocencia Serrano Ibarra	4771300401
402	Jacinto Navarro Blanco	4771300402
403	Kasandra Romero Lozano	4771300403
404	Liberato Morales Delgado	4771300404
405	Macaria Alvarado Nuñez	4771300405
406	Navor Treviño Rojas	4771300406
407	Octavio Lara Paz	4771300407
408	Pastora Molina Ríos	4771300408
409	Quiteria Herrera Bravo	4771300409
410	Ruperto Fuentes Serna	4771300410
411	Sofronío Solis Torres	4771300411
412	Tadeo Ibáñez Vega	4771300412
413	Umbelina Valencia Mora	4771300413
414	Valeriana Cárdenas Fuentes	4771300414
415	Walberto Trejo Leal	4771300415
416	Xitlaly Acosta Campos	4771300416
417	Yamilet Montes Estrada	4771300417
418	Zacarías Prado Sandoval	4771300418
419	Agripina Muñoz Aguilar	4771300419
420	Balbino Garza Acosta	4771300420
421	Candelaria Ramos Ochoa	4771300421
422	Delfino Valdez Carrillo	4771300422
423	Edelmira Medina Zamora	4771300423
424	Fortunato Sandoval Suárez	4771300424
425	Gregoria Aguilar Paredes	4771300425
426	Hildelisa Castro Bermúdez	4771300426
427	Irlanda Peña Quiroz	4771300427
428	Jenrry Hernández Perea	4771300428
429	Kitzia Flores Cortés	4771300429
430	Librado Díaz Olvera	4771300430
431	Marisela Reyes Gutiérrez	4771300431
432	Natalio Serrano Cisneros	4771300432
433	Ofelia Navarro León	4771300433
434	Porfirio Romero Ibarra	4771300434
435	Quesada Morales Blanco	4771300435
436	Rosalinda Alvarado Lozano	4771300436
437	Saturnina Treviño Delgado	4771300437
438	Telesforo Lara Nuñez	4771300438
439	Uxío Molina Rojas	4771300439
440	Visitación Herrera Paz	4771300440
441	Waldina Fuentes Ríos	4771300441
442	Xanat Solis Bravo	4771300442
443	Yesica Ibáñez Serna	4771300443
444	Zenobio Valencia Torres	4771300444
445	Abundia Cárdenas Vega	4771300445
446	Belisario Trejo Mora	4771300446
447	Clarita Acosta Fuentes	4771300447
448	Damián Montes Leal	4771300448
449	Elpidia Prado Campos	4771300449
450	Florencio Muñoz Estrada	4771300450
451	Gaudencio Garza Sandoval	4771300451
452	Hilda Ramos Aguilar	4771300452
453	Ildefonso Valdez Acosta	4771300453
454	Josué Medina Ochoa	4771300454
455	Keren Sandoval Carrillo	4771300455
456	Leocadio Aguilar Zamora	4771300456
457	Marcelina Castro Suárez	4771300457
458	Nicasio Peña Paredes	4771300458
459	Olimpio Hernández Bermúdez	4771300459
460	Primitivo Flores Quiroz	4771300460
461	Quelbe Díaz Perea	4771300461
462	Rosalio Reyes Cortés	4771300462
463	Simeón Serrano Olvera	4771300463
464	Timótea Navarro Gutiérrez	4771300464
465	Ulderico Romero Cisneros	4771300465
466	Valentina Morales León	4771300466
467	Wulfrano Alvarado Ibarra	4771300467
468	Ximena Treviño Blanco	4771300468
469	Yair Lara Lozano	4771300469
470	Zoila Molina Delgado	4771300470
471	Abundio Herrera Nuñez	4771300471
472	Berenice Fuentes Rojas	4771300472
473	Camilo Solis Paz	4771300473
474	Daria Ibáñez Ríos	4771300474
475	Emeterio Valencia Bravo	4771300475
476	Fidelina Cárdenas Serna	4771300476
477	Gaudelia Trejo Torres	4771300477
478	Helodoro Acosta Vega	4771300478
479	Iliana Montes Mora	4771300479
480	Jacinta Prado Fuentes	4771300480
481	Kelvin Muñoz Leal	4771300481
482	Laudelina Garza Campos	4771300482
483	Marcelino Ramos Estrada	4771300483
484	Nadia Valdez Sandoval	4771300484
485	Onésima Medina Aguilar	4771300485
486	Plutarco Sandoval Acosta	4771300486
487	Quitéria Aguilar Ochoa	4771300487
488	Rosendo Castro Carrillo	4771300488
489	Sirena Peña Zamora	4771300489
490	Tiburcio Hernández Suárez	4771300490
491	Ulpiana Flores Paredes	4771300491
492	Valeriano Díaz Bermúdez	4771300492
493	Wendoline Reyes Quiroz	4771300493
494	Xiadany Serrano Perea	4771300494
495	Yaret Navarro Cortés	4771300495
496	Zeferina Romero Olvera	4771300496
497	Amancio Morales Gutiérrez	4771300497
498	Beda Alvarado Cisneros	4771300498
499	Celedonia Treviño León	4771300499
500	Dídimo Lara Ibarra	4771300500
501	Eladio Molina Blanco	4771300501
502	Filomeno Herrera Lozano	4771300502
503	Gala Fuentes Delgado	4771300503
504	Hermenegildo Solis Nuñez	4771300504
505	Isidra Ibáñez Rojas	4771300505
506	Josefat Valencia Paz	4771300506
507	Kenia Cárdenas Ríos	4771300507
508	Lastenia Trejo Bravo	4771300508
509	Macedonio Acosta Serna	4771300509
510	Nahum Montes Torres	4771300510
511	Olegario Prado Vega	4771300511
512	Pelayo Muñoz Mora	4771300512
513	Quintera Garza Fuentes	4771300513
514	Rebeca Ramos Leal	4771300514
515	Serafina Valdez Campos	4771300515
516	Torcuato Medina Estrada	4771300516
517	Ubalda Sandoval Sandoval	4771300517
518	Venancio Aguilar Aguilar	4771300518
519	Waldimar Castro Ochoa	4771300519
520	Xitlalic Peña Carrillo	4771300520
521	Yolanda Hernández Zamora	4771300521
522	Zaida Flores Suárez	4771300522
523	Adela Díaz Paredes	4771300523
524	Belén Reyes Bermúdez	4771300524
525	Cástulo Serrano Quiroz	4771300525
526	Dominga Navarro Perea	4771300526
527	Efrén Romero Cortés	4771300527
528	Fulgencia Morales Olvera	4771300528
529	Gervasio Alvarado Gutiérrez	4771300529
530	Hilaria Treviño Cisneros	4771300530
531	Iluminada Lara León	4771300531
532	Januario Molina Ibarra	4771300532
533	Keyla Herrera Blanco	4771300533
534	Ladislava Fuentes Lozano	4771300534
535	Mauro Solis Delgado	4771300535
536	Narciso Ibáñez Nuñez	4771300536
537	Orfelinda Valencia Rojas	4771300537
538	Perfecto Cárdenas Paz	4771300538
539	Quirico Trejo Ríos	4771300539
540	Rosina Acosta Bravo	4771300540
541	Saturnino Montes Serna	4771300541
542	Tarsicio Prado Torres	4771300542
543	Uxía Muñoz Vega	4771300543
544	Verona Garza Mora	4771300544
545	Wilibaldo Ramos Fuentes	4771300545
546	Xóchitl Valdez Leal	4771300546
547	Yermi Medina Campos	4771300547
548	Zita Sandoval Estrada	4771300548
549	Adonai Aguilar Sandoval	4771300549
550	Brunilda Castro Aguilar	4771300550
551	Celestino Peña Acosta	4771300551
552	Daria Hernández Ochoa	4771300552
553	Emigdio Flores Carrillo	4771300553
554	Fermina Díaz Zamora	4771300554
555	Genoveva Reyes Suárez	4771300555
556	Higinia Serrano Paredes	4771300556
557	Irlanda Navarro Bermúdez	4771300557
558	Jael Romero Quiroz	4771300558
559	Kamila Morales Perea	4771300559
560	Lino Alvarado Cortés	4771300560
561	Marisol Treviño Olvera	4771300561
562	Nemorio Lara Gutiérrez	4771300562
563	Olimpia Molina Cisneros	4771300563
564	Pantaleona Herrera León	4771300564
565	Quirina Fuentes Ibarra	4771300565
566	Rogelio Solis Blanco	4771300566
567	Secundina Ibáñez Lozano	4771300567
568	Telesfora Valencia Delgado	4771300568
569	Ursula Cárdenas Nuñez	4771300569
570	Vitelio Trejo Rojas	4771300570
571	Wendy Acosta Paz	4771300571
572	Xelha Montes Ríos	4771300572
573	Yesenia Prado Bravo	4771300573
574	Zenón Muñoz Serna	4771300574
575	Agustín Garza Torres	4771300575
576	Benigna Ramos Vega	4771300576
577	Cipriana Valdez Mora	4771300577
578	Donaciano Medina Fuentes	4771300578
579	Evarista Sandoval Leal	4771300579
580	Facunda Aguilar Campos	4771300580
581	Genaro Castro Estrada	4771300581
582	Heliodora Peña Sandoval	4771300582
583	Inocencio Hernández Aguilar	4771300583
584	Jacoba Flores Acosta	4771300584
585	Kledis Díaz Ochoa	4771300585
586	Leobarda Reyes Carrillo	4771300586
587	Maxima Serrano Zamora	4771300587
588	Nabora Navarro Suárez	4771300588
589	Obdulio Romero Paredes	4771300589
707	Casandra Peña Torres	4771300707
590	Purificación Morales Bermúdez	4771300590
591	Quintina Alvarado Quiroz	4771300591
592	Rosario Treviño Perea	4771300592
593	Simeona Lara Cortés	4771300593
594	Teodosia Molina Olvera	4771300594
595	Urbano Herrera Gutiérrez	4771300595
596	Valentina Fuentes Cisneros	4771300596
597	Wilebaldo Solis León	4771300597
598	Xquenda Ibáñez Ibarra	4771300598
599	Yazmín Valencia Blanco	4771300599
600	Zoraida Cárdenas Lozano	4771300600
601	Abundio Trejo Delgado	4771300601
602	Berta Acosta Nuñez	4771300602
603	Cándido Montes Rojas	4771300603
604	Delia Prado Paz	4771300604
605	Eleuterio Muñoz Ríos	4771300605
606	Filomena Garza Bravo	4771300606
607	Gumara Ramos Serna	4771300607
608	Herminio Valdez Torres	4771300608
609	Isidora Medina Vega	4771300609
610	Jerónimo Sandoval Mora	4771300610
611	Keren Aguilar Fuentes	4771300611
612	Leandra Castro Leal	4771300612
613	Mateo Peña Campos	4771300613
614	Nélida Hernández Estrada	4771300614
615	Onésimo Flores Sandoval	4771300615
616	Pascuala Díaz Aguilar	4771300616
617	Querida Reyes Acosta	4771300617
618	Reginaldo Serrano Ochoa	4771300618
619	Sinforosa Navarro Carrillo	4771300619
620	Tomás Romero Zamora	4771300620
621	Umbelino Morales Suárez	4771300621
622	Victoriana Alvarado Paredes	4771300622
623	Walberta Treviño Bermúdez	4771300623
624	Ximena Lara Quiroz	4771300624
625	Yared Molina Perea	4771300625
626	Zita Herrera Cortés	4771300626
627	Abigael Fuentes Olvera	4771300627
628	Baldomero Solis Gutiérrez	4771300628
629	Celestina Ibáñez Cisneros	4771300629
630	Deogracias Valencia León	4771300630
631	Edelmiro Cárdenas Ibarra	4771300631
632	Florinda Trejo Blanco	4771300632
633	Gerónimo Acosta Lozano	4771300633
634	Hildelisa Montes Delgado	4771300634
635	Iluminado Prado Nuñez	4771300635
636	Jaqueline Muñoz Rojas	4771300636
637	Klemencia Garza Paz	4771300637
638	Leovigilda Ramos Ríos	4771300638
639	Marcelo Valdez Bravo	4771300639
640	Navor Medina Serna	4771300640
641	Obdulia Sandoval Torres	4771300641
642	Patricio Aguilar Vega	4771300642
643	Quezia Castro Mora	4771300643
644	Rufino Peña Fuentes	4771300644
645	Sidronia Hernández Leal	4771300645
646	Tarcisio Flores Campos	4771300646
647	Ursulina Díaz Estrada	4771300647
648	Valentín Reyes Sandoval	4771300648
649	Waldemar Serrano Aguilar	4771300649
650	Xochitl Navarro Acosta	4771300650
651	Yolanda Romero Ochoa	4771300651
652	Zeferino Morales Carrillo	4771300652
653	Agripino Alvarado Zamora	4771300653
654	Balbina Treviño Suárez	4771300654
655	Casimira Lara Paredes	4771300655
656	Demetrio Molina Bermúdez	4771300656
657	Eduviges Herrera Quiroz	4771300657
658	Facundo Fuentes Perea	4771300658
659	Gaudencia Solis Cortés	4771300659
660	Hermila Ibáñez Olvera	4771300660
661	Isadora Valencia Gutiérrez	4771300661
662	Jeremías Cárdenas Cisneros	4771300662
663	Kristel Trejo León	4771300663
664	Ladislao Acosta Ibarra	4771300664
665	Macaria Montes Blanco	4771300665
666	Nepomuceno Prado Lozano	4771300666
667	Obdulio Muñoz Delgado	4771300667
668	Perpetua Garza Nuñez	4771300668
669	Queridamor Ramos Rojas	4771300669
670	Rosalba Valdez Paz	4771300670
671	Saturnino Medina Ríos	4771300671
672	Trinidad Sandoval Bravo	4771300672
673	Ubaldo Aguilar Serna	4771300673
674	Verónica Castro Torres	4771300674
675	Wilebaldo Peña Vega	4771300675
676	Xenia Hernández Mora	4771300676
677	Yadira Flores Fuentes	4771300677
678	Zulema Díaz Leal	4771300678
679	Alfonso Reyes Campos	4771300679
680	Bárbara Serrano Estrada	4771300680
681	Casimiro Navarro Sandoval	4771300681
682	Delia Romero Aguilar	4771300682
683	Evaristo Morales Acosta	4771300683
684	Filomena Alvarado Ochoa	4771300684
685	Gonzalo Treviño Carrillo	4771300685
686	Hermelinda Lara Zamora	4771300686
687	Inocencio Molina Suárez	4771300687
688	Josefina Herrera Paredes	4771300688
689	Karlo Fuentes Bermúdez	4771300689
690	Lupita Solis Quiroz	4771300690
691	Maximiliano Ibáñez Perea	4771300691
692	Natividad Domínguez Cortés	4771300692
693	Onésimo Valencia Olvera	4771300693
694	Pilar Cárdenas Gutiérrez	4771300694
695	Quirino Trejo Cisneros	4771300695
696	Rafaela Acosta León	4771300696
697	Silverio Montes Ibarra	4771300697
698	Tania Prado Blanco	4771300698
699	Urbano Muñoz Lozano	4771300699
700	Velia Garza Delgado	4771300700
701	Waldo Ramos Nuñez	4771300701
702	Xitlali Valdez Rojas	4771300702
703	Yesica Medina Paz	4771300703
704	Zoila Sandoval Ríos	4771300704
705	Abrahán Aguilar Bravo	4771300705
706	Beatrice Castro Serna	4771300706
708	Demetrio Hernández Vega	4771300708
709	Eduviges Flores Mora	4771300709
710	Facundo Díaz Fuentes	4771300710
711	Genoveva Reyes Leal	4771300711
712	Heriberto Serrano Campos	4771300712
713	Iliana Navarro Estrada	4771300713
714	Jerónimo Romero Sandoval	4771300714
715	Karoline Morales Aguilar	4771300715
716	Lázaro Alvarado Acosta	4771300716
717	Magdalena Treviño Ochoa	4771300717
718	Nabor Lara Carrillo	4771300718
719	Octavia Molina Zamora	4771300719
720	Próspero Herrera Suárez	4771300720
721	Querétaro Fuentes Paredes	4771300721
722	Reginaldo Solis Bermúdez	4771300722
723	Silvana Ibáñez Quiroz	4771300723
724	Teófilo Domínguez Perea	4771300724
725	Ursulina Valencia Cortés	4771300725
726	Vidal Cárdenas Olvera	4771300726
727	Wilma Trejo Gutiérrez	4771300727
728	Ximena Acosta Cisneros	4771300728
729	Yamile Montes León	4771300729
730	Zenobio Prado Ibarra	4771300730
731	Alondra Muñoz Blanco	4771300731
732	Baldemar Garza Lozano	4771300732
733	Celeste Ramos Delgado	4771300733
734	Dámaso Valdez Nuñez	4771300734
735	Eloísa Medina Rojas	4771300735
736	Fortino Sandoval Paz	4771300736
737	Guadalberto Aguilar Ríos	4771300737
738	Higinia Castro Bravo	4771300738
739	Idalia Peña Serna	4771300739
740	Juventino Hernández Torres	4771300740
741	Kenia Flores Vega	4771300741
742	Leobardo Díaz Mora	4771300742
743	Melitón Reyes Fuentes	4771300743
744	Nicolasa Serrano Leal	4771300744
745	Onesiforo Navarro Campos	4771300745
746	Pureza Romero Estrada	4771300746
747	Quintiliano Morales Sandoval	4771300747
748	Remedios Alvarado Aguilar	4771300748
749	Serafín Treviño Acosta	4771300749
750	Telesfora Lara Ochoa	4771300750
751	Uziel Molina Carrillo	4771300751
752	Ventura Herrera Zamora	4771300752
753	Waldemar Fuentes Suárez	4771300753
754	Xanath Solis Paredes	4771300754
755	Yolotzin Ibáñez Bermúdez	4771300755
756	Zaida Domínguez Quiroz	4771300756
757	Amador Valencia Perea	4771300757
758	Briseyda Cárdenas Cortés	4771300758
759	Clementino Trejo Olvera	4771300759
760	Delfina Acosta Gutiérrez	4771300760
761	Epigmenio Montes Cisneros	4771300761
762	Fátima Prado León	4771300762
763	Galilea Muñoz Ibarra	4771300763
764	Humberto Garza Blanco	4771300764
765	Isaura Ramos Lozano	4771300765
766	Juventina Valdez Delgado	4771300766
767	Kaled Medina Nuñez	4771300767
768	Leocadia Sandoval Rojas	4771300768
769	Melquiades Aguilar Paz	4771300769
770	Nicomedes Castro Ríos	4771300770
771	Odalys Peña Bravo	4771300771
772	Primitiva Hernández Serna	4771300772
773	Querubin Flores Torres	4771300773
774	Rosenda Díaz Vega	4771300774
775	Santiago Reyes Mora	4771300775
776	Tomasa Serrano Fuentes	4771300776
777	Uldarico Navarro Leal	4771300777
778	Viviana Romero Campos	4771300778
779	Wulfrano Morales Estrada	4771300779
780	Xiadani Alvarado Sandoval	4771300780
781	Yerlan Treviño Aguilar	4771300781
782	Zorayda Lara Acosta	4771300782
783	Absalón Molina Ochoa	4771300783
784	Brenda Herrera Carrillo	4771300784
785	Ciro Fuentes Zamora	4771300785
786	Dora Solis Suárez	4771300786
787	Efraín Ibáñez Paredes	4771300787
788	Flor Valencia Bermúdez	4771300788
789	Genobeba Cárdenas Quiroz	4771300789
790	Herón Trejo Perea	4771300790
791	Ileana Acosta Cortés	4771300791
792	Jerusa Montes Olvera	4771300792
793	Kiros Prado Gutiérrez	4771300793
794	Lina Muñoz Cisneros	4771300794
795	Maclovio Garza León	4771300795
796	Nallely Ramos Ibarra	4771300796
797	Odilón Valdez Blanco	4771300797
798	Perla Medina Lozano	4771300798
799	Rosaura Aguilar Delgado	4771300799
800	Secundino Castro Nuñez	4771300800
\.


--
-- TOC entry 3610 (class 0 OID 16514)
-- Dependencies: 237
-- Data for Name: detallepedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detallepedido (id_detalle_pedido, id_pedido, id_platillo, cantidad, precio_unitario, subtotal) FROM stdin;
1	1	13	1	245.00	245.00
2	1	43	1	40.00	40.00
3	2	15	1	265.00	265.00
4	2	33	1	110.00	110.00
5	2	43	1	40.00	40.00
6	3	17	1	195.00	195.00
7	4	14	2	185.00	370.00
8	4	6	1	75.00	75.00
9	4	44	1	40.00	40.00
10	5	16	1	230.00	230.00
11	5	33	1	110.00	110.00
12	6	6	2	75.00	150.00
13	6	43	1	40.00	40.00
14	7	25	2	160.00	320.00
15	7	23	1	165.00	165.00
16	7	44	1	40.00	40.00
17	8	18	1	210.00	210.00
18	8	1	1	89.00	89.00
19	8	43	1	40.00	40.00
20	9	33	1	110.00	110.00
21	9	43	1	40.00	40.00
22	9	47	1	55.00	55.00
23	10	15	1	265.00	265.00
24	10	34	1	105.00	105.00
25	10	44	1	40.00	40.00
26	11	19	1	225.00	225.00
27	11	7	1	95.00	95.00
28	12	13	1	245.00	245.00
29	12	20	1	220.00	220.00
30	12	43	1	40.00	40.00
31	13	16	1	230.00	230.00
32	13	47	1	55.00	55.00
33	14	14	1	185.00	185.00
34	14	1	2	89.00	178.00
35	14	43	1	40.00	40.00
36	15	15	2	265.00	530.00
37	15	43	1	40.00	40.00
38	16	6	2	75.00	150.00
39	16	47	1	55.00	55.00
40	17	18	1	210.00	210.00
41	17	33	1	110.00	110.00
42	17	43	1	40.00	40.00
43	18	13	1	245.00	245.00
44	18	19	1	225.00	225.00
45	19	15	2	265.00	530.00
46	19	43	1	40.00	40.00
47	20	17	1	195.00	195.00
48	20	43	1	40.00	40.00
49	21	14	1	185.00	185.00
50	21	33	1	110.00	110.00
51	21	44	1	40.00	40.00
52	22	15	1	265.00	265.00
53	22	20	1	220.00	220.00
54	22	43	1	40.00	40.00
55	23	19	1	225.00	225.00
56	23	43	1	40.00	40.00
57	24	13	1	245.00	245.00
58	24	1	1	89.00	89.00
59	24	44	1	40.00	40.00
60	25	16	1	230.00	230.00
61	25	43	1	40.00	40.00
62	26	15	1	265.00	265.00
63	26	22	1	195.00	195.00
64	26	44	1	40.00	40.00
65	27	6	2	75.00	150.00
66	27	43	1	40.00	40.00
67	28	13	1	245.00	245.00
68	28	20	1	220.00	220.00
69	29	15	2	265.00	530.00
70	29	43	1	40.00	40.00
71	30	18	1	210.00	210.00
72	30	7	1	95.00	95.00
73	30	44	1	40.00	40.00
74	31	33	1	110.00	110.00
75	31	47	1	55.00	55.00
76	32	14	1	185.00	185.00
77	32	19	1	225.00	225.00
78	33	13	1	245.00	245.00
79	33	34	1	105.00	105.00
80	34	16	1	230.00	230.00
81	34	43	1	40.00	40.00
82	35	15	1	265.00	265.00
83	35	1	1	89.00	89.00
84	35	44	1	40.00	40.00
85	36	17	1	195.00	195.00
86	37	13	1	245.00	245.00
87	37	20	2	220.00	440.00
88	38	18	1	210.00	210.00
89	38	7	1	95.00	95.00
90	38	43	1	40.00	40.00
91	39	33	1	110.00	110.00
92	39	44	1	40.00	40.00
93	40	14	1	185.00	185.00
94	40	22	1	195.00	195.00
95	40	43	1	40.00	40.00
96	41	15	1	265.00	265.00
97	41	19	1	225.00	225.00
98	41	44	1	40.00	40.00
99	42	13	1	245.00	245.00
100	42	43	1	40.00	40.00
101	43	16	1	230.00	230.00
102	43	1	1	89.00	89.00
103	43	44	1	40.00	40.00
104	44	15	2	265.00	530.00
105	44	43	1	40.00	40.00
106	45	18	1	210.00	210.00
107	45	7	1	95.00	95.00
108	46	6	2	75.00	150.00
109	46	43	1	40.00	40.00
110	47	13	1	245.00	245.00
111	47	20	1	220.00	220.00
112	48	15	1	265.00	265.00
113	48	19	1	225.00	225.00
114	49	16	1	230.00	230.00
115	49	43	1	40.00	40.00
116	50	14	1	185.00	185.00
117	50	34	1	105.00	105.00
118	50	44	1	40.00	40.00
119	51	13	1	245.00	245.00
120	52	15	1	265.00	265.00
121	52	20	1	220.00	220.00
122	53	24	2	235.00	470.00
123	53	43	1	40.00	40.00
124	54	18	1	210.00	210.00
125	54	1	1	89.00	89.00
126	55	33	1	110.00	110.00
127	55	47	1	55.00	55.00
128	56	14	1	185.00	185.00
129	56	7	1	95.00	95.00
130	57	13	1	245.00	245.00
131	57	34	1	105.00	105.00
132	57	44	1	40.00	40.00
133	58	16	1	230.00	230.00
134	58	22	1	195.00	195.00
135	59	15	2	265.00	530.00
136	59	43	1	40.00	40.00
137	60	19	1	225.00	225.00
138	61	13	1	245.00	245.00
139	61	7	1	95.00	95.00
140	62	15	1	265.00	265.00
141	62	20	1	220.00	220.00
142	62	44	1	40.00	40.00
143	63	18	1	210.00	210.00
144	63	43	1	40.00	40.00
145	64	13	1	245.00	245.00
146	64	1	2	89.00	178.00
147	65	15	2	265.00	530.00
148	65	43	1	40.00	40.00
149	66	14	1	185.00	185.00
150	66	33	1	110.00	110.00
151	67	16	1	230.00	230.00
152	68	13	1	245.00	245.00
153	68	20	1	220.00	220.00
154	69	15	1	265.00	265.00
155	69	19	1	225.00	225.00
156	70	18	1	210.00	210.00
157	70	7	1	95.00	95.00
158	71	14	1	185.00	185.00
159	71	1	2	89.00	178.00
160	71	44	1	40.00	40.00
161	72	15	2	265.00	530.00
162	72	43	1	40.00	40.00
163	73	18	1	210.00	210.00
164	73	47	1	55.00	55.00
165	74	33	1	110.00	110.00
166	74	47	1	55.00	55.00
167	75	13	1	245.00	245.00
168	75	20	1	220.00	220.00
169	76	15	2	265.00	530.00
170	76	44	1	40.00	40.00
171	77	16	1	230.00	230.00
172	78	14	1	185.00	185.00
173	78	1	1	89.00	89.00
174	78	43	1	40.00	40.00
175	79	15	1	265.00	265.00
176	79	22	1	195.00	195.00
177	80	18	1	210.00	210.00
178	80	7	1	95.00	95.00
179	81	33	1	110.00	110.00
180	81	44	1	40.00	40.00
181	82	13	1	245.00	245.00
182	82	20	1	220.00	220.00
183	83	15	2	265.00	530.00
184	83	43	1	40.00	40.00
185	84	18	1	210.00	210.00
186	84	7	1	95.00	95.00
187	85	16	1	230.00	230.00
188	86	13	1	245.00	245.00
189	86	19	1	225.00	225.00
190	87	15	2	265.00	530.00
191	87	44	1	40.00	40.00
192	88	18	1	210.00	210.00
193	88	1	1	89.00	89.00
194	89	14	1	185.00	185.00
195	89	33	1	110.00	110.00
196	90	13	1	245.00	245.00
197	91	15	1	265.00	265.00
198	91	20	1	220.00	220.00
199	92	16	1	230.00	230.00
200	92	47	1	55.00	55.00
201	93	13	2	245.00	490.00
202	94	18	1	210.00	210.00
203	94	7	1	95.00	95.00
204	95	14	1	185.00	185.00
205	95	22	1	195.00	195.00
206	96	33	1	110.00	110.00
207	96	47	1	55.00	55.00
208	97	15	1	265.00	265.00
209	97	19	1	225.00	225.00
210	98	13	1	245.00	245.00
211	98	43	1	40.00	40.00
212	99	16	1	230.00	230.00
213	100	15	2	265.00	530.00
214	100	43	1	40.00	40.00
215	101	14	1	185.00	185.00
216	101	1	1	89.00	89.00
217	102	13	1	245.00	245.00
218	102	43	1	40.00	40.00
219	103	15	1	265.00	265.00
220	103	20	1	220.00	220.00
221	104	18	1	210.00	210.00
222	104	34	1	105.00	105.00
223	105	16	1	230.00	230.00
224	105	43	1	40.00	40.00
225	106	13	2	245.00	490.00
226	106	44	1	40.00	40.00
227	107	14	1	185.00	185.00
228	107	7	1	95.00	95.00
229	108	15	1	265.00	265.00
230	108	22	1	195.00	195.00
231	109	33	1	110.00	110.00
232	109	43	1	40.00	40.00
233	110	13	1	245.00	245.00
234	110	19	1	225.00	225.00
235	111	15	2	265.00	530.00
236	111	43	1	40.00	40.00
237	112	18	1	210.00	210.00
238	112	7	1	95.00	95.00
239	113	14	1	185.00	185.00
240	113	20	1	220.00	220.00
241	114	16	1	230.00	230.00
242	114	47	1	55.00	55.00
243	115	13	1	245.00	245.00
244	115	43	1	40.00	40.00
245	116	15	1	265.00	265.00
246	116	22	1	195.00	195.00
247	117	18	1	210.00	210.00
248	117	1	1	89.00	89.00
249	118	14	1	185.00	185.00
250	118	33	1	110.00	110.00
251	119	13	2	245.00	490.00
252	119	44	1	40.00	40.00
253	120	15	1	265.00	265.00
254	120	7	1	95.00	95.00
255	121	16	1	230.00	230.00
256	122	13	1	245.00	245.00
257	122	20	1	220.00	220.00
258	123	18	1	210.00	210.00
259	123	47	1	55.00	55.00
260	124	14	1	185.00	185.00
261	124	43	1	40.00	40.00
262	125	15	2	265.00	530.00
263	125	43	1	40.00	40.00
264	126	13	1	245.00	245.00
265	126	7	1	95.00	95.00
266	127	16	1	230.00	230.00
267	127	1	1	89.00	89.00
268	128	18	1	210.00	210.00
269	129	15	1	265.00	265.00
270	129	19	1	225.00	225.00
271	130	14	1	185.00	185.00
272	130	1	1	89.00	89.00
273	131	13	2	245.00	490.00
274	132	15	1	265.00	265.00
275	132	22	1	195.00	195.00
276	133	18	1	210.00	210.00
277	133	43	1	40.00	40.00
278	134	14	1	185.00	185.00
279	134	34	1	105.00	105.00
280	135	16	1	230.00	230.00
281	136	13	1	245.00	245.00
282	136	20	1	220.00	220.00
283	137	15	2	265.00	530.00
284	137	43	1	40.00	40.00
285	138	18	1	210.00	210.00
286	139	14	1	185.00	185.00
287	139	22	1	195.00	195.00
288	140	13	1	245.00	245.00
289	140	7	1	95.00	95.00
290	141	16	1	230.00	230.00
291	141	43	1	40.00	40.00
292	142	15	1	265.00	265.00
293	142	19	1	225.00	225.00
294	143	13	1	245.00	245.00
295	143	1	1	89.00	89.00
296	144	18	1	210.00	210.00
297	145	14	2	185.00	370.00
298	145	43	1	40.00	40.00
299	146	13	1	245.00	245.00
300	146	47	1	55.00	55.00
301	147	16	1	230.00	230.00
302	148	15	1	265.00	265.00
303	148	20	1	220.00	220.00
304	149	18	1	210.00	210.00
305	149	43	1	40.00	40.00
306	150	14	1	185.00	185.00
307	150	7	1	95.00	95.00
308	151	13	2	245.00	490.00
309	151	44	1	40.00	40.00
310	152	15	1	265.00	265.00
311	152	7	1	95.00	95.00
312	153	16	1	230.00	230.00
313	154	13	1	245.00	245.00
314	154	22	1	195.00	195.00
315	155	18	1	210.00	210.00
316	156	15	1	265.00	265.00
317	156	19	1	225.00	225.00
318	157	14	1	185.00	185.00
319	157	34	1	105.00	105.00
320	158	13	1	245.00	245.00
321	158	20	1	220.00	220.00
322	159	16	1	230.00	230.00
323	160	15	2	265.00	530.00
324	160	43	1	40.00	40.00
325	161	18	1	210.00	210.00
326	162	14	1	185.00	185.00
327	162	43	1	40.00	40.00
328	163	13	1	245.00	245.00
329	163	22	1	195.00	195.00
330	164	15	1	265.00	265.00
331	164	7	1	95.00	95.00
332	165	16	1	230.00	230.00
333	166	13	1	245.00	245.00
334	166	19	1	225.00	225.00
335	167	18	1	210.00	210.00
336	167	1	1	89.00	89.00
337	168	14	1	185.00	185.00
338	169	15	2	265.00	530.00
339	169	43	1	40.00	40.00
340	170	13	1	245.00	245.00
341	170	47	1	55.00	55.00
342	171	16	1	230.00	230.00
343	172	18	1	210.00	210.00
344	172	20	1	220.00	220.00
345	173	15	1	265.00	265.00
346	173	7	1	95.00	95.00
347	174	14	1	185.00	185.00
348	175	13	1	245.00	245.00
349	175	22	1	195.00	195.00
350	176	15	1	265.00	265.00
351	176	19	1	225.00	225.00
352	177	16	1	230.00	230.00
353	178	18	2	210.00	420.00
354	178	43	1	40.00	40.00
355	179	14	1	185.00	185.00
356	180	13	1	245.00	245.00
357	181	15	1	265.00	265.00
358	181	34	1	105.00	105.00
359	182	16	1	230.00	230.00
360	183	18	1	210.00	210.00
361	183	7	1	95.00	95.00
362	184	13	2	245.00	490.00
363	184	44	1	40.00	40.00
364	185	15	1	265.00	265.00
365	185	43	1	40.00	40.00
366	186	14	1	185.00	185.00
367	187	13	1	245.00	245.00
368	187	22	1	195.00	195.00
369	188	15	1	265.00	265.00
370	188	7	1	95.00	95.00
371	189	16	1	230.00	230.00
372	190	18	2	210.00	420.00
373	190	43	1	40.00	40.00
374	191	14	1	185.00	185.00
375	192	13	1	245.00	245.00
376	193	15	1	265.00	265.00
377	193	19	1	225.00	225.00
378	194	16	1	230.00	230.00
379	195	18	1	210.00	210.00
380	195	1	1	89.00	89.00
381	196	14	1	185.00	185.00
382	196	43	1	40.00	40.00
383	197	13	2	245.00	490.00
384	198	15	1	265.00	265.00
385	198	7	1	95.00	95.00
386	199	16	1	230.00	230.00
387	200	13	1	245.00	245.00
388	200	22	1	195.00	195.00
389	201	18	1	210.00	210.00
390	202	15	1	265.00	265.00
391	202	20	1	220.00	220.00
392	203	14	1	185.00	185.00
393	203	34	1	105.00	105.00
394	204	16	1	230.00	230.00
395	205	13	2	245.00	490.00
396	205	44	1	40.00	40.00
397	206	15	1	265.00	265.00
398	206	47	1	55.00	55.00
399	207	18	1	210.00	210.00
400	208	14	1	185.00	185.00
401	208	22	1	195.00	195.00
402	209	13	1	245.00	245.00
403	209	7	1	95.00	95.00
404	210	16	1	230.00	230.00
405	211	15	1	265.00	265.00
406	211	19	1	225.00	225.00
407	212	18	1	210.00	210.00
408	212	43	1	40.00	40.00
409	213	14	1	185.00	185.00
410	214	13	2	245.00	490.00
411	214	44	1	40.00	40.00
412	215	15	1	265.00	265.00
413	215	7	1	95.00	95.00
414	216	16	1	230.00	230.00
415	217	13	1	245.00	245.00
416	217	20	1	220.00	220.00
417	218	18	1	210.00	210.00
418	218	1	1	89.00	89.00
419	219	14	1	185.00	185.00
420	220	15	2	265.00	530.00
421	220	43	1	40.00	40.00
422	221	13	1	245.00	245.00
423	221	47	1	55.00	55.00
424	222	16	1	230.00	230.00
425	223	18	1	210.00	210.00
426	223	22	1	195.00	195.00
427	224	14	1	185.00	185.00
428	224	7	1	95.00	95.00
429	225	13	1	245.00	245.00
430	226	15	1	265.00	265.00
431	226	19	1	225.00	225.00
432	227	16	1	230.00	230.00
433	228	13	2	245.00	490.00
434	228	43	1	40.00	40.00
435	229	18	1	210.00	210.00
436	230	14	1	185.00	185.00
437	230	34	1	105.00	105.00
438	231	15	1	265.00	265.00
439	232	13	1	245.00	245.00
440	232	20	1	220.00	220.00
441	233	16	1	230.00	230.00
442	234	18	1	210.00	210.00
443	235	14	2	185.00	370.00
444	235	43	1	40.00	40.00
445	236	13	1	245.00	245.00
446	237	15	1	265.00	265.00
447	237	22	1	195.00	195.00
448	238	16	1	230.00	230.00
449	239	18	1	210.00	210.00
450	239	7	1	95.00	95.00
451	240	14	1	185.00	185.00
452	241	13	2	245.00	490.00
453	241	44	1	40.00	40.00
454	242	15	1	265.00	265.00
455	242	47	1	55.00	55.00
456	243	16	1	230.00	230.00
457	244	18	1	210.00	210.00
458	244	19	1	225.00	225.00
459	245	14	1	185.00	185.00
460	246	13	1	245.00	245.00
461	247	15	1	265.00	265.00
462	247	20	1	220.00	220.00
463	248	16	1	230.00	230.00
464	249	18	1	210.00	210.00
465	249	1	1	89.00	89.00
466	250	14	2	185.00	370.00
467	250	43	1	40.00	40.00
468	251	13	1	245.00	245.00
469	251	7	1	95.00	95.00
470	252	15	1	265.00	265.00
471	253	16	1	230.00	230.00
472	253	22	1	195.00	195.00
473	254	18	1	210.00	210.00
474	255	14	1	185.00	185.00
475	256	13	2	245.00	490.00
476	256	43	1	40.00	40.00
477	257	15	1	265.00	265.00
478	257	34	1	105.00	105.00
479	258	16	1	230.00	230.00
480	259	18	1	210.00	210.00
481	259	19	1	225.00	225.00
482	260	14	1	185.00	185.00
483	261	13	1	245.00	245.00
484	261	7	1	95.00	95.00
485	262	15	2	265.00	530.00
486	262	43	1	40.00	40.00
487	263	16	1	230.00	230.00
488	264	18	1	210.00	210.00
489	264	20	1	220.00	220.00
490	265	14	1	185.00	185.00
491	266	13	1	245.00	245.00
492	267	15	1	265.00	265.00
493	267	22	1	195.00	195.00
494	268	16	1	230.00	230.00
495	269	18	1	210.00	210.00
496	270	14	1	185.00	185.00
497	271	13	2	245.00	490.00
498	272	15	1	265.00	265.00
499	272	7	1	95.00	95.00
500	273	16	1	230.00	230.00
501	274	18	1	210.00	210.00
502	274	47	1	55.00	55.00
503	275	14	1	185.00	185.00
504	276	13	1	245.00	245.00
505	276	19	1	225.00	225.00
506	277	15	1	265.00	265.00
507	278	16	1	230.00	230.00
508	278	20	1	220.00	220.00
509	279	18	1	210.00	210.00
510	280	14	2	185.00	370.00
511	280	43	1	40.00	40.00
512	281	13	1	245.00	245.00
513	282	15	1	265.00	265.00
514	282	22	1	195.00	195.00
515	283	16	1	230.00	230.00
516	284	18	1	210.00	210.00
517	284	1	1	89.00	89.00
518	285	14	1	185.00	185.00
519	286	13	2	245.00	490.00
520	287	15	1	265.00	265.00
521	287	7	1	95.00	95.00
522	288	16	1	230.00	230.00
523	289	18	1	210.00	210.00
524	290	14	1	185.00	185.00
525	291	13	1	245.00	245.00
526	291	34	1	105.00	105.00
527	292	15	1	265.00	265.00
528	292	19	1	225.00	225.00
529	293	16	1	230.00	230.00
530	294	18	1	210.00	210.00
531	294	20	1	220.00	220.00
532	295	14	1	185.00	185.00
533	296	13	2	245.00	490.00
534	297	15	1	265.00	265.00
535	298	16	1	230.00	230.00
536	299	18	1	210.00	210.00
537	300	14	1	185.00	185.00
538	300	22	1	195.00	195.00
539	301	13	1	245.00	245.00
540	301	7	1	95.00	95.00
541	302	15	2	265.00	530.00
542	303	16	1	230.00	230.00
543	304	18	1	210.00	210.00
544	304	47	1	55.00	55.00
545	305	14	2	185.00	370.00
546	305	43	1	40.00	40.00
547	306	13	1	245.00	245.00
548	307	15	1	265.00	265.00
549	307	20	1	220.00	220.00
550	308	16	1	230.00	230.00
551	309	18	1	210.00	210.00
552	309	1	1	89.00	89.00
553	310	14	1	185.00	185.00
554	310	34	1	105.00	105.00
555	311	13	2	245.00	490.00
556	312	15	1	265.00	265.00
557	312	22	1	195.00	195.00
558	313	16	2	230.00	460.00
559	314	18	1	210.00	210.00
560	315	14	1	185.00	185.00
561	316	13	1	245.00	245.00
562	316	19	1	225.00	225.00
563	317	15	1	265.00	265.00
564	317	7	1	95.00	95.00
565	318	16	1	230.00	230.00
566	319	13	2	245.00	490.00
567	319	44	1	40.00	40.00
568	320	18	1	210.00	210.00
569	321	14	1	185.00	185.00
570	321	20	1	220.00	220.00
571	322	15	1	265.00	265.00
572	323	16	1	230.00	230.00
573	323	47	1	55.00	55.00
574	324	13	1	245.00	245.00
575	325	18	1	210.00	210.00
576	325	7	1	95.00	95.00
577	326	14	1	185.00	185.00
578	327	15	2	265.00	530.00
579	328	16	1	230.00	230.00
580	329	13	1	245.00	245.00
581	329	1	1	89.00	89.00
582	330	18	1	210.00	210.00
583	331	14	1	185.00	185.00
584	331	22	1	195.00	195.00
585	332	15	1	265.00	265.00
586	333	16	1	230.00	230.00
587	333	19	1	225.00	225.00
588	334	13	2	245.00	490.00
589	334	43	1	40.00	40.00
590	335	18	1	210.00	210.00
591	336	14	1	185.00	185.00
592	337	15	1	265.00	265.00
593	337	34	1	105.00	105.00
594	338	16	1	230.00	230.00
595	339	13	1	245.00	245.00
596	339	7	1	95.00	95.00
597	340	18	2	210.00	420.00
598	341	14	1	185.00	185.00
599	342	15	1	265.00	265.00
600	342	20	1	220.00	220.00
601	343	16	1	230.00	230.00
602	344	13	1	245.00	245.00
603	345	18	1	210.00	210.00
604	346	14	1	185.00	185.00
605	347	15	1	265.00	265.00
606	347	47	1	55.00	55.00
607	348	16	1	230.00	230.00
608	349	13	2	245.00	490.00
609	350	18	1	210.00	210.00
610	350	22	1	195.00	195.00
611	351	14	1	185.00	185.00
612	352	15	1	265.00	265.00
613	352	7	1	95.00	95.00
614	353	16	1	230.00	230.00
615	354	13	1	245.00	245.00
616	355	18	1	210.00	210.00
617	355	19	1	225.00	225.00
618	356	14	1	185.00	185.00
619	357	15	2	265.00	530.00
620	358	16	1	230.00	230.00
621	359	13	1	245.00	245.00
622	360	18	1	210.00	210.00
623	361	14	1	185.00	185.00
624	361	1	1	89.00	89.00
625	362	15	1	265.00	265.00
626	363	16	1	230.00	230.00
627	363	20	1	220.00	220.00
628	364	13	2	245.00	490.00
629	364	44	1	40.00	40.00
630	365	18	1	210.00	210.00
631	366	14	1	185.00	185.00
632	366	34	1	105.00	105.00
633	367	15	1	265.00	265.00
634	367	22	1	195.00	195.00
635	368	13	2	245.00	490.00
636	368	43	1	40.00	40.00
637	369	16	1	230.00	230.00
638	369	7	1	95.00	95.00
639	370	18	1	210.00	210.00
640	371	14	1	185.00	185.00
641	372	15	1	265.00	265.00
642	372	19	1	225.00	225.00
643	373	13	1	245.00	245.00
644	374	16	1	230.00	230.00
645	374	47	1	55.00	55.00
646	375	18	1	210.00	210.00
647	375	7	1	95.00	95.00
648	376	14	1	185.00	185.00
649	376	20	1	220.00	220.00
650	377	15	1	265.00	265.00
651	378	13	1	245.00	245.00
652	378	22	1	195.00	195.00
653	379	16	1	230.00	230.00
654	380	18	1	210.00	210.00
655	381	14	1	185.00	185.00
656	382	15	2	265.00	530.00
657	383	13	1	245.00	245.00
658	384	16	1	230.00	230.00
659	384	47	1	55.00	55.00
660	385	18	1	210.00	210.00
661	386	14	1	185.00	185.00
662	387	15	1	265.00	265.00
663	388	13	2	245.00	490.00
664	389	16	1	230.00	230.00
665	390	18	1	210.00	210.00
666	391	14	1	185.00	185.00
667	392	15	1	265.00	265.00
668	393	13	1	245.00	245.00
669	394	16	1	230.00	230.00
670	395	18	1	210.00	210.00
671	396	14	1	185.00	185.00
672	397	15	2	265.00	530.00
673	398	13	1	245.00	245.00
674	399	16	1	230.00	230.00
675	400	18	1	210.00	210.00
676	400	7	1	95.00	95.00
677	401	14	1	185.00	185.00
678	402	15	1	265.00	265.00
679	402	20	1	220.00	220.00
680	403	13	1	245.00	245.00
681	404	16	1	230.00	230.00
682	405	18	1	210.00	210.00
683	405	34	1	105.00	105.00
684	406	14	1	185.00	185.00
685	407	13	2	245.00	490.00
686	407	43	1	40.00	40.00
687	408	15	1	265.00	265.00
688	408	22	1	195.00	195.00
689	409	16	1	230.00	230.00
690	410	18	1	210.00	210.00
691	411	14	1	185.00	185.00
692	411	7	1	95.00	95.00
693	412	15	1	265.00	265.00
694	412	19	1	225.00	225.00
695	413	13	1	245.00	245.00
696	414	16	1	230.00	230.00
697	414	47	1	55.00	55.00
698	415	18	1	210.00	210.00
699	416	14	1	185.00	185.00
700	417	15	2	265.00	530.00
701	418	13	1	245.00	245.00
702	418	20	1	220.00	220.00
703	419	16	1	230.00	230.00
704	420	18	2	210.00	420.00
705	421	14	1	185.00	185.00
706	422	15	1	265.00	265.00
707	423	13	2	245.00	490.00
708	424	16	1	230.00	230.00
709	425	18	1	210.00	210.00
710	426	14	1	185.00	185.00
711	427	15	1	265.00	265.00
712	428	13	1	245.00	245.00
713	429	16	2	230.00	460.00
714	430	18	1	210.00	210.00
715	431	14	1	185.00	185.00
716	432	15	1	265.00	265.00
717	433	13	1	245.00	245.00
718	434	16	1	230.00	230.00
719	435	18	1	210.00	210.00
720	436	14	1	185.00	185.00
721	437	15	2	265.00	530.00
722	438	13	1	245.00	245.00
723	439	16	1	230.00	230.00
724	440	18	1	210.00	210.00
725	441	14	1	185.00	185.00
726	442	15	1	265.00	265.00
727	443	13	1	245.00	245.00
728	444	16	2	230.00	460.00
729	444	43	1	40.00	40.00
730	445	18	1	210.00	210.00
731	446	14	1	185.00	185.00
732	447	15	1	265.00	265.00
733	448	13	1	245.00	245.00
734	449	16	1	230.00	230.00
735	450	18	1	210.00	210.00
736	451	14	1	185.00	185.00
737	452	15	2	265.00	530.00
738	453	13	1	245.00	245.00
739	454	16	1	230.00	230.00
740	455	18	1	210.00	210.00
741	456	14	1	185.00	185.00
742	457	15	1	265.00	265.00
743	458	13	1	245.00	245.00
744	459	16	1	230.00	230.00
745	460	18	1	210.00	210.00
746	461	14	1	185.00	185.00
747	462	15	2	265.00	530.00
748	463	13	1	245.00	245.00
749	464	16	1	230.00	230.00
750	465	18	1	210.00	210.00
751	466	14	1	185.00	185.00
752	467	15	1	265.00	265.00
753	468	13	1	245.00	245.00
754	469	16	1	230.00	230.00
755	470	18	1	210.00	210.00
756	471	14	1	185.00	185.00
757	472	15	2	265.00	530.00
758	473	13	1	245.00	245.00
759	474	16	1	230.00	230.00
760	475	18	2	210.00	420.00
761	475	43	1	40.00	40.00
762	476	14	1	185.00	185.00
763	476	7	1	95.00	95.00
764	477	15	1	265.00	265.00
765	478	13	1	245.00	245.00
766	479	16	1	230.00	230.00
767	480	18	1	210.00	210.00
768	481	14	1	185.00	185.00
769	482	15	1	265.00	265.00
770	483	13	1	245.00	245.00
771	484	16	1	230.00	230.00
772	485	18	1	210.00	210.00
773	486	14	1	185.00	185.00
774	487	15	2	265.00	530.00
775	488	13	1	245.00	245.00
776	489	16	1	230.00	230.00
777	490	18	1	210.00	210.00
778	491	14	1	185.00	185.00
779	492	15	1	265.00	265.00
780	493	13	1	245.00	245.00
781	494	16	1	230.00	230.00
782	495	18	1	210.00	210.00
783	496	14	1	185.00	185.00
784	497	15	2	265.00	530.00
785	498	13	1	245.00	245.00
786	499	16	1	230.00	230.00
787	500	18	1	210.00	210.00
788	500	20	1	220.00	220.00
789	501	14	1	185.00	185.00
790	501	22	1	195.00	195.00
791	502	15	1	265.00	265.00
792	503	13	1	245.00	245.00
793	504	16	1	230.00	230.00
794	505	18	1	210.00	210.00
795	505	1	1	89.00	89.00
796	506	14	1	185.00	185.00
797	507	15	2	265.00	530.00
798	507	43	1	40.00	40.00
799	508	13	1	245.00	245.00
800	509	16	1	230.00	230.00
801	510	14	2	185.00	370.00
802	510	43	1	40.00	40.00
803	511	15	1	265.00	265.00
804	512	13	1	245.00	245.00
805	513	16	1	230.00	230.00
806	513	7	1	95.00	95.00
807	514	18	1	210.00	210.00
808	515	14	1	185.00	185.00
809	516	15	2	265.00	530.00
810	517	13	1	245.00	245.00
811	518	16	1	230.00	230.00
812	519	18	1	210.00	210.00
813	520	14	1	185.00	185.00
814	521	15	1	265.00	265.00
815	522	13	1	245.00	245.00
816	523	16	1	230.00	230.00
817	524	18	1	210.00	210.00
818	525	14	2	185.00	370.00
819	525	43	1	40.00	40.00
820	526	15	1	265.00	265.00
821	527	13	1	245.00	245.00
822	528	16	1	230.00	230.00
823	529	18	1	210.00	210.00
824	530	14	1	185.00	185.00
825	531	15	2	265.00	530.00
826	532	13	1	245.00	245.00
827	533	16	1	230.00	230.00
828	534	18	1	210.00	210.00
829	535	14	1	185.00	185.00
830	536	15	1	265.00	265.00
831	537	13	1	245.00	245.00
832	538	16	1	230.00	230.00
833	539	18	1	210.00	210.00
834	540	14	2	185.00	370.00
835	540	43	1	40.00	40.00
836	541	15	1	265.00	265.00
837	542	13	1	245.00	245.00
838	543	16	1	230.00	230.00
839	544	18	1	210.00	210.00
840	545	14	1	185.00	185.00
841	546	15	2	265.00	530.00
842	547	13	1	245.00	245.00
843	548	16	1	230.00	230.00
844	549	18	1	210.00	210.00
845	550	14	1	185.00	185.00
846	551	15	1	265.00	265.00
847	552	13	1	245.00	245.00
848	553	16	1	230.00	230.00
849	554	18	1	210.00	210.00
850	555	14	2	185.00	370.00
851	555	43	1	40.00	40.00
852	556	15	1	265.00	265.00
853	557	13	1	245.00	245.00
854	558	16	1	230.00	230.00
855	559	18	1	210.00	210.00
856	560	14	1	185.00	185.00
857	561	15	2	265.00	530.00
858	562	13	1	245.00	245.00
859	563	16	1	230.00	230.00
860	564	18	1	210.00	210.00
861	565	14	1	185.00	185.00
862	566	15	1	265.00	265.00
863	567	13	1	245.00	245.00
864	568	16	1	230.00	230.00
865	569	18	1	210.00	210.00
866	570	14	2	185.00	370.00
867	570	43	1	40.00	40.00
868	571	15	1	265.00	265.00
869	572	13	1	245.00	245.00
870	573	16	1	230.00	230.00
871	574	18	1	210.00	210.00
872	575	14	1	185.00	185.00
873	576	15	2	265.00	530.00
874	577	13	2	245.00	490.00
875	577	43	1	40.00	40.00
876	578	16	1	230.00	230.00
877	578	47	1	55.00	55.00
878	579	18	1	210.00	210.00
879	580	14	1	185.00	185.00
880	581	15	1	265.00	265.00
881	582	13	1	245.00	245.00
882	583	16	1	230.00	230.00
883	584	18	1	210.00	210.00
884	585	14	2	185.00	370.00
885	585	43	1	40.00	40.00
886	586	15	1	265.00	265.00
887	587	13	1	245.00	245.00
888	588	16	1	230.00	230.00
889	589	18	1	210.00	210.00
890	590	14	1	185.00	185.00
891	591	15	2	265.00	530.00
892	592	13	1	245.00	245.00
893	593	16	1	230.00	230.00
894	594	18	1	210.00	210.00
895	595	14	1	185.00	185.00
896	596	15	1	265.00	265.00
897	597	13	1	245.00	245.00
898	598	16	1	230.00	230.00
899	599	18	1	210.00	210.00
900	600	14	2	185.00	370.00
901	600	43	1	40.00	40.00
902	601	15	1	265.00	265.00
903	602	13	1	245.00	245.00
904	603	16	1	230.00	230.00
905	604	18	1	210.00	210.00
906	605	14	1	185.00	185.00
907	606	15	2	265.00	530.00
908	607	13	1	245.00	245.00
909	608	16	1	230.00	230.00
910	609	18	1	210.00	210.00
911	610	14	1	185.00	185.00
912	611	15	1	265.00	265.00
913	612	13	2	245.00	490.00
914	613	16	1	230.00	230.00
915	614	18	1	210.00	210.00
916	615	14	1	185.00	185.00
917	616	15	2	265.00	530.00
918	617	13	1	245.00	245.00
919	618	16	1	230.00	230.00
920	619	18	1	210.00	210.00
921	620	14	1	185.00	185.00
922	621	15	1	265.00	265.00
923	622	13	1	245.00	245.00
924	623	16	1	230.00	230.00
925	624	18	2	210.00	420.00
926	625	14	1	185.00	185.00
927	626	15	2	265.00	530.00
928	627	13	2	245.00	490.00
929	628	16	1	230.00	230.00
930	629	18	1	210.00	210.00
931	630	14	1	185.00	185.00
932	631	15	1	265.00	265.00
933	632	13	1	245.00	245.00
934	633	16	1	230.00	230.00
935	634	18	1	210.00	210.00
936	635	14	1	185.00	185.00
937	636	15	2	265.00	530.00
938	637	13	1	245.00	245.00
939	638	16	1	230.00	230.00
940	639	18	1	210.00	210.00
941	640	14	1	185.00	185.00
942	641	15	1	265.00	265.00
943	642	13	1	245.00	245.00
944	643	16	1	230.00	230.00
945	644	18	1	210.00	210.00
946	645	14	2	185.00	370.00
947	645	43	1	40.00	40.00
948	646	15	1	265.00	265.00
949	647	13	1	245.00	245.00
950	648	16	2	230.00	460.00
951	649	18	1	210.00	210.00
952	650	14	1	185.00	185.00
953	651	15	2	265.00	530.00
954	652	13	1	245.00	245.00
955	653	16	1	230.00	230.00
956	654	18	1	210.00	210.00
957	654	20	1	220.00	220.00
958	655	14	1	185.00	185.00
959	656	15	1	265.00	265.00
960	657	13	2	245.00	490.00
961	658	16	1	230.00	230.00
962	659	18	1	210.00	210.00
963	660	14	1	185.00	185.00
964	661	15	1	265.00	265.00
965	662	13	1	245.00	245.00
966	663	16	2	230.00	460.00
967	664	18	1	210.00	210.00
968	665	14	1	185.00	185.00
969	666	15	2	265.00	530.00
970	667	13	1	245.00	245.00
971	668	16	1	230.00	230.00
972	669	18	1	210.00	210.00
973	670	14	1	185.00	185.00
974	671	15	1	265.00	265.00
975	672	13	2	245.00	490.00
976	673	16	1	230.00	230.00
977	674	18	1	210.00	210.00
978	675	14	1	185.00	185.00
979	676	15	2	265.00	530.00
980	677	13	1	245.00	245.00
981	678	16	1	230.00	230.00
982	679	18	2	210.00	420.00
983	679	43	1	40.00	40.00
984	680	14	1	185.00	185.00
985	680	20	1	220.00	220.00
986	681	15	1	265.00	265.00
987	682	13	1	245.00	245.00
988	683	16	1	230.00	230.00
989	684	18	1	210.00	210.00
990	685	14	1	185.00	185.00
991	686	15	1	265.00	265.00
992	687	13	2	245.00	490.00
993	688	16	1	230.00	230.00
994	689	18	1	210.00	210.00
995	690	14	2	185.00	370.00
996	690	43	1	40.00	40.00
997	691	15	1	265.00	265.00
998	692	13	1	245.00	245.00
999	693	16	1	230.00	230.00
1000	694	18	1	210.00	210.00
1001	695	14	1	185.00	185.00
1002	696	15	2	265.00	530.00
1003	697	13	1	245.00	245.00
1004	698	16	1	230.00	230.00
1005	699	18	2	210.00	420.00
1006	700	14	1	185.00	185.00
1007	701	15	1	265.00	265.00
1008	702	13	1	245.00	245.00
1009	703	16	1	230.00	230.00
1010	704	18	1	210.00	210.00
1011	705	14	1	185.00	185.00
1012	706	15	2	265.00	530.00
1013	707	13	1	245.00	245.00
1014	708	16	1	230.00	230.00
1015	709	18	1	210.00	210.00
1016	710	14	1	185.00	185.00
1017	711	15	2	265.00	530.00
1018	712	13	1	245.00	245.00
1019	713	16	1	230.00	230.00
1020	714	18	2	210.00	420.00
1021	715	14	1	185.00	185.00
1022	716	15	1	265.00	265.00
1023	717	13	1	245.00	245.00
1024	718	16	1	230.00	230.00
1025	719	18	1	210.00	210.00
1026	720	14	2	185.00	370.00
1027	720	43	1	40.00	40.00
1028	721	15	1	265.00	265.00
1029	722	13	1	245.00	245.00
1030	723	16	1	230.00	230.00
1031	724	18	1	210.00	210.00
1032	725	14	1	185.00	185.00
1033	726	15	2	265.00	530.00
1034	727	13	1	245.00	245.00
1035	728	16	1	230.00	230.00
1036	729	18	2	210.00	420.00
1037	730	14	1	185.00	185.00
1038	731	15	1	265.00	265.00
1039	732	13	1	245.00	245.00
1040	733	16	1	230.00	230.00
1041	734	18	1	210.00	210.00
1042	735	14	2	185.00	370.00
1043	735	43	1	40.00	40.00
1044	736	15	1	265.00	265.00
1045	737	13	1	245.00	245.00
1046	738	16	1	230.00	230.00
1047	739	18	1	210.00	210.00
1048	740	14	1	185.00	185.00
1049	741	15	2	265.00	530.00
1050	742	13	1	245.00	245.00
1051	743	16	1	230.00	230.00
1052	744	18	1	210.00	210.00
1053	745	14	1	185.00	185.00
1054	746	15	1	265.00	265.00
1055	747	13	2	245.00	490.00
1056	748	16	1	230.00	230.00
1057	749	18	1	210.00	210.00
1058	750	14	2	185.00	370.00
1059	750	43	1	40.00	40.00
1060	751	15	1	265.00	265.00
1061	752	13	1	245.00	245.00
1062	753	16	1	230.00	230.00
1063	754	18	1	210.00	210.00
1064	755	14	1	185.00	185.00
1065	756	15	2	265.00	530.00
1066	757	13	1	245.00	245.00
1067	758	16	1	230.00	230.00
1068	759	18	2	210.00	420.00
1069	760	14	1	185.00	185.00
1070	761	15	1	265.00	265.00
1071	762	13	1	245.00	245.00
1072	763	16	1	230.00	230.00
1073	764	18	1	210.00	210.00
1074	765	14	2	185.00	370.00
1075	765	43	1	40.00	40.00
1076	766	15	1	265.00	265.00
1077	767	13	1	245.00	245.00
1078	768	16	1	230.00	230.00
1079	769	18	1	210.00	210.00
1080	770	14	1	185.00	185.00
1081	771	15	2	265.00	530.00
1082	772	13	1	245.00	245.00
1083	773	16	1	230.00	230.00
1084	774	18	1	210.00	210.00
1085	775	14	1	185.00	185.00
1086	776	15	1	265.00	265.00
1087	777	13	2	245.00	490.00
1088	778	16	1	230.00	230.00
1089	779	18	1	210.00	210.00
1090	780	14	2	185.00	370.00
1091	780	43	1	40.00	40.00
1092	781	15	1	265.00	265.00
1093	782	13	2	245.00	490.00
1094	782	43	1	40.00	40.00
1095	783	16	1	230.00	230.00
1096	783	20	1	220.00	220.00
1097	784	18	1	210.00	210.00
1098	785	14	1	185.00	185.00
1099	786	15	1	265.00	265.00
1100	787	13	1	245.00	245.00
1101	788	16	1	230.00	230.00
1102	789	18	1	210.00	210.00
1103	790	14	2	185.00	370.00
1104	790	43	1	40.00	40.00
1105	791	15	1	265.00	265.00
1106	792	13	1	245.00	245.00
1107	793	16	1	230.00	230.00
1108	794	18	1	210.00	210.00
1109	795	14	1	185.00	185.00
1110	796	15	2	265.00	530.00
1111	797	13	1	245.00	245.00
1112	798	16	1	230.00	230.00
1113	799	18	1	210.00	210.00
1114	800	14	1	185.00	185.00
1115	801	15	2	265.00	530.00
1116	802	13	1	245.00	245.00
1117	803	16	1	230.00	230.00
1118	804	18	1	210.00	210.00
1119	805	14	1	185.00	185.00
1120	806	15	1	265.00	265.00
1121	807	13	1	245.00	245.00
1122	808	16	2	230.00	460.00
1123	809	18	1	210.00	210.00
1124	810	14	1	185.00	185.00
1125	811	15	2	265.00	530.00
1126	812	13	1	245.00	245.00
1127	813	16	1	230.00	230.00
1128	814	18	1	210.00	210.00
1129	815	14	1	185.00	185.00
1130	816	15	1	265.00	265.00
1131	817	13	1	245.00	245.00
1132	818	16	1	230.00	230.00
1133	819	18	1	210.00	210.00
1134	820	14	2	185.00	370.00
1135	820	43	1	40.00	40.00
1136	821	15	1	265.00	265.00
1137	822	13	1	245.00	245.00
1138	823	16	1	230.00	230.00
1139	824	18	1	210.00	210.00
1140	825	14	1	185.00	185.00
1141	826	15	2	265.00	530.00
1142	827	13	1	245.00	245.00
1143	828	16	1	230.00	230.00
1144	829	18	2	210.00	420.00
1145	830	14	1	185.00	185.00
1146	831	15	1	265.00	265.00
1147	832	13	1	245.00	245.00
1148	833	16	1	230.00	230.00
1149	834	18	1	210.00	210.00
1150	835	14	1	185.00	185.00
1151	836	15	2	265.00	530.00
1152	837	13	1	245.00	245.00
1153	838	16	1	230.00	230.00
1154	839	18	1	210.00	210.00
1155	840	14	2	185.00	370.00
1156	840	43	1	40.00	40.00
1157	841	15	1	265.00	265.00
1158	842	13	1	245.00	245.00
1159	843	16	1	230.00	230.00
1160	844	18	1	210.00	210.00
1161	845	14	1	185.00	185.00
1162	846	15	2	265.00	530.00
1163	847	13	1	245.00	245.00
1164	848	16	1	230.00	230.00
1165	849	18	1	210.00	210.00
1166	850	14	1	185.00	185.00
1167	851	15	1	265.00	265.00
1168	852	13	2	245.00	490.00
1169	853	16	1	230.00	230.00
1170	854	18	1	210.00	210.00
1171	855	14	1	185.00	185.00
1172	856	15	2	265.00	530.00
1173	857	13	1	245.00	245.00
1174	858	16	1	230.00	230.00
1175	859	18	2	210.00	420.00
1176	860	14	1	185.00	185.00
1177	861	15	1	265.00	265.00
1178	862	13	1	245.00	245.00
1179	863	16	1	230.00	230.00
1180	864	18	1	210.00	210.00
1181	865	14	2	185.00	370.00
1182	865	43	1	40.00	40.00
1183	866	15	1	265.00	265.00
1184	867	13	1	245.00	245.00
1185	868	16	2	230.00	460.00
1186	869	18	1	210.00	210.00
1187	870	14	1	185.00	185.00
1188	871	15	2	265.00	530.00
1189	872	13	1	245.00	245.00
1190	873	16	1	230.00	230.00
1191	874	18	2	210.00	420.00
1192	874	43	1	40.00	40.00
1193	875	14	1	185.00	185.00
1194	876	15	1	265.00	265.00
1195	877	13	1	245.00	245.00
1196	878	16	1	230.00	230.00
1197	879	18	1	210.00	210.00
1198	880	14	2	185.00	370.00
1199	880	43	1	40.00	40.00
1200	881	15	1	265.00	265.00
1201	882	13	1	245.00	245.00
1202	883	16	1	230.00	230.00
1203	884	18	1	210.00	210.00
1204	885	14	1	185.00	185.00
1205	886	15	2	265.00	530.00
1206	887	13	1	245.00	245.00
1207	888	16	1	230.00	230.00
1208	889	18	1	210.00	210.00
1209	890	14	1	185.00	185.00
1210	891	15	1	265.00	265.00
1211	892	13	2	245.00	490.00
1212	893	16	1	230.00	230.00
1213	894	18	1	210.00	210.00
1214	895	14	2	185.00	370.00
1215	895	43	1	40.00	40.00
1216	896	15	1	265.00	265.00
1217	897	13	1	245.00	245.00
1218	898	16	1	230.00	230.00
1219	899	18	1	210.00	210.00
1220	900	14	1	185.00	185.00
1221	972	15	1	265.00	265.00
1222	973	13	1	245.00	245.00
1223	974	16	1	230.00	230.00
1224	975	18	1	210.00	210.00
1225	976	14	1	185.00	185.00
1226	977	15	2	265.00	530.00
1227	978	13	2	245.00	490.00
1228	979	16	1	230.00	230.00
1229	980	18	1	210.00	210.00
1230	981	14	2	185.00	370.00
1231	981	43	1	40.00	40.00
1232	982	15	1	265.00	265.00
1233	983	13	1	245.00	245.00
1234	984	16	1	230.00	230.00
1235	985	18	1	210.00	210.00
1236	986	14	1	185.00	185.00
1237	987	15	2	265.00	530.00
1238	988	13	1	245.00	245.00
1239	989	16	1	230.00	230.00
1240	990	18	2	210.00	420.00
1241	991	14	1	185.00	185.00
1242	992	15	1	265.00	265.00
1243	993	13	1	245.00	245.00
1244	994	16	1	230.00	230.00
1245	995	18	1	210.00	210.00
1246	996	14	2	185.00	370.00
1247	996	43	1	40.00	40.00
1248	997	15	2	265.00	530.00
1249	997	43	1	40.00	40.00
1250	998	13	1	245.00	245.00
1251	999	16	1	230.00	230.00
1252	1000	18	1	210.00	210.00
1253	1001	14	1	185.00	185.00
1254	1002	15	1	265.00	265.00
1255	1003	13	2	245.00	490.00
1256	1004	16	1	230.00	230.00
1257	1005	18	1	210.00	210.00
1258	1006	14	1	185.00	185.00
1259	1007	15	2	265.00	530.00
1260	1008	13	1	245.00	245.00
1261	1009	16	1	230.00	230.00
1262	1010	18	2	210.00	420.00
1263	1011	14	1	185.00	185.00
1264	1012	15	1	265.00	265.00
1265	1013	13	1	245.00	245.00
1266	1014	16	1	230.00	230.00
1267	1015	18	1	210.00	210.00
1268	1016	14	2	185.00	370.00
1269	1016	43	1	40.00	40.00
1270	1017	15	1	265.00	265.00
1271	1018	13	1	245.00	245.00
1272	1019	16	1	230.00	230.00
1273	1020	18	1	210.00	210.00
1274	1021	14	1	185.00	185.00
1275	1022	15	2	265.00	530.00
1276	1023	13	1	245.00	245.00
1277	1024	16	1	230.00	230.00
1278	1025	18	2	210.00	420.00
1279	1026	14	1	185.00	185.00
1280	1027	15	1	265.00	265.00
1281	1028	13	1	245.00	245.00
1282	1029	16	1	230.00	230.00
1283	1030	18	1	210.00	210.00
1284	1031	14	2	185.00	370.00
1285	1031	43	1	40.00	40.00
1286	1032	15	1	265.00	265.00
1287	1033	13	1	245.00	245.00
1288	1034	16	1	230.00	230.00
1289	1035	18	1	210.00	210.00
1290	1036	14	1	185.00	185.00
1291	1037	15	2	265.00	530.00
1292	1038	13	1	245.00	245.00
1293	1039	16	1	230.00	230.00
1294	1040	18	2	210.00	420.00
1295	1041	14	1	185.00	185.00
1296	1042	15	1	265.00	265.00
1297	1043	13	1	245.00	245.00
1298	1044	16	1	230.00	230.00
1299	1045	18	1	210.00	210.00
1300	1046	14	2	185.00	370.00
1301	1046	43	1	40.00	40.00
1302	1047	15	1	265.00	265.00
1303	1048	13	1	245.00	245.00
1304	1049	16	1	230.00	230.00
1305	1050	18	2	210.00	420.00
1306	1051	14	2	185.00	370.00
1307	1051	43	1	40.00	40.00
1308	1052	15	1	265.00	265.00
1309	1053	13	1	245.00	245.00
1310	1054	16	1	230.00	230.00
1311	1055	18	1	210.00	210.00
1312	1056	14	1	185.00	185.00
1313	1057	15	2	265.00	530.00
1314	1058	13	1	245.00	245.00
1315	1059	16	1	230.00	230.00
1316	1060	18	1	210.00	210.00
1317	1061	14	1	185.00	185.00
1318	1062	15	2	265.00	530.00
1319	1063	13	1	245.00	245.00
1320	1064	16	1	230.00	230.00
1321	1065	18	1	210.00	210.00
1322	1066	14	2	185.00	370.00
1323	1066	43	1	40.00	40.00
1324	1067	15	1	265.00	265.00
1325	1068	13	1	245.00	245.00
1326	1069	16	1	230.00	230.00
1327	1070	18	1	210.00	210.00
1328	1071	14	1	185.00	185.00
1329	1072	15	2	265.00	530.00
1330	1073	13	1	245.00	245.00
1331	1074	16	1	230.00	230.00
1332	1075	18	1	210.00	210.00
1333	1076	14	1	185.00	185.00
1334	1077	15	1	265.00	265.00
1335	1078	13	1	245.00	245.00
1336	1079	16	1	230.00	230.00
1337	1080	18	2	210.00	420.00
1338	1081	14	2	185.00	370.00
1339	1081	43	1	40.00	40.00
1340	1082	15	1	265.00	265.00
1341	1083	13	1	245.00	245.00
1342	1084	16	1	230.00	230.00
1343	1085	18	1	210.00	210.00
1344	1086	14	2	185.00	370.00
1345	1086	43	1	40.00	40.00
1346	1087	15	2	265.00	530.00
1347	1088	13	1	245.00	245.00
1348	1089	16	1	230.00	230.00
1349	1090	18	1	210.00	210.00
1350	1091	14	1	185.00	185.00
1351	1092	15	1	265.00	265.00
1352	1093	13	2	245.00	490.00
1353	1094	16	1	230.00	230.00
1354	1095	18	1	210.00	210.00
1355	1096	14	2	185.00	370.00
1356	1096	43	1	40.00	40.00
1357	1097	15	1	265.00	265.00
1358	1098	13	1	245.00	245.00
1359	1099	16	1	230.00	230.00
1360	1100	18	1	210.00	210.00
1361	1101	19	1	225.00	225.00
1362	1101	43	1	40.00	40.00
1363	1102	14	1	185.00	185.00
1364	1102	7	1	95.00	95.00
1365	1103	15	1	265.00	265.00
1366	1103	33	1	110.00	110.00
1367	1104	13	1	245.00	245.00
1368	1104	22	1	195.00	195.00
1369	1105	16	1	230.00	230.00
1370	1105	47	1	55.00	55.00
1371	1106	18	2	210.00	420.00
1372	1106	43	1	40.00	40.00
1373	1107	20	1	220.00	220.00
1374	1107	1	1	89.00	89.00
1375	1108	24	1	235.00	235.00
1376	1108	43	1	40.00	40.00
1377	1109	25	1	160.00	160.00
1378	1109	34	1	105.00	105.00
1379	1110	19	1	225.00	225.00
1380	1110	8	1	98.00	98.00
1381	1111	13	1	245.00	245.00
1382	1111	37	1	85.00	85.00
1383	1112	15	1	265.00	265.00
1384	1112	44	1	40.00	40.00
1385	1113	14	1	185.00	185.00
1386	1113	9	1	85.00	85.00
1387	1114	16	2	230.00	460.00
1388	1115	18	1	210.00	210.00
1389	1115	43	1	40.00	40.00
1390	1116	13	1	245.00	245.00
1391	1116	20	1	220.00	220.00
1392	1117	15	1	265.00	265.00
1393	1117	47	1	55.00	55.00
1394	1118	14	1	185.00	185.00
1395	1118	7	1	95.00	95.00
1396	1119	19	1	225.00	225.00
1397	1119	44	1	40.00	40.00
1398	1120	16	1	230.00	230.00
1399	1120	1	1	89.00	89.00
1400	1121	13	2	245.00	490.00
1401	1121	43	1	40.00	40.00
1402	1122	18	1	210.00	210.00
1403	1122	34	1	105.00	105.00
1404	1123	15	1	265.00	265.00
1405	1123	22	1	195.00	195.00
1406	1124	14	1	185.00	185.00
1407	1124	33	1	110.00	110.00
1408	1125	16	1	230.00	230.00
1409	1125	43	1	40.00	40.00
1410	1126	13	1	245.00	245.00
1411	1126	19	1	225.00	225.00
1412	1127	15	2	265.00	530.00
1413	1127	44	1	40.00	40.00
1414	1128	18	1	210.00	210.00
1415	1128	7	1	95.00	95.00
1416	1129	14	1	185.00	185.00
1417	1129	47	1	55.00	55.00
1418	1130	16	1	230.00	230.00
1419	1130	20	1	220.00	220.00
1420	1131	13	1	245.00	245.00
1421	1131	43	1	40.00	40.00
1422	1132	15	1	265.00	265.00
1423	1132	1	1	89.00	89.00
1424	1133	18	2	210.00	420.00
1425	1134	14	1	185.00	185.00
1426	1134	22	1	195.00	195.00
1427	1135	16	1	230.00	230.00
1428	1135	34	1	105.00	105.00
1429	1136	13	1	245.00	245.00
1430	1136	44	1	40.00	40.00
1431	1137	15	1	265.00	265.00
1432	1137	7	1	95.00	95.00
1433	1138	19	1	225.00	225.00
1434	1138	43	1	40.00	40.00
1435	1139	16	1	230.00	230.00
1436	1139	33	1	110.00	110.00
1437	1140	13	2	245.00	490.00
1438	1140	44	1	40.00	40.00
1439	1141	18	1	210.00	210.00
1440	1141	47	1	55.00	55.00
1441	1142	14	1	185.00	185.00
1442	1142	20	1	220.00	220.00
1443	1143	15	2	265.00	530.00
1444	1143	43	1	40.00	40.00
1445	1144	16	1	230.00	230.00
1446	1144	1	1	89.00	89.00
1447	1145	13	1	245.00	245.00
1448	1145	22	1	195.00	195.00
1449	1146	18	1	210.00	210.00
1450	1146	7	1	95.00	95.00
1451	1147	15	1	265.00	265.00
1452	1147	44	1	40.00	40.00
1453	1148	14	1	185.00	185.00
1454	1148	34	1	105.00	105.00
1455	1149	16	1	230.00	230.00
1456	1149	43	1	40.00	40.00
1457	1150	13	1	245.00	245.00
1458	1150	19	1	225.00	225.00
1459	1151	15	2	265.00	530.00
1460	1151	44	1	40.00	40.00
1461	1152	18	1	210.00	210.00
1462	1152	33	1	110.00	110.00
1463	1153	14	1	185.00	185.00
1464	1153	47	1	55.00	55.00
1465	1154	16	2	230.00	460.00
1466	1154	43	1	40.00	40.00
1467	1155	13	1	245.00	245.00
1468	1155	20	1	220.00	220.00
1469	1156	15	1	265.00	265.00
1470	1156	7	1	95.00	95.00
1471	1157	18	1	210.00	210.00
1472	1157	1	1	89.00	89.00
1473	1158	14	2	185.00	370.00
1474	1158	44	1	40.00	40.00
1475	1159	16	1	230.00	230.00
1476	1159	22	1	195.00	195.00
1477	1160	13	1	245.00	245.00
1478	1160	43	1	40.00	40.00
1479	1161	15	1	265.00	265.00
1480	1161	34	1	105.00	105.00
1481	1162	19	1	225.00	225.00
1482	1162	44	1	40.00	40.00
1483	1163	16	1	230.00	230.00
1484	1163	47	1	55.00	55.00
1485	1164	13	2	245.00	490.00
1486	1164	43	1	40.00	40.00
1487	1165	18	1	210.00	210.00
1488	1165	7	1	95.00	95.00
1489	1166	14	1	185.00	185.00
1490	1166	33	1	110.00	110.00
1491	1167	15	2	265.00	530.00
1492	1167	44	1	40.00	40.00
1493	1168	16	1	230.00	230.00
1494	1168	20	1	220.00	220.00
1495	1169	13	1	245.00	245.00
1496	1169	1	1	89.00	89.00
1497	1170	18	1	210.00	210.00
1498	1170	43	1	40.00	40.00
1499	1171	14	1	185.00	185.00
1500	1171	22	1	195.00	195.00
1501	1172	15	1	265.00	265.00
1502	1172	47	1	55.00	55.00
1503	1173	16	1	230.00	230.00
1504	1173	34	1	105.00	105.00
1505	1174	13	1	245.00	245.00
1506	1174	7	1	95.00	95.00
1507	1175	18	2	210.00	420.00
1508	1175	43	1	40.00	40.00
1509	1176	15	1	265.00	265.00
1510	1176	44	1	40.00	40.00
1511	1177	14	1	185.00	185.00
1512	1177	19	1	225.00	225.00
1513	1178	16	1	230.00	230.00
1514	1178	33	1	110.00	110.00
1515	1179	13	1	245.00	245.00
1516	1179	43	1	40.00	40.00
1517	1180	18	1	210.00	210.00
1518	1180	20	1	220.00	220.00
1519	1181	15	2	265.00	530.00
1520	1181	44	1	40.00	40.00
1521	1182	16	1	230.00	230.00
1522	1182	1	1	89.00	89.00
4188	48	20	2	185.00	370.00
4189	13	39	1	110.00	110.00
4190	35	39	1	110.00	110.00
4191	17	4	3	75.00	225.00
4192	20	14	3	185.00	555.00
4193	86	40	1	110.00	110.00
4194	88	52	1	40.00	40.00
4195	16	12	1	185.00	185.00
4196	6	52	2	40.00	80.00
4197	50	21	2	210.00	420.00
4198	77	37	1	110.00	110.00
4199	69	51	1	40.00	40.00
4200	43	38	3	110.00	330.00
4201	8	36	1	110.00	110.00
4202	65	9	2	75.00	150.00
4203	19	8	3	75.00	225.00
4204	38	3	3	75.00	225.00
4205	7	28	3	210.00	630.00
4206	13	37	1	110.00	110.00
4207	60	20	3	185.00	555.00
4208	76	33	1	110.00	110.00
4209	18	3	3	75.00	225.00
4210	100	37	2	110.00	220.00
4211	25	18	1	185.00	185.00
4212	35	58	1	40.00	40.00
4213	42	55	3	40.00	120.00
4214	86	25	2	210.00	420.00
4215	48	43	3	40.00	120.00
4216	58	43	2	40.00	80.00
4217	87	35	3	110.00	330.00
4218	67	10	2	75.00	150.00
4219	36	53	1	40.00	40.00
4220	48	29	1	210.00	210.00
4221	40	49	3	40.00	120.00
4222	4	40	3	110.00	330.00
4223	57	11	1	185.00	185.00
4224	87	4	3	75.00	225.00
4225	9	57	3	40.00	120.00
4226	88	34	3	110.00	330.00
4227	80	25	1	210.00	210.00
4228	22	54	3	40.00	120.00
4229	33	23	1	210.00	210.00
4230	67	41	1	40.00	40.00
4231	74	58	1	40.00	40.00
4232	47	18	1	185.00	185.00
4233	7	55	3	40.00	120.00
4234	93	23	3	210.00	630.00
4235	96	55	1	40.00	40.00
4236	25	47	2	40.00	80.00
4237	35	46	2	40.00	80.00
4238	93	49	3	40.00	120.00
4239	41	35	2	110.00	220.00
4240	38	29	1	210.00	210.00
4241	100	57	2	40.00	80.00
4242	35	50	3	40.00	120.00
4243	84	12	3	185.00	555.00
4244	48	47	2	40.00	80.00
4245	68	4	2	75.00	150.00
4246	62	47	1	40.00	40.00
4247	24	9	1	75.00	75.00
4248	56	19	3	185.00	555.00
4249	8	21	1	210.00	210.00
4250	29	53	1	40.00	40.00
4251	29	50	2	40.00	80.00
4252	36	58	2	40.00	80.00
4253	65	21	1	210.00	210.00
4254	17	25	1	210.00	210.00
4255	68	16	2	185.00	370.00
4256	26	36	2	110.00	220.00
4257	4	44	2	40.00	80.00
4258	17	14	1	185.00	185.00
4259	70	56	1	40.00	40.00
4260	76	34	3	110.00	330.00
4261	56	32	3	110.00	330.00
4262	48	7	1	75.00	75.00
4263	81	56	1	40.00	40.00
4264	51	16	2	185.00	370.00
4265	89	38	3	110.00	330.00
4266	88	4	2	75.00	150.00
4267	84	51	2	40.00	80.00
4268	87	14	3	185.00	555.00
4269	36	53	2	40.00	80.00
4270	87	22	1	210.00	210.00
4271	11	57	3	40.00	120.00
4272	26	48	1	40.00	40.00
4273	22	41	2	40.00	80.00
4274	29	28	3	210.00	630.00
4275	53	7	1	75.00	75.00
4276	60	7	3	75.00	225.00
4277	83	18	1	185.00	185.00
4278	38	7	3	75.00	225.00
4279	79	1	3	75.00	225.00
4280	63	16	3	185.00	555.00
4281	50	28	3	210.00	630.00
4282	22	12	2	185.00	370.00
4283	78	44	2	40.00	80.00
4284	98	8	2	75.00	150.00
4285	37	42	1	40.00	40.00
4286	76	37	1	110.00	110.00
4287	100	54	3	40.00	120.00
4288	46	55	2	40.00	80.00
4289	55	41	2	40.00	80.00
4290	38	35	1	110.00	110.00
4291	4	12	1	185.00	185.00
4292	76	24	2	210.00	420.00
4293	52	34	1	110.00	110.00
4294	61	44	1	40.00	40.00
4295	96	9	1	75.00	75.00
4296	65	10	2	75.00	150.00
4297	70	46	1	40.00	40.00
4298	35	5	3	75.00	225.00
4299	62	47	1	40.00	40.00
4300	80	18	1	185.00	185.00
4301	4	57	1	40.00	40.00
4302	41	56	2	40.00	80.00
4303	81	25	2	210.00	420.00
4304	70	10	2	75.00	150.00
4305	73	56	3	40.00	120.00
4306	15	22	2	210.00	420.00
4307	54	24	2	210.00	420.00
4308	86	31	2	110.00	220.00
4309	97	28	3	210.00	630.00
4310	20	31	1	110.00	110.00
4311	44	9	1	75.00	75.00
4312	63	18	1	185.00	185.00
4313	14	28	3	210.00	630.00
4314	59	28	3	210.00	630.00
4315	31	50	1	40.00	40.00
4316	86	50	2	40.00	80.00
4317	16	53	2	40.00	80.00
4318	18	20	1	185.00	185.00
4319	44	46	1	40.00	40.00
4320	31	7	2	75.00	150.00
4321	93	32	2	110.00	220.00
4322	97	19	1	185.00	185.00
4323	9	48	3	40.00	120.00
4324	59	38	2	110.00	220.00
4325	35	51	1	40.00	40.00
4326	34	35	2	110.00	220.00
4327	75	8	1	75.00	75.00
4328	70	14	3	185.00	555.00
4329	67	4	1	75.00	75.00
4330	83	46	2	40.00	80.00
4331	68	8	1	75.00	75.00
4332	92	51	3	40.00	120.00
4333	25	13	3	185.00	555.00
4334	24	37	3	110.00	330.00
4335	41	6	2	75.00	150.00
4336	21	56	1	40.00	40.00
4337	25	27	3	210.00	630.00
4338	75	56	2	40.00	80.00
4339	1	41	3	40.00	120.00
4340	29	59	2	40.00	80.00
4341	99	16	1	185.00	185.00
4342	55	55	3	40.00	120.00
4343	3	33	1	110.00	110.00
4344	23	21	2	210.00	420.00
4345	96	37	3	110.00	330.00
4346	91	30	2	210.00	420.00
4347	6	40	2	110.00	220.00
4348	89	28	1	210.00	210.00
4349	97	12	1	185.00	185.00
4350	60	4	3	75.00	225.00
4351	24	14	1	185.00	185.00
4352	79	41	3	40.00	120.00
4353	68	31	3	110.00	330.00
4354	57	59	1	40.00	40.00
4355	19	40	3	110.00	330.00
4356	79	41	3	40.00	120.00
4357	9	52	3	40.00	120.00
4358	16	23	3	210.00	630.00
4359	76	34	2	110.00	220.00
4360	90	42	1	40.00	40.00
4361	33	27	1	210.00	210.00
4362	84	59	2	40.00	80.00
4363	9	49	2	40.00	80.00
4364	89	56	1	40.00	40.00
4365	38	17	3	185.00	555.00
4366	18	7	1	75.00	75.00
4367	75	9	2	75.00	150.00
4368	36	31	2	110.00	220.00
4369	8	41	1	40.00	40.00
4370	4	35	1	110.00	110.00
4371	29	28	3	210.00	630.00
4372	86	28	1	210.00	210.00
4373	68	11	3	185.00	555.00
4374	87	48	3	40.00	120.00
4375	90	24	3	210.00	630.00
4376	59	16	3	185.00	555.00
4377	28	37	2	110.00	220.00
4378	89	60	1	40.00	40.00
4379	42	34	2	110.00	220.00
4380	62	9	2	75.00	150.00
4381	86	3	2	75.00	150.00
4382	68	4	1	75.00	75.00
4383	47	9	2	75.00	150.00
4384	96	12	3	185.00	555.00
4385	4	13	1	185.00	185.00
4386	90	31	1	110.00	110.00
4387	13	45	2	40.00	80.00
4388	73	14	1	185.00	185.00
4389	58	6	3	75.00	225.00
4390	3	27	2	210.00	420.00
4391	84	17	1	185.00	185.00
4392	81	23	3	210.00	630.00
4393	91	44	3	40.00	120.00
4394	86	49	3	40.00	120.00
4395	24	10	2	75.00	150.00
4396	9	34	3	110.00	330.00
4397	93	59	2	40.00	80.00
4398	30	46	2	40.00	80.00
4399	9	3	3	75.00	225.00
4400	64	57	3	40.00	120.00
4401	17	37	1	110.00	110.00
4402	97	26	2	210.00	420.00
4403	22	8	1	75.00	75.00
4404	58	19	3	185.00	555.00
4405	69	27	1	210.00	210.00
4406	19	40	1	110.00	110.00
4407	15	33	3	110.00	330.00
4408	58	33	1	110.00	110.00
4409	55	16	2	185.00	370.00
4410	35	43	3	40.00	120.00
4411	3	18	2	185.00	370.00
4412	22	46	1	40.00	40.00
4413	86	50	3	40.00	120.00
4414	68	4	1	75.00	75.00
4415	79	60	1	40.00	40.00
4416	88	22	3	210.00	630.00
4417	68	24	2	210.00	420.00
4418	61	46	3	40.00	120.00
4419	81	6	3	75.00	225.00
4420	35	29	2	210.00	420.00
4421	41	24	1	210.00	210.00
4422	52	58	2	40.00	80.00
4423	67	22	2	210.00	420.00
4424	46	37	2	110.00	220.00
4425	90	2	2	75.00	150.00
4426	47	20	3	185.00	555.00
4427	66	1	2	75.00	150.00
4428	88	43	1	40.00	40.00
4429	31	1	1	75.00	75.00
4430	10	43	1	40.00	40.00
4431	100	22	1	210.00	210.00
4432	30	12	2	185.00	370.00
4433	85	34	3	110.00	330.00
4434	12	42	2	40.00	80.00
4435	16	47	1	40.00	40.00
4436	40	29	1	210.00	210.00
4437	52	43	2	40.00	80.00
4438	62	6	3	75.00	225.00
4439	93	35	2	110.00	220.00
4440	42	25	3	210.00	630.00
4441	56	53	1	40.00	40.00
4442	42	50	1	40.00	40.00
4443	41	41	3	40.00	120.00
4444	29	16	1	185.00	185.00
4445	72	42	1	40.00	40.00
4446	65	46	2	40.00	80.00
4447	82	56	1	40.00	40.00
4448	37	16	2	185.00	370.00
4449	46	45	2	40.00	80.00
4450	44	21	2	210.00	420.00
4451	35	26	1	210.00	210.00
4452	10	30	3	210.00	630.00
4453	58	2	3	75.00	225.00
4454	6	49	2	40.00	80.00
4455	11	41	2	40.00	80.00
4456	13	12	2	185.00	370.00
4457	13	35	1	110.00	110.00
4458	55	45	1	40.00	40.00
4459	63	41	1	40.00	40.00
4460	35	11	2	185.00	370.00
4461	72	24	1	210.00	210.00
4462	35	58	2	40.00	80.00
4463	55	6	1	75.00	75.00
4464	83	28	3	210.00	630.00
4465	30	42	1	40.00	40.00
4466	20	5	1	75.00	75.00
4467	52	54	3	40.00	120.00
4468	8	6	3	75.00	225.00
4469	17	47	3	40.00	120.00
4470	58	30	3	210.00	630.00
4471	46	41	3	40.00	120.00
4472	21	46	2	40.00	80.00
4473	84	44	3	40.00	120.00
4474	41	17	2	185.00	370.00
4475	12	27	3	210.00	630.00
4476	94	3	1	75.00	75.00
4477	93	31	3	110.00	330.00
4478	92	17	2	185.00	370.00
4479	80	20	1	185.00	185.00
4480	11	47	2	40.00	80.00
4481	41	10	1	75.00	75.00
4482	32	47	2	40.00	80.00
4483	53	37	2	110.00	220.00
4484	19	57	1	40.00	40.00
4485	35	15	1	185.00	185.00
4486	46	5	2	75.00	150.00
4487	66	34	2	110.00	220.00
4488	2	31	1	110.00	110.00
4489	37	54	3	40.00	120.00
4490	45	28	3	210.00	630.00
4491	4	46	3	40.00	120.00
4492	73	49	2	40.00	80.00
4493	35	7	3	75.00	225.00
4494	27	41	3	40.00	120.00
4495	32	35	3	110.00	330.00
4496	38	54	3	40.00	120.00
4497	12	37	3	110.00	330.00
4498	40	38	3	110.00	330.00
4499	48	21	1	210.00	210.00
4500	97	49	1	40.00	40.00
4501	49	20	2	185.00	370.00
4502	72	41	3	40.00	120.00
4503	4	5	3	75.00	225.00
4504	87	41	3	40.00	120.00
4505	61	18	3	185.00	555.00
4506	2	43	2	40.00	80.00
4507	82	52	3	40.00	120.00
4508	95	20	3	185.00	555.00
4509	6	53	1	40.00	40.00
4510	46	23	1	210.00	210.00
4511	86	3	3	75.00	225.00
4512	29	60	2	40.00	80.00
4513	25	25	1	210.00	210.00
4514	78	54	2	40.00	80.00
4515	12	6	2	75.00	150.00
4516	80	58	3	40.00	120.00
4517	49	29	2	210.00	420.00
4518	93	7	3	75.00	225.00
4519	37	10	1	75.00	75.00
4520	56	24	3	210.00	630.00
4521	94	42	1	40.00	40.00
4522	21	57	1	40.00	40.00
4523	97	52	2	40.00	80.00
4524	58	32	3	110.00	330.00
4525	89	49	1	40.00	40.00
4526	86	56	3	40.00	120.00
4527	27	9	3	75.00	225.00
4528	65	3	3	75.00	225.00
4529	37	50	3	40.00	120.00
4530	19	52	1	40.00	40.00
4531	47	1	2	75.00	150.00
4532	55	28	3	210.00	630.00
4533	16	12	3	185.00	555.00
4534	55	2	2	75.00	150.00
4535	14	11	3	185.00	555.00
4536	21	30	1	210.00	210.00
4537	99	21	1	210.00	210.00
4538	71	50	3	40.00	120.00
4539	73	32	3	110.00	330.00
4540	98	43	2	40.00	80.00
4541	74	36	2	110.00	220.00
4542	26	57	2	40.00	80.00
4543	86	26	3	210.00	630.00
4544	57	58	3	40.00	120.00
4545	68	16	3	185.00	555.00
4546	63	48	1	40.00	40.00
4547	13	45	1	40.00	40.00
4548	32	13	3	185.00	555.00
4549	64	34	2	110.00	220.00
4550	40	48	3	40.00	120.00
4551	67	21	2	210.00	420.00
4552	79	3	2	75.00	150.00
4553	90	54	2	40.00	80.00
4554	22	23	2	210.00	420.00
4555	26	38	3	110.00	330.00
4556	19	51	1	40.00	40.00
4557	17	43	1	40.00	40.00
4558	44	47	2	40.00	80.00
4559	5	47	1	40.00	40.00
4560	50	51	1	40.00	40.00
4561	86	17	3	185.00	555.00
4562	6	3	1	75.00	75.00
4563	48	39	2	110.00	220.00
4564	92	9	3	75.00	225.00
4565	8	32	1	110.00	110.00
4566	69	2	1	75.00	75.00
4567	64	10	3	75.00	225.00
4568	60	34	1	110.00	110.00
4569	81	32	1	110.00	110.00
4570	93	32	3	110.00	330.00
4571	4	12	1	185.00	185.00
4572	25	44	1	40.00	40.00
4573	20	27	2	210.00	420.00
4574	25	28	2	210.00	420.00
4575	47	38	1	110.00	110.00
4576	53	38	3	110.00	330.00
4577	9	34	2	110.00	220.00
4578	69	37	3	110.00	330.00
4579	87	52	3	40.00	120.00
4580	56	18	3	185.00	555.00
4581	70	39	3	110.00	330.00
4582	41	58	2	40.00	80.00
4583	86	52	1	40.00	40.00
4584	63	1	1	75.00	75.00
4585	25	37	3	110.00	330.00
4586	9	49	3	40.00	120.00
4587	68	39	2	110.00	220.00
4588	38	50	3	40.00	120.00
4589	48	38	3	110.00	330.00
4590	86	56	3	40.00	120.00
4591	52	14	1	185.00	185.00
4592	62	41	2	40.00	80.00
4593	66	5	1	75.00	75.00
4594	45	59	3	40.00	120.00
4595	69	52	2	40.00	80.00
4596	57	22	3	210.00	630.00
4597	66	19	3	185.00	555.00
4598	17	5	2	75.00	150.00
4599	23	8	1	75.00	75.00
4600	41	23	2	210.00	420.00
4601	16	18	2	185.00	370.00
4602	19	5	3	75.00	225.00
4603	50	49	3	40.00	120.00
4604	77	37	3	110.00	330.00
4605	26	37	3	110.00	330.00
4606	88	12	1	185.00	185.00
4607	31	59	2	40.00	80.00
4608	21	41	2	40.00	80.00
4609	54	37	1	110.00	110.00
4610	38	11	3	185.00	555.00
4611	63	50	3	40.00	120.00
4612	70	14	3	185.00	555.00
4613	92	12	3	185.00	555.00
4614	58	55	2	40.00	80.00
4615	55	22	1	210.00	210.00
4616	17	4	2	75.00	150.00
4617	92	34	2	110.00	220.00
4618	76	44	2	40.00	80.00
4619	93	23	3	210.00	630.00
4620	31	42	1	40.00	40.00
4621	67	35	2	110.00	220.00
4622	51	47	2	40.00	80.00
4623	38	57	2	40.00	80.00
4624	71	16	1	185.00	185.00
4625	87	38	2	110.00	220.00
4626	66	15	2	185.00	370.00
4627	49	59	1	40.00	40.00
4628	24	51	2	40.00	80.00
4629	2	4	2	75.00	150.00
4630	30	52	1	40.00	40.00
4631	84	29	2	210.00	420.00
4632	15	56	3	40.00	120.00
4633	48	58	3	40.00	120.00
4634	91	33	3	110.00	330.00
4635	72	37	1	110.00	110.00
4636	40	47	3	40.00	120.00
4637	75	44	3	40.00	120.00
4638	46	24	1	210.00	210.00
4639	39	34	3	110.00	330.00
4640	15	26	2	210.00	420.00
4641	17	56	1	40.00	40.00
4642	44	50	1	40.00	40.00
4643	48	13	2	185.00	370.00
4644	40	54	2	40.00	80.00
4645	50	48	3	40.00	120.00
4646	60	50	1	40.00	40.00
4647	47	51	2	40.00	80.00
4648	27	28	3	210.00	630.00
4649	91	50	1	40.00	40.00
4650	37	38	2	110.00	220.00
4651	28	22	1	210.00	210.00
4652	41	34	1	110.00	110.00
4653	70	47	3	40.00	120.00
4654	34	21	3	210.00	630.00
4655	74	21	1	210.00	210.00
4656	55	35	1	110.00	110.00
4657	65	28	3	210.00	630.00
4658	91	56	3	40.00	120.00
4659	88	58	3	40.00	120.00
4660	63	8	2	75.00	150.00
4661	71	38	2	110.00	220.00
4662	100	54	3	40.00	120.00
4663	91	41	1	40.00	40.00
4664	74	31	2	110.00	220.00
4665	9	50	1	40.00	40.00
4666	73	59	1	40.00	40.00
4667	83	12	1	185.00	185.00
4668	70	46	3	40.00	120.00
4669	14	47	2	40.00	80.00
4670	10	46	3	40.00	120.00
4671	4	38	3	110.00	330.00
4672	35	31	3	110.00	330.00
4673	46	1	1	75.00	75.00
4674	70	24	1	210.00	210.00
4675	73	8	2	75.00	150.00
4676	74	44	3	40.00	120.00
4677	49	20	2	185.00	370.00
4678	76	7	2	75.00	150.00
4679	32	13	2	185.00	370.00
4680	28	1	1	75.00	75.00
4681	43	20	1	185.00	185.00
4682	11	47	1	40.00	40.00
4683	92	44	3	40.00	120.00
4684	44	57	3	40.00	120.00
4685	97	56	3	40.00	120.00
4686	21	13	2	185.00	370.00
4687	95	51	1	40.00	40.00
4688	12	20	3	185.00	555.00
4689	90	50	1	40.00	40.00
4690	71	33	3	110.00	330.00
4691	86	50	1	40.00	40.00
4692	39	12	2	185.00	370.00
4693	16	20	3	185.00	555.00
4694	29	43	3	40.00	120.00
4695	88	38	1	110.00	110.00
4696	30	30	1	210.00	210.00
4697	59	50	3	40.00	120.00
4698	55	28	1	210.00	210.00
4699	52	39	3	110.00	330.00
4700	75	43	2	40.00	80.00
4701	55	19	1	185.00	185.00
4702	79	24	3	210.00	630.00
4703	56	1	2	75.00	150.00
4704	25	9	3	75.00	225.00
4705	28	41	3	40.00	120.00
4706	81	1	2	75.00	150.00
4707	3	24	1	210.00	210.00
4708	80	4	3	75.00	225.00
4709	90	15	2	185.00	370.00
4710	64	47	1	40.00	40.00
4711	7	17	1	185.00	185.00
4712	8	37	1	110.00	110.00
4713	54	21	2	210.00	420.00
4714	63	44	2	40.00	80.00
4715	49	26	3	210.00	630.00
4716	79	32	3	110.00	330.00
4717	96	46	2	40.00	80.00
4718	67	39	1	110.00	110.00
4719	75	54	1	40.00	40.00
4720	23	5	1	75.00	75.00
4721	88	46	1	40.00	40.00
4722	28	30	2	210.00	420.00
4723	100	18	3	185.00	555.00
4724	91	5	1	75.00	75.00
4725	2	18	2	185.00	370.00
4726	38	44	2	40.00	80.00
4727	56	33	2	110.00	220.00
4728	9	14	3	185.00	555.00
4729	9	5	3	75.00	225.00
4730	12	7	1	75.00	75.00
4731	59	1	3	75.00	225.00
4732	56	23	3	210.00	630.00
4733	64	26	1	210.00	210.00
4734	55	27	2	210.00	420.00
4735	3	7	3	75.00	225.00
4736	68	55	3	40.00	120.00
4737	32	49	3	40.00	120.00
4738	41	31	1	110.00	110.00
4739	62	35	2	110.00	220.00
4740	42	25	1	210.00	210.00
4741	24	21	1	210.00	210.00
4742	45	2	2	75.00	150.00
4743	63	44	2	40.00	80.00
4744	92	21	2	210.00	420.00
4745	30	55	2	40.00	80.00
4746	11	14	1	185.00	185.00
4747	19	27	3	210.00	630.00
4748	81	37	1	110.00	110.00
4749	64	35	2	110.00	220.00
4750	73	35	3	110.00	330.00
4751	79	56	2	40.00	80.00
4752	62	49	1	40.00	40.00
4753	90	53	3	40.00	120.00
4754	18	23	2	210.00	420.00
4755	80	18	2	185.00	370.00
4756	36	16	3	185.00	555.00
4757	6	27	1	210.00	210.00
4758	74	16	2	185.00	370.00
4759	98	53	3	40.00	120.00
4760	78	45	1	40.00	40.00
4761	48	21	1	210.00	210.00
4762	74	56	3	40.00	120.00
4763	38	42	2	40.00	80.00
4764	18	11	2	185.00	370.00
4765	15	11	2	185.00	370.00
4766	63	57	1	40.00	40.00
4767	76	16	2	185.00	370.00
4768	39	51	1	40.00	40.00
4769	54	17	1	185.00	185.00
4770	89	59	1	40.00	40.00
4771	36	30	2	210.00	420.00
4772	37	58	2	40.00	80.00
4773	37	15	3	185.00	555.00
4774	64	8	2	75.00	150.00
4775	1	42	1	40.00	40.00
4776	10	15	1	185.00	185.00
4777	91	26	1	210.00	210.00
4778	78	53	1	40.00	40.00
4779	43	20	1	185.00	185.00
4780	6	4	1	75.00	75.00
4781	3	24	3	210.00	630.00
4782	20	6	3	75.00	225.00
4783	64	15	3	185.00	555.00
4784	32	54	1	40.00	40.00
4785	75	50	3	40.00	120.00
4786	100	22	2	210.00	420.00
4787	40	40	1	110.00	110.00
4788	48	5	1	75.00	75.00
4789	84	58	3	40.00	120.00
4790	19	29	1	210.00	210.00
4791	2	47	1	40.00	40.00
4792	90	28	2	210.00	420.00
4793	50	10	1	75.00	75.00
4794	6	60	3	40.00	120.00
4795	9	20	1	185.00	185.00
4796	1	4	2	75.00	150.00
4797	19	14	2	185.00	370.00
4798	10	20	2	185.00	370.00
4799	92	25	1	210.00	210.00
4800	78	4	1	75.00	75.00
4801	80	41	1	40.00	40.00
4802	42	38	1	110.00	110.00
4803	68	25	1	210.00	210.00
4804	85	43	2	40.00	80.00
4805	9	15	3	185.00	555.00
4806	5	18	2	185.00	370.00
4807	73	35	3	110.00	330.00
4808	47	11	1	185.00	185.00
4809	12	20	2	185.00	370.00
4810	62	7	2	75.00	150.00
4811	15	58	3	40.00	120.00
4812	79	51	3	40.00	120.00
4813	57	41	2	40.00	80.00
4814	94	45	3	40.00	120.00
4815	52	36	1	110.00	110.00
4816	63	13	3	185.00	555.00
4817	88	11	2	185.00	370.00
4818	48	23	3	210.00	630.00
4819	88	3	3	75.00	225.00
4820	2	17	2	185.00	370.00
4821	30	37	3	110.00	330.00
4822	16	5	3	75.00	225.00
4823	100	31	3	110.00	330.00
4824	5	6	3	75.00	225.00
4825	31	22	3	210.00	630.00
4826	99	29	1	210.00	210.00
4827	35	8	2	75.00	150.00
4828	42	20	1	185.00	185.00
4829	80	48	2	40.00	80.00
4830	90	46	3	40.00	120.00
4831	85	35	1	110.00	110.00
4832	65	27	2	210.00	420.00
4833	43	2	3	75.00	225.00
4834	89	44	1	40.00	40.00
4835	95	6	3	75.00	225.00
4836	52	14	1	185.00	185.00
4837	91	15	2	185.00	370.00
4838	23	2	1	75.00	75.00
4839	67	4	1	75.00	75.00
4840	30	10	1	75.00	75.00
4841	6	4	3	75.00	225.00
4842	91	22	3	210.00	630.00
4843	32	13	1	185.00	185.00
4844	81	49	1	40.00	40.00
4845	86	7	1	75.00	75.00
4846	15	52	3	40.00	120.00
4847	42	55	3	40.00	120.00
4848	44	35	1	110.00	110.00
4849	8	57	2	40.00	80.00
4850	28	23	1	210.00	210.00
4851	3	26	3	210.00	630.00
4852	26	45	1	40.00	40.00
4853	24	52	3	40.00	120.00
4854	46	37	2	110.00	220.00
4855	96	58	2	40.00	80.00
4856	36	25	3	210.00	630.00
4857	78	37	2	110.00	220.00
4858	43	56	3	40.00	120.00
4859	24	29	2	210.00	420.00
4860	68	53	2	40.00	80.00
4861	20	10	3	75.00	225.00
4862	49	41	2	40.00	80.00
4863	68	31	3	110.00	330.00
4864	25	58	3	40.00	120.00
4865	55	54	1	40.00	40.00
4866	12	27	3	210.00	630.00
4867	5	49	3	40.00	120.00
4868	52	7	1	75.00	75.00
4869	94	11	1	185.00	185.00
4870	2	36	2	110.00	220.00
4871	86	30	1	210.00	210.00
4872	57	58	2	40.00	80.00
4873	49	20	2	185.00	370.00
4874	19	31	1	110.00	110.00
4875	8	4	3	75.00	225.00
4876	5	25	3	210.00	630.00
4877	40	60	3	40.00	120.00
4878	92	3	3	75.00	225.00
4879	67	60	3	40.00	120.00
4880	55	52	3	40.00	120.00
4881	9	44	2	40.00	80.00
4882	91	25	2	210.00	420.00
4883	69	59	2	40.00	80.00
4884	42	44	3	40.00	120.00
4885	5	34	2	110.00	220.00
4886	98	24	3	210.00	630.00
4887	18	41	2	40.00	80.00
4888	55	57	1	40.00	40.00
4889	69	51	2	40.00	80.00
4890	82	56	3	40.00	120.00
4891	61	37	3	110.00	330.00
4892	71	59	3	40.00	120.00
4893	34	59	2	40.00	80.00
4894	48	51	1	40.00	40.00
4895	41	10	3	75.00	225.00
4896	7	33	3	110.00	330.00
4897	54	60	3	40.00	120.00
4898	16	7	2	75.00	150.00
4899	56	26	1	210.00	210.00
4900	55	21	2	210.00	420.00
4901	69	5	1	75.00	75.00
4902	68	18	3	185.00	555.00
4903	38	38	2	110.00	220.00
4904	76	3	3	75.00	225.00
4905	10	55	3	40.00	120.00
4906	16	30	1	210.00	210.00
4907	26	32	3	110.00	330.00
4908	40	48	3	40.00	120.00
4909	11	8	2	75.00	150.00
4910	2	7	2	75.00	150.00
4911	35	1	3	75.00	225.00
4912	71	34	3	110.00	330.00
4913	35	17	2	185.00	370.00
4914	14	50	1	40.00	40.00
4915	4	37	2	110.00	220.00
4916	38	57	2	40.00	80.00
4917	68	44	3	40.00	120.00
4918	39	22	3	210.00	630.00
4919	55	8	2	75.00	150.00
4920	28	52	3	40.00	120.00
4921	85	58	2	40.00	80.00
4922	51	55	2	40.00	80.00
4923	86	12	2	185.00	370.00
4924	88	43	1	40.00	40.00
4925	77	51	2	40.00	80.00
4926	97	16	2	185.00	370.00
4927	4	24	1	210.00	210.00
4928	61	7	2	75.00	150.00
4929	65	28	2	210.00	420.00
4930	57	35	3	110.00	330.00
4931	24	37	1	110.00	110.00
4932	40	40	3	110.00	330.00
4933	91	39	3	110.00	330.00
4934	5	54	1	40.00	40.00
4935	49	41	1	40.00	40.00
4936	54	24	1	210.00	210.00
4937	46	39	1	110.00	110.00
4938	16	45	1	40.00	40.00
4939	29	52	2	40.00	80.00
4940	30	32	2	110.00	220.00
4941	64	28	2	210.00	420.00
4942	28	30	1	210.00	210.00
4943	90	27	2	210.00	420.00
4944	98	32	1	110.00	110.00
4945	8	60	1	40.00	40.00
4946	46	54	1	40.00	40.00
4947	61	47	2	40.00	80.00
4948	18	19	3	185.00	555.00
4949	5	8	3	75.00	225.00
4950	53	24	2	210.00	420.00
4951	24	35	3	110.00	330.00
4952	45	2	1	75.00	75.00
4953	51	30	2	210.00	420.00
4954	77	13	3	185.00	555.00
4955	95	17	3	185.00	555.00
4956	90	22	2	210.00	420.00
4957	84	55	1	40.00	40.00
4958	68	26	2	210.00	420.00
4959	95	28	3	210.00	630.00
4960	8	52	2	40.00	80.00
4961	15	11	1	185.00	185.00
4962	98	18	2	185.00	370.00
4963	42	56	1	40.00	40.00
4964	31	3	3	75.00	225.00
4965	35	36	1	110.00	110.00
4966	47	54	2	40.00	80.00
4967	81	3	1	75.00	75.00
4968	69	34	2	110.00	220.00
4969	69	46	3	40.00	120.00
4970	36	24	2	210.00	420.00
4971	69	14	1	185.00	185.00
4972	22	28	2	210.00	420.00
4973	69	33	1	110.00	110.00
4974	79	57	2	40.00	80.00
4975	88	55	2	40.00	80.00
4976	73	13	1	185.00	185.00
4977	96	49	1	40.00	40.00
4978	25	40	2	110.00	220.00
4979	45	32	1	110.00	110.00
4980	61	30	2	210.00	420.00
4981	84	55	2	40.00	80.00
4982	90	46	3	40.00	120.00
4983	79	11	3	185.00	555.00
4984	94	8	3	75.00	225.00
4985	44	44	2	40.00	80.00
4986	98	33	1	110.00	110.00
4987	85	41	2	40.00	80.00
4988	71	53	3	40.00	120.00
4989	54	52	2	40.00	80.00
4990	2	9	3	75.00	225.00
4991	53	21	1	210.00	210.00
4992	13	14	3	185.00	555.00
4993	68	53	1	40.00	40.00
4994	1	22	3	210.00	630.00
4995	63	7	3	75.00	225.00
4996	42	15	3	185.00	555.00
4997	7	20	2	185.00	370.00
4998	76	7	2	75.00	150.00
4999	30	55	1	40.00	40.00
5000	90	43	3	40.00	120.00
5001	75	16	1	185.00	185.00
5002	5	33	3	110.00	330.00
5003	11	29	3	210.00	630.00
5004	74	43	3	40.00	120.00
5005	68	35	1	110.00	110.00
5006	24	21	2	210.00	420.00
5007	4	33	2	110.00	220.00
5008	66	58	2	40.00	80.00
5009	39	60	3	40.00	120.00
5010	54	22	2	210.00	420.00
5011	95	26	1	210.00	210.00
5012	52	56	3	40.00	120.00
5013	49	49	3	40.00	120.00
5014	36	17	1	185.00	185.00
5015	2	9	3	75.00	225.00
5016	20	57	1	40.00	40.00
5017	6	32	2	110.00	220.00
5018	94	23	2	210.00	420.00
5019	78	38	2	110.00	220.00
5020	77	25	1	210.00	210.00
5021	3	28	1	210.00	210.00
5022	82	60	2	40.00	80.00
5023	93	39	2	110.00	220.00
5024	39	47	3	40.00	120.00
5025	46	9	2	75.00	150.00
5026	96	52	1	40.00	40.00
5027	5	58	1	40.00	40.00
5028	58	4	2	75.00	150.00
5029	69	6	2	75.00	150.00
5030	55	37	1	110.00	110.00
5031	79	11	1	185.00	185.00
5032	22	33	3	110.00	330.00
5033	96	55	2	40.00	80.00
5034	48	21	1	210.00	210.00
5035	52	9	3	75.00	225.00
5036	86	34	2	110.00	220.00
5037	37	10	3	75.00	225.00
5038	14	47	3	40.00	120.00
5039	52	31	2	110.00	220.00
5040	15	42	1	40.00	40.00
5041	59	55	2	40.00	80.00
5042	60	42	2	40.00	80.00
5043	28	6	2	75.00	150.00
5044	59	57	3	40.00	120.00
5045	22	45	1	40.00	40.00
5046	95	6	2	75.00	150.00
5047	73	38	2	110.00	220.00
5048	20	52	1	40.00	40.00
5049	49	60	2	40.00	80.00
5050	70	15	1	185.00	185.00
5051	18	22	1	210.00	210.00
5052	44	39	1	110.00	110.00
5053	80	18	3	185.00	555.00
5054	4	15	1	185.00	185.00
5055	23	51	3	40.00	120.00
5056	86	22	2	210.00	420.00
5057	78	46	3	40.00	120.00
5058	34	52	1	40.00	40.00
5059	52	52	1	40.00	40.00
5060	58	2	2	75.00	150.00
5061	6	26	1	210.00	210.00
5062	57	27	2	210.00	420.00
5063	40	10	1	75.00	75.00
5064	5	30	2	210.00	420.00
5065	43	7	1	75.00	75.00
5066	71	29	1	210.00	210.00
5067	86	23	1	210.00	210.00
5068	80	41	3	40.00	120.00
5069	2	9	3	75.00	225.00
5070	4	55	1	40.00	40.00
5071	69	60	3	40.00	120.00
5072	60	29	1	210.00	210.00
5073	96	58	1	40.00	40.00
5074	48	40	3	110.00	330.00
5075	12	32	3	110.00	330.00
5076	74	32	2	110.00	220.00
5077	80	22	3	210.00	630.00
5078	45	40	2	110.00	220.00
5079	91	42	2	40.00	80.00
5080	30	29	2	210.00	420.00
5081	85	33	2	110.00	220.00
5082	22	19	3	185.00	555.00
5083	31	30	1	210.00	210.00
5084	23	53	3	40.00	120.00
5085	45	34	3	110.00	330.00
5086	80	43	1	40.00	40.00
5087	55	54	2	40.00	80.00
5088	70	19	1	185.00	185.00
5089	21	32	2	110.00	220.00
5090	77	17	3	185.00	555.00
5091	12	51	1	40.00	40.00
5092	68	38	1	110.00	110.00
5093	68	45	2	40.00	80.00
5094	7	33	1	110.00	110.00
5095	94	35	3	110.00	330.00
5096	50	44	2	40.00	80.00
5097	79	26	3	210.00	630.00
5098	46	55	3	40.00	120.00
5099	34	52	3	40.00	120.00
5100	18	12	1	185.00	185.00
5101	12	8	1	75.00	75.00
5102	58	24	1	210.00	210.00
5103	68	14	1	185.00	185.00
5104	86	40	1	110.00	110.00
5105	39	27	1	210.00	210.00
5106	67	22	1	210.00	210.00
5107	79	29	3	210.00	630.00
5108	5	52	2	40.00	80.00
5109	98	32	2	110.00	220.00
5110	2	54	2	40.00	80.00
5111	68	24	1	210.00	210.00
5112	60	59	2	40.00	80.00
5113	12	36	1	110.00	110.00
5114	25	19	2	185.00	370.00
5115	84	59	3	40.00	120.00
5116	43	32	3	110.00	330.00
5117	58	17	1	185.00	185.00
5118	13	28	1	210.00	210.00
5119	64	46	1	40.00	40.00
5120	9	20	2	185.00	370.00
5121	18	22	2	210.00	420.00
5122	4	37	3	110.00	330.00
5123	45	1	3	75.00	225.00
5124	44	23	2	210.00	420.00
5125	23	11	2	185.00	370.00
5126	12	28	1	210.00	210.00
5127	12	32	3	110.00	330.00
5128	81	51	1	40.00	40.00
5129	90	52	2	40.00	80.00
5130	93	59	3	40.00	120.00
5131	73	17	3	185.00	555.00
5132	30	28	1	210.00	210.00
5133	6	1	3	75.00	225.00
5134	16	1	1	75.00	75.00
5135	2	25	2	210.00	420.00
5136	6	2	3	75.00	225.00
5137	28	44	2	40.00	80.00
5138	75	39	1	110.00	110.00
5139	81	24	1	210.00	210.00
5140	90	36	2	110.00	220.00
5141	51	43	3	40.00	120.00
5142	2	7	1	75.00	75.00
5143	43	27	2	210.00	420.00
5144	92	50	2	40.00	80.00
5145	21	32	1	110.00	110.00
5146	98	19	3	185.00	555.00
5147	82	44	2	40.00	80.00
5148	70	8	3	75.00	225.00
5149	26	44	2	40.00	80.00
5150	97	31	1	110.00	110.00
5151	24	2	3	75.00	225.00
5152	82	19	3	185.00	555.00
5153	68	48	3	40.00	120.00
5154	18	49	3	40.00	120.00
5155	58	60	3	40.00	120.00
5156	99	33	3	110.00	330.00
5157	27	16	2	185.00	370.00
5158	49	50	1	40.00	40.00
5159	5	51	3	40.00	120.00
5160	6	39	1	110.00	110.00
5161	21	60	1	40.00	40.00
5162	30	45	1	40.00	40.00
5163	6	54	1	40.00	40.00
5164	70	16	1	185.00	185.00
5165	84	27	1	210.00	210.00
5166	51	19	2	185.00	370.00
5167	29	50	3	40.00	120.00
5168	1	43	2	40.00	80.00
5169	58	38	1	110.00	110.00
5170	49	21	1	210.00	210.00
5171	9	36	1	110.00	110.00
5172	92	54	1	40.00	40.00
5173	22	48	3	40.00	120.00
5174	28	17	3	185.00	555.00
5175	99	2	2	75.00	150.00
5176	54	3	3	75.00	225.00
5177	64	27	2	210.00	420.00
5178	97	59	3	40.00	120.00
5179	83	50	3	40.00	120.00
5180	95	32	1	110.00	110.00
5181	51	51	3	40.00	120.00
5182	25	33	1	110.00	110.00
5183	5	13	2	185.00	370.00
5184	73	43	1	40.00	40.00
5185	15	12	2	185.00	370.00
5186	30	17	2	185.00	370.00
5187	81	22	2	210.00	420.00
5188	25	45	1	40.00	40.00
5189	45	60	2	40.00	80.00
5190	11	6	3	75.00	225.00
5191	24	46	3	40.00	120.00
5192	27	24	2	210.00	420.00
5193	21	42	1	40.00	40.00
5194	26	47	2	40.00	80.00
5195	66	32	1	110.00	110.00
5196	27	31	3	110.00	330.00
5197	85	15	3	185.00	555.00
5198	100	51	2	40.00	80.00
5199	76	37	2	110.00	220.00
5200	6	4	1	75.00	75.00
5201	25	6	1	75.00	75.00
5202	79	29	1	210.00	210.00
5203	57	57	3	40.00	120.00
5204	85	36	3	110.00	330.00
5205	70	38	2	110.00	220.00
5206	75	31	1	110.00	110.00
5207	14	47	1	40.00	40.00
5208	68	24	3	210.00	630.00
5209	33	8	3	75.00	225.00
5210	97	10	3	75.00	225.00
5211	60	29	2	210.00	420.00
5212	40	52	2	40.00	80.00
5213	41	6	2	75.00	150.00
5214	24	14	3	185.00	555.00
5215	5	31	2	110.00	220.00
5216	6	15	2	185.00	370.00
5217	76	15	2	185.00	370.00
5218	87	56	1	40.00	40.00
5219	17	16	3	185.00	555.00
5220	32	5	1	75.00	75.00
5221	1	7	2	75.00	150.00
5222	60	34	3	110.00	330.00
5223	60	52	1	40.00	40.00
5224	27	32	1	110.00	110.00
5225	36	44	1	40.00	40.00
5226	70	44	3	40.00	120.00
5227	36	13	3	185.00	555.00
5228	86	27	3	210.00	630.00
5229	10	2	1	75.00	75.00
5230	56	51	1	40.00	40.00
5231	46	59	1	40.00	40.00
5232	84	50	1	40.00	40.00
5233	83	45	1	40.00	40.00
5234	90	56	3	40.00	120.00
5235	1	33	1	110.00	110.00
5236	32	44	1	40.00	40.00
5237	9	15	3	185.00	555.00
5238	13	34	1	110.00	110.00
5239	64	23	2	210.00	420.00
5240	96	18	1	185.00	185.00
5241	81	22	1	210.00	210.00
5242	4	4	2	75.00	150.00
5243	65	49	1	40.00	40.00
5244	99	35	1	110.00	110.00
5245	39	55	1	40.00	40.00
5246	57	28	1	210.00	210.00
5247	7	37	1	110.00	110.00
5248	12	18	3	185.00	555.00
5249	39	43	3	40.00	120.00
5250	4	11	1	185.00	185.00
5251	64	9	1	75.00	75.00
5252	56	40	1	110.00	110.00
5253	8	40	1	110.00	110.00
5254	25	48	3	40.00	120.00
5255	64	36	3	110.00	330.00
5256	80	17	3	185.00	555.00
5257	64	10	1	75.00	75.00
5258	96	44	2	40.00	80.00
5259	91	1	3	75.00	225.00
5260	100	43	1	40.00	40.00
5261	35	40	3	110.00	330.00
5262	7	58	3	40.00	120.00
5263	100	47	2	40.00	80.00
5264	36	38	3	110.00	330.00
5265	96	7	2	75.00	150.00
5266	67	37	2	110.00	220.00
5267	23	59	2	40.00	80.00
5268	11	25	1	210.00	210.00
5269	45	53	2	40.00	80.00
5270	98	30	3	210.00	630.00
5271	10	58	3	40.00	120.00
5272	83	22	3	210.00	630.00
5273	18	7	1	75.00	75.00
5274	6	23	1	210.00	210.00
5275	18	46	3	40.00	120.00
5276	12	23	3	210.00	630.00
5277	32	36	3	110.00	330.00
5278	87	18	2	185.00	370.00
5279	30	5	1	75.00	75.00
5280	70	29	2	210.00	420.00
5281	13	36	3	110.00	330.00
5282	69	25	3	210.00	630.00
5283	5	33	1	110.00	110.00
5284	15	26	2	210.00	420.00
5285	60	57	3	40.00	120.00
5286	30	40	3	110.00	330.00
5287	99	22	2	210.00	420.00
5288	93	9	1	75.00	75.00
5289	6	20	3	185.00	555.00
5290	59	18	2	185.00	370.00
5291	58	40	1	110.00	110.00
5292	67	23	1	210.00	210.00
5293	40	23	2	210.00	420.00
5294	83	17	1	185.00	185.00
5295	70	37	3	110.00	330.00
5296	16	55	2	40.00	80.00
5297	4	59	1	40.00	40.00
5298	73	11	1	185.00	185.00
5299	32	24	2	210.00	420.00
5300	71	42	2	40.00	80.00
5301	49	17	2	185.00	370.00
5302	94	54	3	40.00	120.00
5303	79	40	2	110.00	220.00
5304	99	14	3	185.00	555.00
5305	60	34	1	110.00	110.00
5306	5	7	2	75.00	150.00
5307	88	34	3	110.00	330.00
5308	32	23	3	210.00	630.00
5309	20	6	1	75.00	75.00
5310	20	36	1	110.00	110.00
5311	38	54	1	40.00	40.00
5312	83	43	1	40.00	40.00
5313	11	44	2	40.00	80.00
5314	84	24	3	210.00	630.00
5315	65	57	1	40.00	40.00
5316	83	6	2	75.00	150.00
5317	49	16	2	185.00	370.00
5318	55	55	3	40.00	120.00
5319	23	56	2	40.00	80.00
5320	51	60	1	40.00	40.00
5321	72	3	3	75.00	225.00
5322	14	35	3	110.00	330.00
5323	75	54	2	40.00	80.00
5324	4	8	3	75.00	225.00
5325	58	45	3	40.00	120.00
5326	53	16	3	185.00	555.00
5327	91	6	1	75.00	75.00
5328	29	25	2	210.00	420.00
5329	22	55	3	40.00	120.00
5330	12	27	2	210.00	420.00
5331	31	18	2	185.00	370.00
5332	61	36	1	110.00	110.00
5333	93	8	2	75.00	150.00
5334	7	1	1	75.00	75.00
5335	72	4	2	75.00	150.00
5336	44	5	3	75.00	225.00
5337	24	54	1	40.00	40.00
5338	61	60	2	40.00	80.00
5339	49	29	1	210.00	210.00
5340	63	9	3	75.00	225.00
5341	70	23	2	210.00	420.00
5342	87	18	1	185.00	185.00
5343	81	39	1	110.00	110.00
5344	31	14	1	185.00	185.00
5345	1	40	1	110.00	110.00
5346	11	16	2	185.00	370.00
5347	76	32	2	110.00	220.00
5348	84	9	3	75.00	225.00
5349	75	34	3	110.00	330.00
5350	27	28	2	210.00	420.00
5351	95	11	2	185.00	370.00
5352	95	32	1	110.00	110.00
5353	91	51	2	40.00	80.00
5354	60	60	1	40.00	40.00
5355	2	25	1	210.00	210.00
5356	59	39	1	110.00	110.00
5357	73	27	1	210.00	210.00
5358	47	53	2	40.00	80.00
5359	54	38	1	110.00	110.00
5360	44	33	1	110.00	110.00
5361	8	43	1	40.00	40.00
5362	39	32	3	110.00	330.00
5363	35	47	3	40.00	120.00
5364	5	23	1	210.00	210.00
5365	15	38	2	110.00	220.00
5366	55	36	2	110.00	220.00
5367	65	34	3	110.00	330.00
5368	61	20	1	185.00	185.00
5369	84	8	2	75.00	150.00
5370	14	43	3	40.00	120.00
5371	27	57	2	40.00	80.00
5372	17	59	1	40.00	40.00
5373	44	10	2	75.00	150.00
5374	29	43	1	40.00	40.00
5375	75	50	2	40.00	80.00
5376	68	44	1	40.00	40.00
5377	49	39	1	110.00	110.00
5378	82	47	3	40.00	120.00
5379	30	32	1	110.00	110.00
5380	6	59	1	40.00	40.00
5381	74	20	2	185.00	370.00
5382	39	2	3	75.00	225.00
5383	85	38	1	110.00	110.00
5384	97	60	3	40.00	120.00
5385	63	45	1	40.00	40.00
5386	24	48	1	40.00	40.00
5387	52	38	3	110.00	330.00
5388	40	18	3	185.00	555.00
5389	77	39	3	110.00	330.00
5390	85	19	2	185.00	370.00
5391	55	37	3	110.00	330.00
5392	9	30	1	210.00	210.00
5393	38	55	1	40.00	40.00
5394	28	51	2	40.00	80.00
5395	40	12	2	185.00	370.00
5396	79	22	3	210.00	630.00
5397	11	35	2	110.00	220.00
5398	92	54	1	40.00	40.00
5399	59	30	1	210.00	210.00
5400	90	9	2	75.00	150.00
5401	79	18	1	185.00	185.00
5402	77	15	3	185.00	555.00
5403	35	59	1	40.00	40.00
5404	23	59	3	40.00	120.00
5405	59	48	3	40.00	120.00
5406	41	32	3	110.00	330.00
5407	62	15	2	185.00	370.00
5408	65	43	1	40.00	40.00
5409	80	27	1	210.00	210.00
5410	68	55	2	40.00	80.00
5411	58	45	3	40.00	120.00
5412	82	7	2	75.00	150.00
5413	60	2	3	75.00	225.00
5414	93	44	2	40.00	80.00
5415	30	20	1	185.00	185.00
5416	11	3	2	75.00	150.00
5417	66	34	1	110.00	110.00
5418	88	37	2	110.00	220.00
5419	49	18	3	185.00	555.00
5420	60	49	3	40.00	120.00
5421	100	42	1	40.00	40.00
5422	17	23	1	210.00	210.00
5423	12	41	1	40.00	40.00
5424	84	30	3	210.00	630.00
5425	66	3	1	75.00	75.00
5426	89	3	2	75.00	150.00
5427	49	52	1	40.00	40.00
5428	77	35	2	110.00	220.00
5429	79	29	2	210.00	420.00
5430	27	56	3	40.00	120.00
5431	39	41	1	40.00	40.00
5432	88	22	2	210.00	420.00
5433	29	59	3	40.00	120.00
5434	50	22	1	210.00	210.00
5435	39	8	3	75.00	225.00
5436	68	8	3	75.00	225.00
5437	32	43	2	40.00	80.00
5438	97	39	1	110.00	110.00
5439	48	14	2	185.00	370.00
5440	43	34	3	110.00	330.00
5441	81	47	1	40.00	40.00
5442	36	56	1	40.00	40.00
5443	36	56	2	40.00	80.00
5444	20	50	1	40.00	40.00
5445	49	44	3	40.00	120.00
5446	100	22	1	210.00	210.00
5447	81	49	1	40.00	40.00
5448	84	29	1	210.00	210.00
5449	95	37	1	110.00	110.00
5450	86	3	1	75.00	75.00
5451	50	14	2	185.00	370.00
5452	68	19	3	185.00	555.00
5453	23	9	2	75.00	150.00
5454	35	1	2	75.00	150.00
5455	21	12	2	185.00	370.00
5456	93	2	3	75.00	225.00
5457	61	10	1	75.00	75.00
5458	7	22	2	210.00	420.00
5459	80	9	1	75.00	75.00
5460	29	55	2	40.00	80.00
5461	40	39	3	110.00	330.00
5462	26	13	2	185.00	370.00
5463	82	20	1	185.00	185.00
5464	94	57	3	40.00	120.00
5465	43	53	1	40.00	40.00
5466	9	56	3	40.00	120.00
5467	100	16	3	185.00	555.00
5468	43	42	3	40.00	120.00
5469	66	26	2	210.00	420.00
5470	16	27	1	210.00	210.00
5471	24	55	1	40.00	40.00
5472	26	54	3	40.00	120.00
5473	15	32	2	110.00	220.00
5474	73	1	3	75.00	225.00
5475	57	15	1	185.00	185.00
5476	59	47	3	40.00	120.00
5477	39	35	3	110.00	330.00
5478	95	8	3	75.00	225.00
5479	17	18	3	185.00	555.00
5480	74	36	1	110.00	110.00
5481	50	15	2	185.00	370.00
5482	74	12	3	185.00	555.00
5483	99	1	3	75.00	225.00
5484	12	6	3	75.00	225.00
5485	75	37	1	110.00	110.00
5486	30	48	3	40.00	120.00
5487	74	12	3	185.00	555.00
5488	11	40	2	110.00	220.00
5489	12	23	2	210.00	420.00
5490	45	14	1	185.00	185.00
5491	17	16	1	185.00	185.00
5492	63	18	3	185.00	555.00
5493	77	22	2	210.00	420.00
5494	86	2	1	75.00	75.00
5495	77	44	1	40.00	40.00
5496	92	11	1	185.00	185.00
5497	13	59	2	40.00	80.00
5498	27	43	1	40.00	40.00
5499	23	3	1	75.00	75.00
5500	33	19	2	185.00	370.00
5501	56	47	2	40.00	80.00
5502	59	9	1	75.00	75.00
5503	31	54	1	40.00	40.00
5504	56	59	3	40.00	120.00
5505	71	49	3	40.00	120.00
5506	23	35	1	110.00	110.00
5507	16	19	3	185.00	555.00
5508	95	23	1	210.00	210.00
5509	94	56	2	40.00	80.00
5510	48	8	2	75.00	150.00
5511	26	29	1	210.00	210.00
5512	99	16	3	185.00	555.00
5513	29	20	2	185.00	370.00
5514	31	1	1	75.00	75.00
5515	60	56	3	40.00	120.00
5516	22	28	3	210.00	630.00
5517	71	3	1	75.00	75.00
5518	28	10	3	75.00	225.00
5519	31	19	1	185.00	185.00
5520	30	58	1	40.00	40.00
5521	61	1	2	75.00	150.00
5522	29	29	2	210.00	420.00
5523	85	55	3	40.00	120.00
5524	80	56	3	40.00	120.00
5525	30	16	2	185.00	370.00
5526	15	4	3	75.00	225.00
5527	64	54	3	40.00	120.00
5528	43	34	3	110.00	330.00
5529	6	9	2	75.00	150.00
5530	87	35	3	110.00	330.00
5531	49	2	1	75.00	75.00
5532	5	1	2	75.00	150.00
5533	95	31	3	110.00	330.00
5534	48	48	3	40.00	120.00
5535	22	7	2	75.00	150.00
5536	13	41	1	40.00	40.00
5537	59	53	3	40.00	120.00
5538	70	6	3	75.00	225.00
5539	48	36	2	110.00	220.00
5540	70	4	2	75.00	150.00
5541	42	15	2	185.00	370.00
5542	18	44	2	40.00	80.00
5543	45	56	1	40.00	40.00
5544	14	47	3	40.00	120.00
5545	7	7	1	75.00	75.00
5546	96	12	2	185.00	370.00
5547	38	15	1	185.00	185.00
5548	43	49	1	40.00	40.00
5549	98	21	2	210.00	420.00
5550	4	3	1	75.00	75.00
5551	6	22	1	210.00	210.00
5552	23	56	3	40.00	120.00
5553	43	56	2	40.00	80.00
5554	12	49	1	40.00	40.00
5555	51	17	2	185.00	370.00
5556	97	40	3	110.00	330.00
5557	83	20	3	185.00	555.00
5558	67	57	1	40.00	40.00
5559	7	45	1	40.00	40.00
5560	3	35	2	110.00	220.00
5561	45	7	2	75.00	150.00
5562	57	42	3	40.00	120.00
5563	43	19	1	185.00	185.00
5564	52	1	1	75.00	75.00
5565	69	57	1	40.00	40.00
5566	39	21	2	210.00	420.00
5567	20	15	1	185.00	185.00
5568	50	26	2	210.00	420.00
5569	11	14	3	185.00	555.00
5570	36	58	1	40.00	40.00
5571	37	31	3	110.00	330.00
5572	45	22	1	210.00	210.00
5573	74	44	1	40.00	40.00
5574	45	1	3	75.00	225.00
5575	31	19	2	185.00	370.00
5576	38	15	2	185.00	370.00
5577	93	59	2	40.00	80.00
5578	48	16	3	185.00	555.00
5579	15	35	3	110.00	330.00
5580	19	19	1	185.00	185.00
5581	59	25	2	210.00	420.00
5582	31	54	1	40.00	40.00
5583	13	37	3	110.00	330.00
5584	78	33	1	110.00	110.00
5585	52	53	3	40.00	120.00
5586	3	4	3	75.00	225.00
5587	89	7	1	75.00	75.00
5588	66	38	1	110.00	110.00
5589	99	50	3	40.00	120.00
5590	13	4	1	75.00	75.00
5591	1	50	2	40.00	80.00
5592	16	42	1	40.00	40.00
5593	69	22	1	210.00	210.00
5594	39	58	3	40.00	120.00
5595	75	8	1	75.00	75.00
5596	75	33	3	110.00	330.00
5597	29	18	2	185.00	370.00
5598	78	12	3	185.00	555.00
5599	41	6	2	75.00	150.00
5600	22	21	2	210.00	420.00
5601	97	31	1	110.00	110.00
5602	4	33	2	110.00	220.00
5603	14	48	2	40.00	80.00
5604	33	2	2	75.00	150.00
5605	75	12	2	185.00	370.00
5606	1	36	2	110.00	220.00
5607	100	11	3	185.00	555.00
5608	3	42	3	40.00	120.00
5609	59	7	2	75.00	150.00
5610	74	22	2	210.00	420.00
5611	22	25	3	210.00	630.00
5612	30	17	2	185.00	370.00
5613	81	5	2	75.00	150.00
5614	89	26	1	210.00	210.00
5615	87	45	1	40.00	40.00
5616	78	19	3	185.00	555.00
5617	56	48	1	40.00	40.00
5618	98	10	2	75.00	150.00
5619	58	22	1	210.00	210.00
5620	60	13	3	185.00	555.00
5621	42	13	1	185.00	185.00
5622	33	30	1	210.00	210.00
5623	30	40	3	110.00	330.00
5624	19	56	3	40.00	120.00
5625	8	7	2	75.00	150.00
5626	82	53	2	40.00	80.00
5627	34	58	2	40.00	80.00
5628	28	2	2	75.00	150.00
5629	4	11	1	185.00	185.00
5630	66	15	1	185.00	185.00
5631	70	6	1	75.00	75.00
5632	29	19	2	185.00	370.00
5633	88	39	1	110.00	110.00
5634	23	27	3	210.00	630.00
5635	55	55	1	40.00	40.00
5636	35	12	3	185.00	555.00
5637	32	21	1	210.00	210.00
5638	59	37	1	110.00	110.00
5639	93	48	3	40.00	120.00
5640	8	28	1	210.00	210.00
5641	22	26	3	210.00	630.00
5642	57	6	2	75.00	150.00
5643	21	35	1	110.00	110.00
5644	59	29	2	210.00	420.00
5645	70	47	1	40.00	40.00
5646	28	30	3	210.00	630.00
5647	67	10	3	75.00	225.00
5648	95	42	1	40.00	40.00
5649	51	14	1	185.00	185.00
5650	8	39	3	110.00	330.00
5651	35	16	2	185.00	370.00
5652	34	35	1	110.00	110.00
5653	11	55	2	40.00	80.00
5654	31	2	2	75.00	150.00
5655	30	39	1	110.00	110.00
5656	43	17	2	185.00	370.00
5657	74	45	2	40.00	80.00
5658	16	38	2	110.00	220.00
5659	84	17	3	185.00	555.00
5660	24	35	1	110.00	110.00
5661	28	51	3	40.00	120.00
5662	70	43	2	40.00	80.00
5663	67	54	3	40.00	120.00
5664	42	46	2	40.00	80.00
5665	93	21	2	210.00	420.00
5666	23	40	3	110.00	330.00
5667	35	18	2	185.00	370.00
5668	65	56	1	40.00	40.00
5669	30	5	3	75.00	225.00
5670	71	42	3	40.00	120.00
5671	29	2	1	75.00	75.00
5672	98	48	1	40.00	40.00
5673	28	32	3	110.00	330.00
5674	99	57	1	40.00	40.00
5675	69	1	2	75.00	150.00
5676	54	44	3	40.00	120.00
5677	8	8	2	75.00	150.00
5678	53	18	1	185.00	185.00
5679	48	5	3	75.00	225.00
5680	5	51	3	40.00	120.00
5681	14	56	3	40.00	120.00
5682	87	8	2	75.00	150.00
5683	3	22	2	210.00	420.00
5684	49	7	2	75.00	150.00
5685	66	46	2	40.00	80.00
5686	69	24	3	210.00	630.00
5687	57	20	3	185.00	555.00
5688	78	5	2	75.00	150.00
5689	16	39	1	110.00	110.00
5690	78	31	2	110.00	220.00
5691	94	43	3	40.00	120.00
5692	4	13	1	185.00	185.00
5693	36	30	1	210.00	210.00
5694	9	8	2	75.00	150.00
5695	12	17	1	185.00	185.00
5696	43	55	3	40.00	120.00
5697	45	33	3	110.00	330.00
5698	38	5	3	75.00	225.00
5699	50	34	3	110.00	330.00
5700	58	14	1	185.00	185.00
5701	80	52	2	40.00	80.00
5702	41	3	2	75.00	150.00
5703	12	7	2	75.00	150.00
5704	74	29	3	210.00	630.00
5705	15	59	1	40.00	40.00
5706	10	32	1	110.00	110.00
5707	43	31	1	110.00	110.00
5708	83	10	1	75.00	75.00
5709	44	46	2	40.00	80.00
5710	16	47	1	40.00	40.00
5711	5	56	3	40.00	120.00
5712	25	21	3	210.00	630.00
5713	21	24	2	210.00	420.00
5714	55	60	3	40.00	120.00
5715	48	14	2	185.00	370.00
5716	42	27	1	210.00	210.00
5717	74	38	3	110.00	330.00
5718	14	46	2	40.00	80.00
5719	51	9	2	75.00	150.00
5720	97	18	3	185.00	555.00
5721	98	43	3	40.00	120.00
5722	29	14	1	185.00	185.00
5723	32	39	1	110.00	110.00
5724	79	1	3	75.00	225.00
5725	43	50	2	40.00	80.00
5726	2	17	3	185.00	555.00
5727	95	49	3	40.00	120.00
5728	98	4	2	75.00	150.00
5729	21	13	1	185.00	185.00
5730	37	36	2	110.00	220.00
5731	40	20	1	185.00	185.00
5732	59	39	3	110.00	330.00
5733	96	9	1	75.00	75.00
5734	4	9	3	75.00	225.00
5735	100	51	2	40.00	80.00
5736	1	32	2	110.00	220.00
5737	28	55	1	40.00	40.00
5738	69	5	2	75.00	150.00
5739	11	41	2	40.00	80.00
5740	14	24	3	210.00	630.00
5741	30	19	3	185.00	555.00
5742	17	48	3	40.00	120.00
5743	58	46	2	40.00	80.00
5744	5	58	3	40.00	120.00
5745	59	33	3	110.00	330.00
5746	2	51	2	40.00	80.00
5747	57	21	3	210.00	630.00
5748	16	31	3	110.00	330.00
5749	27	49	1	40.00	40.00
5750	45	3	1	75.00	75.00
5751	16	53	1	40.00	40.00
5752	17	27	3	210.00	630.00
5753	46	33	3	110.00	330.00
5754	95	11	3	185.00	555.00
5755	54	38	1	110.00	110.00
5756	17	23	2	210.00	420.00
5757	71	45	3	40.00	120.00
5758	5	51	3	40.00	120.00
5759	8	25	1	210.00	210.00
5760	57	9	2	75.00	150.00
5761	68	53	2	40.00	80.00
5762	44	36	2	110.00	220.00
5763	39	35	3	110.00	330.00
5764	43	30	2	210.00	420.00
5765	93	21	2	210.00	420.00
5766	98	57	1	40.00	40.00
5767	4	38	1	110.00	110.00
5768	88	18	2	185.00	370.00
5769	72	6	2	75.00	150.00
5770	68	47	3	40.00	120.00
5771	72	29	2	210.00	420.00
5772	99	32	2	110.00	220.00
5773	17	15	1	185.00	185.00
5774	67	14	1	185.00	185.00
5775	96	28	1	210.00	210.00
5776	64	37	2	110.00	220.00
5777	58	22	1	210.00	210.00
5778	76	60	1	40.00	40.00
5779	75	54	3	40.00	120.00
5780	98	3	3	75.00	225.00
5781	76	46	1	40.00	40.00
5782	85	43	2	40.00	80.00
5783	43	53	1	40.00	40.00
5784	40	34	1	110.00	110.00
5785	84	4	2	75.00	150.00
5786	64	45	1	40.00	40.00
5787	4	7	2	75.00	150.00
5788	34	10	2	75.00	150.00
5789	46	17	3	185.00	555.00
5790	52	8	3	75.00	225.00
5791	34	37	1	110.00	110.00
5792	5	37	3	110.00	330.00
5793	69	28	3	210.00	630.00
5794	16	57	1	40.00	40.00
5795	11	18	2	185.00	370.00
5796	56	40	2	110.00	220.00
5797	20	57	1	40.00	40.00
5798	1	46	3	40.00	120.00
5799	11	21	1	210.00	210.00
5800	11	53	3	40.00	120.00
5801	34	20	3	185.00	555.00
5802	3	36	2	110.00	220.00
5803	10	54	1	40.00	40.00
5804	53	19	2	185.00	370.00
5805	60	16	1	185.00	185.00
5806	58	32	3	110.00	330.00
5807	68	30	3	210.00	630.00
5808	16	59	2	40.00	80.00
5809	39	55	3	40.00	120.00
5810	20	12	3	185.00	555.00
5811	56	38	3	110.00	330.00
5812	83	16	3	185.00	555.00
5813	32	49	3	40.00	120.00
5814	16	33	3	110.00	330.00
5815	29	4	2	75.00	150.00
5816	90	3	2	75.00	150.00
5817	43	30	1	210.00	210.00
5818	20	33	1	110.00	110.00
5819	1	55	3	40.00	120.00
5820	60	28	3	210.00	630.00
5821	39	50	1	40.00	40.00
5822	92	35	1	110.00	110.00
5823	35	22	1	210.00	210.00
5824	31	42	2	40.00	80.00
5825	83	28	3	210.00	630.00
5826	49	6	3	75.00	225.00
5827	79	42	1	40.00	40.00
5828	5	34	1	110.00	110.00
5829	80	23	1	210.00	210.00
5830	37	21	2	210.00	420.00
5831	15	52	3	40.00	120.00
5832	70	42	3	40.00	120.00
5833	84	22	1	210.00	210.00
5834	61	47	1	40.00	40.00
5835	32	2	2	75.00	150.00
5836	42	28	2	210.00	420.00
5837	61	10	2	75.00	150.00
5838	7	10	1	75.00	75.00
5839	70	8	2	75.00	150.00
5840	3	47	3	40.00	120.00
5841	95	45	1	40.00	40.00
5842	63	12	3	185.00	555.00
5843	87	49	3	40.00	120.00
5844	91	20	2	185.00	370.00
5845	42	4	1	75.00	75.00
5846	2	10	2	75.00	150.00
5847	16	33	1	110.00	110.00
5848	2	52	2	40.00	80.00
5849	70	35	2	110.00	220.00
5850	41	29	1	210.00	210.00
5851	83	25	2	210.00	420.00
5852	43	13	3	185.00	555.00
5853	78	13	2	185.00	370.00
5854	56	5	1	75.00	75.00
5855	57	41	3	40.00	120.00
5856	76	57	3	40.00	120.00
5857	24	36	2	110.00	220.00
5858	72	14	2	185.00	370.00
5859	31	34	1	110.00	110.00
5860	46	12	2	185.00	370.00
5861	14	24	1	210.00	210.00
5862	16	18	3	185.00	555.00
5863	50	41	1	40.00	40.00
5864	26	29	1	210.00	210.00
5865	48	13	1	185.00	185.00
5866	10	43	1	40.00	40.00
5867	61	32	2	110.00	220.00
5868	65	15	1	185.00	185.00
5869	91	37	3	110.00	330.00
5870	86	48	3	40.00	120.00
5871	56	51	1	40.00	40.00
5872	6	10	2	75.00	150.00
5873	48	26	3	210.00	630.00
5874	25	21	2	210.00	420.00
5875	74	33	3	110.00	330.00
5876	94	49	3	40.00	120.00
5877	57	37	1	110.00	110.00
5878	97	49	3	40.00	120.00
5879	47	32	2	110.00	220.00
5880	90	59	3	40.00	120.00
5881	3	55	3	40.00	120.00
5882	54	52	1	40.00	40.00
5883	81	43	3	40.00	120.00
5884	26	45	2	40.00	80.00
5885	76	21	3	210.00	630.00
5886	43	17	3	185.00	555.00
5887	23	37	3	110.00	330.00
5888	46	20	1	185.00	185.00
5889	76	22	1	210.00	210.00
5890	80	13	3	185.00	555.00
5891	44	7	2	75.00	150.00
5892	84	54	3	40.00	120.00
5893	19	54	1	40.00	40.00
5894	22	26	1	210.00	210.00
5895	14	24	1	210.00	210.00
5896	15	27	1	210.00	210.00
5897	88	49	2	40.00	80.00
5898	82	57	1	40.00	40.00
5899	75	17	2	185.00	370.00
5900	62	23	1	210.00	210.00
5901	26	58	2	40.00	80.00
5902	24	57	1	40.00	40.00
5903	82	45	1	40.00	40.00
5904	70	52	1	40.00	40.00
5905	21	54	2	40.00	80.00
5906	14	51	3	40.00	120.00
5907	97	1	1	75.00	75.00
5908	97	28	1	210.00	210.00
5909	50	58	2	40.00	80.00
5910	39	19	1	185.00	185.00
5911	97	58	2	40.00	80.00
5912	52	43	1	40.00	40.00
5913	32	37	2	110.00	220.00
5914	28	17	1	185.00	185.00
5915	53	40	2	110.00	220.00
5916	97	3	2	75.00	150.00
5917	75	8	2	75.00	150.00
5918	13	28	3	210.00	630.00
5919	66	29	3	210.00	630.00
5920	72	46	3	40.00	120.00
5921	38	48	3	40.00	120.00
5922	68	39	3	110.00	330.00
5923	76	8	1	75.00	75.00
5924	92	52	2	40.00	80.00
5925	73	58	1	40.00	40.00
5926	96	12	3	185.00	555.00
5927	16	28	3	210.00	630.00
5928	44	58	1	40.00	40.00
5929	11	54	3	40.00	120.00
5930	31	36	3	110.00	330.00
5931	59	7	1	75.00	75.00
5932	56	52	1	40.00	40.00
5933	91	42	1	40.00	40.00
5934	43	2	3	75.00	225.00
5935	67	17	1	185.00	185.00
5936	45	7	2	75.00	150.00
5937	2	41	1	40.00	40.00
5938	36	1	3	75.00	225.00
5939	25	15	3	185.00	555.00
5940	84	24	3	210.00	630.00
5941	62	12	1	185.00	185.00
5942	23	57	2	40.00	80.00
5943	33	58	3	40.00	120.00
5944	42	33	2	110.00	220.00
5945	34	58	1	40.00	40.00
5946	28	33	2	110.00	220.00
5947	68	35	1	110.00	110.00
5948	5	21	2	210.00	420.00
5949	71	4	1	75.00	75.00
5950	13	56	2	40.00	80.00
5951	28	57	2	40.00	80.00
5952	34	45	3	40.00	120.00
5953	41	6	3	75.00	225.00
5954	18	20	2	185.00	370.00
5955	80	20	3	185.00	555.00
5956	12	30	2	210.00	420.00
5957	83	28	2	210.00	420.00
5958	6	17	3	185.00	555.00
5959	92	12	2	185.00	370.00
5960	96	31	1	110.00	110.00
5961	8	39	3	110.00	330.00
5962	85	19	2	185.00	370.00
5963	25	18	1	185.00	185.00
5964	16	26	2	210.00	420.00
5965	39	16	3	185.00	555.00
5966	38	43	2	40.00	80.00
5967	61	15	3	185.00	555.00
5968	76	34	3	110.00	330.00
5969	56	21	2	210.00	420.00
5970	16	5	3	75.00	225.00
5971	14	53	2	40.00	80.00
5972	39	26	2	210.00	420.00
5973	65	56	2	40.00	80.00
5974	71	42	3	40.00	120.00
5975	95	46	2	40.00	80.00
5976	69	28	2	210.00	420.00
5977	97	31	2	110.00	220.00
5978	85	51	3	40.00	120.00
5979	3	60	3	40.00	120.00
5980	51	6	2	75.00	150.00
5981	34	9	2	75.00	150.00
5982	96	29	3	210.00	630.00
5983	36	35	2	110.00	220.00
5984	78	7	1	75.00	75.00
5985	66	13	2	185.00	370.00
5986	37	32	2	110.00	220.00
5987	8	56	1	40.00	40.00
5988	95	35	3	110.00	330.00
5989	56	20	3	185.00	555.00
5990	19	4	1	75.00	75.00
5991	92	40	1	110.00	110.00
5992	34	39	3	110.00	330.00
5993	70	51	2	40.00	80.00
5994	16	33	1	110.00	110.00
5995	75	24	2	210.00	420.00
5996	12	38	2	110.00	220.00
5997	79	33	2	110.00	220.00
5998	58	56	2	40.00	80.00
5999	7	12	3	185.00	555.00
6000	55	43	3	40.00	120.00
6001	77	38	3	110.00	330.00
6002	28	50	1	40.00	40.00
6003	73	27	2	210.00	420.00
6004	35	25	3	210.00	630.00
6005	9	31	2	110.00	220.00
6006	11	38	3	110.00	330.00
6007	64	14	3	185.00	555.00
6008	39	29	3	210.00	630.00
6009	69	34	3	110.00	330.00
6010	21	33	1	110.00	110.00
6011	6	6	3	75.00	225.00
6012	11	38	1	110.00	110.00
6013	77	8	2	75.00	150.00
6014	69	49	1	40.00	40.00
6015	1	16	3	185.00	555.00
6016	93	51	2	40.00	80.00
6017	11	30	3	210.00	630.00
6018	96	44	1	40.00	40.00
6019	10	12	2	185.00	370.00
6020	38	56	2	40.00	80.00
6021	6	22	1	210.00	210.00
6022	73	32	2	110.00	220.00
6023	100	54	3	40.00	120.00
6024	27	30	2	210.00	420.00
6025	43	53	2	40.00	80.00
6026	71	33	3	110.00	330.00
6027	53	6	2	75.00	150.00
6028	97	44	1	40.00	40.00
6029	66	11	3	185.00	555.00
6030	66	30	2	210.00	420.00
6031	95	32	1	110.00	110.00
6032	69	29	2	210.00	420.00
6033	46	46	2	40.00	80.00
6034	29	5	3	75.00	225.00
6035	60	47	2	40.00	80.00
6036	29	9	2	75.00	150.00
6037	8	54	2	40.00	80.00
6038	72	21	1	210.00	210.00
6039	94	3	3	75.00	225.00
6040	1	21	1	210.00	210.00
6041	16	59	3	40.00	120.00
6042	69	44	3	40.00	120.00
6043	34	43	2	40.00	80.00
6044	91	9	2	75.00	150.00
6045	19	51	1	40.00	40.00
6046	76	29	2	210.00	420.00
6047	37	55	3	40.00	120.00
6048	69	46	2	40.00	80.00
6049	97	8	3	75.00	225.00
6050	90	59	1	40.00	40.00
6051	10	15	1	185.00	185.00
6052	67	60	3	40.00	120.00
6053	82	59	1	40.00	40.00
6054	28	29	3	210.00	630.00
6055	39	43	2	40.00	80.00
6056	58	39	2	110.00	220.00
6057	42	33	1	110.00	110.00
6058	74	52	1	40.00	40.00
6059	32	14	3	185.00	555.00
6060	33	42	1	40.00	40.00
6061	30	15	1	185.00	185.00
6062	27	59	2	40.00	80.00
6063	56	38	1	110.00	110.00
6064	30	56	2	40.00	80.00
6065	22	29	3	210.00	630.00
6066	28	34	2	110.00	220.00
6067	42	1	1	75.00	75.00
6068	36	2	1	75.00	75.00
6069	16	1	1	75.00	75.00
6070	86	47	3	40.00	120.00
6071	85	28	1	210.00	210.00
6072	32	27	3	210.00	630.00
6073	67	45	2	40.00	80.00
6074	88	42	1	40.00	40.00
6075	53	24	1	210.00	210.00
6076	62	23	2	210.00	420.00
6077	66	13	2	185.00	370.00
6078	16	28	2	210.00	420.00
6079	54	28	3	210.00	630.00
6080	37	59	1	40.00	40.00
6081	65	3	2	75.00	150.00
6082	78	43	3	40.00	120.00
6083	15	17	3	185.00	555.00
6084	30	35	3	110.00	330.00
6085	6	16	2	185.00	370.00
6086	4	60	2	40.00	80.00
6087	29	6	1	75.00	75.00
6088	91	36	2	110.00	220.00
6089	8	41	1	40.00	40.00
6090	58	60	3	40.00	120.00
6091	51	4	2	75.00	150.00
6092	24	44	1	40.00	40.00
6093	93	53	2	40.00	80.00
6094	13	26	1	210.00	210.00
6095	57	20	1	185.00	185.00
6096	31	39	1	110.00	110.00
6097	39	9	2	75.00	150.00
6098	18	52	1	40.00	40.00
6099	80	3	2	75.00	150.00
6100	48	29	3	210.00	630.00
6101	95	56	3	40.00	120.00
6102	52	7	1	75.00	75.00
6103	25	53	1	40.00	40.00
6104	96	8	1	75.00	75.00
6105	92	18	1	185.00	185.00
6106	81	4	2	75.00	150.00
6107	47	3	3	75.00	225.00
6108	14	37	3	110.00	330.00
6109	98	24	1	210.00	210.00
6110	17	39	2	110.00	220.00
6111	95	8	1	75.00	75.00
6112	75	11	1	185.00	185.00
6113	57	30	1	210.00	210.00
6114	45	10	1	75.00	75.00
6115	67	15	3	185.00	555.00
6116	23	49	3	40.00	120.00
6117	89	13	3	185.00	555.00
6118	37	4	1	75.00	75.00
6119	49	57	3	40.00	120.00
6120	25	14	2	185.00	370.00
6121	71	2	3	75.00	225.00
6122	15	5	2	75.00	150.00
6123	15	39	3	110.00	330.00
6124	40	39	3	110.00	330.00
6125	29	45	2	40.00	80.00
6126	55	45	2	40.00	80.00
6127	16	51	1	40.00	40.00
6128	4	17	2	185.00	370.00
6129	37	57	2	40.00	80.00
6130	23	29	3	210.00	630.00
6131	16	5	1	75.00	75.00
6132	64	54	2	40.00	80.00
6133	88	32	3	110.00	330.00
6134	45	41	3	40.00	120.00
6135	51	28	1	210.00	210.00
6136	42	34	3	110.00	330.00
6137	77	45	1	40.00	40.00
6138	16	33	3	110.00	330.00
6139	40	42	3	40.00	120.00
6140	5	5	3	75.00	225.00
6141	96	54	3	40.00	120.00
6142	11	22	2	210.00	420.00
6143	88	30	2	210.00	420.00
6144	64	1	3	75.00	225.00
6145	58	42	1	40.00	40.00
6146	38	17	2	185.00	370.00
6147	59	35	1	110.00	110.00
6148	79	15	2	185.00	370.00
6149	63	8	2	75.00	150.00
6150	98	35	3	110.00	330.00
6151	23	46	1	40.00	40.00
6152	61	22	3	210.00	630.00
6153	93	43	1	40.00	40.00
6154	29	56	1	40.00	40.00
6155	88	50	3	40.00	120.00
6156	95	58	2	40.00	80.00
6157	22	30	2	210.00	420.00
6158	65	47	1	40.00	40.00
6159	68	6	2	75.00	150.00
6160	13	24	2	210.00	420.00
6161	51	56	3	40.00	120.00
6162	87	9	2	75.00	150.00
6163	66	46	1	40.00	40.00
6164	79	6	3	75.00	225.00
6165	78	58	1	40.00	40.00
6166	30	31	3	110.00	330.00
6167	81	60	1	40.00	40.00
6168	47	55	3	40.00	120.00
6169	43	42	3	40.00	120.00
6170	24	13	2	185.00	370.00
6171	16	40	2	110.00	220.00
6172	38	57	3	40.00	120.00
6173	48	29	3	210.00	630.00
6174	67	43	3	40.00	120.00
6175	80	53	2	40.00	80.00
6176	54	20	1	185.00	185.00
6177	92	17	3	185.00	555.00
6178	6	56	2	40.00	80.00
6179	9	21	3	210.00	630.00
6180	37	49	2	40.00	80.00
6181	73	22	1	210.00	210.00
6182	25	55	3	40.00	120.00
6183	40	54	3	40.00	120.00
6184	63	49	2	40.00	80.00
6185	65	18	1	185.00	185.00
6186	5	26	1	210.00	210.00
6187	34	12	3	185.00	555.00
6188	82	4	1	75.00	75.00
6189	56	22	3	210.00	630.00
6190	72	14	1	185.00	185.00
6191	13	13	1	185.00	185.00
6192	100	2	2	75.00	150.00
6193	77	40	2	110.00	220.00
6194	92	11	2	185.00	370.00
6195	13	16	2	185.00	370.00
6196	43	21	2	210.00	420.00
6197	27	29	3	210.00	630.00
6198	29	37	2	110.00	220.00
6199	96	59	2	40.00	80.00
6200	26	56	3	40.00	120.00
6201	91	8	1	75.00	75.00
6202	1	19	1	185.00	185.00
6203	67	33	1	110.00	110.00
6204	8	57	1	40.00	40.00
6205	21	35	1	110.00	110.00
6206	40	46	2	40.00	80.00
6207	99	9	1	75.00	75.00
6208	56	10	2	75.00	150.00
6209	3	13	1	185.00	185.00
6210	30	60	1	40.00	40.00
6211	67	54	1	40.00	40.00
6212	92	58	2	40.00	80.00
6213	85	54	3	40.00	120.00
6214	20	23	1	210.00	210.00
6215	75	29	2	210.00	420.00
6216	21	42	1	40.00	40.00
6217	60	31	2	110.00	220.00
6218	99	56	2	40.00	80.00
6219	36	10	1	75.00	75.00
6220	67	7	2	75.00	150.00
6221	90	39	2	110.00	220.00
6222	93	38	3	110.00	330.00
6223	56	21	2	210.00	420.00
6224	76	33	1	110.00	110.00
6225	25	44	1	40.00	40.00
6226	88	6	3	75.00	225.00
6227	89	19	3	185.00	555.00
6228	45	15	1	185.00	185.00
6229	85	25	1	210.00	210.00
6230	47	46	2	40.00	80.00
6231	29	4	1	75.00	75.00
6232	87	21	2	210.00	420.00
6233	26	43	3	40.00	120.00
6234	8	24	3	210.00	630.00
6235	93	35	3	110.00	330.00
6236	5	24	2	210.00	420.00
6237	87	12	3	185.00	555.00
6238	51	44	1	40.00	40.00
6239	31	16	1	185.00	185.00
6240	19	6	3	75.00	225.00
6241	27	8	2	75.00	150.00
6242	83	58	1	40.00	40.00
6243	24	26	3	210.00	630.00
6244	73	26	2	210.00	420.00
6245	89	2	2	75.00	150.00
6246	32	32	1	110.00	110.00
6247	61	57	3	40.00	120.00
6248	49	37	1	110.00	110.00
6249	44	17	2	185.00	370.00
6250	11	59	3	40.00	120.00
6251	16	8	2	75.00	150.00
6252	33	53	1	40.00	40.00
6253	70	26	2	210.00	420.00
6254	98	39	2	110.00	220.00
6255	22	47	2	40.00	80.00
6256	38	41	3	40.00	120.00
6257	55	13	1	185.00	185.00
6258	70	30	1	210.00	210.00
6259	34	18	1	185.00	185.00
6260	17	29	2	210.00	420.00
6261	33	47	1	40.00	40.00
6262	67	52	3	40.00	120.00
6263	60	11	2	185.00	370.00
6264	94	60	3	40.00	120.00
6265	64	23	1	210.00	210.00
6266	5	38	2	110.00	220.00
6267	69	37	3	110.00	330.00
6268	83	60	1	40.00	40.00
6269	41	39	2	110.00	220.00
6270	55	45	2	40.00	80.00
6271	41	22	3	210.00	630.00
6272	83	1	3	75.00	225.00
6273	6	33	3	110.00	330.00
6274	3	46	2	40.00	80.00
6275	22	24	3	210.00	630.00
6276	85	58	2	40.00	80.00
6277	91	37	2	110.00	220.00
6278	82	34	2	110.00	220.00
6279	27	31	2	110.00	220.00
6280	68	34	2	110.00	220.00
6281	38	2	1	75.00	75.00
6282	85	26	2	210.00	420.00
6283	91	36	3	110.00	330.00
6284	6	41	1	40.00	40.00
6285	43	10	3	75.00	225.00
6286	72	30	3	210.00	630.00
6287	83	22	2	210.00	420.00
6288	79	39	3	110.00	330.00
6289	48	23	2	210.00	420.00
6290	1	38	2	110.00	220.00
6291	79	2	1	75.00	75.00
6292	93	8	2	75.00	150.00
6293	29	60	2	40.00	80.00
6294	18	36	2	110.00	220.00
6295	27	14	3	185.00	555.00
6296	69	31	3	110.00	330.00
6297	89	60	3	40.00	120.00
6298	27	30	3	210.00	630.00
6299	36	15	1	185.00	185.00
6300	29	31	1	110.00	110.00
6301	27	39	1	110.00	110.00
6302	15	30	3	210.00	630.00
6303	93	43	1	40.00	40.00
6304	75	21	1	210.00	210.00
6305	35	20	2	185.00	370.00
6306	64	45	3	40.00	120.00
6307	92	60	2	40.00	80.00
6308	88	3	2	75.00	150.00
6309	76	24	2	210.00	420.00
6310	75	41	2	40.00	80.00
6311	58	45	2	40.00	80.00
6312	51	34	3	110.00	330.00
6313	47	55	1	40.00	40.00
6314	89	11	1	185.00	185.00
6315	16	13	2	185.00	370.00
6316	75	11	3	185.00	555.00
6317	80	33	3	110.00	330.00
6318	43	38	2	110.00	220.00
6319	9	22	2	210.00	420.00
6320	81	20	1	185.00	185.00
6321	92	3	1	75.00	75.00
6322	98	49	3	40.00	120.00
6323	4	24	3	210.00	630.00
6324	29	1	2	75.00	150.00
6325	92	60	1	40.00	40.00
6326	58	32	2	110.00	220.00
6327	23	21	2	210.00	420.00
6328	88	21	1	210.00	210.00
6329	45	2	3	75.00	225.00
6330	93	45	3	40.00	120.00
6331	17	5	3	75.00	225.00
6332	47	39	2	110.00	220.00
6333	47	41	3	40.00	120.00
6334	16	6	1	75.00	75.00
6335	28	1	3	75.00	225.00
6336	20	40	2	110.00	220.00
6337	76	20	3	185.00	555.00
6338	21	40	1	110.00	110.00
6339	15	19	2	185.00	370.00
6340	87	5	2	75.00	150.00
6341	94	57	3	40.00	120.00
6342	86	36	1	110.00	110.00
6343	39	23	2	210.00	420.00
6344	52	29	3	210.00	630.00
6345	43	34	2	110.00	220.00
6346	9	37	1	110.00	110.00
6347	8	49	3	40.00	120.00
6348	65	11	2	185.00	370.00
6349	45	39	3	110.00	330.00
6350	8	19	1	185.00	185.00
6351	44	57	1	40.00	40.00
6352	7	14	2	185.00	370.00
6353	67	43	1	40.00	40.00
6354	80	12	1	185.00	185.00
6355	72	4	3	75.00	225.00
6356	91	16	2	185.00	370.00
6357	15	32	3	110.00	330.00
6358	98	34	1	110.00	110.00
6359	52	7	2	75.00	150.00
6360	97	37	2	110.00	220.00
6361	16	18	1	185.00	185.00
6362	58	31	2	110.00	220.00
6363	24	18	1	185.00	185.00
6364	49	13	3	185.00	555.00
6365	90	24	1	210.00	210.00
6366	4	22	2	210.00	420.00
6367	80	26	3	210.00	630.00
6368	87	14	2	185.00	370.00
6369	16	31	2	110.00	220.00
6370	74	4	3	75.00	225.00
6371	78	2	2	75.00	150.00
6372	19	39	2	110.00	220.00
6373	73	28	3	210.00	630.00
6374	17	17	2	185.00	370.00
6375	19	53	2	40.00	80.00
6376	12	35	2	110.00	220.00
6377	70	49	2	40.00	80.00
6378	43	28	3	210.00	630.00
6379	94	16	3	185.00	555.00
6380	18	10	3	75.00	225.00
6381	26	7	1	75.00	75.00
6382	60	39	2	110.00	220.00
6383	23	42	2	40.00	80.00
6384	53	16	1	185.00	185.00
6385	71	20	3	185.00	555.00
6386	14	42	3	40.00	120.00
6387	17	31	3	110.00	330.00
6388	21	4	1	75.00	75.00
6389	79	19	3	185.00	555.00
6390	79	45	3	40.00	120.00
6391	77	14	1	185.00	185.00
6392	85	17	2	185.00	370.00
6393	73	7	3	75.00	225.00
6394	95	1	3	75.00	225.00
6395	95	56	3	40.00	120.00
6396	12	40	3	110.00	330.00
6397	35	1	3	75.00	225.00
6398	56	11	3	185.00	555.00
6399	30	15	1	185.00	185.00
6400	81	35	1	110.00	110.00
6401	78	14	2	185.00	370.00
6402	68	44	1	40.00	40.00
6403	82	15	1	185.00	185.00
6404	83	17	1	185.00	185.00
6405	46	26	3	210.00	630.00
6406	54	14	2	185.00	370.00
6407	22	30	1	210.00	210.00
6408	31	31	1	110.00	110.00
6409	66	33	1	110.00	110.00
6410	16	41	3	40.00	120.00
6411	47	39	2	110.00	220.00
6412	69	12	3	185.00	555.00
6413	90	18	3	185.00	555.00
6414	64	7	3	75.00	225.00
6415	3	47	1	40.00	40.00
6416	97	17	3	185.00	555.00
6417	89	34	3	110.00	330.00
6418	61	31	1	110.00	110.00
6419	71	36	2	110.00	220.00
6420	18	24	2	210.00	420.00
6421	63	58	1	40.00	40.00
6422	91	16	3	185.00	555.00
6423	40	26	2	210.00	420.00
6424	83	6	3	75.00	225.00
6425	76	45	1	40.00	40.00
6426	21	22	2	210.00	420.00
6427	70	43	3	40.00	120.00
6428	34	54	2	40.00	80.00
6429	65	30	1	210.00	210.00
6430	50	42	1	40.00	40.00
6431	54	43	3	40.00	120.00
6432	17	52	2	40.00	80.00
6433	3	2	1	75.00	75.00
6434	8	9	3	75.00	225.00
6435	40	44	2	40.00	80.00
6436	29	54	3	40.00	120.00
6437	37	46	1	40.00	40.00
6438	30	52	1	40.00	40.00
6439	28	10	3	75.00	225.00
6440	45	56	1	40.00	40.00
6441	68	42	3	40.00	120.00
6442	95	28	2	210.00	420.00
6443	58	2	1	75.00	75.00
6444	97	33	2	110.00	220.00
6445	27	55	3	40.00	120.00
6446	51	52	1	40.00	40.00
6447	89	34	1	110.00	110.00
6448	49	26	1	210.00	210.00
6449	61	49	2	40.00	80.00
6450	9	31	2	110.00	220.00
6451	2	57	3	40.00	120.00
6452	41	20	1	185.00	185.00
6453	53	12	1	185.00	185.00
6454	28	20	2	185.00	370.00
6455	32	29	3	210.00	630.00
6456	5	18	3	185.00	555.00
6457	39	12	1	185.00	185.00
6458	61	51	3	40.00	120.00
6459	18	59	1	40.00	40.00
6460	57	17	1	185.00	185.00
6461	15	59	2	40.00	80.00
6462	28	26	1	210.00	210.00
6463	24	30	2	210.00	420.00
6464	25	25	1	210.00	210.00
6465	73	47	1	40.00	40.00
6466	81	9	1	75.00	75.00
6467	100	14	3	185.00	555.00
6468	93	17	1	185.00	185.00
6469	42	59	1	40.00	40.00
6470	1	59	1	40.00	40.00
6471	97	56	3	40.00	120.00
6472	94	41	1	40.00	40.00
6473	82	13	3	185.00	555.00
6474	841	32	1	110.00	110.00
6475	703	51	3	40.00	120.00
6476	1139	27	3	210.00	630.00
6477	1172	51	3	40.00	120.00
6478	488	9	2	75.00	150.00
6479	350	57	3	40.00	120.00
6480	739	46	3	40.00	120.00
6481	1141	18	2	185.00	370.00
6482	314	38	2	110.00	220.00
6483	691	19	3	185.00	555.00
6484	202	24	3	210.00	630.00
6485	618	58	3	40.00	120.00
6486	379	47	2	40.00	80.00
6487	499	56	1	40.00	40.00
6488	688	45	2	40.00	80.00
6489	424	51	1	40.00	40.00
6490	1041	55	1	40.00	40.00
6491	279	22	2	210.00	420.00
6492	105	29	1	210.00	210.00
6493	429	50	3	40.00	120.00
6494	773	28	1	210.00	210.00
6495	117	40	2	110.00	220.00
6496	510	27	2	210.00	420.00
6497	872	15	3	185.00	555.00
6498	225	57	1	40.00	40.00
6499	768	14	1	185.00	185.00
6500	131	19	3	185.00	555.00
6501	569	10	1	75.00	75.00
6502	916	27	2	210.00	420.00
6503	334	52	1	40.00	40.00
6504	157	52	1	40.00	40.00
6505	90	54	3	40.00	120.00
6506	301	27	1	210.00	210.00
6507	379	47	2	40.00	80.00
6508	511	38	3	110.00	330.00
6509	483	2	2	75.00	150.00
6510	879	30	2	210.00	420.00
6511	1088	6	3	75.00	225.00
6512	950	23	3	210.00	630.00
6513	817	19	3	185.00	555.00
6514	541	18	1	185.00	185.00
6515	668	57	1	40.00	40.00
6516	459	24	2	210.00	420.00
6517	197	21	1	210.00	210.00
6518	874	35	2	110.00	220.00
6519	592	20	1	185.00	185.00
6520	478	30	2	210.00	420.00
6521	111	58	3	40.00	120.00
6522	448	23	2	210.00	420.00
6523	999	11	3	185.00	555.00
6524	41	37	3	110.00	330.00
6525	115	20	2	185.00	370.00
6526	206	24	2	210.00	420.00
6527	806	18	3	185.00	555.00
6528	271	18	3	185.00	555.00
6529	619	4	3	75.00	225.00
6530	55	26	3	210.00	630.00
6531	80	23	2	210.00	420.00
6532	851	44	2	40.00	80.00
6533	314	11	3	185.00	555.00
6534	504	3	3	75.00	225.00
6535	998	22	2	210.00	420.00
6536	153	37	3	110.00	330.00
6537	341	32	1	110.00	110.00
6538	617	37	2	110.00	220.00
6539	1122	21	2	210.00	420.00
6540	22	56	2	40.00	80.00
6541	51	35	3	110.00	330.00
6542	47	31	1	110.00	110.00
6543	67	7	3	75.00	225.00
6544	909	40	1	110.00	110.00
6545	726	42	3	40.00	120.00
6546	1176	44	2	40.00	80.00
6547	492	56	2	40.00	80.00
6548	915	5	3	75.00	225.00
6549	74	16	3	185.00	555.00
6550	884	7	3	75.00	225.00
6551	323	59	1	40.00	40.00
6552	908	54	2	40.00	80.00
6553	66	53	1	40.00	40.00
6554	726	43	3	40.00	120.00
6555	417	57	1	40.00	40.00
6556	920	17	1	185.00	185.00
6557	666	32	1	110.00	110.00
6558	390	6	1	75.00	75.00
6559	1192	57	2	40.00	80.00
6560	1111	3	2	75.00	150.00
6561	298	54	3	40.00	120.00
6562	1115	42	3	40.00	120.00
6563	799	14	2	185.00	370.00
6564	634	38	1	110.00	110.00
6565	924	24	1	210.00	210.00
6566	405	46	3	40.00	120.00
6567	417	55	3	40.00	120.00
6568	1063	5	2	75.00	150.00
6569	442	48	2	40.00	80.00
6570	257	34	2	110.00	220.00
6571	707	1	1	75.00	75.00
6572	613	9	3	75.00	225.00
6573	476	6	1	75.00	75.00
6574	1200	23	2	210.00	420.00
6575	734	14	1	185.00	185.00
6576	232	34	3	110.00	330.00
6577	1126	1	3	75.00	225.00
6578	1157	42	1	40.00	40.00
6579	361	29	2	210.00	420.00
6580	89	55	3	40.00	120.00
6581	743	34	1	110.00	110.00
6582	72	54	1	40.00	40.00
6583	1024	51	3	40.00	120.00
6584	947	19	3	185.00	555.00
6585	549	50	2	40.00	80.00
6586	1072	26	1	210.00	210.00
6587	166	46	2	40.00	80.00
6588	489	56	2	40.00	80.00
6589	850	12	2	185.00	370.00
6590	1110	46	2	40.00	80.00
6591	171	57	2	40.00	80.00
6592	681	25	1	210.00	210.00
6593	270	30	2	210.00	420.00
6594	707	39	3	110.00	330.00
6595	352	26	2	210.00	420.00
6596	922	58	2	40.00	80.00
6597	101	9	1	75.00	75.00
6598	421	36	1	110.00	110.00
6599	137	8	1	75.00	75.00
6600	43	2	2	75.00	150.00
6601	153	5	3	75.00	225.00
6602	600	3	2	75.00	150.00
6603	1165	14	3	185.00	555.00
6604	705	10	3	75.00	225.00
6605	1193	41	1	40.00	40.00
6606	546	45	3	40.00	120.00
6607	549	47	2	40.00	80.00
6608	223	27	3	210.00	630.00
6609	575	43	1	40.00	40.00
6610	917	32	1	110.00	110.00
6611	647	31	3	110.00	330.00
6612	1003	24	3	210.00	630.00
6613	808	34	1	110.00	110.00
6614	834	30	3	210.00	630.00
6615	207	50	2	40.00	80.00
6616	757	48	2	40.00	80.00
6617	105	24	1	210.00	210.00
6618	184	6	3	75.00	225.00
6619	774	45	3	40.00	120.00
6620	247	44	2	40.00	80.00
6621	471	45	1	40.00	40.00
6622	282	38	3	110.00	330.00
6623	613	15	1	185.00	185.00
6624	357	42	1	40.00	40.00
6625	375	33	2	110.00	220.00
6626	30	7	3	75.00	225.00
6627	751	43	3	40.00	120.00
6628	261	57	3	40.00	120.00
6629	816	15	1	185.00	185.00
6630	516	9	2	75.00	150.00
6631	392	31	1	110.00	110.00
6632	816	54	3	40.00	120.00
6633	995	43	3	40.00	120.00
6634	813	36	1	110.00	110.00
6635	569	55	3	40.00	120.00
6636	140	42	3	40.00	120.00
6637	364	7	1	75.00	75.00
6638	138	56	1	40.00	40.00
6639	272	47	1	40.00	40.00
6640	699	26	1	210.00	210.00
6641	494	35	1	110.00	110.00
6642	689	60	3	40.00	120.00
6643	383	36	3	110.00	330.00
6644	642	57	3	40.00	120.00
6645	966	37	1	110.00	110.00
6646	951	39	3	110.00	330.00
6647	677	13	1	185.00	185.00
6648	1116	24	3	210.00	630.00
6649	1185	25	2	210.00	420.00
6650	890	50	3	40.00	120.00
6651	681	8	3	75.00	225.00
6652	432	21	2	210.00	420.00
6653	508	11	1	185.00	185.00
6654	5	22	3	210.00	630.00
6655	758	47	3	40.00	120.00
6656	793	51	3	40.00	120.00
6657	521	50	2	40.00	80.00
6658	95	29	1	210.00	210.00
6659	653	5	3	75.00	225.00
6660	834	41	2	40.00	80.00
6661	435	40	3	110.00	330.00
6662	299	22	2	210.00	420.00
6663	768	10	3	75.00	225.00
6664	271	46	3	40.00	120.00
6665	897	30	2	210.00	420.00
6666	1105	33	1	110.00	110.00
6667	860	59	2	40.00	80.00
6668	400	10	2	75.00	150.00
6669	819	3	1	75.00	75.00
6670	976	12	1	185.00	185.00
6671	852	9	3	75.00	225.00
6672	420	13	1	185.00	185.00
6673	832	14	2	185.00	370.00
6674	526	52	1	40.00	40.00
6675	632	23	3	210.00	630.00
6676	1035	47	3	40.00	120.00
6677	809	33	1	110.00	110.00
6678	828	19	1	185.00	185.00
6679	1184	26	2	210.00	420.00
6680	692	59	2	40.00	80.00
6681	862	3	3	75.00	225.00
6682	319	37	2	110.00	220.00
6683	783	44	3	40.00	120.00
6684	763	37	2	110.00	220.00
6685	743	10	2	75.00	150.00
6686	290	20	2	185.00	370.00
6687	298	5	1	75.00	75.00
6688	117	46	2	40.00	80.00
6689	1197	2	2	75.00	150.00
6690	113	5	1	75.00	75.00
6691	1086	7	2	75.00	150.00
6692	577	43	3	40.00	120.00
6693	267	54	2	40.00	80.00
6694	455	40	2	110.00	220.00
6695	832	37	3	110.00	330.00
6696	459	55	1	40.00	40.00
6697	283	39	3	110.00	330.00
6698	447	47	1	40.00	40.00
6699	701	44	2	40.00	80.00
6700	142	17	2	185.00	370.00
6701	1136	31	1	110.00	110.00
6702	495	7	3	75.00	225.00
6703	139	25	1	210.00	210.00
6704	887	54	1	40.00	40.00
6705	600	5	1	75.00	75.00
6706	929	44	1	40.00	40.00
6707	133	57	1	40.00	40.00
6708	166	29	1	210.00	210.00
6709	948	51	1	40.00	40.00
6710	322	48	2	40.00	80.00
6711	262	14	2	185.00	370.00
6712	546	31	2	110.00	220.00
6713	162	40	2	110.00	220.00
6714	943	29	2	210.00	420.00
6715	1139	4	2	75.00	150.00
6716	663	60	2	40.00	80.00
6717	576	15	3	185.00	555.00
6718	646	37	1	110.00	110.00
6719	756	44	2	40.00	80.00
6720	115	13	3	185.00	555.00
6721	166	13	2	185.00	370.00
6722	977	57	1	40.00	40.00
6723	605	56	2	40.00	80.00
6724	1161	32	2	110.00	220.00
6725	1147	8	3	75.00	225.00
6726	464	5	2	75.00	150.00
6727	287	4	3	75.00	225.00
6728	82	49	3	40.00	120.00
6729	1038	33	2	110.00	220.00
6730	679	36	3	110.00	330.00
6731	507	57	2	40.00	80.00
6732	698	53	3	40.00	120.00
6733	1109	48	2	40.00	80.00
6734	957	58	3	40.00	120.00
6735	400	11	2	185.00	370.00
6736	696	39	2	110.00	220.00
6737	627	36	3	110.00	330.00
6738	11	35	2	110.00	220.00
6739	256	56	2	40.00	80.00
6740	467	22	2	210.00	420.00
6741	182	12	3	185.00	555.00
6742	542	41	2	40.00	80.00
6743	180	21	2	210.00	420.00
6744	355	36	1	110.00	110.00
6745	796	39	1	110.00	110.00
6746	970	13	1	185.00	185.00
6747	882	4	1	75.00	75.00
6748	883	9	1	75.00	75.00
6749	56	19	3	185.00	555.00
6750	734	21	3	210.00	630.00
6751	344	38	2	110.00	220.00
6752	420	29	2	210.00	420.00
6753	694	40	2	110.00	220.00
6754	570	14	1	185.00	185.00
6755	855	54	2	40.00	80.00
6756	690	44	3	40.00	120.00
6757	1097	58	1	40.00	40.00
6758	415	35	3	110.00	330.00
6759	1150	4	1	75.00	75.00
6760	931	7	1	75.00	75.00
6761	1160	44	1	40.00	40.00
6762	639	32	2	110.00	220.00
6763	822	60	2	40.00	80.00
6764	1146	60	3	40.00	120.00
6765	431	51	1	40.00	40.00
6766	1149	6	1	75.00	75.00
6767	250	34	2	110.00	220.00
6768	765	14	2	185.00	370.00
6769	489	52	2	40.00	80.00
6770	898	53	2	40.00	80.00
6771	1074	43	3	40.00	120.00
6772	1070	34	2	110.00	220.00
6773	914	31	3	110.00	330.00
6774	734	55	1	40.00	40.00
6775	106	43	2	40.00	80.00
6776	113	32	3	110.00	330.00
6777	943	14	2	185.00	370.00
6778	1063	9	1	75.00	75.00
6779	140	46	1	40.00	40.00
6780	1025	19	1	185.00	185.00
6781	620	17	1	185.00	185.00
6782	1061	51	1	40.00	40.00
6783	400	51	2	40.00	80.00
6784	786	40	1	110.00	110.00
6785	257	22	2	210.00	420.00
6786	422	43	3	40.00	120.00
6787	335	16	3	185.00	555.00
6788	83	10	3	75.00	225.00
6789	849	38	1	110.00	110.00
6790	304	33	1	110.00	110.00
6791	852	56	2	40.00	80.00
6792	657	35	2	110.00	220.00
6793	381	57	3	40.00	120.00
6794	2	15	3	185.00	555.00
6795	453	2	1	75.00	75.00
6796	564	36	3	110.00	330.00
6797	653	37	1	110.00	110.00
6798	279	49	3	40.00	120.00
6799	1043	2	3	75.00	225.00
6800	1127	43	2	40.00	80.00
6801	487	22	1	210.00	210.00
6802	32	3	2	75.00	150.00
6803	546	58	1	40.00	40.00
6804	834	4	3	75.00	225.00
6805	1065	53	3	40.00	120.00
6806	331	11	1	185.00	185.00
6807	739	12	3	185.00	555.00
6808	117	19	1	185.00	185.00
6809	94	45	2	40.00	80.00
6810	521	11	1	185.00	185.00
6811	528	10	3	75.00	225.00
6812	337	38	1	110.00	110.00
6813	49	13	3	185.00	555.00
6814	367	4	1	75.00	75.00
6815	125	39	2	110.00	220.00
6816	174	21	1	210.00	210.00
6817	1091	52	2	40.00	80.00
6818	993	39	2	110.00	220.00
6819	667	49	2	40.00	80.00
6820	421	12	1	185.00	185.00
6821	683	36	1	110.00	110.00
6822	1188	19	3	185.00	555.00
6823	270	32	1	110.00	110.00
6824	106	49	2	40.00	80.00
6825	46	36	2	110.00	220.00
6826	418	26	1	210.00	210.00
6827	386	9	2	75.00	150.00
6828	704	58	2	40.00	80.00
6829	640	47	1	40.00	40.00
6830	746	21	2	210.00	420.00
6831	236	18	3	185.00	555.00
6832	625	32	2	110.00	220.00
6833	409	1	2	75.00	150.00
6834	689	45	2	40.00	80.00
6835	912	52	3	40.00	120.00
6836	373	33	2	110.00	220.00
6837	227	1	2	75.00	150.00
6838	444	59	2	40.00	80.00
6839	398	12	2	185.00	370.00
6840	581	9	2	75.00	150.00
6841	142	54	3	40.00	120.00
6842	715	41	3	40.00	120.00
6843	755	52	2	40.00	80.00
6844	367	10	2	75.00	150.00
6845	438	52	1	40.00	40.00
6846	855	46	2	40.00	80.00
6847	465	17	1	185.00	185.00
6848	298	38	1	110.00	110.00
6849	425	5	3	75.00	225.00
6850	383	46	3	40.00	120.00
6851	575	43	1	40.00	40.00
6852	73	4	3	75.00	225.00
6853	1006	31	1	110.00	110.00
6854	594	29	2	210.00	420.00
6855	215	1	2	75.00	150.00
6856	636	38	3	110.00	330.00
6857	751	38	2	110.00	220.00
6858	980	6	3	75.00	225.00
6859	1153	50	3	40.00	120.00
6860	897	19	2	185.00	370.00
6861	418	54	3	40.00	120.00
6862	601	3	1	75.00	75.00
6863	128	37	1	110.00	110.00
6864	885	27	3	210.00	630.00
6865	530	8	1	75.00	75.00
6866	965	48	3	40.00	120.00
6867	901	27	3	210.00	630.00
6868	1005	4	2	75.00	150.00
6869	237	40	3	110.00	330.00
6870	1059	5	1	75.00	75.00
6871	1045	54	3	40.00	120.00
6872	671	50	1	40.00	40.00
6873	546	36	3	110.00	330.00
6874	503	39	3	110.00	330.00
6875	653	2	1	75.00	75.00
6876	1125	17	2	185.00	370.00
6877	485	50	1	40.00	40.00
6878	838	47	1	40.00	40.00
6879	721	32	3	110.00	330.00
6880	895	15	2	185.00	370.00
6881	734	58	1	40.00	40.00
6882	117	56	2	40.00	80.00
6883	783	39	2	110.00	220.00
6884	1194	11	3	185.00	555.00
6885	190	39	2	110.00	220.00
6886	1123	5	3	75.00	225.00
6887	579	3	3	75.00	225.00
6888	513	19	3	185.00	555.00
6889	737	46	1	40.00	40.00
6890	35	9	3	75.00	225.00
6891	658	42	2	40.00	80.00
6892	618	5	1	75.00	75.00
6893	248	4	3	75.00	225.00
6894	149	30	3	210.00	630.00
6895	1188	49	1	40.00	40.00
6896	645	14	1	185.00	185.00
6897	1137	35	3	110.00	330.00
6898	826	21	3	210.00	630.00
6899	13	26	2	210.00	420.00
6900	498	52	3	40.00	120.00
6901	553	31	1	110.00	110.00
6902	871	8	1	75.00	75.00
6903	915	24	2	210.00	420.00
6904	880	43	2	40.00	80.00
6905	518	30	2	210.00	420.00
6906	436	35	1	110.00	110.00
6907	260	43	3	40.00	120.00
6908	517	1	1	75.00	75.00
6909	906	45	2	40.00	80.00
6910	569	31	2	110.00	220.00
6911	243	18	3	185.00	555.00
6912	674	59	1	40.00	40.00
6913	655	45	1	40.00	40.00
6914	287	50	3	40.00	120.00
6915	347	1	2	75.00	150.00
6916	925	48	2	40.00	80.00
6917	1043	19	2	185.00	370.00
6918	170	1	1	75.00	75.00
6919	32	53	3	40.00	120.00
6920	534	17	1	185.00	185.00
6921	203	7	3	75.00	225.00
6922	175	11	1	185.00	185.00
6923	984	44	3	40.00	120.00
6924	1043	35	1	110.00	110.00
6925	1122	36	2	110.00	220.00
6926	1002	37	2	110.00	220.00
6927	201	58	1	40.00	40.00
6928	359	10	3	75.00	225.00
6929	59	18	1	185.00	185.00
6930	50	42	1	40.00	40.00
6931	828	35	3	110.00	330.00
6932	662	19	1	185.00	185.00
6933	595	20	1	185.00	185.00
6934	333	34	2	110.00	220.00
6935	1117	5	3	75.00	225.00
6936	3	22	3	210.00	630.00
6937	449	30	1	210.00	210.00
6938	479	32	3	110.00	330.00
6939	370	16	1	185.00	185.00
6940	677	54	1	40.00	40.00
6941	683	41	1	40.00	40.00
6942	1129	60	1	40.00	40.00
6943	505	40	2	110.00	220.00
6944	114	42	2	40.00	80.00
6945	257	58	1	40.00	40.00
6946	876	37	1	110.00	110.00
6947	478	17	2	185.00	370.00
6948	412	17	2	185.00	370.00
6949	196	8	1	75.00	75.00
6950	998	18	1	185.00	185.00
6951	12	18	3	185.00	555.00
6952	755	41	3	40.00	120.00
6953	1061	44	1	40.00	40.00
6954	491	39	3	110.00	330.00
6955	712	4	1	75.00	75.00
6956	452	55	2	40.00	80.00
6957	414	57	3	40.00	120.00
6958	1002	13	1	185.00	185.00
6959	967	28	2	210.00	420.00
6960	786	43	1	40.00	40.00
6961	104	52	3	40.00	120.00
6962	1043	11	2	185.00	370.00
6963	1058	42	3	40.00	120.00
6964	546	19	3	185.00	555.00
6965	494	54	1	40.00	40.00
6966	938	40	2	110.00	220.00
6967	1098	34	3	110.00	330.00
6968	78	46	1	40.00	40.00
6969	742	32	2	110.00	220.00
6970	632	32	2	110.00	220.00
6971	79	20	2	185.00	370.00
6972	103	4	3	75.00	225.00
6973	173	24	2	210.00	420.00
6974	435	44	3	40.00	120.00
6975	895	20	1	185.00	185.00
6976	633	45	3	40.00	120.00
6977	546	13	3	185.00	555.00
6978	1070	20	3	185.00	555.00
6979	558	16	3	185.00	555.00
6980	337	36	3	110.00	330.00
6981	137	38	2	110.00	220.00
6982	490	52	1	40.00	40.00
6983	1098	23	1	210.00	210.00
6984	123	5	3	75.00	225.00
6985	434	38	3	110.00	330.00
6986	173	18	2	185.00	370.00
6987	150	6	1	75.00	75.00
6988	97	53	2	40.00	80.00
6989	488	42	2	40.00	80.00
6990	108	28	1	210.00	210.00
6991	379	54	2	40.00	80.00
6992	1180	31	2	110.00	220.00
6993	1158	60	1	40.00	40.00
6994	786	47	1	40.00	40.00
6995	1131	51	2	40.00	80.00
6996	55	37	3	110.00	330.00
6997	66	2	2	75.00	150.00
6998	1019	15	1	185.00	185.00
6999	28	20	1	185.00	185.00
7000	189	43	3	40.00	120.00
7001	347	2	2	75.00	150.00
7002	218	1	3	75.00	225.00
7003	1088	24	3	210.00	630.00
7004	982	49	1	40.00	40.00
7005	737	24	3	210.00	630.00
7006	864	45	3	40.00	120.00
7007	617	26	1	210.00	210.00
7008	1101	3	3	75.00	225.00
7009	6	24	2	210.00	420.00
7010	487	39	3	110.00	330.00
7011	621	59	2	40.00	80.00
7012	717	50	3	40.00	120.00
7013	969	28	1	210.00	210.00
7014	587	8	2	75.00	150.00
7015	192	11	2	185.00	370.00
7016	274	32	1	110.00	110.00
7017	402	39	2	110.00	220.00
7018	1125	55	1	40.00	40.00
7019	176	34	3	110.00	330.00
7020	75	15	2	185.00	370.00
7021	996	18	2	185.00	370.00
7022	380	31	1	110.00	110.00
7023	1154	11	3	185.00	555.00
7024	198	36	1	110.00	110.00
7025	420	24	1	210.00	210.00
7026	1119	2	3	75.00	225.00
7027	1027	24	3	210.00	630.00
7028	860	48	1	40.00	40.00
7029	412	40	1	110.00	110.00
7030	900	8	2	75.00	150.00
7031	617	22	3	210.00	630.00
7032	203	40	1	110.00	110.00
7033	605	47	1	40.00	40.00
7034	944	7	2	75.00	150.00
7035	899	18	3	185.00	555.00
7036	478	60	2	40.00	80.00
7037	1118	49	1	40.00	40.00
7038	198	19	2	185.00	370.00
7039	953	7	1	75.00	75.00
7040	561	42	2	40.00	80.00
7041	685	5	1	75.00	75.00
7042	439	13	2	185.00	370.00
7043	971	8	2	75.00	150.00
7044	929	39	2	110.00	220.00
7045	374	53	3	40.00	120.00
7046	275	57	1	40.00	40.00
7047	803	47	2	40.00	80.00
7048	22	36	2	110.00	220.00
7049	46	15	2	185.00	370.00
7050	1073	51	3	40.00	120.00
7051	247	21	1	210.00	210.00
7052	755	22	2	210.00	420.00
7053	98	18	3	185.00	555.00
7054	993	26	3	210.00	630.00
7055	1159	54	3	40.00	120.00
7056	1076	60	2	40.00	80.00
7057	664	16	3	185.00	555.00
7058	401	33	1	110.00	110.00
7059	101	51	2	40.00	80.00
7060	773	45	3	40.00	120.00
7061	1057	16	2	185.00	370.00
7062	655	58	1	40.00	40.00
7063	20	2	2	75.00	150.00
7064	644	30	3	210.00	630.00
7065	142	6	1	75.00	75.00
7066	1061	38	1	110.00	110.00
7067	1049	38	3	110.00	330.00
7068	128	27	1	210.00	210.00
7069	927	15	2	185.00	370.00
7070	134	58	3	40.00	120.00
7071	967	49	2	40.00	80.00
7072	284	37	2	110.00	220.00
7073	901	24	3	210.00	630.00
7074	793	21	1	210.00	210.00
7075	534	26	2	210.00	420.00
7076	681	27	2	210.00	420.00
7077	635	46	3	40.00	120.00
7078	423	26	2	210.00	420.00
7079	1083	44	3	40.00	120.00
7080	163	19	2	185.00	370.00
7081	719	58	1	40.00	40.00
7082	708	13	1	185.00	185.00
7083	18	45	1	40.00	40.00
7084	644	29	3	210.00	630.00
7085	726	44	1	40.00	40.00
7086	666	2	1	75.00	75.00
7087	534	39	3	110.00	330.00
7088	638	36	1	110.00	110.00
7089	905	37	3	110.00	330.00
7090	1060	24	3	210.00	630.00
7091	1074	18	3	185.00	555.00
7092	791	57	2	40.00	80.00
7093	615	15	1	185.00	185.00
7094	1087	17	2	185.00	370.00
7095	1152	21	1	210.00	210.00
7096	268	43	2	40.00	80.00
7097	977	34	1	110.00	110.00
7098	22	51	3	40.00	120.00
7099	1018	50	2	40.00	80.00
7100	503	6	3	75.00	225.00
7101	1079	37	3	110.00	330.00
7102	1149	21	2	210.00	420.00
7103	216	15	1	185.00	185.00
7104	926	20	1	185.00	185.00
7105	343	19	2	185.00	370.00
7106	217	10	1	75.00	75.00
7107	57	59	2	40.00	80.00
7108	1166	53	3	40.00	120.00
7109	586	45	3	40.00	120.00
7110	75	59	3	40.00	120.00
7111	239	28	2	210.00	420.00
7112	707	50	1	40.00	40.00
7113	774	46	2	40.00	80.00
7114	807	9	1	75.00	75.00
7115	632	46	3	40.00	120.00
7116	724	17	3	185.00	555.00
7117	1089	55	3	40.00	120.00
7118	606	12	2	185.00	370.00
7119	1154	27	2	210.00	420.00
7120	294	22	3	210.00	630.00
7121	818	41	3	40.00	120.00
7122	897	30	2	210.00	420.00
7123	1051	53	1	40.00	40.00
7124	69	39	2	110.00	220.00
7125	82	35	3	110.00	330.00
7126	772	40	3	110.00	330.00
7127	324	31	1	110.00	110.00
7128	888	39	1	110.00	110.00
7129	1037	53	1	40.00	40.00
7130	1198	39	1	110.00	110.00
7131	415	51	3	40.00	120.00
7132	1038	35	2	110.00	220.00
7133	877	20	3	185.00	555.00
7134	648	39	2	110.00	220.00
7135	276	50	2	40.00	80.00
7136	420	28	2	210.00	420.00
7137	84	25	3	210.00	630.00
7138	1022	46	2	40.00	80.00
7139	988	38	1	110.00	110.00
7140	342	11	2	185.00	370.00
7141	908	5	1	75.00	75.00
7142	17	32	1	110.00	110.00
7143	735	43	1	40.00	40.00
7144	1130	29	3	210.00	630.00
7145	1129	49	1	40.00	40.00
7146	825	60	3	40.00	120.00
7147	1113	19	1	185.00	185.00
7148	45	24	2	210.00	420.00
7149	99	29	2	210.00	420.00
7150	507	11	1	185.00	185.00
7151	368	6	2	75.00	150.00
7152	487	47	2	40.00	80.00
7153	1119	58	3	40.00	120.00
7154	335	52	3	40.00	120.00
7155	245	47	2	40.00	80.00
7156	921	40	3	110.00	330.00
7157	719	39	3	110.00	330.00
7158	1009	33	1	110.00	110.00
7159	231	57	3	40.00	120.00
7160	774	15	2	185.00	370.00
7161	85	24	3	210.00	630.00
7162	178	7	1	75.00	75.00
7163	448	24	3	210.00	630.00
7164	664	37	1	110.00	110.00
7165	435	44	2	40.00	80.00
7166	617	27	2	210.00	420.00
7167	463	51	1	40.00	40.00
7168	156	57	3	40.00	120.00
7169	489	9	1	75.00	75.00
7170	8	34	2	110.00	220.00
7171	17	31	3	110.00	330.00
7172	777	59	1	40.00	40.00
7173	741	40	3	110.00	330.00
7174	154	18	1	185.00	185.00
7175	529	59	3	40.00	120.00
7176	356	35	2	110.00	220.00
7177	74	21	3	210.00	630.00
7178	166	55	3	40.00	120.00
7179	636	53	2	40.00	80.00
7180	574	20	2	185.00	370.00
7181	440	9	3	75.00	225.00
7182	973	50	2	40.00	80.00
7183	1094	49	2	40.00	80.00
7184	170	40	1	110.00	110.00
7185	976	42	1	40.00	40.00
7186	838	56	3	40.00	120.00
7187	99	12	3	185.00	555.00
7188	206	6	3	75.00	225.00
7189	333	42	1	40.00	40.00
7190	176	16	3	185.00	555.00
7191	681	37	1	110.00	110.00
7192	52	25	1	210.00	210.00
7193	1153	18	1	185.00	185.00
7194	219	24	3	210.00	630.00
7195	244	23	1	210.00	210.00
7196	949	11	2	185.00	370.00
7197	26	37	2	110.00	220.00
7198	605	35	1	110.00	110.00
7199	629	50	3	40.00	120.00
7200	770	33	2	110.00	220.00
7201	665	44	1	40.00	40.00
7202	896	1	2	75.00	150.00
7203	745	7	2	75.00	150.00
7204	312	6	3	75.00	225.00
7205	361	31	1	110.00	110.00
7206	970	56	1	40.00	40.00
7207	434	23	2	210.00	420.00
7208	515	51	2	40.00	80.00
7209	291	25	3	210.00	630.00
7210	1095	52	3	40.00	120.00
7211	335	45	1	40.00	40.00
7212	22	27	2	210.00	420.00
7213	263	14	3	185.00	555.00
7214	561	36	2	110.00	220.00
7215	205	15	3	185.00	555.00
7216	317	4	3	75.00	225.00
7217	499	27	3	210.00	630.00
7218	768	36	3	110.00	330.00
7219	63	42	1	40.00	40.00
7220	681	52	1	40.00	40.00
7221	655	18	1	185.00	185.00
7222	211	28	2	210.00	420.00
7223	798	60	3	40.00	120.00
7224	1141	8	3	75.00	225.00
7225	131	8	2	75.00	150.00
7226	569	26	1	210.00	210.00
7227	550	20	1	185.00	185.00
7228	609	57	1	40.00	40.00
7229	257	60	3	40.00	120.00
7230	857	15	1	185.00	185.00
7231	712	37	1	110.00	110.00
7232	149	22	3	210.00	630.00
7233	509	27	3	210.00	630.00
7234	371	19	3	185.00	555.00
7235	1131	17	1	185.00	185.00
7236	1161	50	2	40.00	80.00
7237	41	45	3	40.00	120.00
7238	527	22	2	210.00	420.00
7239	1089	26	1	210.00	210.00
7240	1025	21	2	210.00	420.00
7241	182	33	2	110.00	220.00
7242	575	52	1	40.00	40.00
7243	535	8	1	75.00	75.00
7244	940	5	1	75.00	75.00
7245	864	57	1	40.00	40.00
7246	309	46	3	40.00	120.00
7247	772	41	1	40.00	40.00
7248	647	53	2	40.00	80.00
7249	454	44	3	40.00	120.00
7250	854	26	3	210.00	630.00
7251	1135	43	1	40.00	40.00
7252	1062	21	3	210.00	630.00
7253	250	3	3	75.00	225.00
7254	1149	7	2	75.00	150.00
7255	45	38	2	110.00	220.00
7256	292	58	3	40.00	120.00
7257	385	28	2	210.00	420.00
7258	183	43	2	40.00	80.00
7259	1039	25	3	210.00	630.00
7260	987	38	1	110.00	110.00
7261	8	23	1	210.00	210.00
7262	804	56	2	40.00	80.00
7263	927	44	3	40.00	120.00
7264	567	4	3	75.00	225.00
7265	335	22	3	210.00	630.00
7266	1101	29	3	210.00	630.00
7267	567	58	2	40.00	80.00
7268	367	8	2	75.00	150.00
7269	282	25	1	210.00	210.00
7270	976	21	1	210.00	210.00
7271	1076	55	3	40.00	120.00
7272	118	32	3	110.00	330.00
7273	327	37	1	110.00	110.00
7274	793	25	1	210.00	210.00
7275	1038	15	3	185.00	555.00
7276	557	40	2	110.00	220.00
7277	466	40	3	110.00	330.00
7278	392	7	2	75.00	150.00
7279	1033	49	2	40.00	80.00
7280	169	9	1	75.00	75.00
7281	487	5	2	75.00	150.00
7282	600	9	3	75.00	225.00
7283	852	43	1	40.00	40.00
7284	836	36	2	110.00	220.00
7285	726	59	3	40.00	120.00
7286	210	32	3	110.00	330.00
7287	253	53	1	40.00	40.00
7288	1012	19	1	185.00	185.00
7289	343	1	2	75.00	150.00
7290	539	57	3	40.00	120.00
7291	304	37	1	110.00	110.00
7292	818	41	1	40.00	40.00
7293	398	40	3	110.00	330.00
7294	689	19	2	185.00	370.00
7295	811	43	1	40.00	40.00
7296	213	50	1	40.00	40.00
7297	515	6	1	75.00	75.00
7298	190	7	1	75.00	75.00
7299	349	53	1	40.00	40.00
7300	224	34	1	110.00	110.00
7301	917	45	3	40.00	120.00
7302	1057	27	3	210.00	630.00
7303	1183	54	1	40.00	40.00
7304	131	29	2	210.00	420.00
7305	958	54	3	40.00	120.00
7306	101	23	1	210.00	210.00
7307	146	2	2	75.00	150.00
7308	1150	45	1	40.00	40.00
7309	352	11	1	185.00	185.00
7310	404	25	1	210.00	210.00
7311	486	28	2	210.00	420.00
7312	434	11	3	185.00	555.00
7313	1059	49	3	40.00	120.00
7314	1047	43	2	40.00	80.00
7315	809	25	2	210.00	420.00
7316	167	59	3	40.00	120.00
7317	28	54	2	40.00	80.00
7318	1025	21	3	210.00	630.00
7319	896	24	1	210.00	210.00
7320	458	20	2	185.00	370.00
7321	615	1	2	75.00	150.00
7322	681	30	3	210.00	630.00
7323	378	30	1	210.00	210.00
7324	1066	21	1	210.00	210.00
7325	304	21	3	210.00	630.00
7326	1138	4	1	75.00	75.00
7327	108	40	2	110.00	220.00
7328	468	53	1	40.00	40.00
7329	394	2	2	75.00	150.00
7330	936	33	1	110.00	110.00
7331	673	45	2	40.00	80.00
7332	279	32	3	110.00	330.00
7333	1018	54	2	40.00	80.00
7334	806	13	1	185.00	185.00
7335	902	44	2	40.00	80.00
7336	440	32	3	110.00	330.00
7337	396	49	1	40.00	40.00
7338	788	24	3	210.00	630.00
7339	1168	37	3	110.00	330.00
7340	223	29	2	210.00	420.00
7341	563	36	2	110.00	220.00
7342	734	33	3	110.00	330.00
7343	895	27	3	210.00	630.00
7344	40	49	3	40.00	120.00
7345	1085	20	2	185.00	370.00
7346	419	21	1	210.00	210.00
7347	1158	44	2	40.00	80.00
7348	528	41	3	40.00	120.00
7349	701	53	3	40.00	120.00
7350	506	24	2	210.00	420.00
7351	893	56	3	40.00	120.00
7352	1193	45	3	40.00	120.00
7353	64	12	3	185.00	555.00
7354	1015	37	3	110.00	330.00
7355	365	3	1	75.00	75.00
7356	1047	29	2	210.00	420.00
7357	143	14	1	185.00	185.00
7358	504	31	3	110.00	330.00
7359	38	16	2	185.00	370.00
7360	640	34	2	110.00	220.00
7361	631	40	3	110.00	330.00
7362	487	54	3	40.00	120.00
7363	328	25	1	210.00	210.00
7364	12	58	1	40.00	40.00
7365	885	28	1	210.00	210.00
7366	643	41	3	40.00	120.00
7367	897	57	1	40.00	40.00
7368	921	38	3	110.00	330.00
7369	860	4	3	75.00	225.00
7370	698	46	3	40.00	120.00
7371	195	7	2	75.00	150.00
7372	123	7	1	75.00	75.00
7373	397	55	2	40.00	80.00
7374	94	37	1	110.00	110.00
7375	762	19	2	185.00	370.00
7376	274	39	3	110.00	330.00
7377	103	3	1	75.00	75.00
7378	935	43	2	40.00	80.00
7379	506	1	2	75.00	150.00
7380	803	23	1	210.00	210.00
7381	442	27	2	210.00	420.00
7382	1159	4	2	75.00	150.00
7383	650	39	2	110.00	220.00
7384	708	19	1	185.00	185.00
7385	1191	52	2	40.00	80.00
7386	368	11	1	185.00	185.00
7387	351	44	1	40.00	40.00
7388	1125	8	2	75.00	150.00
7389	251	7	3	75.00	225.00
7390	1184	1	2	75.00	150.00
7391	811	39	1	110.00	110.00
7392	854	19	1	185.00	185.00
7393	238	52	3	40.00	120.00
7394	324	2	2	75.00	150.00
7395	780	53	2	40.00	80.00
7396	230	55	3	40.00	120.00
7397	199	12	2	185.00	370.00
7398	628	36	2	110.00	220.00
7399	430	43	2	40.00	80.00
7400	863	16	1	185.00	185.00
7401	343	11	1	185.00	185.00
7402	22	46	1	40.00	40.00
7403	33	55	3	40.00	120.00
7404	731	7	1	75.00	75.00
7405	677	60	2	40.00	80.00
7406	447	44	1	40.00	40.00
7407	402	9	2	75.00	150.00
7408	948	42	3	40.00	120.00
7409	990	57	2	40.00	80.00
7410	883	31	3	110.00	330.00
7411	100	12	3	185.00	555.00
7412	406	50	3	40.00	120.00
7413	1146	14	2	185.00	370.00
7414	1056	53	1	40.00	40.00
7415	521	17	2	185.00	370.00
7416	460	17	3	185.00	555.00
7417	951	34	2	110.00	220.00
7418	706	59	3	40.00	120.00
7419	962	4	3	75.00	225.00
7420	365	8	3	75.00	225.00
7421	254	23	2	210.00	420.00
7422	497	24	3	210.00	630.00
7423	983	52	3	40.00	120.00
7424	823	9	2	75.00	150.00
7425	445	35	1	110.00	110.00
7426	864	7	3	75.00	225.00
7427	308	50	1	40.00	40.00
7428	904	43	2	40.00	80.00
7429	72	29	3	210.00	630.00
7430	1019	25	2	210.00	420.00
7431	216	9	1	75.00	75.00
7432	108	60	1	40.00	40.00
7433	628	25	2	210.00	420.00
7434	791	2	1	75.00	75.00
7435	796	48	2	40.00	80.00
7436	484	56	2	40.00	80.00
7437	380	60	3	40.00	120.00
7438	195	53	2	40.00	80.00
7439	188	14	3	185.00	555.00
7440	1017	43	3	40.00	120.00
7441	411	40	3	110.00	330.00
7442	986	14	2	185.00	370.00
7443	403	38	1	110.00	110.00
7444	995	13	2	185.00	370.00
7445	434	7	2	75.00	150.00
7446	913	39	1	110.00	110.00
7447	52	44	2	40.00	80.00
7448	196	8	2	75.00	150.00
7449	442	42	3	40.00	120.00
7450	643	25	2	210.00	420.00
7451	211	48	3	40.00	120.00
7452	54	19	3	185.00	555.00
7453	112	12	1	185.00	185.00
7454	183	12	1	185.00	185.00
7455	388	5	1	75.00	75.00
7456	484	6	3	75.00	225.00
7457	1069	49	1	40.00	40.00
7458	772	46	2	40.00	80.00
7459	624	5	1	75.00	75.00
7460	957	39	3	110.00	330.00
7461	446	14	2	185.00	370.00
7462	778	27	1	210.00	210.00
7463	446	48	2	40.00	80.00
7464	397	23	2	210.00	420.00
7465	1051	12	1	185.00	185.00
7466	939	4	2	75.00	150.00
7467	799	7	3	75.00	225.00
7468	530	24	3	210.00	630.00
7469	975	59	3	40.00	120.00
7470	781	9	3	75.00	225.00
7471	542	53	2	40.00	80.00
7472	484	1	1	75.00	75.00
7473	607	25	1	210.00	210.00
7474	157	36	3	110.00	330.00
7475	696	42	2	40.00	80.00
7476	706	22	1	210.00	210.00
7477	840	4	3	75.00	225.00
7478	811	21	1	210.00	210.00
7479	284	49	1	40.00	40.00
7480	28	38	2	110.00	220.00
7481	1076	17	1	185.00	185.00
7482	718	4	3	75.00	225.00
7483	140	30	3	210.00	630.00
7484	960	42	2	40.00	80.00
7485	975	40	2	110.00	220.00
7486	297	41	3	40.00	120.00
7487	578	41	3	40.00	120.00
7488	398	21	2	210.00	420.00
7489	100	60	1	40.00	40.00
7490	105	15	1	185.00	185.00
7491	107	11	1	185.00	185.00
7492	927	25	2	210.00	420.00
7493	1158	27	2	210.00	420.00
7494	715	4	1	75.00	75.00
7495	497	50	1	40.00	40.00
7496	31	4	3	75.00	225.00
7497	905	50	1	40.00	40.00
7498	1042	6	1	75.00	75.00
7499	1141	48	1	40.00	40.00
7500	589	18	2	185.00	370.00
7501	1139	46	1	40.00	40.00
7502	236	23	1	210.00	210.00
7503	1070	1	3	75.00	225.00
7504	956	19	2	185.00	370.00
7505	955	29	3	210.00	630.00
7506	1038	25	1	210.00	210.00
7507	1010	22	1	210.00	210.00
7508	1135	29	3	210.00	630.00
7509	489	17	2	185.00	370.00
7510	262	10	1	75.00	75.00
7511	489	30	1	210.00	210.00
7512	821	48	3	40.00	120.00
7513	149	44	1	40.00	40.00
7514	731	14	1	185.00	185.00
7515	699	23	3	210.00	630.00
7516	760	32	1	110.00	110.00
7517	955	22	3	210.00	630.00
7518	1022	14	3	185.00	555.00
7519	252	23	2	210.00	420.00
7520	708	57	2	40.00	80.00
7521	340	56	2	40.00	80.00
7522	623	1	1	75.00	75.00
7523	1056	40	1	110.00	110.00
7524	450	27	2	210.00	420.00
7525	124	16	1	185.00	185.00
7526	1017	43	1	40.00	40.00
7527	351	34	1	110.00	110.00
7528	616	60	3	40.00	120.00
7529	513	46	1	40.00	40.00
7530	680	29	1	210.00	210.00
7531	402	20	2	185.00	370.00
7532	948	4	3	75.00	225.00
7533	686	48	1	40.00	40.00
7534	610	50	1	40.00	40.00
7535	1149	54	3	40.00	120.00
7536	768	13	1	185.00	185.00
7537	303	42	2	40.00	80.00
7538	106	30	3	210.00	630.00
7539	193	39	1	110.00	110.00
7540	425	18	3	185.00	555.00
7541	15	57	1	40.00	40.00
7542	451	4	1	75.00	75.00
7543	114	34	3	110.00	330.00
7544	633	47	1	40.00	40.00
7545	1007	24	3	210.00	630.00
7546	175	26	3	210.00	630.00
7547	552	17	3	185.00	555.00
7548	1070	35	1	110.00	110.00
7549	1015	13	1	185.00	185.00
7550	280	48	3	40.00	120.00
7551	619	10	3	75.00	225.00
7552	294	24	3	210.00	630.00
7553	310	13	2	185.00	370.00
7554	1078	17	1	185.00	185.00
7555	100	60	2	40.00	80.00
7556	100	38	2	110.00	220.00
7557	145	37	2	110.00	220.00
7558	62	41	3	40.00	120.00
7559	1003	48	1	40.00	40.00
7560	500	56	2	40.00	80.00
7561	455	59	2	40.00	80.00
7562	291	59	2	40.00	80.00
7563	662	53	2	40.00	80.00
7564	578	22	1	210.00	210.00
7565	502	52	2	40.00	80.00
7566	10	54	3	40.00	120.00
7567	426	6	2	75.00	150.00
7568	613	57	2	40.00	80.00
7569	1179	48	3	40.00	120.00
7570	40	14	1	185.00	185.00
7571	726	28	2	210.00	420.00
7572	712	39	1	110.00	110.00
7573	1148	11	1	185.00	185.00
7574	378	25	2	210.00	420.00
7575	1131	34	3	110.00	330.00
7576	107	15	2	185.00	370.00
7577	534	32	2	110.00	220.00
7578	843	56	2	40.00	80.00
7579	403	52	3	40.00	120.00
7580	727	49	1	40.00	40.00
7581	1159	46	2	40.00	80.00
7582	191	15	3	185.00	555.00
7583	1131	23	2	210.00	420.00
7584	381	43	1	40.00	40.00
7585	470	8	3	75.00	225.00
7586	899	29	1	210.00	210.00
7587	618	48	1	40.00	40.00
7588	349	39	2	110.00	220.00
7589	743	1	2	75.00	150.00
7590	97	19	1	185.00	185.00
7591	1115	35	1	110.00	110.00
7592	958	39	2	110.00	220.00
7593	469	22	3	210.00	630.00
7594	680	59	1	40.00	40.00
7595	996	3	1	75.00	75.00
7596	295	31	1	110.00	110.00
7597	662	12	1	185.00	185.00
7598	646	48	3	40.00	120.00
7599	529	14	2	185.00	370.00
7600	850	29	2	210.00	420.00
7601	1000	13	1	185.00	185.00
7602	293	57	2	40.00	80.00
7603	133	46	2	40.00	80.00
7604	583	2	1	75.00	75.00
7605	1200	38	3	110.00	330.00
7606	1029	4	2	75.00	150.00
7607	626	13	2	185.00	370.00
7608	399	51	1	40.00	40.00
7609	698	13	3	185.00	555.00
7610	208	56	1	40.00	40.00
7611	480	51	1	40.00	40.00
7612	1000	37	1	110.00	110.00
7613	515	52	3	40.00	120.00
7614	606	17	2	185.00	370.00
7615	81	31	3	110.00	330.00
7616	796	19	1	185.00	185.00
7617	456	27	2	210.00	420.00
7618	190	38	2	110.00	220.00
7619	470	9	2	75.00	150.00
7620	380	11	2	185.00	370.00
7621	253	29	3	210.00	630.00
7622	82	20	1	185.00	185.00
7623	411	33	2	110.00	220.00
7624	449	27	3	210.00	630.00
7625	530	22	3	210.00	630.00
7626	1016	60	2	40.00	80.00
7627	613	34	3	110.00	330.00
7628	631	36	2	110.00	220.00
7629	272	27	1	210.00	210.00
7630	402	27	1	210.00	210.00
7631	5	33	2	110.00	220.00
7632	474	47	1	40.00	40.00
7633	371	60	2	40.00	80.00
7634	165	43	2	40.00	80.00
7635	537	42	1	40.00	40.00
7636	575	1	3	75.00	225.00
7637	1167	42	2	40.00	80.00
7638	998	46	3	40.00	120.00
7639	1106	59	1	40.00	40.00
7640	803	18	1	185.00	185.00
7641	882	56	1	40.00	40.00
7642	729	11	3	185.00	555.00
7643	182	40	1	110.00	110.00
7644	740	45	1	40.00	40.00
7645	436	8	2	75.00	150.00
7646	420	5	3	75.00	225.00
7647	425	52	2	40.00	80.00
7648	338	58	2	40.00	80.00
7649	1113	55	3	40.00	120.00
7650	1181	32	3	110.00	330.00
7651	308	9	1	75.00	75.00
7652	997	17	3	185.00	555.00
7653	117	56	3	40.00	120.00
7654	92	56	2	40.00	80.00
7655	393	47	3	40.00	120.00
7656	855	57	1	40.00	40.00
7657	281	45	2	40.00	80.00
7658	339	59	3	40.00	120.00
7659	768	36	1	110.00	110.00
7660	472	56	2	40.00	80.00
7661	802	60	1	40.00	40.00
7662	383	23	1	210.00	210.00
7663	490	14	3	185.00	555.00
7664	585	57	2	40.00	80.00
7665	309	19	3	185.00	555.00
7666	33	21	2	210.00	420.00
7667	95	47	3	40.00	120.00
7668	954	10	2	75.00	150.00
7669	248	30	1	210.00	210.00
7670	517	12	3	185.00	555.00
7671	1137	17	1	185.00	185.00
7672	1005	49	3	40.00	120.00
7673	763	2	3	75.00	225.00
7674	1055	10	2	75.00	150.00
7675	984	6	1	75.00	75.00
7676	348	11	3	185.00	555.00
7677	52	14	3	185.00	555.00
7678	258	21	1	210.00	210.00
7679	514	15	3	185.00	555.00
7680	123	56	1	40.00	40.00
7681	265	46	3	40.00	120.00
7682	1071	7	2	75.00	150.00
7683	51	15	3	185.00	555.00
7684	244	51	2	40.00	80.00
7685	643	18	2	185.00	370.00
7686	330	29	2	210.00	420.00
7687	267	59	1	40.00	40.00
7688	1015	54	1	40.00	40.00
7689	460	11	2	185.00	370.00
7690	102	54	1	40.00	40.00
7691	431	29	1	210.00	210.00
7692	430	7	2	75.00	150.00
7693	1116	44	3	40.00	120.00
7694	770	19	1	185.00	185.00
7695	963	13	3	185.00	555.00
7696	379	41	1	40.00	40.00
7697	1089	8	3	75.00	225.00
7698	156	23	2	210.00	420.00
7699	352	17	1	185.00	185.00
7700	719	20	1	185.00	185.00
7701	181	31	1	110.00	110.00
7702	825	3	2	75.00	150.00
7703	1109	12	3	185.00	555.00
7704	49	52	1	40.00	40.00
7705	191	53	1	40.00	40.00
7706	628	19	2	185.00	370.00
7707	1009	12	1	185.00	185.00
7708	191	15	1	185.00	185.00
7709	1128	5	2	75.00	150.00
7710	1032	31	2	110.00	220.00
7711	933	31	3	110.00	330.00
7712	641	32	2	110.00	220.00
7713	204	10	2	75.00	150.00
7714	822	47	2	40.00	80.00
7715	734	37	1	110.00	110.00
7716	860	35	2	110.00	220.00
7717	232	36	2	110.00	220.00
7718	404	27	1	210.00	210.00
7719	56	51	2	40.00	80.00
7720	218	32	2	110.00	220.00
7721	299	50	2	40.00	80.00
7722	179	36	3	110.00	330.00
7723	1049	59	1	40.00	40.00
7724	215	52	2	40.00	80.00
7725	435	3	2	75.00	150.00
7726	263	8	1	75.00	75.00
7727	226	4	2	75.00	150.00
7728	332	1	1	75.00	75.00
7729	1096	18	3	185.00	555.00
7730	370	23	1	210.00	210.00
7731	1153	46	1	40.00	40.00
7732	141	34	1	110.00	110.00
7733	973	6	2	75.00	150.00
7734	973	26	2	210.00	420.00
7735	663	7	2	75.00	150.00
7736	817	35	3	110.00	330.00
7737	735	54	2	40.00	80.00
7738	283	19	3	185.00	555.00
7739	398	23	1	210.00	210.00
7740	135	9	3	75.00	225.00
7741	290	52	2	40.00	80.00
7742	9	10	1	75.00	75.00
7743	992	22	3	210.00	630.00
7744	1063	57	2	40.00	80.00
7745	76	29	3	210.00	630.00
7746	608	35	1	110.00	110.00
7747	569	14	3	185.00	555.00
7748	986	26	3	210.00	630.00
7749	1034	32	2	110.00	220.00
7750	48	21	3	210.00	630.00
7751	427	31	1	110.00	110.00
7752	1078	48	1	40.00	40.00
7753	927	34	3	110.00	330.00
7754	622	10	1	75.00	75.00
7755	718	14	1	185.00	185.00
7756	218	29	3	210.00	630.00
7757	937	31	3	110.00	330.00
7758	956	40	3	110.00	330.00
7759	951	50	1	40.00	40.00
7760	1133	37	2	110.00	220.00
7761	649	47	2	40.00	80.00
7762	400	15	1	185.00	185.00
7763	46	33	2	110.00	220.00
7764	1195	37	1	110.00	110.00
7765	1099	21	1	210.00	210.00
7766	200	9	3	75.00	225.00
7767	925	7	3	75.00	225.00
7768	182	52	3	40.00	120.00
7769	400	53	2	40.00	80.00
7770	52	42	2	40.00	80.00
7771	199	6	2	75.00	150.00
7772	68	19	1	185.00	185.00
7773	245	49	1	40.00	40.00
7774	248	38	3	110.00	330.00
7775	837	56	2	40.00	80.00
7776	699	17	1	185.00	185.00
7777	977	43	1	40.00	40.00
7778	856	28	2	210.00	420.00
7779	709	22	3	210.00	630.00
7780	493	32	3	110.00	330.00
7781	455	43	2	40.00	80.00
7782	907	8	3	75.00	225.00
7783	459	27	3	210.00	630.00
7784	695	25	1	210.00	210.00
7785	554	35	1	110.00	110.00
7786	470	17	3	185.00	555.00
7787	56	50	1	40.00	40.00
7788	405	36	3	110.00	330.00
7789	526	6	3	75.00	225.00
7790	19	20	3	185.00	555.00
7791	526	31	2	110.00	220.00
7792	497	31	3	110.00	330.00
7793	607	1	3	75.00	225.00
7794	676	1	1	75.00	75.00
7795	964	2	2	75.00	150.00
7796	511	8	3	75.00	225.00
7797	672	27	1	210.00	210.00
7798	1069	3	3	75.00	225.00
7799	508	2	3	75.00	225.00
7800	1080	41	2	40.00	80.00
7801	566	34	1	110.00	110.00
7802	506	23	1	210.00	210.00
7803	495	3	3	75.00	225.00
7804	425	53	2	40.00	80.00
7805	819	28	1	210.00	210.00
7806	473	46	2	40.00	80.00
7807	385	2	3	75.00	225.00
7808	491	21	2	210.00	420.00
7809	6	19	3	185.00	555.00
7810	992	43	3	40.00	120.00
7811	1063	26	1	210.00	210.00
7812	901	37	1	110.00	110.00
7813	1036	5	2	75.00	150.00
7814	442	48	2	40.00	80.00
7815	459	8	1	75.00	75.00
7816	731	24	2	210.00	420.00
7817	964	54	2	40.00	80.00
7818	43	34	2	110.00	220.00
7819	558	54	1	40.00	40.00
7820	613	24	2	210.00	420.00
7821	187	36	2	110.00	220.00
7822	236	2	3	75.00	225.00
7823	231	35	1	110.00	110.00
7824	1110	53	3	40.00	120.00
7825	858	22	3	210.00	630.00
7826	115	47	2	40.00	80.00
7827	1064	52	1	40.00	40.00
7828	190	17	1	185.00	185.00
7829	141	7	1	75.00	75.00
7830	13	41	1	40.00	40.00
7831	997	4	1	75.00	75.00
7832	601	5	2	75.00	150.00
7833	451	31	3	110.00	330.00
7834	971	3	1	75.00	75.00
7835	151	13	3	185.00	555.00
7836	198	21	2	210.00	420.00
7837	363	27	1	210.00	210.00
7838	645	11	3	185.00	555.00
7839	1002	22	3	210.00	630.00
7840	397	56	2	40.00	80.00
7841	557	40	3	110.00	330.00
7842	1008	16	3	185.00	555.00
7843	296	6	1	75.00	75.00
7844	144	49	3	40.00	120.00
7845	530	52	2	40.00	80.00
7846	1000	16	3	185.00	555.00
7847	146	53	2	40.00	80.00
7848	287	44	2	40.00	80.00
7849	4	18	2	185.00	370.00
7850	559	11	3	185.00	555.00
7851	1113	47	3	40.00	120.00
7852	421	43	1	40.00	40.00
7853	797	10	2	75.00	150.00
7854	1128	25	3	210.00	630.00
7855	1109	8	2	75.00	150.00
7856	667	46	1	40.00	40.00
7857	643	12	2	185.00	370.00
7858	315	49	3	40.00	120.00
7859	785	41	1	40.00	40.00
7860	238	8	1	75.00	75.00
7861	308	16	3	185.00	555.00
7862	554	52	1	40.00	40.00
7863	360	30	2	210.00	420.00
7864	975	27	1	210.00	210.00
7865	1131	15	1	185.00	185.00
7866	726	15	3	185.00	555.00
7867	471	4	3	75.00	225.00
7868	631	40	2	110.00	220.00
7869	86	56	2	40.00	80.00
7870	1017	38	3	110.00	330.00
7871	793	17	1	185.00	185.00
7872	459	5	1	75.00	75.00
7873	36	30	2	210.00	420.00
7874	753	34	3	110.00	330.00
7875	241	55	2	40.00	80.00
7876	458	42	2	40.00	80.00
7877	703	7	3	75.00	225.00
7878	127	48	2	40.00	80.00
7879	799	2	1	75.00	75.00
7880	146	6	2	75.00	150.00
7881	834	51	3	40.00	120.00
7882	1151	17	2	185.00	370.00
7883	1072	10	3	75.00	225.00
7884	430	12	3	185.00	555.00
7885	398	3	1	75.00	75.00
7886	734	12	2	185.00	370.00
7887	810	35	3	110.00	330.00
7888	567	38	1	110.00	110.00
7889	944	35	1	110.00	110.00
7890	587	1	2	75.00	150.00
7891	876	21	3	210.00	630.00
7892	660	39	2	110.00	220.00
7893	313	16	3	185.00	555.00
7894	826	36	3	110.00	330.00
7895	445	5	1	75.00	75.00
7896	801	39	3	110.00	330.00
7897	1135	15	2	185.00	370.00
7898	949	36	2	110.00	220.00
7899	594	18	3	185.00	555.00
7900	108	34	1	110.00	110.00
7901	438	30	1	210.00	210.00
7902	205	10	3	75.00	225.00
7903	910	9	2	75.00	150.00
7904	110	46	1	40.00	40.00
7905	1115	2	3	75.00	225.00
7906	465	49	2	40.00	80.00
7907	1169	54	1	40.00	40.00
7908	944	57	1	40.00	40.00
7909	1045	11	1	185.00	185.00
7910	1153	32	3	110.00	330.00
7911	836	34	3	110.00	330.00
7912	195	58	3	40.00	120.00
7913	428	39	1	110.00	110.00
7914	965	26	1	210.00	210.00
7915	822	22	3	210.00	630.00
7916	496	9	2	75.00	150.00
7917	789	31	2	110.00	220.00
7918	1180	22	1	210.00	210.00
7919	95	50	1	40.00	40.00
7920	438	20	3	185.00	555.00
7921	128	47	2	40.00	80.00
7922	55	42	2	40.00	80.00
7923	1033	34	2	110.00	220.00
7924	303	9	2	75.00	150.00
7925	183	4	1	75.00	75.00
7926	100	16	3	185.00	555.00
7927	773	29	3	210.00	630.00
7928	1050	43	2	40.00	80.00
7929	983	39	3	110.00	330.00
7930	815	2	1	75.00	75.00
7931	588	2	2	75.00	150.00
7932	1093	46	1	40.00	40.00
7933	514	58	1	40.00	40.00
7934	122	32	2	110.00	220.00
7935	840	39	1	110.00	110.00
7936	1042	14	3	185.00	555.00
7937	153	44	2	40.00	80.00
7938	614	47	2	40.00	80.00
7939	1091	23	2	210.00	420.00
7940	1027	29	2	210.00	420.00
7941	536	38	2	110.00	220.00
7942	253	34	3	110.00	330.00
7943	174	44	1	40.00	40.00
7944	332	22	2	210.00	420.00
7945	658	34	3	110.00	330.00
7946	330	25	3	210.00	630.00
7947	935	26	3	210.00	630.00
7948	537	10	1	75.00	75.00
7949	236	60	3	40.00	120.00
7950	257	44	3	40.00	120.00
7951	941	25	3	210.00	630.00
7952	769	40	1	110.00	110.00
7953	441	19	1	185.00	185.00
7954	1065	3	2	75.00	150.00
7955	321	34	2	110.00	220.00
7956	100	24	2	210.00	420.00
7957	205	22	1	210.00	210.00
7958	939	22	3	210.00	630.00
7959	930	18	2	185.00	370.00
7960	748	33	1	110.00	110.00
7961	638	31	1	110.00	110.00
7962	885	22	3	210.00	630.00
7963	246	22	3	210.00	630.00
7964	76	29	2	210.00	420.00
7965	340	30	1	210.00	210.00
7966	927	46	3	40.00	120.00
7967	686	42	1	40.00	40.00
7968	832	35	3	110.00	330.00
7969	474	49	2	40.00	80.00
7970	663	14	2	185.00	370.00
7971	1115	17	2	185.00	370.00
7972	998	49	3	40.00	120.00
7973	1005	2	2	75.00	150.00
7974	2	5	3	75.00	225.00
7975	1077	17	2	185.00	370.00
7976	276	60	3	40.00	120.00
7977	451	32	1	110.00	110.00
7978	933	15	1	185.00	185.00
7979	507	38	1	110.00	110.00
7980	1037	26	2	210.00	420.00
7981	195	53	2	40.00	80.00
7982	138	6	2	75.00	150.00
7983	980	5	2	75.00	150.00
7984	75	11	1	185.00	185.00
7985	1098	11	3	185.00	555.00
7986	893	7	1	75.00	75.00
7987	581	51	2	40.00	80.00
7988	242	29	1	210.00	210.00
7989	713	29	1	210.00	210.00
7990	951	18	3	185.00	555.00
7991	1051	27	1	210.00	210.00
7992	1151	36	1	110.00	110.00
7993	1184	24	3	210.00	630.00
7994	1031	50	2	40.00	80.00
7995	312	35	3	110.00	330.00
7996	960	38	1	110.00	110.00
7997	1114	43	3	40.00	120.00
7998	924	3	2	75.00	150.00
7999	966	53	3	40.00	120.00
8000	1	38	2	110.00	220.00
8001	265	3	2	75.00	150.00
8002	1038	21	1	210.00	210.00
8003	507	36	1	110.00	110.00
8004	371	50	3	40.00	120.00
8005	676	16	3	185.00	555.00
8006	960	19	1	185.00	185.00
8007	828	54	3	40.00	120.00
8008	877	16	3	185.00	555.00
8009	1063	46	2	40.00	80.00
8010	868	58	2	40.00	80.00
8011	173	42	2	40.00	80.00
8012	80	23	2	210.00	420.00
8013	231	31	3	110.00	330.00
\.


--
-- TOC entry 3597 (class 0 OID 16425)
-- Dependencies: 224
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleado (id_empleado, nombre, tipo, telefono, salario, turno, id_sucursal) FROM stdin;
1	Carlos Ramírez López	Mesero	4771200001	8500.00	Matutino	1
2	María González Pérez	Mesero	4771200002	8500.00	Vespertino	1
3	José Hernández Ruiz	Cocinero	4771200003	11000.00	Matutino	1
4	Ana Martínez Soto	Cocinero	4771200004	11000.00	Vespertino	1
5	Luis Torres García	Gerente	4771200005	18000.00	Matutino	1
6	Rosa Flores Mendoza	Cajero	4771200006	9000.00	Matutino	1
7	Pedro Díaz Castro	Mesero	4771200007	8500.00	Nocturno	1
8	Lucía Reyes Vega	Auxiliar de cocina	4771200008	7500.00	Matutino	1
9	Miguel Ángel Vargas	Mesero	4771200009	8500.00	Matutino	1
10	Sandra Morales Cruz	Hostess	4771200010	8000.00	Vespertino	1
11	Jorge Ortega Luna	Cocinero	4771200011	11000.00	Matutino	2
12	Claudia Jiménez Ríos	Mesero	4771200012	8500.00	Matutino	2
13	Roberto Guzmán Serna	Gerente	4771200013	18000.00	Matutino	2
14	Patricia Medina Rojas	Cajero	4771200014	9000.00	Vespertino	2
15	Eduardo Sandoval Paz	Mesero	4771200015	8500.00	Vespertino	2
16	Gabriela Romero Leal	Cocinero	4771200016	11000.00	Nocturno	2
17	Fernando Aguilar Nieto	Auxiliar de cocina	4771200017	7500.00	Matutino	2
18	Norma Ríos Fuentes	Mesero	4771200018	8500.00	Nocturno	2
19	Arturo Navarro Bravo	Mesero	4771200019	8500.00	Matutino	2
20	Verónica Salinas Mata	Hostess	4771200020	8000.00	Matutino	2
21	Raúl Espinoza Dávila	Gerente	4771200021	18000.00	Matutino	3
22	Diana Cabrera Ponce	Mesero	4771200022	8500.00	Matutino	3
23	Óscar Lara Mondragón	Cocinero	4771200023	11000.00	Matutino	3
24	Sofía Treviño Campos	Cajero	4771200024	9000.00	Matutino	3
25	Enrique Peña Vidal	Mesero	4771200025	8500.00	Vespertino	3
26	Carmen Alvarado Torres	Cocinero	4771200026	11000.00	Vespertino	3
27	Héctor Garza Lozano	Auxiliar de cocina	4771200027	7500.00	Matutino	3
28	Irene Molina Ochoa	Mesero	4771200028	8500.00	Nocturno	3
29	Mauricio Serrano Blanco	Mesero	4771200029	8500.00	Matutino	3
30	Alejandra Montes Ibarra	Hostess	4771200030	8000.00	Matutino	3
31	Rubén Castro Delgado	Gerente	4771200031	18000.00	Matutino	4
32	Leticia Ramos Fuentes	Mesero	4771200032	8500.00	Matutino	4
33	Adrián Pedraza Solis	Cocinero	4771200033	11000.00	Matutino	4
34	Yolanda Guerrero Acosta	Cajero	4771200034	9000.00	Vespertino	4
35	Iván Herrera Álvarez	Mesero	4771200035	8500.00	Matutino	4
36	Mónica Valdez Quintero	Cocinero	4771200036	11000.00	Nocturno	4
37	Cristian Fuentes Bernal	Auxiliar de cocina	4771200037	7500.00	Matutino	4
38	Silvia Trejo Gutiérrez	Mesero	4771200038	8500.00	Vespertino	4
39	Julián Rocha Estrada	Mesero	4771200039	8500.00	Matutino	4
40	Beatriz Núñez Carrillo	Hostess	4771200040	8000.00	Matutino	4
41	Alejandro Soto Paredes	Gerente	4771200041	18000.00	Matutino	5
42	Fabiola Ávila Zamora	Mesero	4771200042	8500.00	Matutino	5
43	Gerardo Muñoz Cárdenas	Cocinero	4771200043	11000.00	Matutino	5
44	Esperanza León Cisneros	Cajero	4771200044	9000.00	Matutino	5
45	Armando Ibáñez Quiroz	Mesero	4771200045	8500.00	Vespertino	5
46	Daniela Prado Suárez	Cocinero	4771200046	11000.00	Vespertino	5
47	Ernesto Mendoza Olvera	Auxiliar de cocina	4771200047	7500.00	Nocturno	5
48	Liliana Acosta Bermúdez	Mesero	4771200048	8500.00	Nocturno	5
49	Hugo Valencia Cortés	Mesero	4771200049	8500.00	Matutino	5
50	Mariana Domínguez Perea	Hostess	4771200050	8000.00	Matutino	5
\.


--
-- TOC entry 3607 (class 0 OID 16492)
-- Dependencies: 234
-- Data for Name: ingredientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ingredientes (id_ingrediente, nombre_ingrediente, unidad_medida) FROM stdin;
1	Aguacate	kg
2	Jitomate	kg
3	Cebolla	kg
4	Chile serrano	kg
5	Cilantro	kg
6	Limón	kg
7	Ajo	kg
8	Sal	kg
9	Pimienta negra	kg
10	Aceite de oliva	litro
11	Aceite vegetal	litro
12	Mantequilla	kg
13	Queso Oaxaca	kg
14	Queso manchego	kg
15	Queso parmesano	kg
16	Queso de cabra	kg
17	Crema ácida	litro
18	Leche entera	litro
19	Huevo	pieza
20	Pollo entero	kg
21	Pechuga de pollo	kg
22	Muslo de pollo	kg
23	Carne molida de res	kg
24	Filete de res	kg
25	Arrachera	kg
26	Costilla de cerdo	kg
27	Chorizo	kg
28	Jamón serrano	kg
29	Camarón fresco	kg
30	Filete de tilapia	kg
31	Pulpo	kg
32	Calamar	kg
33	Marlín ahumado	kg
34	Espagueti	kg
35	Fettuccine	kg
36	Penne	kg
37	Lasaña (láminas)	kg
38	Linguine	kg
39	Ravioles	kg
40	Harina de trigo	kg
41	Maíz cacahuazintle	kg
42	Tortilla de maíz	pieza
43	Tostada	pieza
44	Pan bolillo	pieza
45	Arroz	kg
46	Frijol negro	kg
47	Garbanzo	kg
48	Elote	pieza
49	Papa	kg
50	Espinaca	kg
51	Lechuga romana	kg
52	Flor de calabaza	kg
53	Nopal	kg
54	Albahaca	kg
55	Epazote	kg
56	Orégano seco	kg
57	Comino	kg
58	Canela	kg
59	Chile ancho	kg
60	Chile guajillo	kg
61	Chile chipotle	kg
62	Chile poblano	kg
63	Chile pasilla	kg
64	Mole negro en pasta	kg
65	Miel	litro
66	Mostaza Dijon	kg
67	Salsa inglesa	litro
68	Alcaparras	kg
69	Aceitunas	kg
70	Piñones	kg
71	Nuez	kg
72	Granada	kg
73	Fresas	kg
74	Azúcar	kg
75	Cajeta	litro
76	Chocolate amargo	kg
77	Vainilla	litro
78	Café molido	kg
79	Cerveza	litro
80	Limón (jugo)	litro
81	Chamoy	litro
\.


--
-- TOC entry 3614 (class 0 OID 16548)
-- Dependencies: 241
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario (id_inventario, id_ingrediente, id_sucursal, stock_actual) FROM stdin;
1	1	1	25.00
2	2	1	30.00
3	3	1	20.00
4	4	1	8.00
5	5	1	10.00
6	6	1	15.00
7	7	1	12.00
8	8	1	18.00
9	9	1	5.00
10	10	1	8.00
11	11	1	10.00
12	12	1	6.00
13	13	1	14.00
14	14	1	12.00
15	15	1	7.00
16	16	1	5.00
17	1	2	22.00
18	2	2	28.00
19	3	2	18.00
20	4	2	7.00
21	5	2	9.00
22	6	2	14.00
23	7	2	11.00
24	8	2	16.00
25	9	2	4.50
26	10	2	7.50
27	11	2	9.00
28	12	2	5.50
29	13	2	13.00
30	14	2	11.00
31	15	2	6.50
32	16	2	4.50
33	1	3	18.00
34	2	3	22.00
35	3	3	15.00
36	4	3	6.00
37	5	3	8.00
38	6	3	12.00
39	7	3	10.00
40	8	3	14.00
41	9	3	4.00
42	10	3	6.50
43	11	3	8.00
44	12	3	5.00
45	13	3	11.00
46	14	3	10.00
47	15	3	5.50
48	16	3	4.00
49	1	4	30.00
50	2	4	35.00
51	3	4	24.00
52	4	4	9.00
53	5	4	12.00
54	6	4	18.00
55	7	4	14.00
56	8	4	22.00
57	9	4	6.00
58	10	4	10.00
59	11	4	12.00
60	12	4	7.00
61	13	4	16.00
62	14	4	14.00
63	15	4	8.00
64	16	4	6.00
65	1	5	20.00
66	2	5	25.00
67	3	5	17.00
68	4	5	7.00
69	5	5	9.00
70	6	5	13.00
71	7	5	11.00
72	8	5	15.00
73	9	5	4.50
74	10	5	7.00
75	11	5	9.00
76	12	5	5.50
77	13	5	12.00
78	14	5	11.00
79	15	5	6.00
80	16	5	4.50
81	17	1	12.00
82	18	1	20.00
83	19	1	120.00
84	20	1	18.00
85	21	1	15.00
86	22	1	16.00
87	23	1	22.00
88	24	1	10.00
89	25	1	8.00
90	26	1	14.00
91	27	1	9.00
92	28	1	6.00
93	29	1	12.00
94	30	1	10.00
95	31	1	8.00
96	32	1	7.00
97	33	1	5.00
98	34	1	8.00
99	35	1	8.00
100	36	1	8.00
101	17	2	11.00
102	18	2	18.00
103	19	2	100.00
104	20	2	16.00
105	21	2	14.00
106	22	2	15.00
107	23	2	20.00
108	24	2	9.00
109	25	2	7.00
110	26	2	13.00
111	27	2	8.00
112	28	2	5.50
113	29	2	11.00
114	30	2	9.00
115	31	2	7.00
116	32	2	6.50
117	33	2	4.50
118	17	3	9.00
119	18	3	15.00
120	19	3	80.00
121	20	3	14.00
122	21	3	12.00
123	22	3	13.00
124	23	3	17.00
125	24	3	8.00
126	25	3	6.00
127	26	3	11.00
128	27	3	7.00
129	28	3	4.50
130	29	3	9.00
131	30	3	8.00
132	31	3	6.00
133	32	3	5.00
134	33	3	4.00
135	34	3	6.00
136	35	3	6.00
137	36	3	6.00
138	37	3	6.00
139	38	3	6.00
140	39	3	6.00
141	40	3	10.00
142	41	3	8.00
143	42	3	300.00
144	43	3	200.00
145	44	3	80.00
146	45	3	12.00
147	46	3	10.00
148	47	3	8.00
149	48	3	50.00
150	34	2	7.00
151	17	4	14.00
152	18	4	22.00
153	19	4	140.00
154	20	4	20.00
155	21	4	18.00
156	22	4	19.00
157	23	4	25.00
158	24	4	12.00
159	25	4	9.00
160	26	4	16.00
161	27	4	10.00
162	28	4	7.00
163	29	4	14.00
164	30	4	11.00
165	31	4	9.00
166	32	4	8.00
167	33	4	6.00
168	34	4	9.00
169	35	4	9.00
170	36	4	9.00
171	37	4	9.00
172	38	4	9.00
173	39	4	9.00
174	40	4	13.00
175	41	4	11.00
176	42	4	400.00
177	43	4	260.00
178	44	4	100.00
179	45	4	16.00
180	46	4	13.00
181	47	4	10.00
182	48	4	65.00
183	17	5	10.00
184	18	5	17.00
185	19	5	90.00
186	20	5	15.00
187	21	5	13.00
188	22	5	14.00
189	23	5	19.00
190	24	5	9.00
191	25	5	7.00
192	26	5	12.00
193	27	5	8.00
194	28	5	5.00
195	29	5	10.00
196	30	5	9.00
197	31	5	7.00
198	32	5	6.00
199	33	5	4.00
200	34	5	7.00
201	35	2	7.00
202	36	2	7.00
203	37	2	7.00
204	38	2	7.00
205	39	2	7.00
206	40	2	11.00
207	41	2	9.00
208	42	2	350.00
209	43	2	220.00
210	44	2	90.00
211	45	2	14.00
212	46	2	11.00
213	47	2	9.00
214	48	2	55.00
215	37	1	8.00
216	38	1	8.00
217	39	1	8.00
218	40	1	12.00
219	41	1	10.00
220	42	1	400.00
221	43	1	250.00
222	44	1	95.00
223	45	1	15.00
224	46	1	12.00
225	47	1	9.00
226	48	1	60.00
227	49	1	20.00
228	50	1	10.00
229	51	1	12.00
230	52	1	6.00
231	53	1	4.00
232	54	1	3.00
233	55	1	5.00
234	56	1	2.00
235	57	1	1.50
236	58	1	1.00
237	59	1	3.00
238	60	1	2.50
239	61	1	8.00
240	62	1	2.00
241	63	1	4.00
242	64	1	3.00
243	35	5	7.00
244	36	5	7.00
245	37	5	7.00
246	38	5	7.00
247	39	5	7.00
248	40	5	11.00
249	41	5	9.00
250	42	5	340.00
251	49	2	18.00
252	50	2	9.00
253	51	2	11.00
254	52	2	5.50
255	53	2	3.50
256	54	2	2.50
257	55	2	4.50
258	56	2	1.80
259	57	2	1.30
260	58	2	0.90
261	59	2	2.80
262	60	2	2.20
263	61	2	7.00
264	62	2	1.80
265	63	2	3.50
266	64	2	2.80
267	49	3	15.00
268	50	3	7.00
269	51	3	9.00
270	52	3	4.50
271	53	3	3.00
272	54	3	2.00
273	55	3	4.00
274	56	3	1.50
275	57	3	1.20
276	58	3	0.80
277	59	3	2.50
278	60	3	2.00
279	61	3	6.00
280	62	3	1.50
281	63	3	3.00
282	64	3	2.50
283	49	4	22.00
284	50	4	11.00
285	51	4	13.00
286	52	4	6.50
287	53	4	4.50
288	54	4	3.00
289	55	4	5.50
290	56	4	2.20
291	57	4	1.60
292	58	4	1.10
293	59	4	3.20
294	60	4	2.80
295	61	4	9.00
296	62	4	2.20
297	63	4	4.50
298	64	4	3.50
299	43	5	230.00
300	44	5	85.00
301	49	5	17.00
302	50	5	8.00
303	51	5	10.00
304	52	5	5.00
305	53	5	3.20
306	54	5	2.20
307	55	5	4.20
308	56	5	1.60
309	57	5	1.25
310	58	5	0.85
311	59	5	2.70
312	60	5	2.30
313	61	5	7.00
314	62	5	1.70
315	63	5	3.30
316	64	5	2.70
317	65	1	8.00
318	66	1	3.00
319	67	1	4.00
320	68	1	3.00
321	69	1	5.00
322	70	1	2.00
323	71	1	3.00
324	72	1	15.00
325	73	1	8.00
326	74	1	4.00
327	75	1	2.00
328	76	1	10.00
329	77	1	20.00
330	78	1	15.00
331	79	1	3.00
332	80	1	5.00
333	65	2	7.00
334	66	2	2.80
335	67	2	3.50
336	68	2	2.80
337	69	2	4.50
338	70	2	1.80
339	71	2	2.80
340	72	2	14.00
341	73	2	7.00
342	74	2	3.50
343	75	2	1.80
344	76	2	9.00
345	77	2	18.00
346	78	2	14.00
347	79	2	2.80
348	80	2	4.50
349	45	5	14.00
350	46	5	11.00
351	65	3	6.00
352	66	3	2.50
353	67	3	3.00
354	68	3	2.50
355	69	3	4.00
356	70	3	1.50
357	71	3	2.50
358	72	3	12.00
359	73	3	6.00
360	74	3	3.00
361	75	3	1.50
362	76	3	8.00
363	77	3	15.00
364	78	3	12.00
365	79	3	2.50
366	80	3	4.00
367	65	4	9.00
368	66	4	3.50
369	67	4	4.50
370	68	4	3.50
371	69	4	5.50
372	70	4	2.20
373	71	4	3.50
374	72	4	17.00
375	73	4	9.00
376	74	4	4.50
377	75	4	2.20
378	76	4	11.00
379	77	4	22.00
380	78	4	17.00
381	79	4	3.20
382	80	4	5.50
383	65	5	6.50
384	66	5	2.70
385	67	5	3.20
386	68	5	2.70
387	69	5	4.20
388	70	5	1.70
389	71	5	2.70
390	72	5	13.00
391	73	5	7.00
392	74	5	3.20
393	75	5	1.70
394	76	5	9.00
395	77	5	17.00
396	78	5	13.00
397	79	5	2.70
398	80	5	4.20
399	47	5	9.00
400	48	5	55.00
401	76	1	9.00
402	19	1	110.00
403	42	1	380.00
404	20	1	17.00
405	21	1	14.50
406	29	1	11.50
407	46	1	11.50
408	40	1	11.50
409	2	1	29.00
410	1	1	24.00
411	76	2	8.50
412	19	2	95.00
413	42	2	330.00
414	20	2	15.50
415	21	2	13.50
416	29	2	10.50
417	46	2	10.50
418	40	2	10.50
419	2	2	27.00
420	1	2	21.00
421	76	3	7.50
422	19	3	75.00
423	42	3	280.00
424	20	3	13.50
425	21	3	11.50
426	29	3	8.50
427	46	3	8.50
428	40	3	9.50
429	2	3	21.00
430	1	3	17.50
431	8	1	17.50
432	8	2	15.50
433	8	3	13.50
434	6	1	14.50
435	6	2	13.50
436	6	3	11.50
437	7	1	11.50
438	7	2	10.50
439	7	3	9.50
440	18	1	19.50
441	18	2	17.50
442	18	3	14.50
443	72	1	14.50
444	72	2	13.50
445	72	3	11.50
446	12	1	5.80
447	12	2	5.30
448	12	3	4.80
449	43	1	240.00
450	43	2	210.00
451	76	4	10.50
452	19	4	130.00
453	42	4	390.00
454	20	4	19.50
455	21	4	17.50
456	29	4	13.50
457	46	4	12.50
458	40	4	12.50
459	2	4	34.00
460	1	4	29.00
461	76	5	8.00
462	19	5	85.00
463	42	5	320.00
464	20	5	14.50
465	21	5	12.50
466	29	5	9.50
467	46	5	9.50
468	40	5	10.50
469	2	5	24.00
470	1	5	19.50
471	8	4	21.50
472	8	5	14.50
473	6	4	17.50
474	6	5	12.50
475	7	4	13.50
476	7	5	10.50
477	18	4	21.50
478	18	5	16.50
479	72	4	16.50
480	72	5	12.50
481	12	4	6.80
482	12	5	5.30
483	43	4	250.00
484	43	5	220.00
485	44	4	95.00
486	44	5	80.00
487	45	4	15.50
488	45	5	13.50
489	14	4	13.50
490	14	5	10.50
491	13	4	15.50
492	13	5	11.50
493	17	4	13.50
494	17	5	9.50
495	51	4	12.50
496	51	5	9.50
497	24	4	11.50
498	24	5	8.50
499	26	4	15.50
500	26	5	11.50
\.


--
-- TOC entry 3599 (class 0 OID 16437)
-- Dependencies: 226
-- Data for Name: mesa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mesa (id_mesa, capacidad, numero_mesa, estado, id_sucursal) FROM stdin;
1	2	1	Disponible	1
2	2	2	Disponible	1
3	4	3	Disponible	1
4	4	4	Disponible	1
5	4	5	Disponible	1
6	4	6	Disponible	1
7	6	7	Disponible	1
8	6	8	Disponible	1
9	6	9	Disponible	1
10	8	10	Disponible	1
11	8	11	Disponible	1
12	2	12	Disponible	1
13	4	13	Disponible	1
14	4	14	Disponible	1
15	6	15	Disponible	1
16	10	16	Disponible	1
17	2	1	Disponible	2
18	2	2	Disponible	2
19	4	3	Disponible	2
20	4	4	Disponible	2
21	4	5	Disponible	2
22	4	6	Disponible	2
23	6	7	Disponible	2
24	6	8	Disponible	2
25	6	9	Disponible	2
26	8	10	Disponible	2
27	8	11	Disponible	2
28	2	12	Disponible	2
29	4	13	Disponible	2
30	4	14	Disponible	2
31	6	15	Disponible	2
32	10	16	Disponible	2
33	2	1	Disponible	3
34	2	2	Disponible	3
35	4	3	Disponible	3
36	4	4	Disponible	3
37	4	5	Disponible	3
38	6	6	Disponible	3
39	6	7	Disponible	3
40	6	8	Disponible	3
41	8	9	Disponible	3
42	4	10	Disponible	3
43	4	11	Disponible	3
44	10	12	Disponible	3
45	2	1	Disponible	4
46	2	2	Disponible	4
47	2	3	Disponible	4
48	4	4	Disponible	4
49	4	5	Disponible	4
50	4	6	Disponible	4
51	4	7	Disponible	4
52	4	8	Disponible	4
53	6	9	Disponible	4
54	6	10	Disponible	4
55	6	11	Disponible	4
56	6	12	Disponible	4
57	8	13	Disponible	4
58	8	14	Disponible	4
59	8	15	Disponible	4
60	10	16	Disponible	4
61	10	17	Disponible	4
62	4	18	Disponible	4
63	2	19	Disponible	4
64	6	20	Disponible	4
65	2	1	Disponible	5
66	2	2	Disponible	5
67	4	3	Disponible	5
68	4	4	Disponible	5
69	4	5	Disponible	5
70	4	6	Disponible	5
71	6	7	Disponible	5
72	6	8	Disponible	5
73	6	9	Disponible	5
74	8	10	Disponible	5
75	8	11	Disponible	5
76	2	12	Disponible	5
77	4	13	Disponible	5
78	4	14	Disponible	5
79	6	15	Disponible	5
80	10	16	Disponible	5
\.


--
-- TOC entry 3603 (class 0 OID 16471)
-- Dependencies: 230
-- Data for Name: pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pago (id_pago, monto, id_pedido, fecha, metodo_pago) FROM stdin;
1	285.00	1	2024-01-03	Efectivo
2	420.00	2	2024-01-03	Tarjeta de crédito
3	195.00	3	2024-01-04	Efectivo
4	560.00	4	2024-01-04	Tarjeta de débito
5	310.00	5	2024-01-05	Efectivo
6	175.00	6	2024-01-05	Transferencia
7	640.00	7	2024-01-06	Tarjeta de crédito
8	390.00	8	2024-01-06	Tarjeta de débito
9	220.00	9	2024-01-07	Efectivo
10	480.00	10	2024-01-07	Tarjeta de crédito
11	355.00	11	2024-01-08	Efectivo
12	510.00	12	2024-01-09	Tarjeta de débito
13	265.00	13	2024-01-10	Efectivo
14	430.00	14	2024-01-10	Tarjeta de crédito
15	590.00	15	2024-01-11	Tarjeta de débito
16	185.00	16	2024-01-12	Efectivo
17	340.00	17	2024-01-13	Transferencia
18	470.00	18	2024-01-13	Tarjeta de crédito
19	615.00	19	2024-01-14	Tarjeta de débito
20	250.00	20	2024-01-15	Efectivo
21	395.00	21	2024-01-15	Tarjeta de crédito
22	545.00	22	2024-01-16	Tarjeta de débito
23	280.00	23	2024-01-17	Efectivo
24	415.00	24	2024-01-18	Tarjeta de crédito
25	330.00	25	2024-01-19	Efectivo
26	580.00	26	2024-01-19	Tarjeta de débito
27	195.00	27	2024-01-20	Efectivo
28	460.00	28	2024-01-21	Transferencia
29	625.00	29	2024-01-22	Tarjeta de crédito
30	375.00	30	2024-01-23	Tarjeta de débito
31	240.00	31	2024-01-24	Efectivo
32	490.00	32	2024-01-24	Tarjeta de crédito
33	555.00	33	2024-01-25	Tarjeta de débito
34	310.00	34	2024-01-26	Efectivo
35	435.00	35	2024-01-27	Tarjeta de crédito
36	270.00	36	2024-01-28	Efectivo
37	600.00	37	2024-01-29	Tarjeta de débito
38	365.00	38	2024-01-30	Transferencia
39	225.00	39	2024-01-31	Efectivo
40	480.00	40	2024-02-01	Tarjeta de crédito
41	540.00	41	2024-02-02	Tarjeta de débito
42	290.00	42	2024-02-03	Efectivo
43	415.00	43	2024-02-04	Tarjeta de crédito
44	635.00	44	2024-02-05	Tarjeta de débito
45	350.00	45	2024-02-06	Efectivo
46	205.00	46	2024-02-07	Transferencia
47	470.00	47	2024-02-08	Tarjeta de crédito
48	560.00	48	2024-02-09	Tarjeta de débito
49	315.00	49	2024-02-10	Efectivo
50	425.00	50	2024-02-11	Tarjeta de crédito
51	285.00	51	2024-02-12	Efectivo
52	510.00	52	2024-02-13	Tarjeta de débito
53	680.00	53	2024-02-14	Tarjeta de crédito
54	395.00	54	2024-02-15	Efectivo
55	250.00	55	2024-02-16	Transferencia
56	575.00	56	2024-02-17	Tarjeta de débito
57	330.00	57	2024-02-18	Efectivo
58	455.00	58	2024-02-19	Tarjeta de crédito
59	620.00	59	2024-02-20	Tarjeta de débito
60	275.00	60	2024-02-21	Efectivo
61	410.00	61	2024-02-22	Tarjeta de crédito
62	545.00	62	2024-02-23	Tarjeta de débito
63	300.00	63	2024-02-24	Efectivo
64	475.00	64	2024-02-25	Transferencia
65	650.00	65	2024-02-26	Tarjeta de crédito
66	360.00	66	2024-02-27	Tarjeta de débito
67	230.00	67	2024-02-28	Efectivo
68	495.00	68	2024-02-29	Tarjeta de crédito
69	570.00	69	2024-03-01	Tarjeta de débito
70	325.00	70	2024-03-02	Efectivo
71	445.00	71	2024-03-03	Tarjeta de crédito
72	610.00	72	2024-03-04	Tarjeta de débito
73	380.00	73	2024-03-05	Efectivo
74	255.00	74	2024-03-06	Transferencia
75	500.00	75	2024-03-07	Tarjeta de crédito
76	665.00	76	2024-03-08	Tarjeta de débito
77	295.00	77	2024-03-09	Efectivo
78	430.00	78	2024-03-10	Tarjeta de crédito
79	585.00	79	2024-03-11	Tarjeta de débito
80	340.00	80	2024-03-12	Efectivo
81	215.00	81	2024-03-13	Efectivo
82	460.00	82	2024-03-14	Tarjeta de crédito
83	630.00	83	2024-03-15	Tarjeta de débito
84	375.00	84	2024-03-16	Efectivo
85	245.00	85	2024-03-17	Transferencia
86	515.00	86	2024-03-18	Tarjeta de crédito
87	690.00	87	2024-03-19	Tarjeta de débito
88	320.00	88	2024-03-20	Efectivo
89	455.00	89	2024-03-21	Tarjeta de crédito
90	275.00	90	2024-03-22	Efectivo
91	530.00	91	2024-03-23	Tarjeta de débito
92	400.00	92	2024-03-24	Transferencia
93	595.00	93	2024-03-25	Tarjeta de crédito
94	350.00	94	2024-03-26	Tarjeta de débito
95	480.00	95	2024-03-27	Efectivo
96	265.00	96	2024-03-28	Efectivo
97	545.00	97	2024-03-29	Tarjeta de crédito
98	390.00	98	2024-03-30	Tarjeta de débito
99	235.00	99	2024-03-31	Efectivo
100	610.00	100	2024-04-01	Tarjeta de crédito
101	425.00	101	2024-04-02	Tarjeta de débito
102	310.00	102	2024-04-03	Efectivo
103	575.00	103	2024-04-04	Transferencia
104	450.00	104	2024-04-05	Tarjeta de crédito
105	285.00	105	2024-04-06	Efectivo
106	640.00	106	2024-04-07	Tarjeta de débito
107	365.00	107	2024-04-08	Efectivo
108	500.00	108	2024-04-09	Tarjeta de crédito
109	230.00	109	2024-04-10	Efectivo
110	470.00	110	2024-04-11	Tarjeta de débito
111	615.00	111	2024-04-12	Tarjeta de crédito
112	340.00	112	2024-04-13	Efectivo
113	525.00	113	2024-04-14	Tarjeta de débito
114	395.00	114	2024-04-15	Efectivo
115	270.00	115	2024-04-16	Transferencia
116	580.00	116	2024-04-17	Tarjeta de crédito
117	445.00	117	2024-04-18	Tarjeta de débito
118	315.00	118	2024-04-19	Efectivo
119	660.00	119	2024-04-20	Tarjeta de crédito
120	380.00	120	2024-04-21	Tarjeta de débito
121	255.00	121	2024-04-22	Efectivo
122	510.00	122	2024-04-23	Tarjeta de crédito
123	435.00	123	2024-04-24	Efectivo
124	290.00	124	2024-04-25	Transferencia
125	625.00	125	2024-04-26	Tarjeta de débito
126	355.00	126	2024-04-27	Efectivo
127	490.00	127	2024-04-28	Tarjeta de crédito
128	240.00	128	2024-04-29	Efectivo
129	565.00	129	2024-04-30	Tarjeta de débito
130	410.00	130	2024-05-01	Tarjeta de crédito
131	675.00	131	2024-05-02	Tarjeta de débito
132	325.00	132	2024-05-03	Efectivo
133	460.00	133	2024-05-04	Tarjeta de crédito
134	545.00	134	2024-05-05	Transferencia
135	295.00	135	2024-05-06	Efectivo
136	620.00	136	2024-05-07	Tarjeta de débito
137	375.00	137	2024-05-08	Efectivo
138	260.00	138	2024-05-09	Tarjeta de crédito
139	500.00	139	2024-05-10	Tarjeta de débito
140	430.00	140	2024-05-11	Efectivo
141	310.00	141	2024-05-12	Efectivo
142	585.00	142	2024-05-13	Tarjeta de crédito
143	455.00	143	2024-05-14	Tarjeta de débito
144	280.00	144	2024-05-15	Efectivo
145	640.00	145	2024-05-16	Tarjeta de crédito
146	395.00	146	2024-05-17	Transferencia
147	250.00	147	2024-05-18	Efectivo
148	535.00	148	2024-05-19	Tarjeta de débito
149	420.00	149	2024-05-20	Tarjeta de crédito
150	305.00	150	2024-05-21	Efectivo
151	660.00	151	2024-05-22	Tarjeta de débito
152	375.00	152	2024-05-23	Efectivo
153	245.00	153	2024-05-24	Efectivo
154	520.00	154	2024-05-25	Tarjeta de crédito
155	440.00	155	2024-05-26	Tarjeta de débito
156	315.00	156	2024-05-27	Efectivo
157	595.00	157	2024-05-28	Tarjeta de crédito
158	465.00	158	2024-05-29	Transferencia
159	270.00	159	2024-05-30	Efectivo
160	645.00	160	2024-05-31	Tarjeta de débito
161	390.00	161	2024-06-01	Efectivo
162	255.00	162	2024-06-02	Tarjeta de crédito
163	510.00	163	2024-06-03	Tarjeta de débito
164	425.00	164	2024-06-04	Efectivo
165	300.00	165	2024-06-05	Efectivo
166	570.00	166	2024-06-06	Tarjeta de crédito
167	445.00	167	2024-06-07	Tarjeta de débito
168	285.00	168	2024-06-08	Efectivo
169	625.00	169	2024-06-09	Tarjeta de crédito
170	360.00	170	2024-06-10	Transferencia
171	240.00	171	2024-06-11	Efectivo
172	495.00	172	2024-06-12	Tarjeta de débito
173	415.00	173	2024-06-13	Efectivo
174	310.00	174	2024-06-14	Tarjeta de crédito
175	580.00	175	2024-06-15	Tarjeta de débito
176	455.00	176	2024-06-16	Efectivo
177	275.00	177	2024-06-17	Efectivo
178	610.00	178	2024-06-18	Tarjeta de crédito
179	380.00	179	2024-06-19	Tarjeta de débito
180	265.00	180	2024-06-20	Efectivo
181	535.00	181	2024-06-21	Transferencia
182	430.00	182	2024-06-22	Tarjeta de crédito
183	295.00	183	2024-06-23	Efectivo
184	660.00	184	2024-06-24	Tarjeta de débito
185	375.00	185	2024-06-25	Efectivo
186	250.00	186	2024-06-26	Tarjeta de crédito
187	520.00	187	2024-06-27	Tarjeta de débito
188	400.00	188	2024-06-28	Efectivo
189	290.00	189	2024-06-29	Efectivo
190	645.00	190	2024-06-30	Tarjeta de crédito
191	365.00	191	2024-07-01	Tarjeta de débito
192	245.00	192	2024-07-02	Efectivo
193	505.00	193	2024-07-03	Transferencia
194	440.00	194	2024-07-04	Tarjeta de crédito
195	320.00	195	2024-07-05	Efectivo
196	575.00	196	2024-07-06	Tarjeta de débito
197	415.00	197	2024-07-07	Efectivo
198	280.00	198	2024-07-08	Tarjeta de crédito
199	630.00	199	2024-07-09	Tarjeta de débito
200	355.00	200	2024-07-10	Efectivo
201	240.00	201	2024-07-11	Efectivo
202	490.00	202	2024-07-12	Tarjeta de crédito
203	420.00	203	2024-07-13	Tarjeta de débito
204	305.00	204	2024-07-14	Efectivo
205	655.00	205	2024-07-15	Tarjeta de crédito
206	370.00	206	2024-07-16	Tarjeta de débito
207	255.00	207	2024-07-17	Efectivo
208	515.00	208	2024-07-18	Transferencia
209	435.00	209	2024-07-19	Tarjeta de crédito
210	300.00	210	2024-07-20	Efectivo
211	580.00	211	2024-07-21	Tarjeta de débito
212	460.00	212	2024-07-22	Efectivo
213	275.00	213	2024-07-23	Tarjeta de crédito
214	620.00	214	2024-07-24	Tarjeta de débito
215	385.00	215	2024-07-25	Efectivo
216	260.00	216	2024-07-26	Efectivo
217	525.00	217	2024-07-27	Tarjeta de crédito
218	445.00	218	2024-07-28	Transferencia
219	315.00	219	2024-07-29	Tarjeta de débito
220	670.00	220	2024-07-30	Tarjeta de crédito
221	390.00	221	2024-07-31	Efectivo
222	250.00	222	2024-08-01	Efectivo
223	545.00	223	2024-08-02	Tarjeta de débito
224	420.00	224	2024-08-03	Tarjeta de crédito
225	295.00	225	2024-08-04	Efectivo
226	635.00	226	2024-08-05	Tarjeta de débito
227	360.00	227	2024-08-06	Efectivo
228	245.00	228	2024-08-07	Transferencia
229	500.00	229	2024-08-08	Tarjeta de crédito
230	430.00	230	2024-08-09	Tarjeta de débito
231	320.00	231	2024-08-10	Efectivo
232	590.00	232	2024-08-11	Tarjeta de crédito
233	465.00	233	2024-08-12	Tarjeta de débito
234	280.00	234	2024-08-13	Efectivo
235	640.00	235	2024-08-14	Tarjeta de crédito
236	395.00	236	2024-08-15	Efectivo
237	265.00	237	2024-08-16	Efectivo
238	530.00	238	2024-08-17	Tarjeta de débito
239	450.00	239	2024-08-18	Transferencia
240	305.00	240	2024-08-19	Efectivo
241	665.00	241	2024-08-20	Tarjeta de crédito
242	380.00	242	2024-08-21	Tarjeta de débito
243	255.00	243	2024-08-22	Efectivo
244	515.00	244	2024-08-23	Tarjeta de crédito
245	440.00	245	2024-08-24	Efectivo
246	310.00	246	2024-08-25	Tarjeta de débito
247	575.00	247	2024-08-26	Tarjeta de crédito
248	455.00	248	2024-08-27	Efectivo
249	270.00	249	2024-08-28	Efectivo
250	620.00	250	2024-08-29	Tarjeta de débito
251	370.00	251	2024-08-30	Transferencia
252	245.00	252	2024-08-31	Efectivo
253	505.00	253	2024-09-01	Tarjeta de crédito
254	435.00	254	2024-09-02	Tarjeta de débito
255	295.00	255	2024-09-03	Efectivo
256	660.00	256	2024-09-04	Tarjeta de crédito
257	385.00	257	2024-09-05	Efectivo
258	260.00	258	2024-09-06	Tarjeta de débito
259	520.00	259	2024-09-07	Efectivo
260	445.00	260	2024-09-08	Tarjeta de crédito
261	315.00	261	2024-09-09	Transferencia
262	680.00	262	2024-09-10	Tarjeta de débito
263	395.00	263	2024-09-11	Tarjeta de crédito
264	265.00	264	2024-09-12	Efectivo
265	540.00	265	2024-09-13	Tarjeta de débito
266	420.00	266	2024-09-14	Efectivo
267	300.00	267	2024-09-15	Tarjeta de crédito
268	640.00	268	2024-09-16	Tarjeta de débito
269	365.00	269	2024-09-17	Efectivo
270	250.00	270	2024-09-18	Efectivo
271	510.00	271	2024-09-19	Tarjeta de crédito
272	430.00	272	2024-09-20	Transferencia
273	290.00	273	2024-09-21	Tarjeta de débito
274	655.00	274	2024-09-22	Tarjeta de crédito
275	375.00	275	2024-09-23	Efectivo
276	255.00	276	2024-09-24	Efectivo
277	525.00	277	2024-09-25	Tarjeta de débito
278	440.00	278	2024-09-26	Tarjeta de crédito
279	310.00	279	2024-09-27	Efectivo
280	595.00	280	2024-09-28	Tarjeta de débito
281	460.00	281	2024-09-29	Efectivo
282	275.00	282	2024-09-30	Transferencia
283	630.00	283	2024-10-01	Tarjeta de crédito
284	355.00	284	2024-10-02	Tarjeta de débito
285	240.00	285	2024-10-03	Efectivo
286	500.00	286	2024-10-04	Tarjeta de crédito
287	420.00	287	2024-10-05	Efectivo
288	295.00	288	2024-10-06	Tarjeta de débito
289	660.00	289	2024-10-07	Tarjeta de crédito
290	385.00	290	2024-10-08	Efectivo
291	260.00	291	2024-10-09	Efectivo
292	540.00	292	2024-10-10	Tarjeta de débito
293	415.00	293	2024-10-11	Transferencia
294	305.00	294	2024-10-12	Tarjeta de crédito
295	670.00	295	2024-10-13	Tarjeta de débito
296	390.00	296	2024-10-14	Efectivo
297	255.00	297	2024-10-15	Efectivo
298	525.00	298	2024-10-16	Tarjeta de crédito
299	445.00	299	2024-10-17	Tarjeta de débito
300	315.00	300	2024-10-18	Efectivo
301	590.00	301	2024-10-19	Tarjeta de crédito
302	460.00	302	2024-10-20	Tarjeta de débito
303	280.00	303	2024-10-21	Efectivo
304	645.00	304	2024-10-22	Tarjeta de crédito
305	370.00	305	2024-10-23	Efectivo
306	245.00	306	2024-10-24	Efectivo
307	510.00	307	2024-10-25	Tarjeta de débito
308	435.00	308	2024-10-26	Transferencia
309	300.00	309	2024-10-27	Tarjeta de crédito
310	575.00	310	2024-10-28	Tarjeta de débito
311	450.00	311	2024-10-29	Efectivo
312	265.00	312	2024-10-30	Efectivo
313	620.00	313	2024-10-31	Tarjeta de crédito
314	380.00	314	2024-11-01	Tarjeta de débito
315	255.00	315	2024-11-02	Efectivo
316	530.00	316	2024-11-03	Tarjeta de crédito
317	425.00	317	2024-11-04	Efectivo
318	295.00	318	2024-11-05	Transferencia
319	665.00	319	2024-11-06	Tarjeta de débito
320	385.00	320	2024-11-07	Tarjeta de crédito
321	260.00	321	2024-11-08	Efectivo
322	515.00	322	2024-11-09	Tarjeta de débito
323	440.00	323	2024-11-10	Efectivo
324	310.00	324	2024-11-11	Tarjeta de crédito
325	580.00	325	2024-11-12	Tarjeta de débito
326	455.00	326	2024-11-13	Efectivo
327	275.00	327	2024-11-14	Efectivo
328	635.00	328	2024-11-15	Tarjeta de crédito
329	370.00	329	2024-11-16	Transferencia
330	250.00	330	2024-11-17	Efectivo
331	510.00	331	2024-11-18	Tarjeta de débito
332	430.00	332	2024-11-19	Tarjeta de crédito
333	300.00	333	2024-11-20	Efectivo
334	650.00	334	2024-11-21	Tarjeta de débito
335	375.00	335	2024-11-22	Efectivo
336	245.00	336	2024-11-23	Efectivo
337	520.00	337	2024-11-24	Tarjeta de crédito
338	440.00	338	2024-11-25	Tarjeta de débito
339	315.00	339	2024-11-26	Efectivo
340	585.00	340	2024-11-27	Tarjeta de crédito
341	460.00	341	2024-11-28	Transferencia
342	280.00	342	2024-11-29	Efectivo
343	640.00	343	2024-11-30	Tarjeta de débito
344	390.00	344	2024-12-01	Efectivo
345	260.00	345	2024-12-02	Tarjeta de crédito
346	525.00	346	2024-12-03	Tarjeta de débito
347	445.00	347	2024-12-04	Efectivo
348	310.00	348	2024-12-05	Efectivo
349	590.00	349	2024-12-06	Tarjeta de crédito
350	465.00	350	2024-12-07	Tarjeta de débito
351	285.00	351	2024-12-08	Efectivo
352	630.00	352	2024-12-09	Tarjeta de crédito
353	380.00	353	2024-12-10	Transferencia
354	255.00	354	2024-12-11	Efectivo
355	510.00	355	2024-12-12	Tarjeta de débito
356	430.00	356	2024-12-13	Tarjeta de crédito
357	305.00	357	2024-12-14	Efectivo
358	660.00	358	2024-12-15	Tarjeta de débito
359	385.00	359	2024-12-16	Efectivo
360	260.00	360	2024-12-17	Tarjeta de crédito
361	545.00	361	2024-12-18	Tarjeta de débito
362	420.00	362	2024-12-19	Efectivo
363	295.00	363	2024-12-20	Efectivo
364	670.00	364	2024-12-21	Tarjeta de crédito
365	395.00	365	2024-12-22	Transferencia
366	265.00	366	2024-12-23	Tarjeta de débito
367	710.00	367	2024-12-24	Tarjeta de crédito
368	830.00	368	2024-12-25	Tarjeta de crédito
369	540.00	369	2024-12-26	Efectivo
370	415.00	370	2024-12-27	Tarjeta de débito
371	290.00	371	2024-12-28	Efectivo
372	625.00	372	2024-12-29	Tarjeta de crédito
373	460.00	373	2024-12-30	Tarjeta de débito
374	575.00	374	2024-12-31	Efectivo
375	345.00	375	2024-01-05	Efectivo
376	480.00	376	2024-01-12	Tarjeta de crédito
377	260.00	377	2024-01-19	Efectivo
378	555.00	378	2024-01-26	Tarjeta de débito
379	390.00	379	2024-02-02	Efectivo
380	245.00	380	2024-02-09	Transferencia
381	615.00	381	2024-02-16	Tarjeta de crédito
382	430.00	382	2024-02-23	Tarjeta de débito
383	295.00	383	2024-03-01	Efectivo
384	660.00	384	2024-03-08	Tarjeta de crédito
385	375.00	385	2024-03-15	Tarjeta de débito
386	250.00	386	2024-03-22	Efectivo
387	520.00	387	2024-03-29	Tarjeta de crédito
388	440.00	388	2024-04-05	Efectivo
389	315.00	389	2024-04-12	Transferencia
390	585.00	390	2024-04-19	Tarjeta de débito
391	455.00	391	2024-04-26	Tarjeta de crédito
392	280.00	392	2024-05-03	Efectivo
393	630.00	393	2024-05-10	Tarjeta de débito
394	380.00	394	2024-05-17	Efectivo
395	255.00	395	2024-05-24	Tarjeta de crédito
396	510.00	396	2024-05-31	Tarjeta de débito
397	435.00	397	2024-06-07	Efectivo
398	305.00	398	2024-06-14	Efectivo
399	660.00	399	2024-06-21	Tarjeta de crédito
400	385.00	400	2024-06-28	Transferencia
401	255.00	401	2024-07-05	Efectivo
402	525.00	402	2024-07-12	Tarjeta de débito
403	445.00	403	2024-07-19	Tarjeta de crédito
404	310.00	404	2024-07-26	Efectivo
405	590.00	405	2024-08-02	Tarjeta de débito
406	460.00	406	2024-08-09	Efectivo
407	275.00	407	2024-08-16	Tarjeta de crédito
408	635.00	408	2024-08-23	Tarjeta de débito
409	365.00	409	2024-08-30	Efectivo
410	245.00	410	2024-09-06	Efectivo
411	505.00	411	2024-09-13	Tarjeta de crédito
412	430.00	412	2024-09-20	Transferencia
413	300.00	413	2024-09-27	Tarjeta de débito
414	665.00	414	2024-10-04	Tarjeta de crédito
415	390.00	415	2024-10-11	Efectivo
416	260.00	416	2024-10-18	Efectivo
417	520.00	417	2024-10-25	Tarjeta de débito
418	440.00	418	2024-11-01	Tarjeta de crédito
419	315.00	419	2024-11-08	Efectivo
420	580.00	420	2024-11-15	Tarjeta de débito
421	455.00	421	2024-11-22	Efectivo
422	280.00	422	2024-11-29	Transferencia
423	640.00	423	2024-12-06	Tarjeta de crédito
424	375.00	424	2024-12-13	Tarjeta de débito
425	250.00	425	2024-01-08	Efectivo
426	515.00	426	2024-01-15	Tarjeta de crédito
427	435.00	427	2024-01-22	Efectivo
428	305.00	428	2024-01-29	Tarjeta de débito
429	660.00	429	2024-02-05	Tarjeta de crédito
430	385.00	430	2024-02-12	Efectivo
431	255.00	431	2024-02-19	Efectivo
432	525.00	432	2024-02-26	Tarjeta de débito
433	440.00	433	2024-03-04	Transferencia
434	310.00	434	2024-03-11	Tarjeta de crédito
435	590.00	435	2024-03-18	Tarjeta de débito
436	460.00	436	2024-03-25	Efectivo
437	275.00	437	2024-04-01	Efectivo
438	635.00	438	2024-04-08	Tarjeta de crédito
439	370.00	439	2024-04-15	Tarjeta de débito
440	245.00	440	2024-04-22	Efectivo
441	505.00	441	2024-04-29	Tarjeta de crédito
442	430.00	442	2024-05-06	Efectivo
443	300.00	443	2024-05-13	Transferencia
444	665.00	444	2024-05-20	Tarjeta de débito
445	390.00	445	2024-05-27	Tarjeta de crédito
446	260.00	446	2024-06-03	Efectivo
447	520.00	447	2024-06-10	Tarjeta de débito
448	440.00	448	2024-06-17	Efectivo
449	315.00	449	2024-06-24	Tarjeta de crédito
450	580.00	450	2024-07-01	Tarjeta de débito
451	455.00	451	2024-07-08	Efectivo
452	280.00	452	2024-07-15	Efectivo
453	640.00	453	2024-07-22	Tarjeta de crédito
454	375.00	454	2024-07-29	Transferencia
455	250.00	455	2024-08-05	Tarjeta de débito
456	515.00	456	2024-08-12	Tarjeta de crédito
457	435.00	457	2024-08-19	Efectivo
458	305.00	458	2024-08-26	Efectivo
459	660.00	459	2024-09-02	Tarjeta de débito
460	380.00	460	2024-09-09	Tarjeta de crédito
461	255.00	461	2024-09-16	Efectivo
462	525.00	462	2024-09-23	Tarjeta de débito
463	445.00	463	2024-09-30	Efectivo
464	310.00	464	2024-10-07	Tarjeta de crédito
465	590.00	465	2024-10-14	Transferencia
466	460.00	466	2024-10-21	Tarjeta de débito
467	275.00	467	2024-10-28	Efectivo
468	635.00	468	2024-11-04	Tarjeta de crédito
469	365.00	469	2024-11-11	Efectivo
470	245.00	470	2024-11-18	Tarjeta de débito
471	505.00	471	2024-11-25	Efectivo
472	430.00	472	2024-12-02	Tarjeta de crédito
473	300.00	473	2024-12-09	Efectivo
474	665.00	474	2024-12-16	Tarjeta de débito
475	755.00	475	2024-12-23	Tarjeta de crédito
476	490.00	476	2024-12-30	Efectivo
477	335.00	477	2024-01-06	Efectivo
478	475.00	478	2024-01-13	Tarjeta de crédito
479	265.00	479	2024-01-20	Efectivo
480	545.00	480	2024-01-27	Tarjeta de débito
481	395.00	481	2024-02-03	Efectivo
482	250.00	482	2024-02-10	Transferencia
483	610.00	483	2024-02-17	Tarjeta de crédito
484	425.00	484	2024-02-24	Tarjeta de débito
485	290.00	485	2024-03-02	Efectivo
486	655.00	486	2024-03-09	Tarjeta de crédito
487	370.00	487	2024-03-16	Efectivo
488	245.00	488	2024-03-23	Tarjeta de débito
489	515.00	489	2024-03-30	Tarjeta de crédito
490	435.00	490	2024-04-06	Efectivo
491	310.00	491	2024-04-13	Efectivo
492	580.00	492	2024-04-20	Tarjeta de débito
493	450.00	493	2024-04-27	Transferencia
494	275.00	494	2024-05-04	Tarjeta de crédito
495	625.00	495	2024-05-11	Tarjeta de débito
496	375.00	496	2024-05-18	Efectivo
497	255.00	497	2024-05-25	Efectivo
498	505.00	498	2024-06-01	Tarjeta de crédito
499	430.00	499	2024-06-08	Tarjeta de débito
500	300.00	500	2024-06-15	Efectivo
501	660.00	501	2024-06-22	Tarjeta de crédito
502	380.00	502	2024-06-29	Efectivo
503	255.00	503	2024-07-06	Transferencia
504	520.00	504	2024-07-13	Tarjeta de débito
505	440.00	505	2024-07-20	Tarjeta de crédito
506	315.00	506	2024-07-27	Efectivo
507	585.00	507	2024-08-03	Tarjeta de débito
508	455.00	508	2024-08-10	Efectivo
509	280.00	509	2024-08-17	Tarjeta de crédito
510	640.00	510	2024-08-24	Tarjeta de débito
511	365.00	511	2024-08-31	Efectivo
512	245.00	512	2024-09-07	Efectivo
513	500.00	513	2024-09-14	Tarjeta de crédito
514	425.00	514	2024-09-21	Transferencia
515	295.00	515	2024-09-28	Tarjeta de débito
516	660.00	516	2024-10-05	Tarjeta de crédito
517	385.00	517	2024-10-12	Efectivo
518	260.00	518	2024-10-19	Efectivo
519	515.00	519	2024-10-26	Tarjeta de débito
520	440.00	520	2024-11-02	Tarjeta de crédito
521	310.00	521	2024-11-09	Efectivo
522	575.00	522	2024-11-16	Tarjeta de débito
523	450.00	523	2024-11-23	Efectivo
524	275.00	524	2024-11-30	Transferencia
525	635.00	525	2024-12-07	Tarjeta de crédito
526	370.00	526	2024-12-14	Tarjeta de débito
527	250.00	527	2024-01-09	Efectivo
528	510.00	528	2024-01-16	Tarjeta de crédito
529	430.00	529	2024-01-23	Efectivo
530	300.00	530	2024-01-30	Tarjeta de débito
531	655.00	531	2024-02-06	Tarjeta de crédito
532	380.00	532	2024-02-13	Efectivo
533	255.00	533	2024-02-20	Efectivo
534	520.00	534	2024-02-27	Tarjeta de débito
535	440.00	535	2024-03-05	Transferencia
536	310.00	536	2024-03-12	Tarjeta de crédito
537	585.00	537	2024-03-19	Tarjeta de débito
538	455.00	538	2024-03-26	Efectivo
539	275.00	539	2024-04-02	Efectivo
540	640.00	540	2024-04-09	Tarjeta de crédito
541	365.00	541	2024-04-16	Tarjeta de débito
542	245.00	542	2024-04-23	Efectivo
543	500.00	543	2024-04-30	Tarjeta de crédito
544	420.00	544	2024-05-07	Efectivo
545	295.00	545	2024-05-14	Transferencia
546	660.00	546	2024-05-21	Tarjeta de débito
547	385.00	547	2024-05-28	Tarjeta de crédito
548	260.00	548	2024-06-04	Efectivo
549	515.00	549	2024-06-11	Efectivo
550	435.00	550	2024-06-18	Tarjeta de débito
551	305.00	551	2024-06-25	Tarjeta de crédito
552	570.00	552	2024-07-02	Efectivo
553	450.00	553	2024-07-09	Tarjeta de débito
554	270.00	554	2024-07-16	Efectivo
555	625.00	555	2024-07-23	Tarjeta de crédito
556	375.00	556	2024-07-30	Transferencia
557	250.00	557	2024-08-06	Efectivo
558	510.00	558	2024-08-13	Tarjeta de débito
559	430.00	559	2024-08-20	Tarjeta de crédito
560	300.00	560	2024-08-27	Efectivo
561	655.00	561	2024-09-03	Tarjeta de débito
562	380.00	562	2024-09-10	Efectivo
563	255.00	563	2024-09-17	Tarjeta de crédito
564	520.00	564	2024-09-24	Efectivo
565	440.00	565	2024-10-01	Tarjeta de débito
566	310.00	566	2024-10-08	Transferencia
567	585.00	567	2024-10-15	Tarjeta de crédito
568	460.00	568	2024-10-22	Tarjeta de débito
569	275.00	569	2024-10-29	Efectivo
570	635.00	570	2024-11-05	Tarjeta de crédito
571	365.00	571	2024-11-12	Efectivo
572	245.00	572	2024-11-19	Tarjeta de débito
573	505.00	573	2024-11-26	Efectivo
574	430.00	574	2024-12-03	Tarjeta de crédito
575	300.00	575	2024-12-10	Efectivo
576	660.00	576	2024-12-17	Tarjeta de débito
577	770.00	577	2024-12-24	Tarjeta de crédito
578	560.00	578	2024-12-31	Efectivo
579	340.00	579	2024-01-07	Efectivo
580	475.00	580	2024-01-14	Tarjeta de crédito
581	265.00	581	2024-01-21	Efectivo
582	550.00	582	2024-01-28	Tarjeta de débito
583	390.00	583	2024-02-04	Efectivo
584	250.00	584	2024-02-11	Transferencia
585	615.00	585	2024-02-18	Tarjeta de crédito
586	430.00	586	2024-02-25	Tarjeta de débito
587	295.00	587	2024-03-03	Efectivo
588	660.00	588	2024-03-10	Tarjeta de crédito
589	375.00	589	2024-03-17	Efectivo
590	250.00	590	2024-03-24	Tarjeta de débito
591	520.00	591	2024-03-31	Tarjeta de crédito
592	440.00	592	2024-04-07	Efectivo
593	315.00	593	2024-04-14	Efectivo
594	585.00	594	2024-04-21	Tarjeta de débito
595	455.00	595	2024-04-28	Transferencia
596	280.00	596	2024-05-05	Tarjeta de crédito
597	635.00	597	2024-05-12	Tarjeta de débito
598	380.00	598	2024-05-19	Efectivo
599	255.00	599	2024-05-26	Efectivo
600	510.00	600	2024-06-02	Tarjeta de crédito
601	430.00	601	2024-06-09	Tarjeta de débito
602	305.00	602	2024-06-16	Efectivo
603	660.00	603	2024-06-23	Tarjeta de crédito
604	385.00	604	2024-06-30	Efectivo
605	260.00	605	2024-07-07	Transferencia
606	525.00	606	2024-07-14	Tarjeta de débito
607	445.00	607	2024-07-21	Tarjeta de crédito
608	315.00	608	2024-07-28	Efectivo
609	590.00	609	2024-08-04	Tarjeta de débito
610	460.00	610	2024-08-11	Efectivo
611	275.00	611	2024-08-18	Tarjeta de crédito
612	640.00	612	2024-08-25	Tarjeta de débito
613	365.00	613	2024-09-01	Efectivo
614	245.00	614	2024-09-08	Efectivo
615	505.00	615	2024-09-15	Tarjeta de crédito
616	430.00	616	2024-09-22	Transferencia
617	300.00	617	2024-09-29	Tarjeta de débito
618	665.00	618	2024-10-06	Tarjeta de crédito
619	390.00	619	2024-10-13	Efectivo
620	260.00	620	2024-10-20	Efectivo
621	520.00	621	2024-10-27	Tarjeta de débito
622	440.00	622	2024-11-03	Tarjeta de crédito
623	315.00	623	2024-11-10	Efectivo
624	580.00	624	2024-11-17	Tarjeta de débito
625	455.00	625	2024-11-24	Efectivo
626	280.00	626	2024-12-01	Transferencia
627	640.00	627	2024-12-08	Tarjeta de crédito
628	375.00	628	2024-12-15	Tarjeta de débito
629	255.00	629	2024-01-10	Efectivo
630	510.00	630	2024-01-17	Tarjeta de crédito
631	435.00	631	2024-01-24	Efectivo
632	300.00	632	2024-01-31	Tarjeta de débito
633	660.00	633	2024-02-07	Tarjeta de crédito
634	700.00	634	2024-02-14	Tarjeta de crédito
635	255.00	635	2024-02-21	Efectivo
636	520.00	636	2024-02-28	Tarjeta de débito
637	440.00	637	2024-03-06	Efectivo
638	310.00	638	2024-03-13	Tarjeta de crédito
639	585.00	639	2024-03-20	Transferencia
640	455.00	640	2024-03-27	Tarjeta de débito
641	275.00	641	2024-04-03	Efectivo
642	640.00	642	2024-04-10	Tarjeta de crédito
643	365.00	643	2024-04-17	Efectivo
644	245.00	644	2024-04-24	Tarjeta de débito
645	500.00	645	2024-05-01	Tarjeta de crédito
646	420.00	646	2024-05-08	Efectivo
647	295.00	647	2024-05-15	Efectivo
648	660.00	648	2024-05-22	Tarjeta de débito
649	385.00	649	2024-05-29	Tarjeta de crédito
650	260.00	650	2024-06-05	Efectivo
651	515.00	651	2024-06-12	Tarjeta de débito
652	435.00	652	2024-06-19	Efectivo
653	305.00	653	2024-06-26	Transferencia
654	570.00	654	2024-07-03	Tarjeta de crédito
655	450.00	655	2024-07-10	Tarjeta de débito
656	270.00	656	2024-07-17	Efectivo
657	625.00	657	2024-07-24	Tarjeta de crédito
658	375.00	658	2024-07-31	Efectivo
659	250.00	659	2024-08-07	Tarjeta de débito
660	510.00	660	2024-08-14	Tarjeta de crédito
661	430.00	661	2024-08-21	Efectivo
662	300.00	662	2024-08-28	Efectivo
663	655.00	663	2024-09-04	Tarjeta de débito
664	380.00	664	2024-09-11	Transferencia
665	255.00	665	2024-09-18	Tarjeta de crédito
666	520.00	666	2024-09-25	Efectivo
667	440.00	667	2024-10-02	Tarjeta de débito
668	310.00	668	2024-10-09	Tarjeta de crédito
669	585.00	669	2024-10-16	Efectivo
670	460.00	670	2024-10-23	Tarjeta de débito
671	275.00	671	2024-10-30	Efectivo
672	635.00	672	2024-11-06	Tarjeta de crédito
673	365.00	673	2024-11-13	Efectivo
674	245.00	674	2024-11-20	Transferencia
675	505.00	675	2024-11-27	Tarjeta de débito
676	430.00	676	2024-12-04	Tarjeta de crédito
677	300.00	677	2024-12-11	Efectivo
678	660.00	678	2024-12-18	Tarjeta de débito
679	820.00	679	2024-12-25	Tarjeta de crédito
680	595.00	680	2024-12-31	Efectivo
681	345.00	681	2024-01-04	Efectivo
682	480.00	682	2024-01-11	Tarjeta de crédito
683	265.00	683	2024-01-18	Efectivo
684	545.00	684	2024-01-25	Tarjeta de débito
685	390.00	685	2024-02-01	Efectivo
686	250.00	686	2024-02-08	Transferencia
687	610.00	687	2024-02-15	Tarjeta de crédito
688	425.00	688	2024-02-22	Tarjeta de débito
689	295.00	689	2024-02-29	Efectivo
690	660.00	690	2024-03-07	Tarjeta de crédito
691	370.00	691	2024-03-14	Efectivo
692	245.00	692	2024-03-21	Tarjeta de débito
693	515.00	693	2024-03-28	Tarjeta de crédito
694	435.00	694	2024-04-04	Efectivo
695	310.00	695	2024-04-11	Efectivo
696	580.00	696	2024-04-18	Tarjeta de débito
697	450.00	697	2024-04-25	Transferencia
698	275.00	698	2024-05-02	Tarjeta de crédito
699	625.00	699	2024-05-09	Tarjeta de débito
700	375.00	700	2024-05-16	Efectivo
701	255.00	701	2024-05-23	Efectivo
702	505.00	702	2024-05-30	Tarjeta de crédito
703	430.00	703	2024-06-06	Tarjeta de débito
704	300.00	704	2024-06-13	Efectivo
705	655.00	705	2024-06-20	Tarjeta de crédito
706	380.00	706	2024-06-27	Efectivo
707	255.00	707	2024-07-04	Transferencia
708	520.00	708	2024-07-11	Tarjeta de débito
709	440.00	709	2024-07-18	Tarjeta de crédito
710	315.00	710	2024-07-25	Efectivo
711	585.00	711	2024-08-01	Tarjeta de débito
712	455.00	712	2024-08-08	Efectivo
713	280.00	713	2024-08-15	Tarjeta de crédito
714	640.00	714	2024-08-22	Tarjeta de débito
715	365.00	715	2024-08-29	Efectivo
716	245.00	716	2024-09-05	Efectivo
717	500.00	717	2024-09-12	Tarjeta de crédito
718	425.00	718	2024-09-19	Transferencia
719	295.00	719	2024-09-26	Tarjeta de débito
720	660.00	720	2024-10-03	Tarjeta de crédito
721	385.00	721	2024-10-10	Efectivo
722	260.00	722	2024-10-17	Efectivo
723	515.00	723	2024-10-24	Tarjeta de débito
724	440.00	724	2024-10-31	Tarjeta de crédito
725	310.00	725	2024-11-07	Efectivo
726	575.00	726	2024-11-14	Tarjeta de débito
727	450.00	727	2024-11-21	Efectivo
728	275.00	728	2024-11-28	Transferencia
729	635.00	729	2024-12-05	Tarjeta de crédito
730	370.00	730	2024-12-12	Tarjeta de débito
731	250.00	731	2024-01-02	Efectivo
732	510.00	732	2024-01-09	Tarjeta de crédito
733	430.00	733	2024-01-16	Efectivo
734	300.00	734	2024-01-23	Tarjeta de débito
735	655.00	735	2024-01-30	Tarjeta de crédito
736	380.00	736	2024-02-06	Efectivo
737	255.00	737	2024-02-13	Efectivo
738	520.00	738	2024-02-20	Tarjeta de débito
739	440.00	739	2024-02-27	Transferencia
740	310.00	740	2024-03-05	Tarjeta de crédito
741	585.00	741	2024-03-12	Tarjeta de débito
742	455.00	742	2024-03-19	Efectivo
743	275.00	743	2024-03-26	Efectivo
744	640.00	744	2024-04-02	Tarjeta de crédito
745	365.00	745	2024-04-09	Tarjeta de débito
746	245.00	746	2024-04-16	Efectivo
747	500.00	747	2024-04-23	Tarjeta de crédito
748	420.00	748	2024-04-30	Efectivo
749	295.00	749	2024-05-07	Transferencia
750	660.00	750	2024-05-14	Tarjeta de débito
751	385.00	751	2024-05-21	Tarjeta de crédito
752	260.00	752	2024-05-28	Efectivo
753	515.00	753	2024-06-04	Tarjeta de débito
754	435.00	754	2024-06-11	Efectivo
755	305.00	755	2024-06-18	Tarjeta de crédito
756	570.00	756	2024-06-25	Efectivo
757	450.00	757	2024-07-02	Tarjeta de débito
758	270.00	758	2024-07-09	Transferencia
759	625.00	759	2024-07-16	Tarjeta de crédito
760	375.00	760	2024-07-23	Efectivo
761	250.00	761	2024-07-30	Tarjeta de débito
762	510.00	762	2024-08-06	Tarjeta de crédito
763	430.00	763	2024-08-13	Efectivo
764	300.00	764	2024-08-20	Efectivo
765	655.00	765	2024-08-27	Tarjeta de débito
766	380.00	766	2024-09-03	Tarjeta de crédito
767	255.00	767	2024-09-10	Efectivo
768	520.00	768	2024-09-17	Tarjeta de débito
769	440.00	769	2024-09-24	Efectivo
770	310.00	770	2024-10-01	Transferencia
771	585.00	771	2024-10-08	Tarjeta de crédito
772	460.00	772	2024-10-15	Tarjeta de débito
773	275.00	773	2024-10-22	Efectivo
774	635.00	774	2024-10-29	Tarjeta de crédito
775	365.00	775	2024-11-05	Efectivo
776	245.00	776	2024-11-12	Tarjeta de débito
777	505.00	777	2024-11-19	Efectivo
778	430.00	778	2024-11-26	Tarjeta de crédito
779	300.00	779	2024-12-03	Efectivo
780	660.00	780	2024-12-10	Tarjeta de débito
781	395.00	781	2024-12-17	Efectivo
782	740.00	782	2024-12-24	Tarjeta de crédito
783	690.00	783	2024-12-31	Tarjeta de débito
784	335.00	784	2024-01-03	Efectivo
785	470.00	785	2024-01-10	Tarjeta de crédito
786	265.00	786	2024-01-17	Efectivo
787	540.00	787	2024-01-24	Tarjeta de débito
788	390.00	788	2024-01-31	Efectivo
789	250.00	789	2024-02-07	Transferencia
790	720.00	790	2024-02-14	Tarjeta de crédito
791	430.00	791	2024-02-21	Tarjeta de débito
792	290.00	792	2024-02-28	Efectivo
793	655.00	793	2024-03-06	Tarjeta de crédito
794	370.00	794	2024-03-13	Efectivo
795	245.00	795	2024-03-20	Tarjeta de débito
796	510.00	796	2024-03-27	Tarjeta de crédito
797	435.00	797	2024-04-03	Efectivo
798	310.00	798	2024-04-10	Efectivo
799	575.00	799	2024-04-17	Tarjeta de débito
800	450.00	800	2024-04-24	Transferencia
801	280.00	801	2024-05-01	Tarjeta de crédito
802	625.00	802	2024-05-08	Tarjeta de débito
803	375.00	803	2024-05-15	Efectivo
804	255.00	804	2024-05-22	Efectivo
805	500.00	805	2024-05-29	Tarjeta de crédito
806	425.00	806	2024-06-05	Tarjeta de débito
807	300.00	807	2024-06-12	Efectivo
808	660.00	808	2024-06-19	Tarjeta de crédito
809	380.00	809	2024-06-26	Efectivo
810	255.00	810	2024-07-03	Transferencia
811	515.00	811	2024-07-10	Tarjeta de débito
812	440.00	812	2024-07-17	Tarjeta de crédito
813	310.00	813	2024-07-24	Efectivo
814	580.00	814	2024-07-31	Tarjeta de débito
815	455.00	815	2024-08-07	Efectivo
816	275.00	816	2024-08-14	Tarjeta de crédito
817	635.00	817	2024-08-21	Tarjeta de débito
818	365.00	818	2024-08-28	Efectivo
819	245.00	819	2024-09-04	Efectivo
820	500.00	820	2024-09-11	Tarjeta de crédito
821	425.00	821	2024-09-18	Transferencia
822	295.00	822	2024-09-25	Tarjeta de débito
823	660.00	823	2024-10-02	Tarjeta de crédito
824	385.00	824	2024-10-09	Efectivo
825	260.00	825	2024-10-16	Efectivo
826	515.00	826	2024-10-23	Tarjeta de débito
827	440.00	827	2024-10-30	Tarjeta de crédito
828	310.00	828	2024-11-06	Efectivo
829	575.00	829	2024-11-13	Tarjeta de débito
830	450.00	830	2024-11-20	Efectivo
831	275.00	831	2024-11-27	Transferencia
832	635.00	832	2024-12-04	Tarjeta de crédito
833	370.00	833	2024-12-11	Tarjeta de débito
834	250.00	834	2024-01-05	Efectivo
835	510.00	835	2024-01-12	Tarjeta de crédito
836	430.00	836	2024-01-19	Efectivo
837	300.00	837	2024-01-26	Tarjeta de débito
838	655.00	838	2024-02-02	Tarjeta de crédito
839	380.00	839	2024-02-09	Efectivo
840	255.00	840	2024-02-16	Efectivo
841	520.00	841	2024-02-23	Tarjeta de débito
842	440.00	842	2024-03-01	Transferencia
843	310.00	843	2024-03-08	Tarjeta de crédito
844	585.00	844	2024-03-15	Tarjeta de débito
845	455.00	845	2024-03-22	Efectivo
846	275.00	846	2024-03-29	Efectivo
847	640.00	847	2024-04-05	Tarjeta de crédito
848	365.00	848	2024-04-12	Tarjeta de débito
849	245.00	849	2024-04-19	Efectivo
850	500.00	850	2024-04-26	Tarjeta de crédito
851	420.00	851	2024-05-03	Efectivo
852	295.00	852	2024-05-10	Transferencia
853	660.00	853	2024-05-17	Tarjeta de débito
854	385.00	854	2024-05-24	Tarjeta de crédito
855	260.00	855	2024-05-31	Efectivo
856	515.00	856	2024-06-07	Tarjeta de débito
857	435.00	857	2024-06-14	Efectivo
858	305.00	858	2024-06-21	Tarjeta de crédito
859	660.00	859	2024-06-28	Efectivo
860	385.00	860	2024-07-05	Tarjeta de débito
861	260.00	861	2024-07-12	Transferencia
862	515.00	862	2024-07-19	Tarjeta de crédito
863	440.00	863	2024-07-26	Tarjeta de débito
864	310.00	864	2024-08-02	Efectivo
865	590.00	865	2024-08-09	Tarjeta de crédito
866	460.00	866	2024-08-16	Efectivo
867	275.00	867	2024-08-23	Tarjeta de débito
868	635.00	868	2024-08-30	Tarjeta de crédito
869	365.00	869	2024-09-06	Efectivo
870	245.00	870	2024-09-13	Efectivo
871	500.00	871	2024-09-20	Transferencia
872	425.00	872	2024-09-27	Tarjeta de débito
873	300.00	873	2024-10-04	Tarjeta de crédito
874	665.00	874	2024-10-11	Efectivo
875	390.00	875	2024-10-18	Tarjeta de débito
876	260.00	876	2024-10-25	Efectivo
877	520.00	877	2024-11-01	Tarjeta de crédito
878	440.00	878	2024-11-08	Tarjeta de débito
879	315.00	879	2024-11-15	Efectivo
880	580.00	880	2024-11-22	Tarjeta de crédito
881	455.00	881	2024-11-29	Efectivo
882	280.00	882	2024-12-06	Transferencia
883	640.00	883	2024-12-13	Tarjeta de débito
884	375.00	884	2024-12-20	Efectivo
885	490.00	885	2024-12-27	Tarjeta de crédito
1304	340.00	886	2024-01-04	Efectivo
1305	475.00	887	2024-01-11	Tarjeta de crédito
1306	265.00	888	2024-01-18	Efectivo
1307	545.00	889	2024-01-25	Tarjeta de débito
1308	390.00	890	2024-02-01	Efectivo
1309	255.00	891	2024-02-08	Transferencia
1310	610.00	892	2024-02-15	Tarjeta de crédito
1311	430.00	893	2024-02-22	Tarjeta de débito
1312	295.00	894	2024-02-29	Efectivo
1313	655.00	895	2024-03-07	Tarjeta de crédito
1314	370.00	896	2024-03-14	Efectivo
1315	250.00	897	2024-03-21	Tarjeta de débito
1316	515.00	898	2024-03-28	Tarjeta de crédito
1317	435.00	899	2024-04-04	Efectivo
1318	310.00	900	2024-04-11	Efectivo
1319	580.00	901	2024-04-18	Tarjeta de débito
1320	450.00	902	2024-04-25	Transferencia
1321	280.00	903	2024-05-02	Tarjeta de crédito
1322	625.00	904	2024-05-09	Tarjeta de débito
1323	380.00	905	2024-05-16	Efectivo
1324	255.00	906	2024-05-23	Efectivo
1325	505.00	907	2024-05-30	Tarjeta de crédito
1326	430.00	908	2024-06-06	Tarjeta de débito
1327	305.00	909	2024-06-13	Efectivo
1328	655.00	910	2024-06-20	Tarjeta de crédito
1329	380.00	911	2024-06-27	Efectivo
1330	255.00	912	2024-07-04	Transferencia
1331	520.00	913	2024-07-11	Tarjeta de débito
1332	440.00	914	2024-07-18	Tarjeta de crédito
1333	315.00	915	2024-07-25	Efectivo
1334	585.00	916	2024-08-01	Tarjeta de débito
1335	455.00	917	2024-08-08	Efectivo
1336	280.00	918	2024-08-15	Tarjeta de crédito
1337	640.00	919	2024-08-22	Tarjeta de débito
1338	365.00	920	2024-08-29	Efectivo
1339	245.00	921	2024-09-05	Efectivo
1340	500.00	922	2024-09-12	Tarjeta de crédito
1341	425.00	923	2024-09-19	Transferencia
1342	295.00	924	2024-09-26	Tarjeta de débito
1343	660.00	925	2024-10-03	Tarjeta de crédito
1344	385.00	926	2024-10-10	Efectivo
1345	260.00	927	2024-10-17	Efectivo
1346	515.00	928	2024-10-24	Tarjeta de débito
1347	440.00	929	2024-10-31	Tarjeta de crédito
1348	310.00	930	2024-11-07	Efectivo
1349	575.00	931	2024-11-14	Tarjeta de débito
1350	450.00	932	2024-11-21	Efectivo
1376	275.00	933	2024-11-28	Transferencia
1377	635.00	934	2024-12-05	Tarjeta de crédito
1378	370.00	935	2024-12-12	Tarjeta de débito
1432	385.00	945	2024-10-05	Tarjeta de débito
1433	260.00	946	2024-11-11	Efectivo
1434	450.00	947	2024-12-01	Tarjeta de crédito
1435	190.00	948	2024-01-15	Efectivo
1436	340.00	949	2024-02-20	Tarjeta de débito
1437	225.00	950	2024-03-25	Efectivo
1438	395.00	951	2024-04-30	Transferencia
1439	180.00	952	2024-05-10	Efectivo
1440	365.00	953	2024-06-20	Tarjeta de crédito
1441	280.00	954	2024-07-25	Tarjeta de débito
1442	415.00	955	2024-08-15	Efectivo
987	200.00	968	2024-09-15	Efectivo
988	360.00	969	2024-10-20	Tarjeta de crédito
989	250.00	970	2024-11-25	Tarjeta de débito
990	430.00	971	2024-12-20	Efectivo
991	365.00	972	2024-01-08	Tarjeta de crédito
992	495.00	973	2024-01-22	Tarjeta de débito
993	270.00	974	2024-02-05	Efectivo
994	560.00	975	2024-02-19	Tarjeta de crédito
995	395.00	976	2024-03-04	Efectivo
996	255.00	977	2024-03-18	Transferencia
997	620.00	978	2024-04-01	Tarjeta de débito
998	440.00	979	2024-04-15	Tarjeta de crédito
999	305.00	980	2024-04-29	Efectivo
1000	665.00	981	2024-05-13	Tarjeta de débito
1001	385.00	982	2024-05-27	Efectivo
1002	260.00	983	2024-06-10	Tarjeta de crédito
1003	525.00	984	2024-06-24	Tarjeta de débito
1004	445.00	985	2024-07-08	Efectivo
1005	315.00	986	2024-07-22	Efectivo
1006	590.00	987	2024-08-05	Tarjeta de crédito
1007	460.00	988	2024-08-19	Transferencia
1008	280.00	989	2024-09-02	Tarjeta de débito
1009	640.00	990	2024-09-16	Tarjeta de crédito
1010	375.00	991	2024-09-30	Efectivo
1011	255.00	992	2024-10-14	Efectivo
1012	510.00	993	2024-10-28	Tarjeta de débito
1013	435.00	994	2024-11-11	Tarjeta de crédito
1014	305.00	995	2024-11-25	Efectivo
1015	660.00	996	2024-12-09	Tarjeta de débito
1016	780.00	997	2024-12-23	Tarjeta de crédito
1017	355.00	998	2024-01-11	Efectivo
1018	490.00	999	2024-01-25	Tarjeta de crédito
1019	275.00	1000	2024-02-08	Efectivo
1020	565.00	1001	2024-02-22	Tarjeta de débito
1021	400.00	1002	2024-03-07	Efectivo
1022	260.00	1003	2024-03-21	Transferencia
1023	620.00	1004	2024-04-04	Tarjeta de crédito
1024	445.00	1005	2024-04-18	Tarjeta de débito
1025	310.00	1006	2024-05-02	Efectivo
1026	580.00	1007	2024-05-16	Tarjeta de crédito
1027	455.00	1008	2024-05-30	Efectivo
1028	280.00	1009	2024-06-13	Tarjeta de débito
1029	645.00	1010	2024-06-27	Tarjeta de crédito
1030	370.00	1011	2024-07-11	Efectivo
1031	250.00	1012	2024-07-25	Efectivo
1032	510.00	1013	2024-08-08	Tarjeta de débito
1033	435.00	1014	2024-08-22	Transferencia
1034	305.00	1015	2024-09-05	Tarjeta de crédito
1035	660.00	1016	2024-09-19	Tarjeta de débito
1036	385.00	1017	2024-10-03	Efectivo
1037	260.00	1018	2024-10-17	Efectivo
1038	510.00	1019	2024-10-31	Tarjeta de crédito
1039	435.00	1020	2024-11-14	Tarjeta de débito
1040	305.00	1021	2024-11-28	Efectivo
1041	660.00	1022	2024-12-12	Tarjeta de crédito
1042	385.00	1023	2024-12-26	Efectivo
1043	280.00	1024	2024-01-14	Tarjeta de débito
1044	640.00	1025	2024-01-28	Tarjeta de crédito
1045	375.00	1026	2024-02-11	Efectivo
1046	255.00	1027	2024-02-25	Efectivo
1047	510.00	1028	2024-03-10	Tarjeta de débito
1048	435.00	1029	2024-03-24	Transferencia
1049	305.00	1030	2024-04-07	Tarjeta de crédito
1050	660.00	1031	2024-04-21	Tarjeta de débito
1051	385.00	1032	2024-05-05	Efectivo
1052	260.00	1033	2024-05-19	Efectivo
1053	515.00	1034	2024-06-02	Tarjeta de crédito
1054	440.00	1035	2024-06-16	Tarjeta de débito
1055	310.00	1036	2024-06-30	Efectivo
1056	580.00	1037	2024-07-14	Tarjeta de crédito
1057	455.00	1038	2024-07-28	Efectivo
1058	280.00	1039	2024-08-11	Transferencia
1059	640.00	1040	2024-08-25	Tarjeta de débito
1060	375.00	1041	2024-09-08	Tarjeta de crédito
1061	255.00	1042	2024-09-22	Efectivo
1062	510.00	1043	2024-10-06	Efectivo
1063	435.00	1044	2024-10-20	Tarjeta de débito
1064	305.00	1045	2024-11-03	Tarjeta de crédito
1065	660.00	1046	2024-11-17	Efectivo
1066	385.00	1047	2024-12-01	Tarjeta de débito
1067	260.00	1048	2024-12-15	Efectivo
1068	520.00	1049	2024-12-29	Tarjeta de crédito
1069	440.00	1050	2024-01-17	Efectivo
1070	680.00	1051	2024-02-14	Tarjeta de crédito
1071	355.00	1052	2024-03-13	Tarjeta de débito
1072	245.00	1053	2024-04-10	Efectivo
1073	505.00	1054	2024-05-08	Tarjeta de crédito
1074	430.00	1055	2024-06-05	Efectivo
1075	300.00	1056	2024-07-03	Transferencia
1076	665.00	1057	2024-08-01	Tarjeta de débito
1077	390.00	1058	2024-09-01	Tarjeta de crédito
1078	260.00	1059	2024-10-01	Efectivo
1079	520.00	1060	2024-11-01	Tarjeta de débito
1080	445.00	1061	2024-12-01	Efectivo
1081	315.00	1062	2024-01-20	Tarjeta de crédito
1082	580.00	1063	2024-02-17	Efectivo
1083	455.00	1064	2024-03-16	Tarjeta de débito
1084	280.00	1065	2024-04-13	Transferencia
1085	640.00	1066	2024-05-11	Tarjeta de crédito
1086	375.00	1067	2024-06-08	Tarjeta de débito
1087	255.00	1068	2024-07-06	Efectivo
1088	510.00	1069	2024-08-03	Efectivo
1089	435.00	1070	2024-09-01	Tarjeta de crédito
1090	310.00	1071	2024-10-01	Tarjeta de débito
1423	195.00	936	2024-01-08	Efectivo
1424	320.00	937	2024-02-12	Tarjeta de débito
1425	245.00	938	2024-03-18	Efectivo
1426	410.00	939	2024-04-22	Tarjeta de crédito
1427	185.00	940	2024-05-27	Efectivo
1428	360.00	941	2024-06-15	Tarjeta de débito
1429	275.00	942	2024-07-20	Efectivo
1430	430.00	943	2024-08-25	Tarjeta de crédito
1431	215.00	944	2024-09-10	Efectivo
1443	205.00	956	2024-09-20	Tarjeta de crédito
1444	370.00	957	2024-10-15	Tarjeta de débito
1445	255.00	958	2024-11-10	Efectivo
1446	440.00	959	2024-12-15	Tarjeta de crédito
1447	175.00	960	2024-01-20	Efectivo
1448	330.00	961	2024-02-25	Tarjeta de débito
1449	235.00	962	2024-03-10	Efectivo
1450	400.00	963	2024-04-05	Tarjeta de crédito
1451	185.00	964	2024-05-15	Efectivo
1452	355.00	965	2024-06-10	Transferencia
1453	270.00	966	2024-07-30	Tarjeta de débito
1454	425.00	967	2024-08-05	Tarjeta de crédito
1455	580.00	1072	2024-11-01	Efectivo
1456	455.00	1073	2024-12-01	Tarjeta de crédito
1457	275.00	1074	2024-01-23	Tarjeta de débito
1458	635.00	1075	2024-02-20	Tarjeta de crédito
1459	365.00	1076	2024-03-19	Efectivo
1460	245.00	1077	2024-04-16	Efectivo
1461	500.00	1078	2024-05-14	Tarjeta de débito
1462	425.00	1079	2024-06-11	Transferencia
1463	295.00	1080	2024-07-09	Tarjeta de crédito
1464	660.00	1081	2024-08-06	Tarjeta de débito
1465	385.00	1082	2024-09-03	Efectivo
1466	260.00	1083	2024-10-01	Efectivo
1467	515.00	1084	2024-10-29	Tarjeta de crédito
1468	440.00	1085	2024-11-26	Tarjeta de débito
1469	760.00	1086	2024-12-24	Tarjeta de crédito
1470	345.00	1087	2024-01-27	Efectivo
1471	480.00	1088	2024-02-24	Tarjeta de crédito
1472	265.00	1089	2024-03-23	Efectivo
1473	545.00	1090	2024-04-20	Tarjeta de débito
1474	390.00	1091	2024-05-18	Efectivo
1475	255.00	1092	2024-06-15	Tarjeta de crédito
1476	610.00	1093	2024-07-13	Tarjeta de débito
1477	580.00	1072	2024-11-01	Efectivo
1478	455.00	1073	2024-12-01	Tarjeta de crédito
1479	275.00	1074	2024-01-23	Tarjeta de débito
1480	635.00	1075	2024-02-20	Tarjeta de crédito
1481	365.00	1076	2024-03-19	Efectivo
1482	245.00	1077	2024-04-16	Efectivo
1483	500.00	1078	2024-05-14	Tarjeta de débito
1484	425.00	1079	2024-06-11	Transferencia
1485	295.00	1080	2024-07-09	Tarjeta de crédito
1486	660.00	1081	2024-08-06	Tarjeta de débito
1487	385.00	1082	2024-09-03	Efectivo
1488	260.00	1083	2024-10-01	Efectivo
1489	515.00	1084	2024-10-29	Tarjeta de crédito
1490	440.00	1085	2024-11-26	Tarjeta de débito
1491	760.00	1086	2024-12-24	Tarjeta de crédito
1492	345.00	1087	2024-01-27	Efectivo
1493	480.00	1088	2024-02-24	Tarjeta de crédito
1494	265.00	1089	2024-03-23	Efectivo
1495	545.00	1090	2024-04-20	Tarjeta de débito
1496	390.00	1091	2024-05-18	Efectivo
1497	255.00	1092	2024-06-15	Tarjeta de crédito
1498	610.00	1093	2024-07-13	Tarjeta de débito
1499	430.00	1094	2024-08-10	Efectivo
1500	295.00	1095	2024-09-07	Transferencia
1501	655.00	1096	2024-10-05	Tarjeta de crédito
1502	370.00	1097	2024-11-02	Tarjeta de débito
1503	250.00	1098	2024-11-30	Efectivo
1504	515.00	1099	2024-12-28	Tarjeta de crédito
1505	435.00	1100	2024-01-30	Efectivo
1506	310.00	1101	2024-02-27	Tarjeta de débito
1507	580.00	1102	2024-03-26	Tarjeta de crédito
1508	455.00	1103	2024-04-23	Efectivo
1509	280.00	1104	2024-05-21	Efectivo
1510	640.00	1105	2024-06-18	Tarjeta de débito
1511	365.00	1106	2024-07-16	Transferencia
1512	245.00	1107	2024-08-13	Tarjeta de crédito
1513	500.00	1108	2024-09-10	Efectivo
1514	425.00	1109	2024-10-08	Tarjeta de débito
1515	300.00	1110	2024-11-05	Efectivo
1516	660.00	1111	2024-12-03	Tarjeta de crédito
1517	370.00	1112	2024-01-03	Efectivo
1518	250.00	1113	2024-02-03	Tarjeta de débito
1519	510.00	1114	2024-03-03	Tarjeta de crédito
1520	435.00	1115	2024-04-03	Efectivo
1521	305.00	1116	2024-05-03	Efectivo
1522	660.00	1117	2024-06-03	Tarjeta de débito
1523	385.00	1118	2024-07-03	Transferencia
1524	260.00	1119	2024-08-03	Tarjeta de crédito
1525	515.00	1120	2024-09-03	Efectivo
1526	440.00	1121	2024-10-03	Tarjeta de débito
1527	315.00	1122	2024-11-03	Tarjeta de crédito
1528	585.00	1123	2024-12-03	Efectivo
1529	460.00	1124	2024-01-13	Tarjeta de débito
1530	280.00	1125	2024-02-13	Tarjeta de crédito
1531	640.00	1126	2024-03-13	Efectivo
1532	370.00	1127	2024-04-13	Efectivo
1533	250.00	1128	2024-05-13	Transferencia
1534	510.00	1129	2024-06-13	Tarjeta de débito
1535	435.00	1130	2024-07-13	Tarjeta de crédito
1536	305.00	1131	2024-08-13	Efectivo
1537	660.00	1132	2024-09-13	Tarjeta de débito
1538	385.00	1133	2024-10-13	Tarjeta de crédito
1539	260.00	1134	2024-11-13	Efectivo
1540	525.00	1135	2024-12-13	Efectivo
1541	445.00	1136	2024-01-23	Tarjeta de crédito
1542	315.00	1137	2024-02-23	Tarjeta de débito
1543	590.00	1138	2024-03-23	Efectivo
1544	465.00	1139	2024-04-23	Tarjeta de crédito
1545	280.00	1140	2024-05-23	Transferencia
1546	640.00	1141	2024-06-23	Tarjeta de débito
1547	375.00	1142	2024-07-23	Efectivo
1548	255.00	1143	2024-08-23	Efectivo
1549	510.00	1144	2024-09-23	Tarjeta de crédito
1550	435.00	1145	2024-10-23	Tarjeta de débito
1551	305.00	1146	2024-11-23	Efectivo
1552	760.00	1147	2024-12-23	Tarjeta de crédito
1553	350.00	1148	2024-01-16	Efectivo
1554	485.00	1149	2024-02-16	Tarjeta de débito
1555	270.00	1150	2024-03-16	Efectivo
1556	555.00	1151	2024-04-16	Tarjeta de crédito
1557	395.00	1152	2024-05-16	Efectivo
1558	255.00	1153	2024-06-16	Transferencia
1559	620.00	1154	2024-07-16	Tarjeta de débito
1560	440.00	1155	2024-08-16	Tarjeta de crédito
1561	310.00	1156	2024-09-16	Efectivo
1562	585.00	1157	2024-10-16	Tarjeta de débito
1563	460.00	1158	2024-11-16	Efectivo
1564	280.00	1159	2024-12-16	Tarjeta de crédito
1565	645.00	1160	2024-01-26	Tarjeta de débito
1589	370.00	1161	2024-02-26	Efectivo
1590	250.00	1162	2024-03-26	Efectivo
1591	510.00	1163	2024-04-26	Tarjeta de crédito
1592	435.00	1164	2024-05-26	Tarjeta de débito
1593	300.00	1165	2024-06-26	Efectivo
1594	660.00	1166	2024-07-26	Transferencia
1595	385.00	1167	2024-08-26	Tarjeta de crédito
1596	255.00	1168	2024-09-26	Efectivo
1597	520.00	1169	2024-10-26	Tarjeta de débito
1598	445.00	1170	2024-11-26	Tarjeta de crédito
1599	590.00	1171	2024-12-26	Efectivo
1600	350.00	1172	2024-01-06	Efectivo
1601	480.00	1173	2024-02-06	Tarjeta de crédito
1602	265.00	1174	2024-03-06	Tarjeta de débito
1603	545.00	1175	2024-04-06	Efectivo
1604	395.00	1176	2024-05-06	Efectivo
1605	250.00	1177	2024-06-06	Transferencia
1606	615.00	1178	2024-07-06	Tarjeta de crédito
1607	435.00	1179	2024-08-06	Tarjeta de débito
1608	300.00	1180	2024-09-06	Efectivo
1609	655.00	1181	2024-10-06	Tarjeta de crédito
1612	370.00	1182	2024-11-06	Efectivo
\.


--
-- TOC entry 3601 (class 0 OID 16449)
-- Dependencies: 228
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedido (id_pedido, fecha_hora, estado, total, id_cliente, id_mesa, id_empleado) FROM stdin;
1	2024-01-03 12:15:00	Entregado	285.00	1	1	1
2	2024-01-03 13:30:00	Entregado	420.00	2	3	2
3	2024-01-04 14:00:00	Entregado	195.00	3	5	1
4	2024-01-04 20:00:00	Entregado	560.00	4	7	3
5	2024-01-05 13:15:00	Entregado	310.00	5	9	4
6	2024-01-05 14:30:00	Entregado	175.00	6	2	2
7	2024-01-06 19:45:00	Entregado	640.00	7	10	5
8	2024-01-06 21:00:00	Entregado	390.00	8	12	6
9	2024-01-07 12:30:00	Entregado	220.00	9	4	1
10	2024-01-07 13:45:00	Entregado	480.00	10	14	3
11	2024-01-08 20:15:00	Entregado	355.00	11	16	7
12	2024-01-09 19:30:00	Entregado	510.00	12	17	8
13	2024-01-10 13:00:00	Entregado	265.00	13	19	9
14	2024-01-10 14:15:00	Entregado	430.00	14	21	10
15	2024-01-11 20:30:00	Entregado	590.00	15	23	11
16	2024-01-12 12:45:00	Entregado	185.00	16	25	12
17	2024-01-13 13:00:00	Entregado	340.00	17	27	13
18	2024-01-13 19:15:00	Entregado	470.00	18	29	14
19	2024-01-14 20:45:00	Entregado	615.00	19	31	15
20	2024-01-15 12:00:00	Entregado	250.00	20	33	16
21	2024-01-15 13:30:00	Entregado	395.00	21	35	17
22	2024-01-16 20:00:00	Entregado	545.00	22	37	18
23	2024-01-17 19:15:00	Entregado	280.00	23	39	19
24	2024-01-18 13:45:00	Entregado	415.00	24	41	20
25	2024-01-19 14:00:00	Entregado	330.00	25	43	21
26	2024-01-19 20:30:00	Entregado	580.00	26	45	22
27	2024-01-20 12:15:00	Entregado	195.00	27	47	23
28	2024-01-21 13:00:00	Entregado	460.00	28	49	24
29	2024-01-22 19:45:00	Entregado	625.00	29	51	25
30	2024-01-23 20:15:00	Entregado	375.00	30	53	26
31	2024-01-24 12:30:00	Entregado	240.00	31	55	27
32	2024-01-24 14:00:00	Entregado	490.00	32	57	28
33	2024-01-25 19:30:00	Entregado	555.00	33	59	29
34	2024-01-26 20:45:00	Entregado	310.00	34	61	30
35	2024-01-27 13:15:00	Entregado	435.00	35	63	31
36	2024-01-28 12:00:00	Entregado	270.00	36	65	32
37	2024-01-29 19:00:00	Entregado	600.00	37	67	33
38	2024-01-30 20:30:00	Entregado	365.00	38	69	34
39	2024-01-31 13:45:00	Entregado	225.00	39	71	35
40	2024-02-01 14:00:00	Entregado	480.00	40	73	36
41	2024-02-02 19:15:00	Entregado	540.00	41	75	37
42	2024-02-03 12:30:00	Entregado	290.00	42	77	38
43	2024-02-04 13:00:00	Entregado	415.00	43	79	39
44	2024-02-05 20:00:00	Entregado	635.00	44	80	40
45	2024-02-06 19:45:00	Entregado	350.00	45	78	41
46	2024-02-07 13:15:00	Entregado	205.00	46	76	42
47	2024-02-08 14:30:00	Entregado	470.00	47	74	43
48	2024-02-09 19:00:00	Entregado	560.00	48	72	44
49	2024-02-10 20:15:00	Entregado	315.00	49	70	45
50	2024-02-11 12:45:00	Entregado	425.00	50	68	46
51	2024-02-12 13:30:00	Entregado	285.00	51	66	47
52	2024-02-13 20:00:00	Entregado	510.00	52	64	48
53	2024-02-14 19:30:00	Entregado	680.00	53	62	49
54	2024-02-15 13:00:00	Entregado	395.00	54	60	50
55	2024-02-16 14:15:00	Entregado	250.00	55	58	1
56	2024-02-17 19:45:00	Entregado	575.00	56	56	2
57	2024-02-18 20:30:00	Entregado	330.00	57	54	3
58	2024-02-19 12:15:00	Entregado	455.00	58	52	4
59	2024-02-20 13:45:00	Entregado	620.00	59	50	5
60	2024-02-21 19:00:00	Entregado	275.00	60	48	6
61	2024-02-22 20:15:00	Entregado	410.00	61	46	7
62	2024-02-23 12:30:00	Entregado	545.00	62	44	8
63	2024-02-24 13:00:00	Entregado	300.00	63	42	9
64	2024-02-25 19:30:00	Entregado	475.00	64	40	10
65	2024-02-26 20:45:00	Entregado	650.00	65	38	11
66	2024-02-27 13:15:00	Entregado	360.00	66	36	12
67	2024-02-28 14:00:00	Entregado	230.00	67	34	13
68	2024-02-29 19:15:00	Entregado	495.00	68	32	14
69	2024-03-01 20:00:00	Entregado	570.00	69	30	15
70	2024-03-02 12:45:00	Entregado	325.00	70	28	16
71	2024-03-03 13:30:00	Entregado	445.00	71	26	17
72	2024-03-04 19:00:00	Entregado	610.00	72	24	18
73	2024-03-05 20:30:00	Entregado	380.00	73	22	19
74	2024-03-06 12:15:00	Entregado	255.00	74	20	20
75	2024-03-07 13:45:00	Entregado	500.00	75	18	21
76	2024-03-08 19:30:00	Entregado	665.00	76	16	22
77	2024-03-09 20:15:00	Entregado	295.00	77	14	23
78	2024-03-10 12:30:00	Entregado	430.00	78	12	24
79	2024-03-11 13:00:00	Entregado	585.00	79	10	25
80	2024-03-12 19:45:00	Entregado	340.00	80	8	26
81	2024-03-13 20:30:00	Entregado	215.00	81	6	27
82	2024-03-14 12:45:00	Entregado	460.00	82	4	28
83	2024-03-15 13:15:00	Entregado	630.00	83	2	29
84	2024-03-16 19:00:00	Entregado	375.00	84	1	30
85	2024-03-17 20:15:00	Entregado	245.00	85	3	31
86	2024-03-18 12:00:00	Entregado	515.00	86	5	32
87	2024-03-19 13:30:00	Entregado	690.00	87	7	33
88	2024-03-20 19:15:00	Entregado	320.00	88	9	34
89	2024-03-21 20:45:00	Entregado	455.00	89	11	35
90	2024-03-22 12:30:00	Entregado	275.00	90	13	36
91	2024-03-23 13:45:00	Entregado	530.00	91	15	37
92	2024-03-24 19:00:00	Entregado	400.00	92	17	38
93	2024-03-25 20:30:00	Entregado	595.00	93	19	39
94	2024-03-26 12:15:00	Entregado	350.00	94	21	40
95	2024-03-27 13:00:00	Entregado	480.00	95	23	41
96	2024-03-28 19:45:00	Entregado	265.00	96	25	42
97	2024-03-29 20:00:00	Entregado	545.00	97	27	43
98	2024-03-30 12:45:00	Entregado	390.00	98	29	44
99	2024-03-31 13:15:00	Entregado	235.00	99	31	45
100	2024-04-01 19:30:00	Entregado	610.00	100	33	46
101	2024-04-02 20:15:00	Entregado	425.00	101	35	47
102	2024-04-03 12:00:00	Entregado	310.00	102	37	48
103	2024-04-04 13:45:00	Entregado	575.00	103	39	49
104	2024-04-05 19:15:00	Entregado	450.00	104	41	50
105	2024-04-06 20:30:00	Entregado	285.00	105	43	1
106	2024-04-07 12:30:00	Entregado	640.00	106	45	2
107	2024-04-08 13:00:00	Entregado	365.00	107	47	3
108	2024-04-09 19:45:00	Entregado	500.00	108	49	4
109	2024-04-10 20:00:00	Entregado	230.00	109	51	5
110	2024-04-11 12:15:00	Entregado	470.00	110	53	6
111	2024-04-12 13:30:00	Entregado	615.00	111	55	7
112	2024-04-13 19:00:00	Entregado	340.00	112	57	8
113	2024-04-14 20:45:00	Entregado	525.00	113	59	9
114	2024-04-15 12:45:00	Entregado	395.00	114	61	10
115	2024-04-16 13:15:00	Entregado	270.00	115	63	11
116	2024-04-17 19:30:00	Entregado	580.00	116	65	12
117	2024-04-18 20:15:00	Entregado	445.00	117	67	13
118	2024-04-19 12:00:00	Entregado	315.00	118	69	14
119	2024-04-20 13:45:00	Entregado	660.00	119	71	15
120	2024-04-21 19:15:00	Entregado	380.00	120	73	16
121	2024-04-22 20:30:00	Entregado	255.00	121	75	17
122	2024-04-23 12:30:00	Entregado	510.00	122	77	18
123	2024-04-24 13:00:00	Entregado	435.00	123	79	19
124	2024-04-25 19:45:00	Entregado	290.00	124	80	20
125	2024-04-26 20:00:00	Entregado	625.00	125	78	21
126	2024-04-27 12:15:00	Entregado	355.00	126	76	22
127	2024-04-28 13:30:00	Entregado	490.00	127	74	23
128	2024-04-29 19:00:00	Entregado	240.00	128	72	24
129	2024-04-30 20:45:00	Entregado	565.00	129	70	25
130	2024-05-01 12:45:00	Entregado	410.00	130	68	26
131	2024-05-02 13:15:00	Entregado	675.00	131	66	27
132	2024-05-03 19:30:00	Entregado	325.00	132	64	28
133	2024-05-04 20:15:00	Entregado	460.00	133	62	29
134	2024-05-05 12:00:00	Entregado	545.00	134	60	30
135	2024-05-06 13:45:00	Entregado	295.00	135	58	31
136	2024-05-07 19:15:00	Entregado	620.00	136	56	32
137	2024-05-08 20:30:00	Entregado	375.00	137	54	33
138	2024-05-09 12:30:00	Entregado	260.00	138	52	34
139	2024-05-10 13:00:00	Entregado	500.00	139	50	35
140	2024-05-11 19:45:00	Entregado	430.00	140	48	36
141	2024-05-12 20:00:00	Entregado	310.00	141	46	37
142	2024-05-13 12:15:00	Entregado	585.00	142	44	38
143	2024-05-14 13:30:00	Entregado	455.00	143	42	39
144	2024-05-15 19:00:00	Entregado	280.00	144	40	40
145	2024-05-16 20:45:00	Entregado	640.00	145	38	41
146	2024-05-17 12:45:00	Entregado	395.00	146	36	42
147	2024-05-18 13:15:00	Entregado	250.00	147	34	43
148	2024-05-19 19:30:00	Entregado	535.00	148	32	44
149	2024-05-20 20:15:00	Entregado	420.00	149	30	45
150	2024-05-21 12:00:00	Entregado	305.00	150	28	46
151	2024-05-22 13:45:00	Entregado	660.00	151	26	47
152	2024-05-23 19:15:00	Entregado	375.00	152	24	48
153	2024-05-24 20:30:00	Entregado	245.00	153	22	49
154	2024-05-25 12:30:00	Entregado	520.00	154	20	50
155	2024-05-26 13:00:00	Entregado	440.00	155	18	1
156	2024-05-27 19:45:00	Entregado	315.00	156	16	2
157	2024-05-28 20:00:00	Entregado	595.00	157	14	3
158	2024-05-29 12:15:00	Entregado	465.00	158	12	4
159	2024-05-30 13:30:00	Entregado	270.00	159	10	5
160	2024-05-31 19:00:00	Entregado	645.00	160	8	6
161	2024-06-01 20:45:00	Entregado	390.00	161	6	7
162	2024-06-02 12:45:00	Entregado	255.00	162	4	8
163	2024-06-03 13:15:00	Entregado	510.00	163	2	9
164	2024-06-04 19:30:00	Entregado	425.00	164	1	10
165	2024-06-05 20:15:00	Entregado	300.00	165	3	11
166	2024-06-06 12:00:00	Entregado	570.00	166	5	12
167	2024-06-07 13:45:00	Entregado	445.00	167	7	13
168	2024-06-08 19:15:00	Entregado	285.00	168	9	14
169	2024-06-09 20:30:00	Entregado	625.00	169	11	15
170	2024-06-10 12:30:00	Entregado	360.00	170	13	16
171	2024-06-11 13:00:00	Entregado	240.00	171	15	17
172	2024-06-12 19:45:00	Entregado	495.00	172	17	18
173	2024-06-13 20:00:00	Entregado	415.00	173	19	19
174	2024-06-14 12:15:00	Entregado	310.00	174	21	20
175	2024-06-15 13:30:00	Entregado	580.00	175	23	21
176	2024-06-16 19:00:00	Entregado	455.00	176	25	22
177	2024-06-17 20:45:00	Entregado	275.00	177	27	23
178	2024-06-18 12:45:00	Entregado	610.00	178	29	24
179	2024-06-19 13:15:00	Entregado	380.00	179	31	25
180	2024-06-20 19:30:00	Entregado	265.00	180	33	26
181	2024-06-21 20:15:00	Entregado	535.00	181	35	27
182	2024-06-22 12:00:00	Entregado	430.00	182	37	28
183	2024-06-23 13:45:00	Entregado	295.00	183	39	29
184	2024-06-24 19:15:00	Entregado	660.00	184	41	30
185	2024-06-25 20:30:00	Entregado	375.00	185	43	31
186	2024-06-26 12:30:00	Entregado	250.00	186	45	32
187	2024-06-27 13:00:00	Entregado	520.00	187	47	33
188	2024-06-28 19:45:00	Entregado	400.00	188	49	34
189	2024-06-29 20:00:00	Entregado	290.00	189	51	35
190	2024-06-30 12:15:00	Entregado	645.00	190	53	36
191	2024-07-01 13:30:00	Entregado	365.00	191	55	37
192	2024-07-02 19:00:00	Entregado	245.00	192	57	38
193	2024-07-03 20:45:00	Entregado	505.00	193	59	39
194	2024-07-04 12:45:00	Entregado	440.00	194	61	40
195	2024-07-05 13:15:00	Entregado	320.00	195	63	41
196	2024-07-06 19:30:00	Entregado	575.00	196	65	42
197	2024-07-07 20:15:00	Entregado	415.00	197	67	43
198	2024-07-08 12:00:00	Entregado	280.00	198	69	44
199	2024-07-09 13:45:00	Entregado	630.00	199	71	45
200	2024-07-10 19:15:00	Entregado	355.00	200	73	46
201	2024-07-11 20:30:00	Entregado	240.00	201	75	47
202	2024-07-12 12:30:00	Entregado	490.00	202	77	48
203	2024-07-13 13:00:00	Entregado	420.00	203	79	49
204	2024-07-14 19:45:00	Entregado	305.00	204	80	50
205	2024-07-15 20:00:00	Entregado	655.00	205	78	1
206	2024-07-16 12:15:00	Entregado	370.00	206	76	2
207	2024-07-17 13:30:00	Entregado	255.00	207	74	3
208	2024-07-18 19:00:00	Entregado	515.00	208	72	4
209	2024-07-19 20:45:00	Entregado	435.00	209	70	5
210	2024-07-20 12:45:00	Entregado	300.00	210	68	6
211	2024-07-21 13:15:00	Entregado	580.00	211	66	7
212	2024-07-22 19:30:00	Entregado	460.00	212	64	8
213	2024-07-23 20:15:00	Entregado	275.00	213	62	9
214	2024-07-24 12:00:00	Entregado	620.00	214	60	10
215	2024-07-25 13:45:00	Entregado	385.00	215	58	11
216	2024-07-26 19:15:00	Entregado	260.00	216	56	12
217	2024-07-27 20:30:00	Entregado	525.00	217	54	13
218	2024-07-28 12:30:00	Entregado	445.00	218	52	14
219	2024-07-29 13:00:00	Entregado	315.00	219	50	15
220	2024-07-30 19:45:00	Entregado	670.00	220	48	16
221	2024-07-31 20:00:00	Entregado	390.00	221	46	17
222	2024-08-01 12:15:00	Entregado	250.00	222	44	18
223	2024-08-02 13:30:00	Entregado	545.00	223	42	19
224	2024-08-03 19:00:00	Entregado	420.00	224	40	20
225	2024-08-04 20:45:00	Entregado	295.00	225	38	21
226	2024-08-05 12:45:00	Entregado	635.00	226	36	22
227	2024-08-06 13:15:00	Entregado	360.00	227	34	23
228	2024-08-07 19:30:00	Entregado	245.00	228	32	24
229	2024-08-08 20:15:00	Entregado	500.00	229	30	25
230	2024-08-09 12:00:00	Entregado	430.00	230	28	26
231	2024-08-10 13:45:00	Entregado	320.00	231	26	27
232	2024-08-11 19:15:00	Entregado	590.00	232	24	28
233	2024-08-12 20:30:00	Entregado	465.00	233	22	29
234	2024-08-13 12:30:00	Entregado	280.00	234	20	30
235	2024-08-14 13:00:00	Entregado	640.00	235	18	31
236	2024-08-15 19:45:00	Entregado	395.00	236	16	32
237	2024-08-16 20:00:00	Entregado	265.00	237	14	33
238	2024-08-17 12:15:00	Entregado	530.00	238	12	34
239	2024-08-18 13:30:00	Entregado	450.00	239	10	35
240	2024-08-19 19:00:00	Entregado	305.00	240	8	36
241	2024-08-20 20:45:00	Entregado	665.00	241	6	37
242	2024-08-21 12:45:00	Entregado	380.00	242	4	38
243	2024-08-22 13:15:00	Entregado	255.00	243	2	39
244	2024-08-23 19:30:00	Entregado	515.00	244	1	40
245	2024-08-24 20:15:00	Entregado	440.00	245	3	41
246	2024-08-25 12:00:00	Entregado	310.00	246	5	42
247	2024-08-26 13:45:00	Entregado	575.00	247	7	43
248	2024-08-27 19:15:00	Entregado	455.00	248	9	44
249	2024-08-28 20:30:00	Entregado	270.00	249	11	45
250	2024-08-29 12:30:00	Entregado	620.00	250	13	46
251	2024-08-30 13:00:00	Entregado	370.00	251	15	47
252	2024-08-31 19:45:00	Entregado	245.00	252	17	48
253	2024-09-01 20:00:00	Entregado	505.00	253	19	49
254	2024-09-02 12:15:00	Entregado	435.00	254	21	50
255	2024-09-03 13:30:00	Entregado	295.00	255	23	1
256	2024-09-04 19:00:00	Entregado	660.00	256	25	2
257	2024-09-05 20:45:00	Entregado	385.00	257	27	3
258	2024-09-06 12:45:00	Entregado	260.00	258	29	4
259	2024-09-07 13:15:00	Entregado	520.00	259	31	5
260	2024-09-08 19:30:00	Entregado	445.00	260	33	6
261	2024-09-09 20:15:00	Entregado	315.00	261	35	7
262	2024-09-10 12:00:00	Entregado	680.00	262	37	8
263	2024-09-11 13:45:00	Entregado	395.00	263	39	9
264	2024-09-12 19:15:00	Entregado	265.00	264	41	10
265	2024-09-13 20:30:00	Entregado	540.00	265	43	11
266	2024-09-14 12:30:00	Entregado	420.00	266	45	12
267	2024-09-15 13:00:00	Entregado	300.00	267	47	13
268	2024-09-16 19:45:00	Entregado	640.00	268	49	14
269	2024-09-17 20:00:00	Entregado	365.00	269	51	15
270	2024-09-18 12:15:00	Entregado	250.00	270	53	16
271	2024-09-19 13:30:00	Entregado	510.00	271	55	17
272	2024-09-20 19:00:00	Entregado	430.00	272	57	18
273	2024-09-21 20:45:00	Entregado	290.00	273	59	19
274	2024-09-22 12:45:00	Entregado	655.00	274	61	20
275	2024-09-23 13:15:00	Entregado	375.00	275	63	21
276	2024-09-24 19:30:00	Entregado	255.00	276	65	22
277	2024-09-25 20:15:00	Entregado	525.00	277	67	23
278	2024-09-26 12:00:00	Entregado	440.00	278	69	24
279	2024-09-27 13:45:00	Entregado	310.00	279	71	25
280	2024-09-28 19:15:00	Entregado	595.00	280	73	26
281	2024-09-29 20:30:00	Entregado	460.00	281	75	27
282	2024-09-30 12:30:00	Entregado	275.00	282	77	28
283	2024-10-01 13:00:00	Entregado	630.00	283	79	29
284	2024-10-02 19:45:00	Entregado	355.00	284	80	30
285	2024-10-03 20:00:00	Entregado	240.00	285	78	31
286	2024-10-04 12:15:00	Entregado	500.00	286	76	32
287	2024-10-05 13:30:00	Entregado	420.00	287	74	33
288	2024-10-06 19:00:00	Entregado	295.00	288	72	34
289	2024-10-07 20:45:00	Entregado	660.00	289	70	35
290	2024-10-08 12:45:00	Entregado	385.00	290	68	36
291	2024-10-09 13:15:00	Entregado	260.00	291	66	37
292	2024-10-10 19:30:00	Entregado	540.00	292	64	38
293	2024-10-11 20:15:00	Entregado	415.00	293	62	39
294	2024-10-12 12:00:00	Entregado	305.00	294	60	40
295	2024-10-13 13:45:00	Entregado	670.00	295	58	41
296	2024-10-14 19:15:00	Entregado	390.00	296	56	42
297	2024-10-15 20:30:00	Entregado	255.00	297	54	43
298	2024-10-16 12:30:00	Entregado	525.00	298	52	44
299	2024-10-17 13:00:00	Entregado	445.00	299	50	45
300	2024-10-18 19:45:00	Entregado	315.00	300	48	46
301	2024-10-19 20:00:00	Entregado	590.00	301	46	47
302	2024-10-20 12:15:00	Entregado	460.00	302	44	48
303	2024-10-21 13:30:00	Entregado	280.00	303	42	49
304	2024-10-22 19:00:00	Entregado	645.00	304	40	50
305	2024-10-23 20:45:00	Entregado	370.00	305	38	1
306	2024-10-24 12:45:00	Entregado	245.00	306	36	2
307	2024-10-25 13:15:00	Entregado	510.00	307	34	3
308	2024-10-26 19:30:00	Entregado	435.00	308	32	4
309	2024-10-27 20:15:00	Entregado	300.00	309	30	5
310	2024-10-28 12:00:00	Entregado	575.00	310	28	6
311	2024-10-29 13:45:00	Entregado	450.00	311	26	7
312	2024-10-30 19:15:00	Entregado	265.00	312	24	8
313	2024-10-31 20:30:00	Entregado	620.00	313	22	9
314	2024-11-01 12:30:00	Entregado	380.00	314	20	10
315	2024-11-02 13:00:00	Entregado	255.00	315	18	11
316	2024-11-03 19:45:00	Entregado	530.00	316	16	12
317	2024-11-04 20:00:00	Entregado	425.00	317	14	13
318	2024-11-05 12:15:00	Entregado	295.00	318	12	14
319	2024-11-06 13:30:00	Entregado	665.00	319	10	15
320	2024-11-07 19:00:00	Entregado	385.00	320	8	16
321	2024-11-08 20:45:00	Entregado	260.00	321	6	17
322	2024-11-09 12:45:00	Entregado	515.00	322	4	18
323	2024-11-10 13:15:00	Entregado	440.00	323	2	19
324	2024-11-11 19:30:00	Entregado	310.00	324	1	20
325	2024-11-12 20:15:00	Entregado	580.00	325	3	21
326	2024-11-13 12:00:00	Entregado	455.00	326	5	22
327	2024-11-14 13:45:00	Entregado	275.00	327	7	23
328	2024-11-15 19:15:00	Entregado	635.00	328	9	24
329	2024-11-16 20:30:00	Entregado	370.00	329	11	25
330	2024-11-17 12:30:00	Entregado	250.00	330	13	26
331	2024-11-18 13:00:00	Entregado	510.00	331	15	27
332	2024-11-19 19:45:00	Entregado	430.00	332	17	28
333	2024-11-20 20:00:00	Entregado	300.00	333	19	29
334	2024-11-21 12:15:00	Entregado	650.00	334	21	30
335	2024-11-22 13:30:00	Entregado	375.00	335	23	31
336	2024-11-23 19:00:00	Entregado	245.00	336	25	32
337	2024-11-24 20:45:00	Entregado	520.00	337	27	33
338	2024-11-25 12:45:00	Entregado	440.00	338	29	34
339	2024-11-26 13:15:00	Entregado	315.00	339	31	35
340	2024-11-27 19:30:00	Entregado	585.00	340	33	36
341	2024-11-28 20:15:00	Entregado	460.00	341	35	37
342	2024-11-29 12:00:00	Entregado	280.00	342	37	38
343	2024-11-30 13:45:00	Entregado	640.00	343	39	39
344	2024-12-01 19:15:00	Entregado	390.00	344	41	40
345	2024-12-02 20:30:00	Entregado	260.00	345	43	41
346	2024-12-03 12:30:00	Entregado	525.00	346	45	42
347	2024-12-04 13:00:00	Entregado	445.00	347	47	43
348	2024-12-05 19:45:00	Entregado	310.00	348	49	44
349	2024-12-06 20:00:00	Entregado	590.00	349	51	45
350	2024-12-07 12:15:00	Entregado	465.00	350	53	46
351	2024-12-08 13:30:00	Entregado	285.00	351	55	47
352	2024-12-09 19:00:00	Entregado	630.00	352	57	48
353	2024-12-10 20:45:00	Entregado	380.00	353	59	49
354	2024-12-11 12:45:00	Entregado	255.00	354	61	50
355	2024-12-12 13:15:00	Entregado	510.00	355	63	1
356	2024-12-13 19:30:00	Entregado	430.00	356	65	2
357	2024-12-14 20:15:00	Entregado	305.00	357	67	3
358	2024-12-15 12:00:00	Entregado	660.00	358	69	4
359	2024-12-16 13:45:00	Entregado	385.00	359	71	5
360	2024-12-17 19:15:00	Entregado	260.00	360	73	6
361	2024-12-18 20:30:00	Entregado	545.00	361	75	7
362	2024-12-19 12:30:00	Entregado	420.00	362	77	8
363	2024-12-20 13:00:00	Entregado	295.00	363	79	9
364	2024-12-21 19:45:00	Entregado	670.00	364	80	10
365	2024-12-22 20:00:00	Entregado	395.00	365	78	11
366	2024-12-23 12:15:00	Entregado	265.00	366	76	12
367	2024-12-24 13:30:00	Entregado	710.00	367	74	13
368	2024-12-25 14:00:00	Entregado	830.00	368	72	14
369	2024-12-26 19:00:00	Entregado	540.00	369	70	15
370	2024-12-27 20:45:00	Entregado	415.00	370	68	16
371	2024-12-28 12:45:00	Entregado	290.00	371	66	17
372	2024-12-29 13:15:00	Entregado	625.00	372	64	18
373	2024-12-30 19:30:00	Entregado	460.00	373	62	19
374	2024-12-31 20:15:00	Entregado	575.00	374	60	20
375	2024-01-05 12:00:00	Entregado	345.00	375	58	21
376	2024-01-12 19:30:00	Entregado	480.00	376	56	22
377	2024-01-19 13:15:00	Entregado	260.00	377	54	23
378	2024-01-26 20:45:00	Entregado	555.00	378	52	24
379	2024-02-02 12:30:00	Entregado	390.00	379	50	25
380	2024-02-09 19:00:00	Entregado	245.00	380	48	26
381	2024-02-16 13:45:00	Entregado	615.00	381	46	27
382	2024-02-23 20:15:00	Entregado	430.00	382	44	28
383	2024-03-01 12:45:00	Entregado	295.00	383	42	29
384	2024-03-08 19:30:00	Entregado	660.00	384	40	30
385	2024-03-15 13:00:00	Entregado	375.00	385	38	31
386	2024-03-22 20:45:00	Entregado	250.00	386	36	32
387	2024-03-29 12:15:00	Entregado	520.00	387	34	33
388	2024-04-05 19:00:00	Entregado	440.00	388	32	34
389	2024-04-12 13:30:00	Entregado	315.00	389	30	35
390	2024-04-19 20:00:00	Entregado	585.00	390	28	36
391	2024-04-26 12:45:00	Entregado	455.00	391	26	37
392	2024-05-03 19:15:00	Entregado	280.00	392	24	38
393	2024-05-10 13:45:00	Entregado	630.00	393	22	39
394	2024-05-17 20:30:00	Entregado	380.00	394	20	40
395	2024-05-24 12:00:00	Entregado	255.00	395	18	41
396	2024-05-31 19:45:00	Entregado	510.00	396	16	42
397	2024-06-07 13:15:00	Entregado	435.00	397	14	43
398	2024-06-14 20:00:00	Entregado	305.00	398	12	44
399	2024-06-21 12:30:00	Entregado	660.00	399	10	45
400	2024-06-28 19:00:00	Entregado	385.00	400	8	46
401	2024-07-05 13:45:00	Entregado	255.00	401	6	47
402	2024-07-12 20:15:00	Entregado	525.00	402	4	48
403	2024-07-19 12:45:00	Entregado	445.00	403	2	49
404	2024-07-26 19:30:00	Entregado	310.00	404	1	50
405	2024-08-02 13:00:00	Entregado	590.00	405	3	1
406	2024-08-09 20:45:00	Entregado	460.00	406	5	2
407	2024-08-16 12:15:00	Entregado	275.00	407	7	3
408	2024-08-23 19:00:00	Entregado	635.00	408	9	4
409	2024-08-30 13:30:00	Entregado	365.00	409	11	5
410	2024-09-06 20:00:00	Entregado	245.00	410	13	6
411	2024-09-13 12:45:00	Entregado	505.00	411	15	7
412	2024-09-20 19:15:00	Entregado	430.00	412	17	8
413	2024-09-27 13:45:00	Entregado	300.00	413	19	9
414	2024-10-04 20:30:00	Entregado	665.00	414	21	10
415	2024-10-11 12:00:00	Entregado	390.00	415	23	11
416	2024-10-18 19:45:00	Entregado	260.00	416	25	12
417	2024-10-25 13:15:00	Entregado	520.00	417	27	13
418	2024-11-01 20:00:00	Entregado	440.00	418	29	14
419	2024-11-08 12:30:00	Entregado	315.00	419	31	15
420	2024-11-15 19:00:00	Entregado	580.00	420	33	16
421	2024-11-22 13:45:00	Entregado	455.00	421	35	17
422	2024-11-29 20:15:00	Entregado	280.00	422	37	18
423	2024-12-06 12:45:00	Entregado	640.00	423	39	19
424	2024-12-13 19:30:00	Entregado	375.00	424	41	20
425	2024-01-08 13:00:00	Entregado	250.00	425	43	21
426	2024-01-15 20:45:00	Entregado	515.00	426	45	22
427	2024-01-22 12:15:00	Entregado	435.00	427	47	23
428	2024-01-29 19:00:00	Entregado	305.00	428	49	24
429	2024-02-05 13:30:00	Entregado	660.00	429	51	25
430	2024-02-12 20:00:00	Entregado	385.00	430	53	26
431	2024-02-19 12:45:00	Entregado	255.00	431	55	27
432	2024-02-26 19:15:00	Entregado	525.00	432	57	28
433	2024-03-04 13:45:00	Entregado	440.00	433	59	29
434	2024-03-11 20:30:00	Entregado	310.00	434	61	30
435	2024-03-18 12:00:00	Entregado	590.00	435	63	31
436	2024-03-25 19:45:00	Entregado	460.00	436	65	32
437	2024-04-01 13:15:00	Entregado	275.00	437	67	33
438	2024-04-08 20:00:00	Entregado	635.00	438	69	34
439	2024-04-15 12:30:00	Entregado	370.00	439	71	35
440	2024-04-22 19:00:00	Entregado	245.00	440	73	36
441	2024-04-29 13:45:00	Entregado	505.00	441	75	37
442	2024-05-06 20:15:00	Entregado	430.00	442	77	38
443	2024-05-13 12:45:00	Entregado	300.00	443	79	39
444	2024-05-20 19:30:00	Entregado	665.00	444	80	40
445	2024-05-27 13:00:00	Entregado	390.00	445	78	41
446	2024-06-03 20:45:00	Entregado	260.00	446	76	42
447	2024-06-10 12:15:00	Entregado	520.00	447	74	43
448	2024-06-17 19:00:00	Entregado	440.00	448	72	44
449	2024-06-24 13:30:00	Entregado	315.00	449	70	45
450	2024-07-01 20:00:00	Entregado	580.00	450	68	46
451	2024-07-08 12:45:00	Entregado	455.00	451	66	47
452	2024-07-15 19:15:00	Entregado	280.00	452	64	48
453	2024-07-22 13:45:00	Entregado	640.00	453	62	49
454	2024-07-29 20:30:00	Entregado	375.00	454	60	50
455	2024-08-05 12:00:00	Entregado	250.00	455	58	1
456	2024-08-12 19:45:00	Entregado	515.00	456	56	2
457	2024-08-19 13:15:00	Entregado	435.00	457	54	3
458	2024-08-26 20:00:00	Entregado	305.00	458	52	4
459	2024-09-02 12:30:00	Entregado	660.00	459	50	5
460	2024-09-09 19:00:00	Entregado	380.00	460	48	6
461	2024-09-16 13:45:00	Entregado	255.00	461	46	7
462	2024-09-23 20:15:00	Entregado	525.00	462	44	8
463	2024-09-30 12:45:00	Entregado	445.00	463	42	9
464	2024-10-07 19:30:00	Entregado	310.00	464	40	10
465	2024-10-14 13:00:00	Entregado	590.00	465	38	11
466	2024-10-21 20:45:00	Entregado	460.00	466	36	12
467	2024-10-28 12:15:00	Entregado	275.00	467	34	13
468	2024-11-04 19:00:00	Entregado	635.00	468	32	14
469	2024-11-11 13:30:00	Entregado	365.00	469	30	15
470	2024-11-18 20:00:00	Entregado	245.00	470	28	16
471	2024-11-25 12:45:00	Entregado	505.00	471	26	17
472	2024-12-02 19:15:00	Entregado	430.00	472	24	18
473	2024-12-09 13:45:00	Entregado	300.00	473	22	19
474	2024-12-16 20:30:00	Entregado	665.00	474	20	20
475	2024-12-23 12:00:00	Entregado	755.00	475	18	21
476	2024-12-30 19:45:00	Entregado	490.00	476	16	22
477	2024-01-06 12:30:00	Entregado	335.00	477	14	23
478	2024-01-13 19:15:00	Entregado	475.00	478	12	24
479	2024-01-20 13:45:00	Entregado	265.00	479	10	25
480	2024-01-27 20:00:00	Entregado	545.00	480	8	26
481	2024-02-03 12:15:00	Entregado	395.00	481	6	27
482	2024-02-10 19:30:00	Entregado	250.00	482	4	28
483	2024-02-17 13:00:00	Entregado	610.00	483	2	29
484	2024-02-24 20:45:00	Entregado	425.00	484	1	30
485	2024-03-02 12:45:00	Entregado	290.00	485	3	31
486	2024-03-09 19:00:00	Entregado	655.00	486	5	32
487	2024-03-16 13:30:00	Entregado	370.00	487	7	33
488	2024-03-23 20:15:00	Entregado	245.00	488	9	34
489	2024-03-30 12:00:00	Entregado	515.00	489	11	35
490	2024-04-06 19:45:00	Entregado	435.00	490	13	36
491	2024-04-13 13:15:00	Entregado	310.00	491	15	37
492	2024-04-20 20:30:00	Entregado	580.00	492	17	38
493	2024-04-27 12:30:00	Entregado	450.00	493	19	39
494	2024-05-04 19:00:00	Entregado	275.00	494	21	40
495	2024-05-11 13:45:00	Entregado	625.00	495	23	41
496	2024-05-18 20:00:00	Entregado	375.00	496	25	42
497	2024-05-25 12:15:00	Entregado	255.00	497	27	43
498	2024-06-01 19:30:00	Entregado	505.00	498	29	44
499	2024-06-08 13:00:00	Entregado	430.00	499	31	45
500	2024-06-15 20:45:00	Entregado	300.00	500	33	46
501	2024-06-22 12:45:00	Entregado	660.00	501	35	47
502	2024-06-29 19:15:00	Entregado	380.00	502	37	48
503	2024-07-06 13:45:00	Entregado	255.00	503	39	49
504	2024-07-13 20:30:00	Entregado	520.00	504	41	50
505	2024-07-20 12:00:00	Entregado	440.00	505	43	1
506	2024-07-27 19:45:00	Entregado	315.00	506	45	2
507	2024-08-03 13:15:00	Entregado	585.00	507	47	3
508	2024-08-10 20:00:00	Entregado	455.00	508	49	4
509	2024-08-17 12:30:00	Entregado	280.00	509	51	5
510	2024-08-24 19:00:00	Entregado	640.00	510	53	6
511	2024-08-31 13:45:00	Entregado	365.00	511	55	7
512	2024-09-07 20:15:00	Entregado	245.00	512	57	8
513	2024-09-14 12:45:00	Entregado	500.00	513	59	9
514	2024-09-21 19:30:00	Entregado	425.00	514	61	10
515	2024-09-28 13:00:00	Entregado	295.00	515	63	11
516	2024-10-05 20:45:00	Entregado	660.00	516	65	12
517	2024-10-12 12:15:00	Entregado	385.00	517	67	13
518	2024-10-19 19:00:00	Entregado	260.00	518	69	14
519	2024-10-26 13:30:00	Entregado	515.00	519	71	15
520	2024-11-02 20:00:00	Entregado	440.00	520	73	16
521	2024-11-09 12:30:00	Entregado	310.00	521	75	17
522	2024-11-16 19:15:00	Entregado	575.00	522	77	18
523	2024-11-23 13:45:00	Entregado	450.00	523	79	19
524	2024-11-30 20:30:00	Entregado	275.00	524	80	20
525	2024-12-07 12:45:00	Entregado	635.00	525	78	21
526	2024-12-14 19:30:00	Entregado	370.00	526	76	22
527	2024-01-09 13:00:00	Entregado	250.00	527	74	23
528	2024-01-16 20:15:00	Entregado	510.00	528	72	24
529	2024-01-23 12:30:00	Entregado	430.00	529	70	25
530	2024-01-30 19:00:00	Entregado	300.00	530	68	26
531	2024-02-06 13:45:00	Entregado	655.00	531	66	27
532	2024-02-13 20:30:00	Entregado	380.00	532	64	28
533	2024-02-20 12:15:00	Entregado	255.00	533	62	29
534	2024-02-27 19:45:00	Entregado	520.00	534	60	30
535	2024-03-05 13:15:00	Entregado	440.00	535	58	31
536	2024-03-12 20:00:00	Entregado	310.00	536	56	32
537	2024-03-19 12:45:00	Entregado	585.00	537	54	33
538	2024-03-26 19:30:00	Entregado	455.00	538	52	34
539	2024-04-02 13:00:00	Entregado	275.00	539	50	35
540	2024-04-09 20:45:00	Entregado	640.00	540	48	36
541	2024-04-16 12:15:00	Entregado	365.00	541	46	37
542	2024-04-23 19:00:00	Entregado	245.00	542	44	38
543	2024-04-30 13:30:00	Entregado	500.00	543	42	39
544	2024-05-07 20:00:00	Entregado	420.00	544	40	40
545	2024-05-14 12:30:00	Entregado	295.00	545	38	41
546	2024-05-21 19:15:00	Entregado	660.00	546	36	42
547	2024-05-28 13:45:00	Entregado	385.00	547	34	43
548	2024-06-04 20:30:00	Entregado	260.00	548	32	44
549	2024-06-11 12:45:00	Entregado	515.00	549	30	45
550	2024-06-18 19:30:00	Entregado	435.00	550	28	46
551	2024-06-25 13:00:00	Entregado	305.00	551	26	47
552	2024-07-02 20:15:00	Entregado	570.00	552	24	48
553	2024-07-09 12:30:00	Entregado	450.00	553	22	49
554	2024-07-16 19:00:00	Entregado	270.00	554	20	50
555	2024-07-23 13:45:00	Entregado	625.00	555	18	1
556	2024-07-30 20:30:00	Entregado	375.00	556	16	2
557	2024-08-06 12:00:00	Entregado	250.00	557	14	3
558	2024-08-13 19:45:00	Entregado	510.00	558	12	4
559	2024-08-20 13:15:00	Entregado	430.00	559	10	5
560	2024-08-27 20:00:00	Entregado	300.00	560	8	6
561	2024-09-03 12:30:00	Entregado	655.00	561	6	7
562	2024-09-10 19:00:00	Entregado	380.00	562	4	8
563	2024-09-17 13:45:00	Entregado	255.00	563	2	9
564	2024-09-24 20:15:00	Entregado	520.00	564	1	10
565	2024-10-01 12:45:00	Entregado	440.00	565	3	11
566	2024-10-08 19:30:00	Entregado	310.00	566	5	12
567	2024-10-15 13:00:00	Entregado	585.00	567	7	13
568	2024-10-22 20:45:00	Entregado	460.00	568	9	14
569	2024-10-29 12:15:00	Entregado	275.00	569	11	15
570	2024-11-05 19:00:00	Entregado	635.00	570	13	16
571	2024-11-12 13:30:00	Entregado	365.00	571	15	17
572	2024-11-19 20:00:00	Entregado	245.00	572	17	18
573	2024-11-26 12:30:00	Entregado	505.00	573	19	19
574	2024-12-03 19:15:00	Entregado	430.00	574	21	20
575	2024-12-10 13:45:00	Entregado	300.00	575	23	21
576	2024-12-17 20:30:00	Entregado	660.00	576	25	22
577	2024-12-24 12:00:00	Entregado	770.00	577	27	23
578	2024-12-31 19:30:00	Entregado	560.00	578	29	24
579	2024-01-07 12:00:00	Entregado	340.00	579	31	25
580	2024-01-14 19:30:00	Entregado	475.00	580	33	26
581	2024-01-21 13:15:00	Entregado	265.00	581	35	27
582	2024-01-28 20:45:00	Entregado	550.00	582	37	28
583	2024-02-04 12:30:00	Entregado	390.00	583	39	29
584	2024-02-11 19:00:00	Entregado	250.00	584	41	30
585	2024-02-18 13:45:00	Entregado	615.00	585	43	31
586	2024-02-25 20:15:00	Entregado	430.00	586	45	32
587	2024-03-03 12:45:00	Entregado	295.00	587	47	33
588	2024-03-10 19:30:00	Entregado	660.00	588	49	34
589	2024-03-17 13:00:00	Entregado	375.00	589	51	35
590	2024-03-24 20:45:00	Entregado	250.00	590	53	36
591	2024-03-31 12:15:00	Entregado	520.00	591	55	37
592	2024-04-07 19:00:00	Entregado	440.00	592	57	38
593	2024-04-14 13:30:00	Entregado	315.00	593	59	39
594	2024-04-21 20:00:00	Entregado	585.00	594	61	40
595	2024-04-28 12:45:00	Entregado	455.00	595	63	41
596	2024-05-05 19:15:00	Entregado	280.00	596	65	42
597	2024-05-12 13:45:00	Entregado	635.00	597	67	43
598	2024-05-19 20:30:00	Entregado	380.00	598	69	44
599	2024-05-26 12:00:00	Entregado	255.00	599	71	45
600	2024-06-02 19:45:00	Entregado	510.00	600	73	46
601	2024-06-09 13:15:00	Entregado	430.00	601	75	47
602	2024-06-16 20:00:00	Entregado	305.00	602	77	48
603	2024-06-23 12:30:00	Entregado	660.00	603	79	49
604	2024-06-30 19:00:00	Entregado	385.00	604	80	50
605	2024-07-07 13:45:00	Entregado	260.00	605	78	1
606	2024-07-14 20:15:00	Entregado	525.00	606	76	2
607	2024-07-21 12:45:00	Entregado	445.00	607	74	3
608	2024-07-28 19:30:00	Entregado	315.00	608	72	4
609	2024-08-04 13:00:00	Entregado	590.00	609	70	5
610	2024-08-11 20:45:00	Entregado	460.00	610	68	6
611	2024-08-18 12:15:00	Entregado	275.00	611	66	7
612	2024-08-25 19:00:00	Entregado	640.00	612	64	8
613	2024-09-01 13:30:00	Entregado	365.00	613	62	9
614	2024-09-08 20:00:00	Entregado	245.00	614	60	10
615	2024-09-15 12:45:00	Entregado	505.00	615	58	11
616	2024-09-22 19:15:00	Entregado	430.00	616	56	12
617	2024-09-29 13:45:00	Entregado	300.00	617	54	13
618	2024-10-06 20:30:00	Entregado	665.00	618	52	14
619	2024-10-13 12:00:00	Entregado	390.00	619	50	15
620	2024-10-20 19:45:00	Entregado	260.00	620	48	16
621	2024-10-27 13:15:00	Entregado	520.00	621	46	17
622	2024-11-03 20:00:00	Entregado	440.00	622	44	18
623	2024-11-10 12:30:00	Entregado	315.00	623	42	19
624	2024-11-17 19:00:00	Entregado	580.00	624	40	20
625	2024-11-24 13:45:00	Entregado	455.00	625	38	21
626	2024-12-01 20:15:00	Entregado	280.00	626	36	22
627	2024-12-08 12:45:00	Entregado	640.00	627	34	23
628	2024-12-15 19:30:00	Entregado	375.00	628	32	24
629	2024-01-10 13:00:00	Entregado	255.00	629	30	25
630	2024-01-17 20:15:00	Entregado	510.00	630	28	26
631	2024-01-24 12:30:00	Entregado	435.00	631	26	27
632	2024-01-31 19:00:00	Entregado	300.00	632	24	28
633	2024-02-07 13:45:00	Entregado	660.00	633	22	29
634	2024-02-14 20:30:00	Entregado	700.00	634	20	30
635	2024-02-21 12:15:00	Entregado	255.00	635	18	31
636	2024-02-28 19:45:00	Entregado	520.00	636	16	32
637	2024-03-06 13:15:00	Entregado	440.00	637	14	33
638	2024-03-13 20:00:00	Entregado	310.00	638	12	34
639	2024-03-20 12:45:00	Entregado	585.00	639	10	35
640	2024-03-27 19:30:00	Entregado	455.00	640	8	36
641	2024-04-03 13:00:00	Entregado	275.00	641	6	37
642	2024-04-10 20:45:00	Entregado	640.00	642	4	38
643	2024-04-17 12:15:00	Entregado	365.00	643	2	39
644	2024-04-24 19:00:00	Entregado	245.00	644	1	40
645	2024-05-01 13:30:00	Entregado	500.00	645	3	41
646	2024-05-08 20:00:00	Entregado	420.00	646	5	42
647	2024-05-15 12:30:00	Entregado	295.00	647	7	43
648	2024-05-22 19:15:00	Entregado	660.00	648	9	44
649	2024-05-29 13:45:00	Entregado	385.00	649	11	45
650	2024-06-05 20:30:00	Entregado	260.00	650	13	46
651	2024-06-12 12:45:00	Entregado	515.00	651	15	47
652	2024-06-19 19:30:00	Entregado	435.00	652	17	48
653	2024-06-26 13:00:00	Entregado	305.00	653	19	49
654	2024-07-03 20:15:00	Entregado	570.00	654	21	50
655	2024-07-10 12:30:00	Entregado	450.00	655	23	1
656	2024-07-17 19:00:00	Entregado	270.00	656	25	2
657	2024-07-24 13:45:00	Entregado	625.00	657	27	3
658	2024-07-31 20:30:00	Entregado	375.00	658	29	4
659	2024-08-07 12:00:00	Entregado	250.00	659	31	5
660	2024-08-14 19:45:00	Entregado	510.00	660	33	6
661	2024-08-21 13:15:00	Entregado	430.00	661	35	7
662	2024-08-28 20:00:00	Entregado	300.00	662	37	8
663	2024-09-04 12:30:00	Entregado	655.00	663	39	9
664	2024-09-11 19:00:00	Entregado	380.00	664	41	10
665	2024-09-18 13:45:00	Entregado	255.00	665	43	11
666	2024-09-25 20:15:00	Entregado	520.00	666	45	12
667	2024-10-02 12:45:00	Entregado	440.00	667	47	13
668	2024-10-09 19:30:00	Entregado	310.00	668	49	14
669	2024-10-16 13:00:00	Entregado	585.00	669	51	15
670	2024-10-23 20:45:00	Entregado	460.00	670	53	16
671	2024-10-30 12:15:00	Entregado	275.00	671	55	17
672	2024-11-06 19:00:00	Entregado	635.00	672	57	18
673	2024-11-13 13:30:00	Entregado	365.00	673	59	19
674	2024-11-20 20:00:00	Entregado	245.00	674	61	20
675	2024-11-27 12:30:00	Entregado	505.00	675	63	21
676	2024-12-04 19:15:00	Entregado	430.00	676	65	22
677	2024-12-11 13:45:00	Entregado	300.00	677	67	23
678	2024-12-18 20:30:00	Entregado	660.00	678	69	24
679	2024-12-25 13:00:00	Entregado	820.00	679	71	25
680	2024-12-31 14:00:00	Entregado	595.00	680	73	26
681	2024-01-04 19:30:00	Entregado	345.00	681	75	27
682	2024-01-11 13:15:00	Entregado	480.00	682	77	28
683	2024-01-18 20:45:00	Entregado	265.00	683	79	29
684	2024-01-25 12:30:00	Entregado	545.00	684	80	30
685	2024-02-01 19:00:00	Entregado	390.00	685	78	31
686	2024-02-08 13:45:00	Entregado	250.00	686	76	32
687	2024-02-15 20:15:00	Entregado	610.00	687	74	33
688	2024-02-22 12:45:00	Entregado	425.00	688	72	34
689	2024-02-29 19:30:00	Entregado	295.00	689	70	35
690	2024-03-07 13:00:00	Entregado	660.00	690	68	36
691	2024-03-14 20:45:00	Entregado	370.00	691	66	37
692	2024-03-21 12:15:00	Entregado	245.00	692	64	38
693	2024-03-28 19:00:00	Entregado	515.00	693	62	39
694	2024-04-04 13:30:00	Entregado	435.00	694	60	40
695	2024-04-11 20:00:00	Entregado	310.00	695	58	41
696	2024-04-18 12:30:00	Entregado	580.00	696	56	42
697	2024-04-25 19:15:00	Entregado	450.00	697	54	43
698	2024-05-02 13:45:00	Entregado	275.00	698	52	44
699	2024-05-09 20:30:00	Entregado	625.00	699	50	45
700	2024-05-16 12:00:00	Entregado	375.00	700	48	46
701	2024-05-23 19:45:00	Entregado	255.00	701	46	47
702	2024-05-30 13:15:00	Entregado	505.00	702	44	48
703	2024-06-06 20:00:00	Entregado	430.00	703	42	49
704	2024-06-13 12:30:00	Entregado	300.00	704	40	50
705	2024-06-20 19:00:00	Entregado	655.00	705	38	1
706	2024-06-27 13:45:00	Entregado	380.00	706	36	2
707	2024-07-04 20:15:00	Entregado	255.00	707	34	3
708	2024-07-11 12:45:00	Entregado	520.00	708	32	4
709	2024-07-18 19:30:00	Entregado	440.00	709	30	5
710	2024-07-25 13:00:00	Entregado	315.00	710	28	6
711	2024-08-01 20:45:00	Entregado	585.00	711	26	7
712	2024-08-08 12:15:00	Entregado	455.00	712	24	8
713	2024-08-15 19:00:00	Entregado	280.00	713	22	9
714	2024-08-22 13:30:00	Entregado	640.00	714	20	10
715	2024-08-29 20:00:00	Entregado	365.00	715	18	11
716	2024-09-05 12:30:00	Entregado	245.00	716	16	12
717	2024-09-12 19:15:00	Entregado	500.00	717	14	13
718	2024-09-19 13:45:00	Entregado	425.00	718	12	14
719	2024-09-26 20:30:00	Entregado	295.00	719	10	15
720	2024-10-03 12:45:00	Entregado	660.00	720	8	16
721	2024-10-10 19:30:00	Entregado	385.00	721	6	17
722	2024-10-17 13:00:00	Entregado	260.00	722	4	18
723	2024-10-24 20:15:00	Entregado	515.00	723	2	19
724	2024-10-31 12:30:00	Entregado	440.00	724	1	20
725	2024-11-07 19:00:00	Entregado	310.00	725	3	21
726	2024-11-14 13:45:00	Entregado	575.00	726	5	22
727	2024-11-21 20:30:00	Entregado	450.00	727	7	23
728	2024-11-28 12:45:00	Entregado	275.00	728	9	24
729	2024-12-05 19:30:00	Entregado	635.00	729	11	25
730	2024-12-12 13:00:00	Entregado	370.00	730	13	26
731	2024-01-02 20:15:00	Entregado	250.00	731	15	27
732	2024-01-09 12:30:00	Entregado	510.00	732	17	28
733	2024-01-16 19:00:00	Entregado	430.00	733	19	29
734	2024-01-23 13:45:00	Entregado	300.00	734	21	30
735	2024-01-30 20:30:00	Entregado	655.00	735	23	31
736	2024-02-06 12:00:00	Entregado	380.00	736	25	32
737	2024-02-13 19:45:00	Entregado	255.00	737	27	33
738	2024-02-20 13:15:00	Entregado	520.00	738	29	34
739	2024-02-27 20:00:00	Entregado	440.00	739	31	35
740	2024-03-05 12:30:00	Entregado	310.00	740	33	36
741	2024-03-12 19:00:00	Entregado	585.00	741	35	37
742	2024-03-19 13:45:00	Entregado	455.00	742	37	38
743	2024-03-26 20:30:00	Entregado	275.00	743	39	39
744	2024-04-02 12:45:00	Entregado	640.00	744	41	40
745	2024-04-09 19:30:00	Entregado	365.00	745	43	41
746	2024-04-16 13:00:00	Entregado	245.00	746	45	42
747	2024-04-23 20:15:00	Entregado	500.00	747	47	43
748	2024-04-30 12:30:00	Entregado	420.00	748	49	44
749	2024-05-07 19:00:00	Entregado	295.00	749	51	45
750	2024-05-14 13:45:00	Entregado	660.00	750	53	46
751	2024-05-21 20:30:00	Entregado	385.00	751	55	47
752	2024-05-28 12:45:00	Entregado	260.00	752	57	48
753	2024-06-04 19:30:00	Entregado	515.00	753	59	49
754	2024-06-11 13:00:00	Entregado	435.00	754	61	50
755	2024-06-18 20:15:00	Entregado	305.00	755	63	1
756	2024-06-25 12:30:00	Entregado	570.00	756	65	2
757	2024-07-02 19:00:00	Entregado	450.00	757	67	3
758	2024-07-09 13:45:00	Entregado	270.00	758	69	4
759	2024-07-16 20:30:00	Entregado	625.00	759	71	5
760	2024-07-23 12:00:00	Entregado	375.00	760	73	6
761	2024-07-30 19:45:00	Entregado	250.00	761	75	7
762	2024-08-06 13:15:00	Entregado	510.00	762	77	8
763	2024-08-13 20:00:00	Entregado	430.00	763	79	9
764	2024-08-20 12:30:00	Entregado	300.00	764	80	10
765	2024-08-27 19:00:00	Entregado	655.00	765	78	11
766	2024-09-03 13:45:00	Entregado	380.00	766	76	12
767	2024-09-10 20:15:00	Entregado	255.00	767	74	13
768	2024-09-17 12:45:00	Entregado	520.00	768	72	14
769	2024-09-24 19:30:00	Entregado	440.00	769	70	15
770	2024-10-01 13:00:00	Entregado	310.00	770	68	16
771	2024-10-08 20:45:00	Entregado	585.00	771	66	17
772	2024-10-15 12:15:00	Entregado	460.00	772	64	18
773	2024-10-22 19:00:00	Entregado	275.00	773	62	19
774	2024-10-29 13:30:00	Entregado	635.00	774	60	20
775	2024-11-05 20:00:00	Entregado	365.00	775	58	21
776	2024-11-12 12:30:00	Entregado	245.00	776	56	22
777	2024-11-19 19:15:00	Entregado	505.00	777	54	23
778	2024-11-26 13:45:00	Entregado	430.00	778	52	24
779	2024-12-03 20:30:00	Entregado	300.00	779	50	25
780	2024-12-10 12:45:00	Entregado	660.00	780	48	26
781	2024-12-17 19:30:00	Entregado	395.00	781	46	27
782	2024-12-24 14:30:00	Entregado	740.00	782	44	28
783	2024-12-31 21:00:00	Entregado	690.00	783	42	29
784	2024-01-03 19:00:00	Entregado	335.00	784	40	30
785	2024-01-10 13:30:00	Entregado	470.00	785	38	31
786	2024-01-17 20:00:00	Entregado	265.00	786	36	32
787	2024-01-24 12:15:00	Entregado	540.00	787	34	33
788	2024-01-31 19:30:00	Entregado	390.00	788	32	34
789	2024-02-07 13:00:00	Entregado	250.00	789	30	35
790	2024-02-14 20:45:00	Entregado	720.00	790	28	36
791	2024-02-21 12:30:00	Entregado	430.00	791	26	37
792	2024-02-28 19:00:00	Entregado	290.00	792	24	38
793	2024-03-06 13:45:00	Entregado	655.00	793	22	39
794	2024-03-13 20:15:00	Entregado	370.00	794	20	40
795	2024-03-20 12:45:00	Entregado	245.00	795	18	41
796	2024-03-27 19:30:00	Entregado	510.00	796	16	42
797	2024-04-03 13:00:00	Entregado	435.00	797	14	43
798	2024-04-10 20:30:00	Entregado	310.00	798	12	44
799	2024-04-17 12:00:00	Entregado	575.00	799	10	45
800	2024-04-24 19:15:00	Entregado	450.00	800	8	46
801	2024-05-01 13:30:00	Entregado	280.00	1	6	47
802	2024-05-08 20:00:00	Entregado	625.00	2	4	48
803	2024-05-15 12:15:00	Entregado	375.00	3	2	49
804	2024-05-22 19:30:00	Entregado	255.00	4	1	50
805	2024-05-29 13:45:00	Entregado	500.00	5	3	1
806	2024-06-05 20:15:00	Entregado	425.00	6	5	2
807	2024-06-12 12:30:00	Entregado	300.00	7	7	3
808	2024-06-19 19:00:00	Entregado	660.00	8	9	4
809	2024-06-26 13:45:00	Entregado	380.00	9	11	5
810	2024-07-03 20:30:00	Entregado	255.00	10	13	6
811	2024-07-10 12:45:00	Entregado	515.00	11	15	7
812	2024-07-17 19:30:00	Entregado	440.00	12	17	8
813	2024-07-24 13:00:00	Entregado	310.00	13	19	9
814	2024-07-31 20:15:00	Entregado	580.00	14	21	10
815	2024-08-07 12:30:00	Entregado	455.00	15	23	11
816	2024-08-14 19:00:00	Entregado	275.00	16	25	12
817	2024-08-21 13:45:00	Entregado	635.00	17	27	13
818	2024-08-28 20:30:00	Entregado	365.00	18	29	14
819	2024-09-04 12:00:00	Entregado	245.00	19	31	15
820	2024-09-11 19:15:00	Entregado	500.00	20	33	16
821	2024-09-18 13:45:00	Entregado	425.00	21	35	17
822	2024-09-25 20:30:00	Entregado	295.00	22	37	18
823	2024-10-02 12:45:00	Entregado	660.00	23	39	19
824	2024-10-09 19:30:00	Entregado	385.00	24	41	20
825	2024-10-16 13:00:00	Entregado	260.00	25	43	21
826	2024-10-23 20:15:00	Entregado	515.00	26	45	22
827	2024-10-30 12:30:00	Entregado	440.00	27	47	23
828	2024-11-06 19:00:00	Entregado	310.00	28	49	24
829	2024-11-13 13:30:00	Entregado	575.00	29	51	25
830	2024-11-20 20:00:00	Entregado	450.00	30	53	26
831	2024-11-27 12:45:00	Entregado	275.00	31	55	27
832	2024-12-04 19:30:00	Entregado	635.00	32	57	28
833	2024-12-11 13:00:00	Entregado	370.00	33	59	29
834	2024-01-05 20:15:00	Entregado	250.00	34	61	30
835	2024-01-12 12:30:00	Entregado	510.00	35	63	31
836	2024-01-19 19:00:00	Entregado	430.00	36	65	32
837	2024-01-26 13:45:00	Entregado	300.00	37	67	33
838	2024-02-02 20:30:00	Entregado	655.00	38	69	34
839	2024-02-09 12:00:00	Entregado	380.00	39	71	35
840	2024-02-16 19:45:00	Entregado	255.00	40	73	36
841	2024-02-23 13:15:00	Entregado	520.00	41	75	37
842	2024-03-01 20:00:00	Entregado	440.00	42	77	38
843	2024-03-08 12:30:00	Entregado	310.00	43	79	39
844	2024-03-15 19:00:00	Entregado	585.00	44	80	40
845	2024-03-22 13:45:00	Entregado	455.00	45	78	41
846	2024-03-29 20:30:00	Entregado	275.00	46	76	42
847	2024-04-05 12:45:00	Entregado	640.00	47	74	43
848	2024-04-12 19:30:00	Entregado	365.00	48	72	44
849	2024-04-19 13:00:00	Entregado	245.00	49	70	45
850	2024-04-26 20:15:00	Entregado	500.00	50	68	46
851	2024-05-03 12:30:00	Entregado	420.00	51	66	47
852	2024-05-10 19:00:00	Entregado	295.00	52	64	48
853	2024-05-17 13:45:00	Entregado	660.00	53	62	49
854	2024-05-24 20:30:00	Entregado	385.00	54	60	50
855	2024-05-31 12:00:00	Entregado	260.00	55	58	1
856	2024-06-07 19:45:00	Entregado	515.00	56	56	2
857	2024-06-14 13:15:00	Entregado	435.00	57	54	3
858	2024-06-21 20:00:00	Entregado	305.00	58	52	4
859	2024-06-28 12:30:00	Entregado	660.00	59	50	5
860	2024-07-05 19:00:00	Entregado	385.00	60	48	6
861	2024-07-12 13:45:00	Entregado	260.00	61	46	7
862	2024-07-19 20:15:00	Entregado	515.00	62	44	8
863	2024-07-26 12:45:00	Entregado	440.00	63	42	9
864	2024-08-02 19:30:00	Entregado	310.00	64	40	10
865	2024-08-09 13:00:00	Entregado	590.00	65	38	11
866	2024-08-16 20:45:00	Entregado	460.00	66	36	12
867	2024-08-23 12:15:00	Entregado	275.00	67	34	13
868	2024-08-30 19:00:00	Entregado	635.00	68	32	14
869	2024-09-06 13:30:00	Entregado	365.00	69	30	15
870	2024-09-13 20:00:00	Entregado	245.00	70	28	16
871	2024-09-20 12:30:00	Entregado	505.00	71	26	17
872	2024-09-27 19:15:00	Entregado	430.00	72	24	18
873	2024-10-04 13:45:00	Entregado	300.00	73	22	19
874	2024-10-11 20:30:00	Entregado	665.00	74	20	20
875	2024-10-18 12:00:00	Entregado	390.00	75	18	21
876	2024-10-25 19:45:00	Entregado	260.00	76	16	22
877	2024-11-01 13:15:00	Entregado	520.00	77	14	23
878	2024-11-08 20:00:00	Entregado	440.00	78	12	24
879	2024-11-15 12:30:00	Entregado	315.00	79	10	25
880	2024-11-22 19:00:00	Entregado	580.00	80	8	26
881	2024-11-29 13:45:00	Entregado	455.00	81	6	27
882	2024-12-06 20:30:00	Entregado	280.00	82	4	28
883	2024-12-13 12:45:00	Entregado	640.00	83	2	29
884	2024-12-20 19:30:00	Entregado	375.00	84	1	30
885	2024-12-27 13:00:00	Entregado	490.00	85	3	31
886	2024-01-04 20:30:00	Entregado	340.00	86	5	32
887	2024-01-11 12:15:00	Entregado	475.00	87	7	33
888	2024-01-18 19:00:00	Entregado	265.00	88	9	34
889	2024-01-25 13:30:00	Entregado	545.00	89	11	35
890	2024-02-01 20:00:00	Entregado	390.00	90	13	36
891	2024-02-08 12:15:00	Entregado	255.00	91	15	37
892	2024-02-15 19:30:00	Entregado	610.00	92	17	38
893	2024-02-22 13:00:00	Entregado	430.00	93	19	39
894	2024-02-29 20:45:00	Entregado	295.00	94	21	40
895	2024-03-07 12:30:00	Entregado	655.00	95	23	41
896	2024-03-14 19:00:00	Entregado	370.00	96	25	42
897	2024-03-21 13:45:00	Entregado	250.00	97	27	43
898	2024-03-28 20:15:00	Entregado	515.00	98	29	44
899	2024-04-04 12:45:00	Entregado	435.00	99	31	45
900	2024-04-11 19:30:00	Entregado	310.00	100	33	46
901	2024-04-18 13:00:00	Entregado	580.00	101	35	47
902	2024-04-25 20:45:00	Entregado	450.00	102	37	48
903	2024-05-02 12:15:00	Entregado	280.00	103	39	49
904	2024-05-09 19:00:00	Entregado	625.00	104	41	50
905	2024-05-16 13:30:00	Entregado	380.00	105	43	1
906	2024-05-23 20:00:00	Entregado	255.00	106	45	2
907	2024-05-30 12:30:00	Entregado	505.00	107	47	3
908	2024-06-06 19:15:00	Entregado	430.00	108	49	4
909	2024-06-13 13:45:00	Entregado	305.00	109	51	5
910	2024-06-20 20:30:00	Entregado	655.00	110	53	6
911	2024-06-27 12:45:00	Entregado	380.00	111	55	7
912	2024-07-04 19:30:00	Entregado	255.00	112	57	8
913	2024-07-11 13:00:00	Entregado	520.00	113	59	9
914	2024-07-18 20:15:00	Entregado	440.00	114	61	10
915	2024-07-25 12:30:00	Entregado	315.00	115	63	11
916	2024-08-01 19:00:00	Entregado	585.00	116	65	12
917	2024-08-08 13:45:00	Entregado	455.00	117	67	13
918	2024-08-15 20:30:00	Entregado	280.00	118	69	14
919	2024-08-22 12:00:00	Entregado	640.00	119	71	15
920	2024-08-29 19:15:00	Entregado	365.00	120	73	16
921	2024-09-05 13:45:00	Entregado	245.00	121	75	17
922	2024-09-12 20:30:00	Entregado	500.00	122	77	18
923	2024-09-19 12:45:00	Entregado	425.00	123	79	19
924	2024-09-26 19:30:00	Entregado	295.00	124	80	20
925	2024-10-03 13:00:00	Entregado	660.00	125	78	21
926	2024-10-10 20:15:00	Entregado	385.00	126	76	22
927	2024-10-17 12:30:00	Entregado	260.00	127	74	23
928	2024-10-24 19:00:00	Entregado	515.00	128	72	24
929	2024-10-31 13:45:00	Entregado	440.00	129	70	25
930	2024-11-07 20:30:00	Entregado	310.00	130	68	26
931	2024-11-14 12:45:00	Entregado	575.00	131	66	27
932	2024-11-21 19:30:00	Entregado	450.00	132	64	28
933	2024-11-28 13:00:00	Entregado	275.00	133	62	29
934	2024-12-05 20:15:00	Entregado	635.00	134	60	30
935	2024-12-12 12:30:00	Entregado	370.00	135	58	31
936	2024-01-06 19:00:00	En proceso	350.00	136	56	32
937	2024-02-10 13:30:00	En proceso	480.00	137	54	33
938	2024-03-15 20:00:00	En proceso	270.00	138	52	34
939	2024-04-20 12:15:00	En proceso	555.00	139	50	35
940	2024-05-25 19:30:00	En proceso	395.00	140	48	36
941	2024-06-30 13:45:00	En proceso	255.00	141	46	37
942	2024-07-15 20:15:00	En proceso	620.00	142	44	38
943	2024-08-20 12:45:00	En proceso	435.00	143	42	39
944	2024-09-25 19:30:00	En proceso	300.00	144	40	40
945	2024-10-30 13:00:00	En proceso	665.00	145	38	41
946	2024-11-05 20:45:00	En proceso	385.00	146	36	42
947	2024-11-12 12:15:00	En proceso	260.00	147	34	43
948	2024-11-19 19:00:00	En proceso	520.00	148	32	44
949	2024-11-26 13:30:00	En proceso	445.00	149	30	45
950	2024-12-03 20:00:00	En proceso	315.00	150	28	46
951	2024-12-10 12:30:00	En proceso	590.00	151	26	47
952	2024-12-17 19:15:00	En proceso	460.00	152	24	48
953	2024-12-24 13:45:00	En proceso	285.00	153	22	49
954	2024-12-31 20:00:00	En proceso	640.00	154	20	50
955	2024-01-08 12:15:00	Cancelado	195.00	155	18	1
956	2024-02-12 19:30:00	Cancelado	320.00	156	16	2
957	2024-03-18 13:00:00	Cancelado	245.00	157	14	3
958	2024-04-22 20:45:00	Cancelado	410.00	158	12	4
959	2024-05-27 12:30:00	Cancelado	185.00	159	10	5
960	2024-06-15 19:00:00	Cancelado	360.00	160	8	6
961	2024-07-20 13:30:00	Cancelado	275.00	161	6	7
962	2024-08-25 20:15:00	Cancelado	430.00	162	4	8
963	2024-09-10 12:45:00	Cancelado	215.00	163	2	9
964	2024-10-05 19:30:00	Cancelado	385.00	164	1	10
965	2024-11-11 13:00:00	Cancelado	260.00	165	3	11
966	2024-12-01 20:30:00	Cancelado	450.00	166	5	12
967	2024-01-15 12:00:00	Cancelado	190.00	167	7	13
968	2024-02-20 19:45:00	Cancelado	340.00	168	9	14
969	2024-03-25 13:15:00	Cancelado	225.00	169	11	15
970	2024-04-30 20:00:00	Cancelado	395.00	170	13	16
971	2024-05-10 12:30:00	Cancelado	180.00	171	15	17
972	2024-06-20 19:00:00	Cancelado	365.00	172	17	18
973	2024-07-25 13:45:00	Cancelado	280.00	173	19	19
974	2024-08-15 20:30:00	Cancelado	415.00	174	21	20
975	2024-09-20 12:45:00	Cancelado	205.00	175	23	21
976	2024-10-15 19:30:00	Cancelado	370.00	176	25	22
977	2024-11-10 13:00:00	Cancelado	255.00	177	27	23
978	2024-12-15 20:15:00	Cancelado	440.00	178	29	24
979	2024-01-20 12:30:00	Cancelado	175.00	179	31	25
980	2024-02-25 19:00:00	Cancelado	330.00	180	33	26
981	2024-03-10 13:30:00	Cancelado	235.00	181	35	27
982	2024-04-05 20:45:00	Cancelado	400.00	182	37	28
983	2024-05-15 12:15:00	Cancelado	185.00	183	39	29
984	2024-06-10 19:30:00	Cancelado	355.00	184	41	30
985	2024-07-30 13:00:00	Cancelado	270.00	185	43	31
986	2024-08-05 20:15:00	Cancelado	425.00	186	45	32
987	2024-09-15 12:30:00	Cancelado	200.00	187	47	33
988	2024-10-20 19:00:00	Cancelado	360.00	188	49	34
989	2024-11-25 13:45:00	Cancelado	250.00	189	51	35
990	2024-12-20 20:30:00	Cancelado	430.00	190	53	36
991	2024-01-08 12:00:00	Entregado	365.00	191	55	37
992	2024-01-22 19:30:00	Entregado	495.00	192	57	38
993	2024-02-05 13:15:00	Entregado	270.00	193	59	39
994	2024-02-19 20:45:00	Entregado	560.00	194	61	40
995	2024-03-04 12:30:00	Entregado	395.00	195	63	41
996	2024-03-18 19:00:00	Entregado	255.00	196	65	42
997	2024-04-01 13:45:00	Entregado	620.00	197	67	43
998	2024-04-15 20:15:00	Entregado	440.00	198	69	44
999	2024-04-29 12:45:00	Entregado	305.00	199	71	45
1000	2024-05-13 19:30:00	Entregado	665.00	200	73	46
1001	2024-05-27 13:00:00	Entregado	385.00	201	75	47
1002	2024-06-10 20:15:00	Entregado	260.00	202	77	48
1003	2024-06-24 12:30:00	Entregado	525.00	203	79	49
1004	2024-07-08 19:00:00	Entregado	445.00	204	80	50
1005	2024-07-22 13:45:00	Entregado	315.00	205	78	1
1006	2024-08-05 20:30:00	Entregado	590.00	206	76	2
1007	2024-08-19 12:00:00	Entregado	460.00	207	74	3
1008	2024-09-02 19:45:00	Entregado	280.00	208	72	4
1009	2024-09-16 13:15:00	Entregado	640.00	209	70	5
1010	2024-09-30 20:00:00	Entregado	375.00	210	68	6
1011	2024-10-14 12:30:00	Entregado	255.00	211	66	7
1012	2024-10-28 19:00:00	Entregado	510.00	212	64	8
1013	2024-11-11 13:30:00	Entregado	435.00	213	62	9
1014	2024-11-25 20:00:00	Entregado	305.00	214	60	10
1015	2024-12-09 12:15:00	Entregado	660.00	215	58	11
1016	2024-12-23 19:30:00	Entregado	780.00	216	56	12
1017	2024-01-11 13:00:00	Entregado	355.00	217	54	13
1018	2024-01-25 20:45:00	Entregado	490.00	218	52	14
1019	2024-02-08 12:15:00	Entregado	275.00	219	50	15
1020	2024-02-22 19:30:00	Entregado	565.00	220	48	16
1021	2024-03-07 13:00:00	Entregado	400.00	221	46	17
1022	2024-03-21 20:15:00	Entregado	260.00	222	44	18
1023	2024-04-04 12:30:00	Entregado	620.00	223	42	19
1024	2024-04-18 19:00:00	Entregado	445.00	224	40	20
1025	2024-05-02 13:45:00	Entregado	310.00	225	38	21
1026	2024-05-16 20:30:00	Entregado	580.00	226	36	22
1027	2024-05-30 12:45:00	Entregado	455.00	227	34	23
1028	2024-06-13 19:30:00	Entregado	280.00	228	32	24
1029	2024-06-27 13:00:00	Entregado	645.00	229	30	25
1030	2024-07-11 20:15:00	Entregado	370.00	230	28	26
1031	2024-07-25 12:30:00	Entregado	250.00	231	26	27
1032	2024-08-08 19:00:00	Entregado	510.00	232	24	28
1033	2024-08-22 13:45:00	Entregado	435.00	233	22	29
1034	2024-09-05 20:30:00	Entregado	305.00	234	20	30
1035	2024-09-19 12:45:00	Entregado	660.00	235	18	31
1036	2024-10-03 19:30:00	Entregado	385.00	236	16	32
1037	2024-10-17 13:00:00	Entregado	255.00	237	14	33
1038	2024-10-31 20:15:00	Entregado	520.00	238	12	34
1039	2024-11-14 12:30:00	Entregado	445.00	239	10	35
1040	2024-11-28 19:00:00	Entregado	315.00	240	8	36
1041	2024-12-12 13:45:00	Entregado	590.00	241	6	37
1042	2024-12-26 20:30:00	Entregado	460.00	242	4	38
1043	2024-01-14 12:00:00	Entregado	280.00	243	2	39
1044	2024-01-28 19:45:00	Entregado	640.00	244	1	40
1045	2024-02-11 13:15:00	Entregado	375.00	245	3	41
1046	2024-02-25 20:00:00	Entregado	255.00	246	5	42
1047	2024-03-10 12:30:00	Entregado	510.00	247	7	43
1048	2024-03-24 19:00:00	Entregado	435.00	248	9	44
1049	2024-04-07 13:45:00	Entregado	305.00	249	11	45
1050	2024-04-21 20:30:00	Entregado	660.00	250	13	46
1051	2024-05-05 12:45:00	Entregado	385.00	251	15	47
1052	2024-05-19 19:30:00	Entregado	260.00	252	17	48
1053	2024-06-02 13:00:00	Entregado	515.00	253	19	49
1054	2024-06-16 20:15:00	Entregado	440.00	254	21	50
1055	2024-06-30 12:30:00	Entregado	310.00	255	23	1
1056	2024-07-14 19:00:00	Entregado	580.00	256	25	2
1057	2024-07-28 13:45:00	Entregado	455.00	257	27	3
1058	2024-08-11 20:30:00	Entregado	280.00	258	29	4
1059	2024-08-25 12:00:00	Entregado	640.00	259	31	5
1060	2024-09-08 19:45:00	Entregado	375.00	260	33	6
1061	2024-09-22 13:15:00	Entregado	255.00	261	35	7
1062	2024-10-06 20:00:00	Entregado	510.00	262	37	8
1063	2024-10-20 12:30:00	Entregado	435.00	263	39	9
1064	2024-11-03 19:00:00	Entregado	305.00	264	41	10
1065	2024-11-17 13:45:00	Entregado	660.00	265	43	11
1066	2024-12-01 20:30:00	Entregado	385.00	266	45	12
1067	2024-12-15 12:45:00	Entregado	260.00	267	47	13
1068	2024-12-29 19:30:00	Entregado	520.00	268	49	14
1069	2024-01-17 13:00:00	Entregado	440.00	269	51	15
1070	2024-02-14 20:15:00	Entregado	680.00	270	53	16
1071	2024-03-13 12:30:00	Entregado	355.00	271	55	17
1072	2024-04-10 19:00:00	Entregado	245.00	272	57	18
1073	2024-05-08 13:30:00	Entregado	505.00	273	59	19
1074	2024-06-05 20:00:00	Entregado	430.00	274	61	20
1075	2024-07-03 12:15:00	Entregado	300.00	275	63	21
1076	2024-08-01 19:30:00	Entregado	665.00	276	65	22
1077	2024-09-01 13:00:00	Entregado	390.00	277	67	23
1078	2024-10-01 20:45:00	Entregado	260.00	278	69	24
1079	2024-11-01 12:15:00	Entregado	520.00	279	71	25
1080	2024-12-01 19:00:00	Entregado	445.00	280	73	26
1081	2024-01-20 13:30:00	Entregado	315.00	281	75	27
1082	2024-02-17 20:00:00	Entregado	580.00	282	77	28
1083	2024-03-16 12:30:00	Entregado	455.00	283	79	29
1084	2024-04-13 19:15:00	Entregado	280.00	284	80	30
1085	2024-05-11 13:45:00	Entregado	640.00	285	78	31
1086	2024-06-08 20:30:00	Entregado	375.00	286	76	32
1087	2024-07-06 12:45:00	Entregado	255.00	287	74	33
1088	2024-08-03 19:30:00	Entregado	510.00	288	72	34
1089	2024-09-01 13:00:00	Entregado	435.00	289	70	35
1090	2024-10-01 20:15:00	Entregado	310.00	290	68	36
1091	2024-11-01 12:30:00	Entregado	580.00	291	66	37
1092	2024-12-01 19:00:00	Entregado	455.00	292	64	38
1093	2024-01-23 13:45:00	Entregado	275.00	293	62	39
1094	2024-02-20 20:30:00	Entregado	635.00	294	60	40
1095	2024-03-19 12:00:00	Entregado	365.00	295	58	41
1096	2024-04-16 19:45:00	Entregado	245.00	296	56	42
1097	2024-05-14 13:15:00	Entregado	500.00	297	54	43
1098	2024-06-11 20:00:00	Entregado	425.00	298	52	44
1099	2024-07-09 12:30:00	Entregado	295.00	299	50	45
1100	2024-08-06 19:00:00	Entregado	660.00	300	48	46
1101	2024-09-03 13:45:00	Entregado	385.00	301	46	47
1102	2024-10-01 20:30:00	Entregado	260.00	302	44	48
1103	2024-10-29 12:45:00	Entregado	515.00	303	42	49
1104	2024-11-26 19:30:00	Entregado	440.00	304	40	50
1105	2024-12-24 13:00:00	Entregado	760.00	305	38	1
1106	2024-01-27 20:15:00	Entregado	345.00	306	36	2
1107	2024-02-24 12:30:00	Entregado	480.00	307	34	3
1108	2024-03-23 19:00:00	Entregado	265.00	308	32	4
1109	2024-04-20 13:45:00	Entregado	545.00	309	30	5
1110	2024-05-18 20:30:00	Entregado	390.00	310	28	6
1111	2024-06-15 12:45:00	Entregado	255.00	311	26	7
1112	2024-07-13 19:30:00	Entregado	610.00	312	24	8
1113	2024-08-10 13:00:00	Entregado	430.00	313	22	9
1114	2024-09-07 20:15:00	Entregado	295.00	314	20	10
1115	2024-10-05 12:30:00	Entregado	655.00	315	18	11
1116	2024-11-02 19:00:00	Entregado	370.00	316	16	12
1117	2024-11-30 13:45:00	Entregado	250.00	317	14	13
1118	2024-12-28 20:30:00	Entregado	515.00	318	12	14
1119	2024-01-30 12:45:00	Entregado	435.00	319	10	15
1120	2024-02-27 19:30:00	Entregado	310.00	320	8	16
1121	2024-03-26 13:00:00	Entregado	580.00	321	6	17
1122	2024-04-23 20:45:00	Entregado	455.00	322	4	18
1123	2024-05-21 12:15:00	Entregado	280.00	323	2	19
1124	2024-06-18 19:00:00	Entregado	640.00	324	1	20
1125	2024-07-16 13:30:00	Entregado	365.00	325	3	21
1126	2024-08-13 20:00:00	Entregado	245.00	326	5	22
1127	2024-09-10 12:30:00	Entregado	500.00	327	7	23
1128	2024-10-08 19:15:00	Entregado	425.00	328	9	24
1129	2024-11-05 13:45:00	Entregado	300.00	329	11	25
1130	2024-12-03 20:30:00	Entregado	660.00	330	13	26
1131	2024-01-03 12:45:00	Entregado	370.00	331	15	27
1132	2024-02-03 19:30:00	Entregado	250.00	332	17	28
1133	2024-03-03 13:00:00	Entregado	510.00	333	19	29
1134	2024-04-03 20:15:00	Entregado	435.00	334	21	30
1135	2024-05-03 12:30:00	Entregado	305.00	335	23	31
1136	2024-06-03 19:00:00	Entregado	660.00	336	25	32
1137	2024-07-03 13:45:00	Entregado	385.00	337	27	33
1138	2024-08-03 20:30:00	Entregado	260.00	338	29	34
1139	2024-09-03 12:45:00	Entregado	515.00	339	31	35
1140	2024-10-03 19:30:00	Entregado	440.00	340	33	36
1141	2024-11-03 13:00:00	Entregado	315.00	341	35	37
1142	2024-12-03 20:15:00	Entregado	585.00	342	37	38
1143	2024-01-13 12:30:00	Entregado	460.00	343	39	39
1144	2024-02-13 19:00:00	Entregado	280.00	344	41	40
1145	2024-03-13 13:45:00	Entregado	640.00	345	43	41
1146	2024-04-13 20:30:00	Entregado	370.00	346	45	42
1147	2024-05-13 12:00:00	Entregado	250.00	347	47	43
1148	2024-06-13 19:45:00	Entregado	510.00	348	49	44
1149	2024-07-13 13:15:00	Entregado	435.00	349	51	45
1150	2024-08-13 20:00:00	Entregado	305.00	350	53	46
1151	2024-09-13 12:30:00	Entregado	660.00	351	55	47
1152	2024-10-13 19:00:00	Entregado	385.00	352	57	48
1153	2024-11-13 13:45:00	Entregado	260.00	353	59	49
1154	2024-12-13 20:30:00	Entregado	525.00	354	61	50
1155	2024-01-23 12:45:00	Entregado	445.00	355	63	1
1156	2024-02-23 19:30:00	Entregado	315.00	356	65	2
1157	2024-03-23 13:00:00	Entregado	590.00	357	67	3
1158	2024-04-23 20:15:00	Entregado	465.00	358	69	4
1159	2024-05-23 12:30:00	Entregado	280.00	359	71	5
1160	2024-06-23 19:00:00	Entregado	640.00	360	73	6
1161	2024-07-23 13:45:00	Entregado	375.00	361	75	7
1162	2024-08-23 20:30:00	Entregado	255.00	362	77	8
1163	2024-09-23 12:45:00	Entregado	510.00	363	79	9
1164	2024-10-23 19:30:00	Entregado	435.00	364	80	10
1165	2024-11-23 13:00:00	Entregado	305.00	365	78	11
1166	2024-12-23 20:15:00	Entregado	760.00	366	76	12
1167	2024-01-16 12:30:00	Entregado	350.00	367	74	13
1168	2024-02-16 19:00:00	Entregado	485.00	368	72	14
1169	2024-03-16 13:45:00	Entregado	270.00	369	70	15
1170	2024-04-16 20:30:00	Entregado	555.00	370	68	16
1171	2024-05-16 12:00:00	Entregado	395.00	371	66	17
1172	2024-06-16 19:45:00	Entregado	255.00	372	64	18
1173	2024-07-16 13:15:00	Entregado	620.00	373	62	19
1174	2024-08-16 20:00:00	Entregado	440.00	374	60	20
1175	2024-09-16 12:30:00	Entregado	310.00	375	58	21
1176	2024-10-16 19:00:00	Entregado	585.00	376	56	22
1177	2024-11-16 13:45:00	Entregado	460.00	377	54	23
1178	2024-12-16 20:30:00	Entregado	280.00	378	52	24
1179	2024-01-26 12:45:00	Entregado	645.00	379	50	25
1180	2024-02-26 19:30:00	Entregado	370.00	380	48	26
1181	2024-03-26 13:00:00	Entregado	250.00	381	46	27
1182	2024-04-26 20:15:00	Entregado	510.00	382	44	28
1183	2024-05-26 12:30:00	Entregado	435.00	383	42	29
1184	2024-06-26 19:00:00	Entregado	300.00	384	40	30
1185	2024-07-26 13:45:00	Entregado	660.00	385	38	31
1186	2024-08-26 20:30:00	Entregado	385.00	386	36	32
1187	2024-09-26 12:45:00	Entregado	255.00	387	34	33
1188	2024-10-26 19:30:00	Entregado	520.00	388	32	34
1189	2024-11-26 13:00:00	Entregado	445.00	389	30	35
1190	2024-12-26 20:15:00	Entregado	590.00	390	28	36
1191	2024-01-06 12:30:00	Entregado	350.00	391	26	37
1192	2024-02-06 19:00:00	Entregado	480.00	392	24	38
1193	2024-03-06 13:45:00	Entregado	265.00	393	22	39
1194	2024-04-06 20:30:00	Entregado	545.00	394	20	40
1195	2024-05-06 12:00:00	Entregado	395.00	395	18	41
1196	2024-06-06 19:45:00	Entregado	250.00	396	16	42
1197	2024-07-06 13:15:00	Entregado	615.00	397	14	43
1198	2024-08-06 20:00:00	Entregado	435.00	398	12	44
1199	2024-09-06 12:30:00	Entregado	300.00	399	10	45
1200	2024-10-06 19:00:00	Entregado	655.00	400	8	46
\.


--
-- TOC entry 3591 (class 0 OID 16397)
-- Dependencies: 218
-- Data for Name: platillo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.platillo (id_platillo, nombre, precio, id_categoria, descripcion) FROM stdin;
1	Guacamole con totopos	89.00	1	Aguacate fresco con jitomate, cebolla, chile y cilantro
2	Queso fundido con chorizo	105.00	1	Queso Chihuahua derretido con chorizo artesanal
3	Carpaccio de res	135.00	1	Finas láminas de res con alcaparras, parmesano y arúgula
4	Tostadas de atún	120.00	1	Tostadas crujientes con atún fresco, aguacate y salsa ponzu
5	Alitas BBQ	115.00	1	Alitas marinadas en salsa BBQ ahumada, horneadas
6	Tacos de canasta (3 piezas)	75.00	1	Surtidos de frijol, chicharrón y papa con salsa verde
7	Sopa de lima	95.00	2	Caldo de pollo con lima, tortilla frita y aguacate
8	Caldo tlalpeño	98.00	2	Caldo de pollo con chipotle, garbanzo, epazote y aguacate
9	Sopa de tortilla	85.00	2	Caldo de jitomate con chile pasilla, crema, queso y tortilla
10	Pozole rojo	120.00	2	Maíz cacahuazintle con carne de cerdo en caldo de chile guajillo
11	Crema de elote	88.00	2	Crema suave de elote con rajas poblanas y epazote
12	Menudo rojo	110.00	2	Caldo de panza de res con chile ancho, orégano y cebolla
13	Filete al chipotle	245.00	3	Filete de res en salsa de chipotle con papas al horno
14	Pollo en mole negro	185.00	3	Muslo de pollo bañado en mole negro oaxaqueño
15	Arrachera a la parrilla	265.00	3	Arrachera marinada en cerveza con guarnición y tortillas
16	Costillas de cerdo glaseadas	230.00	3	Costillas con glaseado de miel y mostaza, horneadas 4 horas
17	Pechuga rellena de espinacas	195.00	3	Pechuga de pollo rellena de espinacas y queso manchego
18	Mixiote de borrego	210.00	3	Borrego en salsa de chile con especias, cocido en pencas de maguey
19	Chile en nogada	225.00	3	Chile poblano relleno de picadillo, cubierto con nogada y granada
20	Camarones al mojo de ajo	220.00	3	Camarones salteados en mantequilla con ajo y hierbas
21	Ceviche de camarón	175.00	4	Camarón fresco macerado en limón con jitomate y cilantro
22	Filete de tilapia veracruzana	195.00	4	Tilapia en salsa de jitomate, aceitunas y alcaparras
23	Coctel de mariscos	165.00	4	Mezcla de camarón, pulpo y surimi en caldo frío picante
24	Pulpo a las brasas	235.00	4	Pulpo asado con paprika, aceite de olivo y limón
25	Tacos de marlín ahumado	160.00	4	Tortillas con marlín ahumado, aguacate y pico de gallo
26	Calamares en su tinta	205.00	4	Calamares salteados en salsa de su tinta con arroz blanco
27	Espagueti a la bolognesa	155.00	5	Espagueti con carne molida en salsa de jitomate y albahaca
28	Fettuccine Alfredo	145.00	5	Pasta en salsa cremosa de mantequilla y parmesano
29	Penne arrabbiata	140.00	5	Penne en salsa de jitomate picante con ajo y peperoncino
30	Lasaña de res	165.00	5	Capas de pasta, carne molida, bechamel y queso gratinado
31	Pasta al pesto	148.00	5	Linguine con pesto de albahaca, piñones y parmesano
32	Ravioles de ricotta	170.00	5	Ravioles rellenos de ricotta y espinacas en salsa de mantequilla
33	Ensalada César	110.00	6	Lechuga romana, aderezo César, crutones y parmesano
34	Ensalada Caprese	105.00	6	Jitomate, mozzarella fresca, albahaca y aceite de oliva
35	Ensalada del chef	120.00	6	Mixta con pollo a la plancha, aguacate, pepino y vinagreta
36	Ensalada de espinacas	115.00	6	Espinaca baby con fresas, nueces, queso de cabra y miel mostaza
37	Pastel de tres leches	85.00	7	Bizcocho esponjoso bañado en tres leches con merengue
38	Churros con chocolate	75.00	7	Churros crujientes con azúcar canela y chocolate caliente
39	Flan napolitano	70.00	7	Flan suave con caramelo de cajeta
40	Brownie con helado	90.00	7	Brownie de chocolate caliente con helado de vainilla
41	Gelatina de mosaic	60.00	7	Gelatina de colores con leche condensada
42	Pay de queso con frutos rojos	95.00	7	Pay horneado de queso crema con coulis de frutos rojos
43	Agua fresca del día	35.00	8	Agua fresca natural: jamaica, horchata, tamarindo o limón
44	Limonada natural	45.00	8	Limonada con agua mineral o natural
45	Café americano	40.00	8	Café de grano 100% arábica
46	Refresco 600ml	38.00	8	Coca-Cola, Sprite, Fanta o Sidral
47	Jugo natural	55.00	8	Naranja, zanahoria, betabel o combinado
48	Michelada	85.00	8	Cerveza con limón, sal, salsa y chamoy
49	Quesadilla de flor de calabaza	95.00	9	Tortilla de maíz con flor de calabaza y queso Oaxaca
50	Sope de tinga	90.00	9	Sope grueso con tinga de pollo, crema y queso
51	Enfrijoladas	98.00	9	Tortillas bañadas en crema de frijol negro con queso y cebolla
52	Enchiladas verdes	105.00	9	Tortillas rellenas de pollo en salsa verde con crema y queso
53	Huarache de nopales	88.00	9	Masa ovalada con frijoles, nopales, salsa roja y queso
54	Molletes con pico de gallo	80.00	9	Bolillo con frijoles y queso gratinado con pico de gallo
55	Chilaquiles rojos	95.00	10	Totopos en salsa roja con crema, queso y cebolla morada
56	Huevos rancheros	90.00	10	Huevos estrellados en tortilla con salsa ranchera
57	Omelet de jamón y queso	95.00	10	Omelet esponjoso con jamón serrano y queso manchego
58	Hotcakes con fruta	88.00	10	Tres hotcakes con miel de abeja y fruta de temporada
59	Machaca con huevo	105.00	10	Carne seca deshebrada salteada con huevo, jitomate y chile
60	Enfrijoladas de desayuno	92.00	10	Tortillas en crema de frijol con huevo y queso fresco
\.


--
-- TOC entry 3605 (class 0 OID 16483)
-- Dependencies: 232
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedor (id_proveedor, nombre, telefono, email, direccion, tipo) FROM stdin;
1	Distribuidora La Cosecha S.A.	4771100001	ventas@lacosecha.mx	Blvd. Aeropuerto 100, León	Frutas y Verduras
2	Carnes Selectas del Bajío	4771100002	contacto@carnesbajio.mx	Av. Industrial 230, León	Carnicería
3	Lácteos San Marcos	4771100003	pedidos@lacteossanmarcos.mx	Calle Reforma 55, Silao	Lácteos
4	Mariscos El Puerto	4771100004	ventas@mariscoelpuerto.mx	Av. Costanera 12, Irapuato	Mariscos
5	Molino Santa Fe	4771100005	info@milinosantafe.mx	Carretera a Salamanca Km 5	Harinas y Granos
6	Aceites y Condimentos Ramos	4771100006	ramos@condimentos.mx	Calle Hidalgo 88, León	Condimentos
7	Bebidas Frescas del Centro	4771100007	ventas@bebidasfrescas.mx	Blvd. Torres Landa 400	Bebidas
8	Huevos Rancho Nuevo	4771100008	rancho@huevos.mx	Carretera Lagos Km 12	Avícola
9	Panadería y Tortillería Lupita	4771100009	lupita@panylortilla.mx	Calle Morelos 320, León	Panadería
10	Embutidos Don Memo	4771100010	donmemo@embutidos.mx	Av. Américas 88, León	Embutidos
11	Verduras Orgánicas El Huerto	4771100011	huerto@organicos.mx	Rancho San José Km 3	Frutas y Verduras
12	Especias del Mundo	4771100012	info@especiasdelmundo.mx	Blvd. Mariano Escobedo 55	Condimentos
13	Congelados del Bajío	4771100013	ventas@congeladosbajio.mx	Av. Industrial Norte 780	Congelados
14	Café y Cacao Premium	4771100014	premium@cafecacao.mx	Calle Puebla 10, León	Bebidas
15	Azúcar y Endulzantes García	4771100015	garcia@azucar.mx	Carr. Silao-León Km 2	Abarrotes
16	Distribuidora Gourmet León	4771100016	gourmet@distribucion.mx	Blvd. Campestre 901	Gourmet
17	Aceitunas y Encurtidos Roma	4771100017	roma@aceitunas.mx	Calle Italia 45, León	Importados
18	Maíz y Derivados del Campo	4771100018	campo@maizderivados.mx	Ejido San Antonio Km 8	Granos
19	Quesos Artesanales del Bajío	4771100019	quesos@artesanales.mx	Rancho El Nogal, Silao	Lácteos
20	Pescados Frescos Martínez	4771100020	martinez@pescados.mx	Central de Abastos Local 15	Mariscos
21	Salsas y Moles Doña Rosa	4771100021	donarosa@salsas.mx	Mercado Hidalgo Local 8	Condimentos
22	Productos del Mar El Golfo	4771100022	elgolfo@mar.mx	Av. Constitución 300	Mariscos
23	Importadora Oliva S.A.	4771100023	oliva@importadora.mx	Zona Industrial Franja 4	Importados
24	Granja Avícola Hermanos Cruz	4771100024	cruz@granja.mx	Carretera Purísima Km 6	Avícola
25	Semillas y Nueces del Norte	4771100025	norte@semillas.mx	Blvd. Juan Alonso Torres 190	Abarrotes
\.


--
-- TOC entry 3608 (class 0 OID 16498)
-- Dependencies: 235
-- Data for Name: proveedoringrediente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proveedoringrediente (id_proveedor, id_ingrediente, precio_compra) FROM stdin;
1	1	32.50
1	2	18.00
1	3	12.00
1	4	25.00
1	5	15.00
1	6	10.00
1	7	28.00
1	49	14.00
1	50	22.00
1	51	18.00
1	52	35.00
1	53	40.00
1	54	45.00
1	47	16.00
1	48	8.50
2	20	85.00
2	21	90.00
2	22	78.00
2	23	95.00
2	24	180.00
2	25	160.00
2	26	120.00
2	27	95.00
2	28	145.00
2	9	38.00
2	8	12.00
2	57	22.00
2	58	18.00
2	56	20.00
2	55	30.00
3	13	95.00
3	14	110.00
3	15	180.00
3	16	130.00
3	17	28.00
3	18	14.00
3	19	3.50
3	12	85.00
3	63	42.00
3	64	38.00
4	29	195.00
4	30	110.00
4	31	220.00
4	32	165.00
4	33	185.00
4	6	9.50
4	8	11.00
4	10	55.00
4	67	48.00
4	68	35.00
5	34	32.00
5	35	34.00
5	36	32.00
5	37	36.00
5	38	33.00
5	39	38.00
5	40	22.00
5	41	18.00
5	45	24.00
5	46	28.00
6	8	10.00
6	9	35.00
6	57	20.00
6	58	16.00
6	59	18.00
6	60	22.00
6	61	90.00
6	62	85.00
6	63	40.00
6	56	28.00
7	77	18.00
7	78	22.00
7	79	45.00
7	80	38.00
7	66	55.00
7	18	13.00
7	64	32.00
7	65	60.00
7	74	95.00
7	75	48.00
8	19	3.20
8	20	82.00
8	22	76.00
8	21	88.00
8	18	13.50
8	17	27.00
8	12	82.00
8	3	11.50
8	8	10.50
8	9	36.00
9	40	20.00
9	42	2.50
9	43	3.00
9	44	4.50
9	41	17.00
9	45	23.00
9	18	12.00
9	19	3.00
9	72	55.00
9	73	48.00
10	27	92.00
10	28	140.00
10	23	93.00
10	26	118.00
10	9	34.00
10	8	11.50
10	57	21.00
10	56	29.00
10	55	28.00
10	58	17.00
11	1	30.00
11	2	17.00
11	3	11.50
11	4	24.00
11	5	14.00
11	50	21.00
11	51	17.00
11	52	34.00
11	53	38.00
11	49	13.50
12	57	19.00
12	58	15.00
12	59	17.00
12	60	21.00
12	56	27.00
12	8	9.50
12	9	33.00
12	55	26.00
12	54	43.00
12	7	27.00
13	29	190.00
13	30	108.00
13	31	215.00
13	32	160.00
13	33	180.00
13	20	80.00
13	21	86.00
13	22	74.00
13	23	91.00
13	26	116.00
14	79	42.00
14	80	35.00
14	77	16.00
14	78	20.00
14	66	52.00
14	18	12.50
14	73	45.00
14	72	52.00
14	75	45.00
14	74	92.00
15	72	50.00
15	73	44.00
15	8	9.00
15	45	22.00
15	46	27.00
15	47	15.00
15	48	8.00
15	41	16.50
15	40	21.00
15	74	88.00
16	10	52.00
16	11	28.00
16	12	80.00
16	15	175.00
16	16	125.00
16	69	95.00
16	70	55.00
16	71	145.00
16	68	33.00
16	67	46.00
17	69	92.00
17	70	52.00
17	68	32.00
17	10	50.00
17	67	44.00
17	15	172.00
17	16	122.00
17	64	30.00
17	65	58.00
17	71	140.00
18	41	17.50
18	45	23.50
18	46	28.50
18	42	2.30
18	40	22.00
18	47	15.50
18	48	8.20
18	34	31.00
18	35	33.00
18	36	31.50
19	13	92.00
19	14	108.00
19	15	176.00
19	16	128.00
19	17	26.50
19	12	83.00
19	18	13.20
19	63	41.00
19	64	37.00
19	65	59.00
20	29	192.00
20	30	109.00
20	31	218.00
20	32	162.00
20	33	182.00
20	6	9.80
20	8	11.20
20	10	53.00
20	67	47.00
20	68	34.00
21	61	88.00
21	62	82.00
21	60	20.00
21	59	16.50
21	7	26.00
21	2	17.50
21	3	12.00
21	4	24.50
21	5	14.50
21	8	10.00
22	29	188.00
22	30	107.00
22	31	212.00
22	32	158.00
22	33	178.00
22	6	9.20
22	10	51.00
22	67	45.00
22	68	33.00
22	80	36.00
23	10	49.00
23	11	27.00
23	69	90.00
23	70	50.00
23	71	138.00
23	68	31.00
23	67	43.00
23	15	170.00
23	16	120.00
23	64	29.00
24	19	3.10
24	20	81.00
24	21	87.00
24	22	75.00
24	18	12.80
24	17	26.00
24	12	81.00
24	3	11.00
24	8	10.20
24	9	35.50
25	69	91.00
25	70	51.00
25	71	139.00
25	64	30.50
25	65	57.00
25	68	32.50
25	67	44.50
25	72	51.00
25	73	43.00
25	74	90.00
1	55	29.00
2	10	54.00
3	11	27.50
4	7	27.50
5	8	9.80
6	7	26.50
7	8	10.20
8	7	27.00
9	7	26.00
10	7	27.00
11	6	9.80
13	7	27.20
14	7	26.80
15	6	9.20
16	7	26.00
17	6	9.00
18	7	26.50
19	7	27.50
20	7	27.80
21	6	9.60
22	7	26.20
23	8	10.80
24	6	9.40
25	8	10.50
1	8	10.80
2	6	9.70
3	6	9.30
4	9	35.00
5	9	34.00
7	9	33.50
8	6	9.80
9	6	9.60
10	6	9.50
11	7	27.00
13	6	9.10
14	6	9.30
15	7	26.40
\.


--
-- TOC entry 3612 (class 0 OID 16531)
-- Dependencies: 239
-- Data for Name: receta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.receta (id_receta, id_platillo, id_ingrediente, cantidad, unidad_medida) FROM stdin;
1	1	1	2.00	kg
2	1	2	0.30	kg
3	1	3	0.15	kg
4	1	4	0.05	kg
5	1	5	0.10	kg
6	1	6	0.20	kg
7	1	8	0.02	kg
8	2	13	0.50	kg
9	2	27	0.30	kg
10	2	3	0.10	kg
11	2	7	0.05	kg
12	3	24	0.25	kg
13	3	67	0.03	kg
14	3	15	0.08	kg
15	3	50	0.05	kg
16	3	10	0.02	litro
17	4	29	0.30	kg
18	4	43	3.00	pieza
19	4	1	0.20	kg
20	4	6	0.10	kg
21	5	22	0.50	kg
22	5	65	0.10	litro
23	5	7	0.05	kg
24	5	9	0.02	kg
25	6	42	3.00	pieza
26	6	46	0.20	kg
27	6	49	0.30	kg
28	6	59	0.05	kg
29	6	2	0.20	kg
30	6	5	0.05	kg
31	6	3	0.10	kg
32	6	8	0.02	kg
33	1	43	6.00	pieza
34	2	8	0.02	kg
35	4	8	0.02	kg
36	7	20	0.40	kg
37	7	6	0.20	kg
38	7	42	2.00	pieza
39	7	1	0.15	kg
40	7	3	0.10	kg
41	7	8	0.02	kg
42	8	20	0.40	kg
43	8	60	0.05	kg
44	8	47	0.20	kg
45	8	54	0.05	kg
46	8	1	0.15	kg
47	9	2	0.40	kg
48	9	62	0.05	kg
49	9	17	0.10	litro
50	9	13	0.10	kg
51	9	42	3.00	pieza
52	10	41	0.50	kg
53	10	26	0.50	kg
54	10	59	0.08	kg
55	10	60	0.05	kg
56	10	3	0.20	kg
57	10	56	0.03	kg
58	11	48	3.00	pieza
59	11	18	0.20	litro
60	11	12	0.05	kg
61	11	61	0.05	kg
62	11	54	0.03	kg
63	12	23	0.50	kg
64	12	59	0.08	kg
65	12	3	0.20	kg
66	12	56	0.03	kg
67	12	7	0.05	kg
68	12	8	0.03	kg
69	11	8	0.02	kg
70	9	8	0.02	kg
71	13	24	0.30	kg
72	13	60	0.08	kg
73	13	49	0.30	kg
74	13	7	0.05	kg
75	13	12	0.03	kg
76	13	8	0.02	kg
77	14	22	0.40	kg
78	14	63	0.20	kg
79	14	3	0.10	kg
80	14	7	0.05	kg
81	14	45	0.10	kg
82	15	25	0.35	kg
83	15	77	0.20	litro
84	15	6	0.10	kg
85	15	7	0.05	kg
86	15	42	3.00	pieza
87	15	8	0.02	kg
88	16	26	0.50	kg
89	16	65	0.08	litro
90	16	66	0.05	kg
91	16	7	0.05	kg
92	16	9	0.02	kg
93	17	21	0.35	kg
94	17	50	0.20	kg
95	17	14	0.15	kg
96	17	7	0.05	kg
97	17	12	0.03	kg
98	17	8	0.02	kg
99	13	9	0.02	kg
100	14	8	0.02	kg
101	16	8	0.02	kg
102	15	9	0.02	kg
103	17	9	0.02	kg
104	14	9	0.02	kg
105	13	2	0.20	kg
106	18	23	0.40	kg
107	18	59	0.08	kg
108	18	60	0.05	kg
109	18	7	0.05	kg
110	18	57	0.03	kg
111	18	8	0.02	kg
112	19	61	2.00	pieza
113	19	23	0.30	kg
114	19	2	0.20	kg
115	19	71	0.20	kg
116	19	72	0.10	kg
117	19	17	0.20	litro
118	19	8	0.02	kg
119	20	29	0.30	kg
120	20	7	0.08	kg
121	20	12	0.05	kg
122	20	6	0.10	kg
123	20	5	0.03	kg
124	20	8	0.02	kg
125	21	29	0.30	kg
126	21	6	0.20	kg
127	21	2	0.20	kg
128	21	5	0.05	kg
129	21	3	0.10	kg
130	21	4	0.03	kg
131	22	30	0.35	kg
132	22	2	0.30	kg
133	22	68	0.05	kg
134	22	67	0.03	kg
135	22	7	0.05	kg
136	22	10	0.03	litro
137	22	8	0.02	kg
138	18	9	0.02	kg
139	19	9	0.02	kg
140	21	8	0.02	kg
141	23	29	0.20	kg
142	23	31	0.15	kg
143	23	2	0.20	kg
144	23	6	0.15	kg
145	23	3	0.10	kg
146	23	5	0.05	kg
147	24	31	0.40	kg
148	24	10	0.04	litro
149	24	6	0.10	kg
150	24	8	0.02	kg
151	24	9	0.02	kg
152	25	33	0.30	kg
153	25	42	3.00	pieza
154	25	1	0.15	kg
155	25	2	0.15	kg
156	25	3	0.08	kg
157	25	5	0.03	kg
158	26	32	0.35	kg
159	26	7	0.05	kg
160	26	10	0.03	litro
161	26	45	0.15	kg
162	26	8	0.02	kg
163	27	34	0.15	kg
164	27	23	0.30	kg
165	27	2	0.30	kg
166	27	7	0.05	kg
167	27	53	0.03	kg
168	27	8	0.02	kg
169	28	35	0.15	kg
170	28	12	0.08	kg
171	28	15	0.10	kg
172	28	18	0.10	litro
173	28	8	0.02	kg
174	23	8	0.02	kg
175	25	8	0.02	kg
176	29	36	0.15	kg
177	29	2	0.30	kg
178	29	7	0.06	kg
179	29	4	0.04	kg
180	29	10	0.03	litro
181	29	8	0.02	kg
182	30	37	0.15	kg
183	30	23	0.30	kg
184	30	2	0.25	kg
185	30	18	0.15	litro
186	30	12	0.06	kg
187	30	14	0.20	kg
188	30	8	0.02	kg
189	31	38	0.15	kg
190	31	53	0.08	kg
191	31	70	0.05	kg
192	31	15	0.08	kg
193	31	10	0.05	litro
194	31	7	0.03	kg
195	32	39	0.15	kg
196	32	17	0.10	litro
197	32	50	0.15	kg
198	32	12	0.06	kg
199	32	8	0.02	kg
200	33	51	0.20	kg
201	33	15	0.05	kg
202	33	43	4.00	pieza
203	33	7	0.03	kg
204	34	2	0.25	kg
205	34	14	0.20	kg
206	34	53	0.05	kg
207	34	10	0.03	litro
208	31	8	0.02	kg
209	32	15	0.06	kg
210	30	40	0.05	kg
211	35	21	0.25	kg
212	35	51	0.15	kg
213	35	1	0.15	kg
214	35	2	0.15	kg
215	35	6	0.05	kg
216	36	50	0.20	kg
217	36	73	0.10	kg
218	36	71	0.05	kg
219	36	16	0.08	kg
220	36	65	0.03	litro
221	37	40	0.20	kg
222	37	19	3.00	pieza
223	37	18	0.20	litro
224	37	72	0.10	kg
225	37	17	0.15	litro
226	38	40	0.15	kg
227	38	19	1.00	pieza
228	38	74	0.10	kg
229	38	58	0.05	kg
230	38	72	0.08	kg
231	39	19	4.00	pieza
232	39	18	0.30	litro
233	39	73	0.15	litro
234	39	72	0.10	kg
235	40	74	0.15	kg
236	40	12	0.10	kg
237	40	19	2.00	pieza
238	40	72	0.12	kg
239	40	40	0.10	kg
240	41	18	0.30	litro
241	41	72	0.08	kg
242	42	40	0.18	kg
243	42	18	0.20	litro
244	42	72	0.12	kg
245	42	73	0.15	kg
246	43	6	0.10	kg
247	43	72	0.05	kg
248	43	8	0.01	kg
249	44	6	0.15	kg
250	44	72	0.06	kg
251	45	79	0.02	kg
252	46	72	0.05	kg
253	47	2	0.20	kg
254	47	6	0.05	kg
255	48	77	0.33	litro
256	48	6	0.10	kg
257	48	80	0.03	litro
258	48	8	0.01	kg
259	49	42	2.00	pieza
260	49	52	0.15	kg
261	49	13	0.20	kg
262	49	8	0.02	kg
263	50	42	1.00	pieza
264	50	40	0.10	kg
265	50	21	0.25	kg
266	50	2	0.15	kg
267	50	60	0.04	kg
268	50	17	0.05	litro
269	50	14	0.08	kg
270	51	42	3.00	pieza
271	51	46	0.30	kg
272	51	14	0.10	kg
273	51	3	0.08	kg
274	51	8	0.02	kg
275	52	42	3.00	pieza
276	52	21	0.25	kg
277	52	4	0.06	kg
278	52	17	0.08	litro
279	52	14	0.10	kg
280	52	5	0.04	kg
281	53	40	0.15	kg
282	53	46	0.15	kg
283	53	53	0.10	kg
284	53	2	0.15	kg
285	53	14	0.08	kg
286	53	8	0.02	kg
287	54	44	1.00	pieza
288	54	46	0.20	kg
289	54	14	0.15	kg
290	54	2	0.10	kg
291	54	3	0.05	kg
292	54	5	0.03	kg
293	55	42	4.00	pieza
294	55	2	0.30	kg
295	55	17	0.08	litro
296	55	14	0.10	kg
297	55	3	0.08	kg
298	56	19	2.00	pieza
299	56	42	2.00	pieza
300	56	2	0.20	kg
301	56	4	0.04	kg
302	56	8	0.02	kg
303	57	19	3.00	pieza
304	57	28	0.10	kg
305	57	14	0.12	kg
306	57	12	0.03	kg
307	57	8	0.02	kg
308	55	59	0.04	kg
309	55	8	0.02	kg
310	52	8	0.02	kg
311	53	11	0.02	litro
312	54	8	0.02	kg
313	56	5	0.03	kg
314	57	9	0.02	kg
315	50	8	0.02	kg
316	58	40	0.15	kg
317	58	19	2.00	pieza
318	58	18	0.15	litro
319	58	65	0.05	litro
320	58	73	0.15	kg
321	58	8	0.01	kg
322	59	23	0.25	kg
323	59	19	2.00	pieza
324	59	2	0.15	kg
325	59	3	0.08	kg
326	59	4	0.03	kg
327	59	8	0.02	kg
328	60	42	3.00	pieza
329	60	46	0.25	kg
330	60	19	2.00	pieza
331	60	14	0.10	kg
332	60	8	0.02	kg
333	33	8	0.02	kg
334	34	8	0.02	kg
335	35	8	0.02	kg
336	36	8	0.02	kg
337	37	19	2.00	pieza
338	39	75	0.05	litro
339	40	75	0.03	litro
340	42	19	3.00	pieza
341	56	11	0.02	litro
342	59	11	0.02	litro
343	57	11	0.02	litro
344	60	5	0.03	kg
345	58	12	0.03	kg
346	35	11	0.02	litro
347	55	11	0.02	litro
348	49	11	0.02	litro
349	51	11	0.02	litro
350	59	5	0.03	kg
\.


--
-- TOC entry 3595 (class 0 OID 16418)
-- Dependencies: 222
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sucursal (id_sucursal, direccion, telefono, ciudad, capacidad) FROM stdin;
1	Av. Insurgentes Sur 1234, Col. Del Valle	4771234567	León	120
2	Blvd. López Mateos 890, Col. Jardines del Moral	4779876543	León	90
3	Calle Madero 456, Centro Histórico	4772345678	Guanajuato	75
4	Av. Tecnológico 321, Col. Lomas del Campestre	4773456789	León	150
5	Paseo del Moral 667, Col. Campestre	4774567890	León	100
\.


--
-- TOC entry 3633 (class 0 OID 0)
-- Dependencies: 215
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 10, true);


--
-- TOC entry 3634 (class 0 OID 0)
-- Dependencies: 219
-- Name: cliente_id_cliente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 800, true);


--
-- TOC entry 3635 (class 0 OID 0)
-- Dependencies: 236
-- Name: detallepedido_id_detalle_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detallepedido_id_detalle_pedido_seq', 8013, true);


--
-- TOC entry 3636 (class 0 OID 0)
-- Dependencies: 223
-- Name: empleado_id_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_id_empleado_seq', 50, true);


--
-- TOC entry 3637 (class 0 OID 0)
-- Dependencies: 233
-- Name: ingredientes_id_ingrediente_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredientes_id_ingrediente_seq', 81, true);


--
-- TOC entry 3638 (class 0 OID 0)
-- Dependencies: 240
-- Name: inventario_id_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_id_inventario_seq', 500, true);


--
-- TOC entry 3639 (class 0 OID 0)
-- Dependencies: 225
-- Name: mesa_id_mesa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mesa_id_mesa_seq', 80, true);


--
-- TOC entry 3640 (class 0 OID 0)
-- Dependencies: 229
-- Name: pago_id_pago_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pago_id_pago_seq', 1613, true);


--
-- TOC entry 3641 (class 0 OID 0)
-- Dependencies: 227
-- Name: pedido_id_pedido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_id_pedido_seq', 1200, true);


--
-- TOC entry 3642 (class 0 OID 0)
-- Dependencies: 217
-- Name: platillo_id_platillo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.platillo_id_platillo_seq', 60, true);


--
-- TOC entry 3643 (class 0 OID 0)
-- Dependencies: 231
-- Name: proveedor_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proveedor_id_proveedor_seq', 25, true);


--
-- TOC entry 3644 (class 0 OID 0)
-- Dependencies: 238
-- Name: receta_id_receta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.receta_id_receta_seq', 350, true);


--
-- TOC entry 3645 (class 0 OID 0)
-- Dependencies: 221
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sucursal_id_sucursal_seq', 5, true);


--
-- TOC entry 3403 (class 2606 OID 16395)
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 3407 (class 2606 OID 16416)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);


--
-- TOC entry 3425 (class 2606 OID 16519)
-- Name: detallepedido detallepedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallepedido
    ADD CONSTRAINT detallepedido_pkey PRIMARY KEY (id_detalle_pedido);


--
-- TOC entry 3411 (class 2606 OID 16430)
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (id_empleado);


--
-- TOC entry 3421 (class 2606 OID 16497)
-- Name: ingredientes ingredientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingredientes
    ADD CONSTRAINT ingredientes_pkey PRIMARY KEY (id_ingrediente);


--
-- TOC entry 3429 (class 2606 OID 16553)
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (id_inventario);


--
-- TOC entry 3413 (class 2606 OID 16442)
-- Name: mesa mesa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (id_mesa);


--
-- TOC entry 3417 (class 2606 OID 16476)
-- Name: pago pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pago_pkey PRIMARY KEY (id_pago);


--
-- TOC entry 3415 (class 2606 OID 16454)
-- Name: pedido pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id_pedido);


--
-- TOC entry 3405 (class 2606 OID 16404)
-- Name: platillo platillo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platillo
    ADD CONSTRAINT platillo_pkey PRIMARY KEY (id_platillo);


--
-- TOC entry 3419 (class 2606 OID 16490)
-- Name: proveedor proveedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedor
    ADD CONSTRAINT proveedor_pkey PRIMARY KEY (id_proveedor);


--
-- TOC entry 3423 (class 2606 OID 16502)
-- Name: proveedoringrediente proveedoringrediente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedoringrediente
    ADD CONSTRAINT proveedoringrediente_pkey PRIMARY KEY (id_proveedor, id_ingrediente);


--
-- TOC entry 3427 (class 2606 OID 16536)
-- Name: receta receta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT receta_pkey PRIMARY KEY (id_receta);


--
-- TOC entry 3409 (class 2606 OID 16423)
-- Name: sucursal sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id_sucursal);


--
-- TOC entry 3439 (class 2606 OID 16520)
-- Name: detallepedido fk_detalle_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallepedido
    ADD CONSTRAINT fk_detalle_pedido FOREIGN KEY (id_pedido) REFERENCES public.pedido(id_pedido);


--
-- TOC entry 3440 (class 2606 OID 16525)
-- Name: detallepedido fk_detalle_platillo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detallepedido
    ADD CONSTRAINT fk_detalle_platillo FOREIGN KEY (id_platillo) REFERENCES public.platillo(id_platillo);


--
-- TOC entry 3431 (class 2606 OID 16431)
-- Name: empleado fk_empleado_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT fk_empleado_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- TOC entry 3443 (class 2606 OID 16554)
-- Name: inventario fk_inventario_ingrediente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_inventario_ingrediente FOREIGN KEY (id_ingrediente) REFERENCES public.ingredientes(id_ingrediente);


--
-- TOC entry 3444 (class 2606 OID 16559)
-- Name: inventario fk_inventario_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_inventario_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- TOC entry 3432 (class 2606 OID 16443)
-- Name: mesa fk_mesa_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT fk_mesa_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- TOC entry 3436 (class 2606 OID 16477)
-- Name: pago fk_pago_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_pago_pedido FOREIGN KEY (id_pedido) REFERENCES public.pedido(id_pedido);


--
-- TOC entry 3433 (class 2606 OID 16455)
-- Name: pedido fk_pedido_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente);


--
-- TOC entry 3434 (class 2606 OID 16465)
-- Name: pedido fk_pedido_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_pedido_empleado FOREIGN KEY (id_empleado) REFERENCES public.empleado(id_empleado);


--
-- TOC entry 3435 (class 2606 OID 16460)
-- Name: pedido fk_pedido_mesa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT fk_pedido_mesa FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);


--
-- TOC entry 3437 (class 2606 OID 16508)
-- Name: proveedoringrediente fk_pi_ingrediente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedoringrediente
    ADD CONSTRAINT fk_pi_ingrediente FOREIGN KEY (id_ingrediente) REFERENCES public.ingredientes(id_ingrediente);


--
-- TOC entry 3438 (class 2606 OID 16503)
-- Name: proveedoringrediente fk_pi_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proveedoringrediente
    ADD CONSTRAINT fk_pi_proveedor FOREIGN KEY (id_proveedor) REFERENCES public.proveedor(id_proveedor);


--
-- TOC entry 3430 (class 2606 OID 16405)
-- Name: platillo fk_platillo_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.platillo
    ADD CONSTRAINT fk_platillo_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);


--
-- TOC entry 3441 (class 2606 OID 16542)
-- Name: receta fk_receta_ingrediente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_receta_ingrediente FOREIGN KEY (id_ingrediente) REFERENCES public.ingredientes(id_ingrediente);


--
-- TOC entry 3442 (class 2606 OID 16537)
-- Name: receta fk_receta_platillo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.receta
    ADD CONSTRAINT fk_receta_platillo FOREIGN KEY (id_platillo) REFERENCES public.platillo(id_platillo);


-- Completed on 2026-05-09 09:37:23 CST

--
-- PostgreSQL database dump complete
--

\unrestrict h5dDRUbK8iL7tjnH3RGwuZkjsJPiuJmQpdnDw1pI50wkR60u0IlmkmIE0zhk8IA

