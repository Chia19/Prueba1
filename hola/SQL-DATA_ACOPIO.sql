USE AcopioQA
GO

/*
SELECT* FROM maestro.TipoDocumento
INSERT dbo.TipoDocumento ( nombre, estado) VALUES ('DOCUMENTO NACIONAL DE IDENTIDAD' , 1)
INSERT dbo.TipoDocumento ( nombre, estado) VALUES ('CARNET DE EXTRANJERIA'           , 1)
INSERT dbo.TipoDocumento ( nombre, estado) VALUES ('OTROS TIPOS DE DOCUMENTOS'       , 1)
INSERT dbo.TipoDocumento ( nombre, estado) VALUES ('REGISTRO ÚNICO DE CONTRIBUYENTES', 1)
INSERT dbo.TipoDocumento ( nombre, estado) VALUES ('PASAPORTE'                       , 1)
INSERT dbo.TipoDocumento ( nombre, estado) VALUES ('PART. DE NACIMIENTO-IDENTIDAD'   , 1)
*/
INSERT maestro.TipoDocumento (codigoTipoDocumento,descripcion, inicales, activo) VALUES ( '01','DOCUMENTO NACIONAL DE IDENTIDAD' , 'DNI', 1)
INSERT maestro.TipoDocumento (codigoTipoDocumento,descripcion, inicales, activo) VALUES ( '04','CARNET DE EXTRANJERIA'           , 'CE' , 1)
INSERT maestro.TipoDocumento (codigoTipoDocumento,descripcion, inicales, activo) VALUES ( '00','OTROS TIPOS DE DOCUMENTOS'       , 'OTR', 1)
INSERT maestro.TipoDocumento (codigoTipoDocumento,descripcion, inicales, activo) VALUES ( '06','REGISTRO ÚNICO DE CONTRIBUYENTES', 'RUC', 1)
INSERT maestro.TipoDocumento (codigoTipoDocumento,descripcion, inicales, activo) VALUES ( '07','PASAPORTE'                       , 'PAS', 1)
INSERT maestro.TipoDocumento (codigoTipoDocumento,descripcion, inicales, activo) VALUES ( '11','PART. DE NACIMIENTO-IDENTIDAD'   , 'P. NAC.', 1)

-----------------------------SCHEMA DBO-----------
/*
SELECT* FROM Empresa
*/
INSERT Empresa ( razonSocial, razonSocialCorto, ruc, direccionFiscal, estado) VALUES ( N'Creative Store' , N'CS', N'54214578965', N'av. pitty m calle 12', 1)
INSERT Empresa ( razonSocial, razonSocialCorto, ruc, direccionFiscal, estado) VALUES ( N'Tech Support'   , N'TS', N'23546589742', N'av. Venezuela sn '   , 1)
INSERT Empresa ( razonSocial, razonSocialCorto, ruc, direccionFiscal, estado) VALUES ( N'Paltarumi SAC'  , N'PR', N'65245871235', N'cc la rambla Brasil' , 1)
INSERT Empresa ( razonSocial, razonSocialCorto, ruc, direccionFiscal, estado) VALUES ( N'AMC SYSTEMS'    , N'AMC',N'21458796354', N'av. 15 de junio sn ' , 1)
INSERT Empresa ( razonSocial, razonSocialCorto, ruc, direccionFiscal, estado) VALUES ( N'COPPERFIELD'    , N'CF', N'32541587254', N'calle Saragoza 16'   , 1)
INSERT Empresa ( razonSocial, razonSocialCorto, ruc, direccionFiscal, estado) VALUES ( N'SISCO DEV'      , N'SD', N'63256987256', N'av. las palamas 215' , 1)

/*
SELECT* FROM Usuario
*/
INSERT Usuario ( usuario, password, nick, nombres, apellidos, idTipoDocumento, nroDocumento, idEmpresa, estado) VALUES ( N'cesar.garcia@creativestore.pe'  , N'$2a$11$go6zlx', NULL, N'Cesar'  , N'Garcia', '01', N'65487598', 1, 1)
INSERT Usuario ( usuario, password, nick, nombres, apellidos, idTipoDocumento, nroDocumento, idEmpresa, estado) VALUES ( N'juan.duarte@techsupport.pe'     , N'$2a$11$go6zlx', NULL, N'Juan'   , N'Duarte', '01', N'65487598', 2, 1)
INSERT Usuario ( usuario, password, nick, nombres, apellidos, idTipoDocumento, nroDocumento, idEmpresa, estado) VALUES ( N'robert.mendez@creativestore.pe' , N'$2a$11$go6zlx', NULL, N'Robert' , N'Mendez', '01', N'65487598', 1, 1)
INSERT Usuario ( usuario, password, nick, nombres, apellidos, idTipoDocumento, nroDocumento, idEmpresa, estado) VALUES ( N'juan.flores@creativestore.pe'   , N'$2a$11$go6zlx', NULL, N'Juan'   , N'Flores', '01', N'65487598', 1, 1)
INSERT Usuario ( usuario, password, nick, nombres, apellidos, idTipoDocumento, nroDocumento, idEmpresa, estado) VALUES ( N'richard.diaz@techsupport.pe'    , N'$2a$11$go6zlx', NULL, N'Richard', N'Díaz'  , '01', N'65487598', 2, 1)
INSERT Usuario ( usuario, password, nick, nombres, apellidos, idTipoDocumento, nroDocumento, idEmpresa, estado) VALUES ( N'melisa.villar@techsupport.pe'   , N'$2a$11$go6zlx', NULL, N'Melissa', N'Villar', '01', N'65487598', 2, 1)

/*
SELECT* FROM Modulo
*/
INSERT Modulo ( nombre, estado) VALUES ( N'balanza'                 , 1)  
INSERT Modulo ( nombre, estado) VALUES ( N'Muestreo'                , 1) 
INSERT Modulo ( nombre, estado) VALUES ( N'Laboratorio'             , 1) 
INSERT Modulo ( nombre, estado) VALUES ( N'Liquidacion'             , 1) 
INSERT Modulo ( nombre, estado) VALUES ( N'Documentación Comercial' , 1) 
INSERT Modulo ( nombre, estado) VALUES ( N'Gerencia'                , 1) 
INSERT Modulo ( nombre, estado) VALUES ( N'Fiscalización'           , 1) 

/*
SELECT* FROM ModuloUsuario
*/
INSERT ModuloUsuario ( idUsuario, idModulo, idEmpresa) VALUES ( 2, 1, 1)
INSERT ModuloUsuario ( idUsuario, idModulo, idEmpresa) VALUES ( 1, 1, 1)
INSERT ModuloUsuario ( idUsuario, idModulo, idEmpresa) VALUES ( 3, 1, 2)
INSERT ModuloUsuario ( idUsuario, idModulo, idEmpresa) VALUES ( 4, 1, 1)
INSERT ModuloUsuario ( idUsuario, idModulo, idEmpresa) VALUES ( 5, 1, 2)
INSERT ModuloUsuario ( idUsuario, idModulo, idEmpresa) VALUES ( 6, 1, 1)

/*
SELECT* FROM maestro.Concesion
*/
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('100001101', 'EL FUTURO'          , 'AREQUIPA', 'CARAVELI', 'CARAVELI'  , 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('010127200', 'CRISTOFORO 15'      , 'AREQUIPA', 'CARAVELI', 'CARAVELI'  , 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('010341610', 'SANTA VICTORIA 2010', 'ANCASH'  , 'HUARAZ'  , 'HUARAZ'    , 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('520004511', 'APOCALYPTO I'       , 'ANCASH'  , 'HUARAZ'  , 'COTAPARACO', 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('620003611', 'DYLAN UNO'          , 'JUNIN'   , 'TARMA'   , 'INGENIO'   , 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('620003584', 'LIBRA I'            , 'JUNIN'   , 'TARMA'   , 'INGENIO'   , 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('620003711', 'CRISTOFORO 15'      , 'AREQUIPA', 'CARAVELI', 'CHAPARRA'  , 1) 
INSERT maestro.Concesion (codigoUnico, nombre, departamento, provincia, distrito, activo) VALUES ('620003647', 'LIBRA I'            , 'ANCASH'  , 'HUARAZ'  , 'TARMA'     , 1)


/*
SELECT* FROM maestro.Conductor
*/
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('AURELIO PALLI'          , '1', '12345678', 'H-41014289', 1)
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('JAIME MAMANI MAMANI'    , '1', '12345678', 'U-43263922', 1)
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('FELIPE PUMA'            , '1', '12345678', 'U-42075260', 1)
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('LINO MAYTA'             , '1', '12345678', 'U-80670967', 1)
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('MAXIMO CAHUINA'         , '1', '12345678', 'U-80670967', 1)
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('ROGER CAHUINA'          , '1', '12345678', 'U-80670967', 1)
INSERT maestro.Conductor (nombres, codigoTipoDocumento, numeroDocumento, brevete, activo) VALUES ('ROGER VILCA HUIZA'      , '1', '12345678', 'U-42075260', 1)

/*
SELECT* FROM maestro.Proveedor
*/
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10427912877', 'APFATA HUAMANI RICHARD ALBERTO', 'Direccion 01', '1234567', 'rapfatah@correo.com'       , 1)
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10634025141', 'FARFAN CAYO BORIS BLADIMIR'    , 'Direccion 01', '1234567', 'bfarfanc@correo.com'       , 1)
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10010138197', 'GONZALES TAFUR JOSE GENARO'    , 'Direccion 01', '1234567', 'jgonzalest@correo.com'     , 1)
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('20455318727', 'MINERA LA ESPAÑOLA S.A.'       , 'Direccion 01', '1234567', 'minera.espanola@correo.com', 1)
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('20534572582', 'GRUPO RAM S.R.L.'              , 'Direccion 01', '1234567', 'grupo.ram@correo.com'      , 1)
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10010166492', 'CRUZADO GONZALES MARIA ERODIT' , 'Direccion 01', '1234567', 'mcruzadog@correo.com'      , 1)
INSERT maestro.Proveedor (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10427912877', 'INVERSIONES ISABEL LUBRA EIRL' , 'Direccion 01', '1234567', 'isabellubra@correo.com'    , 1)


/* 
SELECT* FROM maestro.Transportista
*/
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10458618882', 'SIMPLICIO QUIJANO CRUZ'          , 'Direccion 01'  ,'3557810' , 'cquijanoc@correo.com'       , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10446477051', 'HELTON CORONEL PACHECO'          , 'Direccion 08'  ,'5335455' , 'hcoronelp@correo.com'       , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10458618882', 'GLADYS YESENIA SIVANA SACSI'     , 'Direccion 04'  , '1234567', 'rapfatah@correo.com'        , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10446477051', 'MONTENEGRO PALLI RINA LUCILA'    , 'Direccion 01'  , '1234567', 'bfarfanc@correo.com'        , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('20606160144', 'TRANSPORTE MINERA SAN FRANCISCO' , 'Direccion 05'  , '1234567', 'jgonzalest@correo.com'      , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('20455318727', 'MINERA LA ESPAÑOLA S.A.'         , 'Direccion 03'  , '1234567', 'minera.espanola@correo.com' , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10021050321', 'ROGER PETHER VILCA HUIZA'        , 'Direccion 02'  , '1234567', 'grupo.ram@correo.com'       , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10010166492', 'TRANSPORTES PAZ SN'              , 'SAN FRANCISCO' , '1234567', 'mcruzadog@correo.com'       , 1)
INSERT maestro.Transportista (ruc, razonSocial, direccion, telefono, email, activo) VALUES ('10427912877', 'J. GONZALES DESTRIBUCIONES'      , 'Direccion 01'  , '1234567', 'mondragon@correo.com'       , 1)

/*
SELECT * FROM maestro.Vehiculo
*/
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('02', '01', 'V3A-714', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('02', '01', 'Z2X-884', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('03', '02', 'Z1T-809', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('01', '02', 'V8U-760', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('01', '03', 'Z6X-837', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('01', '03', 'Z1D-934', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('01', '03', 'C1Z-923', 1)
INSERT maestro.Vehiculo (codigoTipoVehiculo, codigoMarca, placa, activo) VALUES ('01', '03', 'C14-963', 1)

/*
SELECT * FROM balanza.Lote
*/
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0517', '01', '01', 'A1A-145','BUYTRAGO','00124','EDWIN ROJAS'     ,'01/02/2022', '10:15', '01/02/2022', '11:27', '02', 'GRANEL','14.500' , '14.250', '14.200', '15.20', '12.296', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0518', '02', '02', 'K4J-547','REDPACKK','00174','FRANKLIN RICHARD','01/02/2022', '12:00', '02/02/2022', '14:02', '01', '123'   ,'13.500' , '13.250', '13.150', '2.56',  '13.154', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0519', '03', '03', 'T7Y-567','AZZKKARR','00145','MARIO TORRES'    ,'02/02/2022', '12:05', '04/02/2022', '17:30', '03', '130'   ,'15.000' , '14.500', '14.400', '1.20',  '14.820', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0530', '01', '04', '7NH-675','TP-TIPSA','00235','ELMER GUTIERREZ' ,'07/02/2022', '09:52', '07/02/2022', '11:02', '01', 'GRANEL','10.200' , '9.850' , '9.750' , '2.40',  '9.955' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0550', '02', '02', 'H5R-645','NACEX-01','00147','JORGE ÁLVAREZ'   ,'07/02/2022', '11:02', '07/02/2022', '11:30', '02', '10'    ,'9.580'  , '9.400' , '9.200' , '3.50',  '9.245' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0551', '02', '02', 'TR5-675','FED-EX99','00245','JOSHEP MONTES'   ,'07/02/2022', '11:30', '07/02/2022', '12:00', '03', '21'    ,'2.770'  , '2.230' , '2.200' , '3.80',  '2.265' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0519', '03', '03', '6YR-562','SSOUTTOO','00254','DEYVIS DIAS'     ,'07/02/2022', '15:03', '09/02/2022', '18:58', '03', '200'   ,'18.200' , '17.750', '17.600', '1.20',  '17.982', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0530', '01', '04', 'U6G-254','ENVIALIA','00478','FERMIN CONTRERAS','09/02/2022', '11:01', '12/02/2022', '14:00', '03', 'GRANEL','20.000' , '19.650', '19.630', '2.30',  '19.540', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0580', '02', '02', 'Y6T-756','REDDYSER','00125','WALTER FLORES'   ,'11/02/2022', '12:02', '12/02/2022', '13:58', '03', '70'    ,'6.520'  , '6.130' , '6.120' , '3.65',  '6.282' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0581', '01', '05', 'Y4R-785','BUYTRAGO','00126','GILBER GARCIA'   ,'11/02/2022', '14:22', '11/02/2022', '13:18', '02', 'GRANEL','21.020' , '20.950', '20.945', '3.33',  '20.320', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0581', '01', '05', 'M5H-123','REDDYSER','00127','EMERSON GIMÉNEZ' ,'12/02/2022', '23:00', '13/02/2022', '13:20', '02', 'GRANEL','8.690'  , '8.300' , '8.200' , '3.33',  '8.400' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0585', '04', '06', 'G0H-223','FED-EX99','00128','MANUEL GÓMEZ'    ,'12/02/2022', '10:01', '14/02/2022', '11:51', '01', '230'   ,'27.100' , '26.800', '26.500', '27.10', '19.756', '01', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0530', '01', '04', 'Y4R-745','REDPACKK','00129','MARIO GONZALES'  ,'14/02/2022', '09:10', '15/02/2022', '09:44', '03', 'GRANEL','18.000' , '17.560', '17.550', '2.30',  '17.586', '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0587', '02', '02', 'J4R-268','ENVIALIA','00130','JORGE ÁLVAREZ'   ,'14/02/2022', '23:00', '15/02/2022', '01:50', '02', '74'    ,'6.020'  , '5.770' , '5.680' , '3.10',  '5.833' , '01', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0594', '02', '02', 'O5T-759','BUYTRAGO','00131','EMERSON GIMÉNEZ' ,'15/02/2022', '08:50', '16/02/2022', '12:00', '03', '15'    ,'10.000' , '9.900' , '9.800' , '1.50',  '9.850' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0594', '02', '02', 'H4D-214','REDPACKK','00132','JHONATAN VILA'   ,'19/02/2022', '12:15', '19/02/2022', '18:54', '03', '25'    ,'10.000' , '9.900' , '9.800' , '2.50',  '9.750' , '02', '-', 1)
INSERT balanza.Lote ( codigo, idConcesion, idProveedor,vehiculos,transportistas, tickets,conductores,fechaIngreso, horaIngreso, fechaAcopio, horaAcopio, codigoEstadoTipoMaterial, cantidadSacos, tmh100, tmhBase, tmh, humedad, tms, codigoEstado, observacion, activo) VALUES ('L-0594', '02', '02', '9R5-987','AZZKKARR','00133','DEYVIS DIAS'     ,'23/02/2022', '17:02', '24/02/2022', '07:55', '03', '35'    ,'10.000' , '9.900' , '9.800' , '3.50',  '9.650' , '02', '-', 1)

/*
SELECT * FROM balanza.CheckList
*/
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (1, 1, '01', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (2, 1, '03', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (2, 1, '04', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (2, 1, '04', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (3, 1, '02', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (3, 1, '02', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (3, 1, '01', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (1, 1, '03', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (4, 1, '02', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (1, 1, '01', 1, '-')
INSERT balanza.CheckList (idLote, habilitado,codigoDocumentoVerificacion,codigoEstado,observacion) VALUES (4, 1, '03', 1, '-')

/*
SELECT * FROM balanza.LeyesReferenciales
*/
--INSERT balanza.LeyesReferenciales (fechaRecepcion, idDuenoMuestra,codigoMuestra,codigoPlanta,codigoLaboratorio, activo) VALUES ('03/02/2022', 1, '01', '01', 1,1)--03/02/2022  APFATA HUAMANI RICHARD ALBERTO  500/APFATA HUAMANI RICHARD ALBERTO  PN-9379  OXIDO POLVEADO 35519 

/*
SELECT * FROM balanza.Ticket
*/
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 2, N'T-0517', N'01/06/2022', '02:25', N'03/06/2022', '02:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 1, N'T-0518', N'01/06/2022', '08:25', N'03/06/2022', '08:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 4, N'T-0519', N'02/06/2022', '06:25', N'04/06/2022', '06:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 2, N'T-0520', N'02/06/2022', '11:25', N'04/06/2022', '11:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 1, N'T-0521', N'03/06/2022', '08:25', N'05/06/2022', '08:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 2, N'T-0522', N'04/06/2022', '12:25', N'06/06/2022', '12:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 3, N'T-0523', N'04/06/2022', '16:25', N'06/06/2022', '16:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)
INSERT balanza.Ticket ( idLote, numero, fechaIngreso,horaIngreso, fechaSalida,horaSalida, pesoBruto, tara, pesoNeto, grr, grt, idTransportista, idConductor, idVehiculo, codigoTipoVehiculo, codigoUnidadMedida, cantidadUnidadMedida, observacion, activo) VALUES ( 4, N'T-0524', N'05/06/2022', '09:25', N'07/06/2022', '09:25', 110, 11, 12, N'11', N'11', 2, 1, 2, N'01', N'01', 11, N'-', 1)


/*
SELECT * FROM balanza.Recodificacion
*/
--INSERT balanza.Recodificacion ( codigoTipoLoteRecodificacion, codigoTipoOrigen, idTablaOrigen, codigo, codigoLaboratorio, activo) VALUES ( N'02', 11, N'01', N'1010', N'0', 1)

/*
SELECT * FROM balanza.Maestro
*/
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'01', N'00', N'ESTADO TIPO MINERAL', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'01', N'01', N'LLAMPO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'01', N'02', N'CRUDO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'01', N'03', N'POLVEADO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'02', N'00', N'UNIDAD DE MEDIDA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'02', N'01', N'GRANEL', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'02', N'02', N'SACOS', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'02', N'03', N'BIG BAG', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'03', N'00', N'ESTADO LOTES', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'03', N'01', N'EN CANCHA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'03', N'02', N'RETIRADO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'03', N'03', N'ANULADO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'04', N'00', N'TIPO LOTE RECODIFICACIÓN', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'04', N'01', N'INICIAL', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'04', N'02', N'REMUESTREO DE CANCHA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'04', N'03', N'REMUESTREO DE SACO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'05', N'00', N'VEHICULO MARCA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'06', N'00', N'VEHICULO TIPO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'00', N'CHECKLIST', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'08', N'00', N'ESTADO TMH', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'09', N'00', N'TIPO MATERIAL', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'05', N'01', N'MITSUBISHI', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'05', N'02', N'VOLVO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'05', N'03', N'SCANIA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'05', N'04', N'VOLKSWAGEN', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'06', N'01', N'CAMIÓN', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'06', N'02', N'VOLQUETE', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'06', N'03', N'PLATAFORMA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'01', N'GUÍA DE RECEPCIÓN DE MINERAL', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'02', N'TICKET DE PESAJE', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'03', N'GUÍA DE REMISIÓN REMITENTE', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'04', N'GUÍA DE REMISIÓN TRANSPORTISTA', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'05', N'CONSULTA SUNAT', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'06', N'AUTORIZACIÓN DE COMPROBANTE (GRR)', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'07', N'AUTORIZACIÓN DE COMPROBANTE (GRT)', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'08', N'REINFO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'09', N'CONSULTA MINEROS FORMALIZADOS', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'10', N'RECPO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'11', N'CONSULTA VEHÍCULO SUNARP', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'12', N'COMODATO', 1)
INSERT balanza.Maestro ( codigoTabla, codigoItem, descripcion, activo) VALUES ( N'07', N'13', N'CONSULTA DE LICENCIAS MTC', 1)
