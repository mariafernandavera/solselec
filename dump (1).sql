--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: calificacion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE calificacion (
    codigocalificacion character(10) NOT NULL,
    descripcion character varying(300) NOT NULL,
    sugerencias character varying(300) NOT NULL,
    fkcodigofactura character(10) NOT NULL,
    fkcodigocliente character(10) NOT NULL,
    calificacion integer NOT NULL
);


ALTER TABLE public.calificacion OWNER TO postgres;

--
-- Name: catalogo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE catalogo (
    codcatalogo character(10) NOT NULL,
    fechapublicacion date NOT NULL,
    copias smallint NOT NULL,
    paginas smallint NOT NULL
);


ALTER TABLE public.catalogo OWNER TO postgres;

--
-- Name: cita; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cita (
    codigocita character(10) NOT NULL,
    cotizacion character varying(300) NOT NULL,
    fecha date NOT NULL,
    fkcodigocliente character(10) NOT NULL
);


ALTER TABLE public.cita OWNER TO postgres;

--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE cliente (
    codigocliente character varying(10) NOT NULL,
    cedula character varying(10) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido1 character varying(20) NOT NULL,
    apellido2 character varying(20) NOT NULL,
    puntos integer NOT NULL,
    fidelizado character varying(10) NOT NULL,
    fechanacimiento date NOT NULL,
    email character varying(100) NOT NULL,
    usuario character varying(100) NOT NULL,
    contra character varying(10) NOT NULL,
    edad smallint NOT NULL,
    rh character varying(10) NOT NULL,
    sexo character varying(10) NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: compra; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE compra (
    fkcodigopedido character(10) NOT NULL,
    fkcodigoproducto character(10) NOT NULL
);


ALTER TABLE public.compra OWNER TO postgres;

--
-- Name: conductor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE conductor (
    fechahora timestamp without time zone NOT NULL,
    fkcodigoempleado character(10) NOT NULL,
    fkmatriculavehiculo character(7) NOT NULL
);


ALTER TABLE public.conductor OWNER TO postgres;

--
-- Name: credito; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE credito (
    codcredito character(10) NOT NULL,
    valor numeric NOT NULL,
    cuotas smallint NOT NULL,
    tasainteres character(4) NOT NULL,
    tipo character varying(30) NOT NULL,
    requisitos character varying(300) NOT NULL,
    observaciones character varying(300) NOT NULL
);


ALTER TABLE public.credito OWNER TO postgres;

--
-- Name: creditoempleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE creditoempleado (
    fecha date NOT NULL,
    fkcodigoempleado character(10) NOT NULL,
    fkcodcredito character(10) NOT NULL
);


ALTER TABLE public.creditoempleado OWNER TO postgres;

--
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empleado (
    codigoempleado character(10) NOT NULL,
    cedula character(10) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido1 character varying(20) NOT NULL,
    apellido2 character varying(20) NOT NULL,
    fechanacimiento date NOT NULL,
    email character varying(100) NOT NULL,
    usuario character varying(100) NOT NULL,
    contra character(10) NOT NULL,
    edad smallint NOT NULL,
    rh character(10) NOT NULL,
    cargo character varying(20) NOT NULL,
    fechaingreso date NOT NULL,
    horario character varying(300) NOT NULL,
    salario numeric NOT NULL,
    observaciones character varying(300) NOT NULL,
    escolarizacion character varying(50) NOT NULL,
    nivelinterno character varying(50) NOT NULL,
    estado character(10) NOT NULL,
    fknombresucursal character varying(30) NOT NULL,
    fknitseguro character(13) NOT NULL,
    fknitfondo character(13) NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL,
    genero character varying(10) NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- Name: empleadoservicio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE empleadoservicio (
    fecha date NOT NULL,
    fkcodigoempleado character(10) NOT NULL,
    fkcodigoservicio character(10) NOT NULL
);


ALTER TABLE public.empleadoservicio OWNER TO postgres;

--
-- Name: envio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE envio (
    codigoenvio character(10) NOT NULL,
    fechahorasalida timestamp without time zone NOT NULL,
    fechahorallegada timestamp without time zone NOT NULL,
    fkmatriculavehiculo character(7) NOT NULL,
    fkcodigofactura character(10) NOT NULL,
    direccion character varying(30) NOT NULL
);


ALTER TABLE public.envio OWNER TO postgres;

--
-- Name: exempleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE exempleado (
    codigoexempleado character(10) NOT NULL,
    motivodespido character varying(100) NOT NULL,
    fechasalida date NOT NULL,
    fkcodigoempleado character(10) NOT NULL
);


ALTER TABLE public.exempleado OWNER TO postgres;

--
-- Name: factura; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE factura (
    codigofactura character(10) NOT NULL,
    fechahora timestamp without time zone NOT NULL,
    fkcodigocliente character(10) NOT NULL,
    fkcodigoempleado character(10) NOT NULL
);


ALTER TABLE public.factura OWNER TO postgres;

--
-- Name: familiar; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE familiar (
    idfamiliar character(10) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido1 character varying(20) NOT NULL,
    apellido2 character varying(20) NOT NULL,
    fechanacimiento date NOT NULL,
    email character varying(100) NOT NULL,
    edad smallint NOT NULL,
    rh character(10) NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL,
    genero character varying(10) NOT NULL,
    fknitseguro character(13) NOT NULL
);


ALTER TABLE public.familiar OWNER TO postgres;

--
-- Name: familiarempleado; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE familiarempleado (
    parentesco character varying(20),
    fkcodigoempleado character(10) NOT NULL,
    fkidfamiliar character(10) NOT NULL
);


ALTER TABLE public.familiarempleado OWNER TO postgres;

--
-- Name: fondopension; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fondopension (
    nitfondo character(13) NOT NULL,
    razonsocial character varying(30) NOT NULL,
    regimen character varying(30) NOT NULL
);


ALTER TABLE public.fondopension OWNER TO postgres;

--
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE pedido (
    codigopedido character(10) NOT NULL,
    fknitproveedor character(13) NOT NULL
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- Name: postventa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE postventa (
    codigopostventa character(10) NOT NULL,
    fecha date NOT NULL,
    descripcion character varying(300) NOT NULL,
    observaciones character varying(300) NOT NULL,
    fkcodigofactura character(10) NOT NULL,
    fkcodigoservicio character(10) NOT NULL
);


ALTER TABLE public.postventa OWNER TO postgres;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE producto (
    codproducto character(11) NOT NULL,
    nombre character varying(30) NOT NULL,
    descripcion character varying(30) NOT NULL,
    precioventa numeric NOT NULL,
    unidades integer NOT NULL,
    garantia character varying(10) NOT NULL,
    preciocompra numeric NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: productocatalogo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE productocatalogo (
    fkcodigocatalogo character(10) NOT NULL,
    fkcodigoproducto character(10) NOT NULL
);


ALTER TABLE public.productocatalogo OWNER TO postgres;

--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE proveedor (
    nitproveedor character(13) NOT NULL,
    razonsocial character varying(20) NOT NULL,
    email character varying(100) NOT NULL,
    observaciones character varying(300) NOT NULL,
    tiempoconvenio character varying(30) NOT NULL,
    fkcedularepresentante character(10) NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL,
    nombre character varying(20) NOT NULL
);


ALTER TABLE public.proveedor OWNER TO postgres;

--
-- Name: representante; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE representante (
    cedularepresentante character(10) NOT NULL,
    nombre character varying(20) NOT NULL,
    apellido1 character varying(20) NOT NULL,
    apellido2 character varying(20) NOT NULL,
    fechanacimiento date NOT NULL,
    email character varying(100) NOT NULL,
    edad smallint NOT NULL,
    observaciones character varying(300) NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL,
    genero character varying(10) NOT NULL
);


ALTER TABLE public.representante OWNER TO postgres;

--
-- Name: segurosocial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE segurosocial (
    nitseguro character(13) NOT NULL,
    razonsocial character varying(30) NOT NULL,
    regimen character varying(30) NOT NULL
);


ALTER TABLE public.segurosocial OWNER TO postgres;

--
-- Name: servicio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE servicio (
    codservicio character(11) NOT NULL,
    nombre character varying(30) NOT NULL,
    descripcion character varying(30) NOT NULL,
    precio numeric NOT NULL,
    garantia character varying(10) NOT NULL
);


ALTER TABLE public.servicio OWNER TO postgres;

--
-- Name: servicioproducto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE servicioproducto (
    fkcodigoproducto character(10) NOT NULL,
    fkcodigoservicio character(10) NOT NULL
);


ALTER TABLE public.servicioproducto OWNER TO postgres;

--
-- Name: sucursal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE sucursal (
    nombresucursal character varying(30) NOT NULL,
    numeroempleados integer NOT NULL,
    direccion character varying(30) NOT NULL,
    telefono character varying(15) NOT NULL
);


ALTER TABLE public.sucursal OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    usuario character varying NOT NULL,
    contra character varying NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: vehiculo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vehiculo (
    matriculavehiculo character(7) NOT NULL,
    nombre character varying(30) NOT NULL,
    estado character varying(30) NOT NULL,
    color character varying(15) NOT NULL,
    marca character varying(15) NOT NULL,
    modelo character varying(15) NOT NULL
);


ALTER TABLE public.vehiculo OWNER TO postgres;

--
-- Name: ventaproducto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ventaproducto (
    fkcodigofactura character(10) NOT NULL,
    fkcodigoproducto character(10) NOT NULL
);


ALTER TABLE public.ventaproducto OWNER TO postgres;

--
-- Name: ventaservicio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ventaservicio (
    fkcodigofactura character(10) NOT NULL,
    fkcodigoservicio character(10) NOT NULL
);


ALTER TABLE public.ventaservicio OWNER TO postgres;

--
-- Data for Name: calificacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO calificacion VALUES ('001       ', 'No', 'No', '001       ', '30001     ', 5);
INSERT INTO calificacion VALUES ('002       ', 'No', 'Entrega mas rapida', '002       ', '30002     ', 4);
INSERT INTO calificacion VALUES ('003       ', 'No', 'No', '004       ', '30003     ', 3);


--
-- Data for Name: catalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO catalogo VALUES ('001       ', '2010-01-02', 30, 15);
INSERT INTO catalogo VALUES ('002       ', '2011-09-02', 50, 30);
INSERT INTO catalogo VALUES ('003       ', '2012-03-30', 30, 30);
INSERT INTO catalogo VALUES ('004       ', '2015-04-19', 100, 52);


--
-- Data for Name: cita; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cita VALUES ('001       ', '1200000', '2015-05-12', '30001     ');
INSERT INTO cita VALUES ('002       ', '1000000', '2014-04-12', '30003     ');
INSERT INTO cita VALUES ('003       ', '4000000', '2005-07-03', '30001     ');


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO cliente VALUES ('30002', '123456789', 'Maria', 'Fuentes', 'Torres', 4564, 'si', '2019-03-05', 'sdfsd@fgdf.com', 'maria03', '123456', 45, 'A+', 'femenino', 'calle 23 # 31-80', '6465786');
INSERT INTO cliente VALUES ('30003', '1093654872', 'Andrea', 'Rojas', 'Acosta', 120, 'no', '2000-02-06', 'fddfsdfssd@fhfg.com', 'adnrea987', '123456', 19, 'A+', 'femenino', 'ghjgjgjgjghjgjgj', '454564645');
INSERT INTO cliente VALUES ('30001', '1232890615', 'maria', 'gomez', 'alvarez', 10, 'si', '1998-09-15', 'anhjcbjk@nvjm', 'postgres', '123456', 20, 'O+', 'femenino', 'cra 32 #45-67', '5652874');


--
-- Data for Name: compra; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO compra VALUES ('001       ', '001       ');
INSERT INTO compra VALUES ('002       ', '003       ');
INSERT INTO compra VALUES ('001       ', '004       ');
INSERT INTO compra VALUES ('004       ', '005       ');
INSERT INTO compra VALUES ('005       ', '004       ');


--
-- Data for Name: conductor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO conductor VALUES ('2015-01-08 04:05:06', '20001     ', 'KJT9010');
INSERT INTO conductor VALUES ('2016-01-08 04:05:06', '20002     ', 'MZD890F');
INSERT INTO conductor VALUES ('2018-01-08 04:30:06', '20002     ', 'XYG324 ');


--
-- Data for Name: credito; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO credito VALUES ('001       ', 1200000, 5, '10% ', 'viaje', 'No', 'No');
INSERT INTO credito VALUES ('002       ', 5000000, 8, '10% ', 'Vivienda', 'No', 'No');
INSERT INTO credito VALUES ('003       ', 3000000, 12, '15% ', 'Vivienda', 'Fiador finca raiz', 'No');


--
-- Data for Name: creditoempleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO creditoempleado VALUES ('2008-05-03', '10001     ', '001       ');
INSERT INTO creditoempleado VALUES ('2014-06-01', '20001     ', '002       ');
INSERT INTO creditoempleado VALUES ('2018-12-06', '20002     ', '003       ');


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empleado VALUES ('20002     ', '135698    ', 'Maria', 'Rojas', 'Pinzon', '1995-07-05', 'sa@dss.com', 'maria02', '123456    ', 24, 'O-        ', 'Vendedor', '2015-07-02', '8 a 12 a.m.', 1200000, 'No', 'Bachiller', 'Vendedor junior', 'Activo    ', 'lagunitas', 'coomeva      ', 'colfondo     ', 'calle 50 # 30 -21', '6462587', 'Femenino');
INSERT INTO empleado VALUES ('10001     ', '1232890615', 'estefania', 'rincon', 'alviarez', '1990-08-20', 'anhjcbjk@nvjm', 'tefa01', '123456    ', 28, 'O+        ', 'gerente', '2015-04-30', '12 a 6 pm', 600000, 'No', 'primaria', '2', 'si        ', 'norte', 'coomeva      ', 'colfondo     ', 'cr4', '243545', 'femenino');
INSERT INTO empleado VALUES ('20001     ', '1005664877', 'Marcela', 'Jimenez', 'Pizarro', '1978-02-02', 'hjghjghj@hggh.com', 'marceji02', '123456    ', 41, 'AB-       ', 'gerente', '1998-12-01', '4 a 6 p.m', 1000000, 'ghfrftyrtyr', 'universitaria', 'Senior', 'si        ', 'norte', 'coomeva      ', 'colpensiones ', 'fdgdfhffyrtyyt', '12243234230', 'femenino');


--
-- Data for Name: empleadoservicio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO empleadoservicio VALUES ('2015-01-08', '10001     ', '001       ');
INSERT INTO empleadoservicio VALUES ('2018-01-30', '20001     ', '002       ');
INSERT INTO empleadoservicio VALUES ('2010-01-10', '20002     ', '004       ');


--
-- Data for Name: envio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO envio VALUES ('001       ', '2015-01-08 05:04:15', '2015-01-10 05:04:15', 'KJT9010', '001       ', 'calle 30# 20-10');
INSERT INTO envio VALUES ('002       ', '2015-01-08 05:04:15', '2015-02-08 05:04:15', 'MZD890F', '002       ', 'calle 30');
INSERT INTO envio VALUES ('003       ', '2015-01-08 05:04:15', '2015-01-08 07:04:16', 'XYG324 ', '005       ', 'calle40');


--
-- Data for Name: exempleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO exempleado VALUES ('001       ', 'Renovacion de personal', '2018-02-03', '20001     ');


--
-- Data for Name: factura; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO factura VALUES ('001       ', '2015-01-08 04:05:06', '30001     ', '10001     ');
INSERT INTO factura VALUES ('002       ', '2018-04-03 08:45:06', '30002     ', '20001     ');
INSERT INTO factura VALUES ('005       ', '2017-12-30 05:30:15', '30003     ', '20002     ');
INSERT INTO factura VALUES ('004       ', '2015-01-08 04:05:06', '30002     ', '20001     ');


--
-- Data for Name: familiar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO familiar VALUES ('1234567   ', 'andrea', 'rodriguez', 'lopez', '1998-07-08', 'anhjcbjk@nvjm', 20, 'anegativo ', 'cr4', '234579', 'femenino', 'coomeva      ');
INSERT INTO familiar VALUES ('56546     ', 'jgyu', 'gjghjgh', 'hjliouio', '1998-02-01', 'dfdtert@jgj.com', 56, 'A+        ', 'fgfrtuyugyhg', '4564564554', 'femenino', 'coomeva      ');
INSERT INTO familiar VALUES ('123456789 ', 'Martha', 'Duran', 'Lopez', '2000-02-03', 'gdfgd@dfgfd.com', 19, 'AB+       ', 'Calle 23 #43-65', '6489753', 'Femenino', 'nuevaeps     ');


--
-- Data for Name: familiarempleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO familiarempleado VALUES ('Padre', '10001     ', '1234567   ');
INSERT INTO familiarempleado VALUES ('Madre', '20001     ', '123456789 ');
INSERT INTO familiarempleado VALUES ('Hermano', '20002     ', '56546     ');


--
-- Data for Name: fondopension; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO fondopension VALUES ('colpensiones ', 'vtgbcfjkd', 'gcbhjdcc');
INSERT INTO fondopension VALUES ('colfondo     ', 'hgvchjcnj', 'kacbksjm');


--
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pedido VALUES ('001       ', '23456        ');
INSERT INTO pedido VALUES ('002       ', '100000       ');
INSERT INTO pedido VALUES ('003       ', '4857845      ');
INSERT INTO pedido VALUES ('004       ', '48578578     ');
INSERT INTO pedido VALUES ('005       ', '1234557      ');


--
-- Data for Name: postventa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO postventa VALUES ('001       ', '2015-02-04', 'No', 'No', '001       ', '001       ');
INSERT INTO postventa VALUES ('002       ', '2015-02-04', 'no', 'no', '002       ', '002       ');
INSERT INTO postventa VALUES ('003       ', '2016-02-04', 'no', 'no', '004       ', '003       ');


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO producto VALUES ('001        ', 'Disco Duro', '1 tera', 180000, 50, '6 meses', 100000);
INSERT INTO producto VALUES ('002        ', 'DVR', '8 canales

120 TVR', 320000, 50, '6 meses', 145000);
INSERT INTO producto VALUES ('003        ', 'Camara', 'tomo 720 TVR', 140000, 120, '1 año', 60000);
INSERT INTO producto VALUES ('004        ', 'videobalun', 'Potenciador de señal', 25000, 70, 'No', 10000);
INSERT INTO producto VALUES ('005        ', 'Fuente', '12 voltios

1 Amperio', 12000, 30, 'No', 5000);


--
-- Data for Name: productocatalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO productocatalogo VALUES ('001       ', '001       ');
INSERT INTO productocatalogo VALUES ('002       ', '002       ');
INSERT INTO productocatalogo VALUES ('001       ', '003       ');
INSERT INTO productocatalogo VALUES ('001       ', '004       ');
INSERT INTO productocatalogo VALUES ('004       ', '001       ');


--
-- Data for Name: proveedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO proveedor VALUES ('23456        ', 'villamizar', 'anhjcbjk@nvjm', 'r34getdas', '4', '2345678   ', 'cr4', '234557654', 'maria');
INSERT INTO proveedor VALUES ('48578578     ', 'ftytytrr', '', 'gugyughjjhjh', '10', '1934568725', '', '45455', 'fgyftyft');
INSERT INTO proveedor VALUES ('4857845      ', 'ftytytrr', '', 'gugyughjjhjh', '10', '1934568725', '', '45455', 'fgyftyft');
INSERT INTO proveedor VALUES ('100000       ', 'hihuuh', '', 'hjihjkjj', '54', '2345678   ', '', '45654645', 'uihuuh');
INSERT INTO proveedor VALUES ('1234557      ', 'kllll', 'bnjhj@gmghgf.com', 'hjuhjbhjbh', '52', '1934568725', 'jnnjnjj', '5656464', 'tfgyhgfh');


--
-- Data for Name: representante; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO representante VALUES ('2345678   ', 'felipe', 'garcia', 'gerrero', '1997-11-02', 'anhjcbjk@nvjm', 21, '45gttrt', 'cr30', '234567654', 'Masculino');
INSERT INTO representante VALUES ('1934568725', 'Julian', 'Dominguez', 'Diaz', '1988-09-09', 'mdfgdsfdf@ghgh.com', 31, 'lpoiopiopipip', 'ghkjhjkhjhgjgh', '56456565', 'Masculino');
INSERT INTO representante VALUES ('123854    ', 'Miguel', 'Garcia', 'Torres', '2019-03-06', 'vghfg@gbnhfgh.com', 453, 'No', 'Calle 30 #20-56', '4687591', 'Masculino');


--
-- Data for Name: segurosocial; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO segurosocial VALUES ('coomeva      ', 'kvdfkj', 'hdbcjkdc');
INSERT INTO segurosocial VALUES ('medimas      ', 'jhnjkvmkflv', 'jhvbjmvf');
INSERT INTO segurosocial VALUES ('sanitas      ', 'qgcbajkdsmc', 'qwfqiknkldc');
INSERT INTO segurosocial VALUES ('saludtotal   ', 'agjhknvs', 'vjghbuid');
INSERT INTO segurosocial VALUES ('nuevaeps     ', 'jhcbvij', 'jhdfnjkvf');


--
-- Data for Name: servicio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO servicio VALUES ('001        ', 'Mantenimiento', 'Arreglo de cableado.', 60000, '2 meses');
INSERT INTO servicio VALUES ('002        ', 'visita', 'Diagnostico', 30000, 'No');
INSERT INTO servicio VALUES ('003        ', 'Instalacion', 'Intalar por equipo', 25000, '1 año');
INSERT INTO servicio VALUES ('004        ', 'Programacion', 'Programacion del DVR', 50000, '1 año');


--
-- Data for Name: servicioproducto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO servicioproducto VALUES ('001       ', '001       ');
INSERT INTO servicioproducto VALUES ('001       ', '003       ');
INSERT INTO servicioproducto VALUES ('002       ', '004       ');
INSERT INTO servicioproducto VALUES ('005       ', '001       ');


--
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sucursal VALUES ('norte', 50, 'cr10', '5657890');
INSERT INTO sucursal VALUES ('sur', 50, 'cr9', '5789012');
INSERT INTO sucursal VALUES ('porvenir', 80, 'cr40', '4890');
INSERT INTO sucursal VALUES ('patios', 50, 'cr60', '5406789');
INSERT INTO sucursal VALUES ('lagunitas', 30, 'cr20', '5809013');


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: vehiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vehiculo VALUES ('MZD890F', 'camioneta', 'nuevo', 'negro', 'toyota', 'hilux');
INSERT INTO vehiculo VALUES ('KJT9010', 'SPARK GT', 'Nuevo', 'Blanco', 'Chevrolet', 'Spark GT');
INSERT INTO vehiculo VALUES ('XYG324 ', 'Spark-gt', 'bueno', 'rojo', 'spark', '2000');


--
-- Data for Name: ventaproducto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ventaproducto VALUES ('001       ', '001       ');
INSERT INTO ventaproducto VALUES ('001       ', '002       ');
INSERT INTO ventaproducto VALUES ('001       ', '004       ');
INSERT INTO ventaproducto VALUES ('002       ', '003       ');
INSERT INTO ventaproducto VALUES ('004       ', '004       ');


--
-- Data for Name: ventaservicio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO ventaservicio VALUES ('001       ', '001       ');
INSERT INTO ventaservicio VALUES ('001       ', '002       ');
INSERT INTO ventaservicio VALUES ('002       ', '003       ');
INSERT INTO ventaservicio VALUES ('004       ', '004       ');
INSERT INTO ventaservicio VALUES ('004       ', '003       ');


--
-- Name: pk_cedula_reperesentrante; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY representante
    ADD CONSTRAINT pk_cedula_reperesentrante PRIMARY KEY (cedularepresentante);


--
-- Name: pk_codigo_calificacion; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY calificacion
    ADD CONSTRAINT pk_codigo_calificacion PRIMARY KEY (codigocalificacion);


--
-- Name: pk_codigo_catalogo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY catalogo
    ADD CONSTRAINT pk_codigo_catalogo PRIMARY KEY (codcatalogo);


--
-- Name: pk_codigo_cita; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cita
    ADD CONSTRAINT pk_codigo_cita PRIMARY KEY (codigocita);


--
-- Name: pk_codigo_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT pk_codigo_cliente PRIMARY KEY (codigocliente);


--
-- Name: pk_codigo_compra; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT pk_codigo_compra PRIMARY KEY (fkcodigoproducto, fkcodigopedido);


--
-- Name: pk_codigo_conductor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY conductor
    ADD CONSTRAINT pk_codigo_conductor PRIMARY KEY (fkcodigoempleado, fkmatriculavehiculo);


--
-- Name: pk_codigo_credempleado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY creditoempleado
    ADD CONSTRAINT pk_codigo_credempleado PRIMARY KEY (fkcodigoempleado, fkcodcredito);


--
-- Name: pk_codigo_credito; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY credito
    ADD CONSTRAINT pk_codigo_credito PRIMARY KEY (codcredito);


--
-- Name: pk_codigo_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_codigo_empleado PRIMARY KEY (codigoempleado);


--
-- Name: pk_codigo_empleadoservicio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY empleadoservicio
    ADD CONSTRAINT pk_codigo_empleadoservicio PRIMARY KEY (fkcodigoempleado, fkcodigoservicio);


--
-- Name: pk_codigo_envio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY envio
    ADD CONSTRAINT pk_codigo_envio PRIMARY KEY (codigoenvio);


--
-- Name: pk_codigo_exempleado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY exempleado
    ADD CONSTRAINT pk_codigo_exempleado PRIMARY KEY (codigoexempleado);


--
-- Name: pk_codigo_factura; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY factura
    ADD CONSTRAINT pk_codigo_factura PRIMARY KEY (codigofactura);


--
-- Name: pk_codigo_familiarempleado; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY familiarempleado
    ADD CONSTRAINT pk_codigo_familiarempleado PRIMARY KEY (fkcodigoempleado, fkidfamiliar);


--
-- Name: pk_codigo_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT pk_codigo_pedido PRIMARY KEY (codigopedido);


--
-- Name: pk_codigo_postventa; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY postventa
    ADD CONSTRAINT pk_codigo_postventa PRIMARY KEY (codigopostventa);


--
-- Name: pk_codigo_producto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT pk_codigo_producto PRIMARY KEY (codproducto);


--
-- Name: pk_codigo_productocatalogo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY productocatalogo
    ADD CONSTRAINT pk_codigo_productocatalogo PRIMARY KEY (fkcodigoproducto, fkcodigocatalogo);


--
-- Name: pk_codigo_servicio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servicio
    ADD CONSTRAINT pk_codigo_servicio PRIMARY KEY (codservicio);


--
-- Name: pk_codigo_servicioproducto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY servicioproducto
    ADD CONSTRAINT pk_codigo_servicioproducto PRIMARY KEY (fkcodigoservicio, fkcodigoproducto);


--
-- Name: pk_codigo_ventaproducto; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ventaproducto
    ADD CONSTRAINT pk_codigo_ventaproducto PRIMARY KEY (fkcodigoproducto, fkcodigofactura);


--
-- Name: pk_codigo_ventaservicio; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ventaservicio
    ADD CONSTRAINT pk_codigo_ventaservicio PRIMARY KEY (fkcodigoservicio, fkcodigofactura);


--
-- Name: pk_id_familiar; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY familiar
    ADD CONSTRAINT pk_id_familiar PRIMARY KEY (idfamiliar);


--
-- Name: pk_matricula_vehiculo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vehiculo
    ADD CONSTRAINT pk_matricula_vehiculo PRIMARY KEY (matriculavehiculo);


--
-- Name: pk_nit_fondo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fondopension
    ADD CONSTRAINT pk_nit_fondo PRIMARY KEY (nitfondo);


--
-- Name: pk_nit_proveedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT pk_nit_proveedor PRIMARY KEY (nitproveedor);


--
-- Name: pk_nit_seguro; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY segurosocial
    ADD CONSTRAINT pk_nit_seguro PRIMARY KEY (nitseguro);


--
-- Name: pk_nombre_sucursal; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY sucursal
    ADD CONSTRAINT pk_nombre_sucursal PRIMARY KEY (nombresucursal);


--
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuario);


--
-- Name: fk_cedula_reperesentante; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedor
    ADD CONSTRAINT fk_cedula_reperesentante FOREIGN KEY (fkcedularepresentante) REFERENCES representante(cedularepresentante);


--
-- Name: fk_cod_credito; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY creditoempleado
    ADD CONSTRAINT fk_cod_credito FOREIGN KEY (fkcodcredito) REFERENCES credito(codcredito);


--
-- Name: fk_codigo_catalogo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productocatalogo
    ADD CONSTRAINT fk_codigo_catalogo FOREIGN KEY (fkcodigocatalogo) REFERENCES catalogo(codcatalogo);


--
-- Name: fk_codigo_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cita
    ADD CONSTRAINT fk_codigo_cliente FOREIGN KEY (fkcodigocliente) REFERENCES cliente(codigocliente);


--
-- Name: fk_codigo_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura
    ADD CONSTRAINT fk_codigo_cliente FOREIGN KEY (fkcodigocliente) REFERENCES cliente(codigocliente);


--
-- Name: fk_codigo_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY calificacion
    ADD CONSTRAINT fk_codigo_cliente FOREIGN KEY (fkcodigocliente) REFERENCES cliente(codigocliente);


--
-- Name: fk_codigo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY exempleado
    ADD CONSTRAINT fk_codigo_empleado FOREIGN KEY (fkcodigoempleado) REFERENCES empleado(codigoempleado);


--
-- Name: fk_codigo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY factura
    ADD CONSTRAINT fk_codigo_empleado FOREIGN KEY (fkcodigoempleado) REFERENCES empleado(codigoempleado);


--
-- Name: fk_codigo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conductor
    ADD CONSTRAINT fk_codigo_empleado FOREIGN KEY (fkcodigoempleado) REFERENCES empleado(codigoempleado);


--
-- Name: fk_codigo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY creditoempleado
    ADD CONSTRAINT fk_codigo_empleado FOREIGN KEY (fkcodigoempleado) REFERENCES empleado(codigoempleado);


--
-- Name: fk_codigo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY familiarempleado
    ADD CONSTRAINT fk_codigo_empleado FOREIGN KEY (fkcodigoempleado) REFERENCES empleado(codigoempleado);


--
-- Name: fk_codigo_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleadoservicio
    ADD CONSTRAINT fk_codigo_empleado FOREIGN KEY (fkcodigoempleado) REFERENCES empleado(codigoempleado);


--
-- Name: fk_codigo_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY envio
    ADD CONSTRAINT fk_codigo_factura FOREIGN KEY (fkcodigofactura) REFERENCES factura(codigofactura);


--
-- Name: fk_codigo_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postventa
    ADD CONSTRAINT fk_codigo_factura FOREIGN KEY (fkcodigofactura) REFERENCES factura(codigofactura);


--
-- Name: fk_codigo_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY calificacion
    ADD CONSTRAINT fk_codigo_factura FOREIGN KEY (fkcodigofactura) REFERENCES factura(codigofactura);


--
-- Name: fk_codigo_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ventaservicio
    ADD CONSTRAINT fk_codigo_factura FOREIGN KEY (fkcodigofactura) REFERENCES factura(codigofactura);


--
-- Name: fk_codigo_factura; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ventaproducto
    ADD CONSTRAINT fk_codigo_factura FOREIGN KEY (fkcodigofactura) REFERENCES factura(codigofactura);


--
-- Name: fk_codigo_pedido; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT fk_codigo_pedido FOREIGN KEY (fkcodigopedido) REFERENCES pedido(codigopedido);


--
-- Name: fk_codigo_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ventaproducto
    ADD CONSTRAINT fk_codigo_producto FOREIGN KEY (fkcodigoproducto) REFERENCES producto(codproducto);


--
-- Name: fk_codigo_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productocatalogo
    ADD CONSTRAINT fk_codigo_producto FOREIGN KEY (fkcodigoproducto) REFERENCES producto(codproducto);


--
-- Name: fk_codigo_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY compra
    ADD CONSTRAINT fk_codigo_producto FOREIGN KEY (fkcodigoproducto) REFERENCES producto(codproducto);


--
-- Name: fk_codigo_servicio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY postventa
    ADD CONSTRAINT fk_codigo_servicio FOREIGN KEY (fkcodigoservicio) REFERENCES servicio(codservicio);


--
-- Name: fk_codigo_servicio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleadoservicio
    ADD CONSTRAINT fk_codigo_servicio FOREIGN KEY (fkcodigoservicio) REFERENCES servicio(codservicio);


--
-- Name: fk_codigo_servicio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY servicioproducto
    ADD CONSTRAINT fk_codigo_servicio FOREIGN KEY (fkcodigoservicio) REFERENCES servicio(codservicio);


--
-- Name: fk_codigo_servicio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ventaservicio
    ADD CONSTRAINT fk_codigo_servicio FOREIGN KEY (fkcodigoservicio) REFERENCES servicio(codservicio);


--
-- Name: fk_fkcodigo_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY servicioproducto
    ADD CONSTRAINT fk_fkcodigo_producto FOREIGN KEY (fkcodigoproducto) REFERENCES producto(codproducto);


--
-- Name: fk_id_familiar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY familiarempleado
    ADD CONSTRAINT fk_id_familiar FOREIGN KEY (fkidfamiliar) REFERENCES familiar(idfamiliar);


--
-- Name: fk_matricula_vehiculo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY envio
    ADD CONSTRAINT fk_matricula_vehiculo FOREIGN KEY (fkmatriculavehiculo) REFERENCES vehiculo(matriculavehiculo);


--
-- Name: fk_matricula_vehiculo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY conductor
    ADD CONSTRAINT fk_matricula_vehiculo FOREIGN KEY (fkmatriculavehiculo) REFERENCES vehiculo(matriculavehiculo);


--
-- Name: fk_nit_fondo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_nit_fondo FOREIGN KEY (fknitfondo) REFERENCES fondopension(nitfondo);


--
-- Name: fk_nit_proveedor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT fk_nit_proveedor FOREIGN KEY (fknitproveedor) REFERENCES proveedor(nitproveedor);


--
-- Name: fk_nit_seguro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_nit_seguro FOREIGN KEY (fknitseguro) REFERENCES segurosocial(nitseguro);


--
-- Name: fk_nit_seguro; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY familiar
    ADD CONSTRAINT fk_nit_seguro FOREIGN KEY (fknitseguro) REFERENCES segurosocial(nitseguro);


--
-- Name: fk_nombre_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT fk_nombre_sucursal FOREIGN KEY (fknombresucursal) REFERENCES sucursal(nombresucursal);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

