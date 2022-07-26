----------------------------------------------------------------
-- Module : LabH2021
-- Developer : Apellido y Nombre del alumno
--
-- Programacion III - Laboratorio Haskell 2021
----------------------------------------------------------------
module LabH2021 where
----------------------------------------------------------------
-- Base de Datos Simplificada: SISTEMA DE STOCK DE ALMACEN
-----------------------------------------------------------------
type Cod_Item = Int -- Codigo Interno del producto
type Item = String -- Descripcion del producto
type Marca = String -- Marca
type Rubro = String -- Rubro
type Cod_Proveedor = Int -- Codigo Interno del proveedor
type U_Med = String -- Unidad de Medida: 1LT,800GRM, 1500CM3, etc
type Cant_Existente = Int -- cantidad de productos en deposito (E)
type V_Min = Int -- valor en existencia recomendado para reposicion (EMin)
type V_Max = Int -- valor maximo de acopio en deposito (EMax)
type Precio_U = Float -- precio o valor de compra unitario
type P_Ganancia = Int -- Porcentaje de ganancia sobre el precio de compra
type Nombre = String
type Direccion = String
type Telefono = String
-- tupla con datos de 1 item de Stock
type Item_Stock = (
 Cod_Item,
 Item,
 Marca,
 Rubro,
 Cod_Proveedor,
 U_Med,
 Cant_Existente,
 V_Min,
 V_Max,
 Precio_U,
 P_Ganancia
 )
-- tupla con datos de 1 proveedor
type Proveedor = (
 Cod_Proveedor,
 Nombre,
 Direccion,
 Telefono
 )
-- Tablas BD
type T_Stock = [Item_Stock] --Tabla con el Stock de un comercio
type T_Proveedor = [ Proveedor] --Tabla con los proveedores de un comercio
--funciones de extracción
codItem (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= cod
item (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= item
marca(cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= marca
rubro(cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= rubro
prov (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= prov
umed (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= umed
cant (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= cant
cmin (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= cmin
cmax(cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= cmax
preciou (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= preciou
pgan (cod,item,marca,rubro,prov,umed,cant,cmin,cmax,preciou,pgan)= pgan
-- datos predefinidos (Ejemplo) 
tabla1S:: T_Stock
tabla1S= [(100,"ARROZ GRANO GRANDE","CONDOR","Alimentos",20,"1lt",8000,500,10000,20,30),
 (107,"ARROZ GRANO GRANDE","GALLO","Alimentos",20,"1kg",6000,200,8000,25,30),
 (200,"ACEITE DE GIRASOL","NATURA","Alimentos",20,"1lt",9800,600,10000,40,30),
 (200,"ACEITE DE GIRASOL","COCINERO","Alimentos",20,"1Llt",900,500,10000,30,30),
 (410,"AGUA MINERAL S/GAS BAJO SODIO","SER","Alimentos",31,"1.5lt",20,50,3000,10,35),
 (412,"AGUA SABORIZADA LIMA LIMON","SER","Alimentos",31,"2lt",1570,50,3000,15, 35),
 (478,"ALFAJOR CHOCOLATE TITA","TERRABUSI","Alimentos",31,"36gr",900,200,5000,4, 30),
 (479,"ALFAJOR CHOCOLATE RODESIA","TERRABUSI","Alimentos",31,"40gr",9,200,3500, 4,30),
 (708,"LECHE DESC. PASTEURIZADA","SERENISIMA","Alimentos",31,"1lt",230,100,1200,20,30),
 (767,"ARVEJAS SECAS REMOJADAS", "NOEL","Alimentos",20,"300gr",1203,500,3000,10,30),
 (801,"ANTITRANSPIRANTE ROLL ON","ETIQUET","Perfumeria",20,"60gr",30,45,2000,25,30)]
tabla1P :: T_Proveedor
tabla1P= [ (20,"Juan Perez","Belgrano 1827, San Luis, 5700, Argentina","2664-786543"),
 (31,"Jose Lopez","Junin 444, Mendoza,5500, Argentina","261-3452677")]

--Ejercicio1 
fcodItems tabla = map (aux) tabla
	where 
		aux tupla = (codItem tupla,item tupla,marca tupla)
--Ejercicio 2
increPU tabla x = map (aux) tabla
	where 
		aux tuplas = (codItem tuplas,item tuplas,marca tuplas,rubro tuplas,prov tuplas,umed tuplas,cant tuplas,cmin tuplas,cmax tuplas,preciou tuplas+(preciou tuplas*(x/100)),pgan tuplas) 
--Ejercicio 3		
fReponer tabla = filter (aux) tabla
	where
		aux tuplas = (cant tuplas) < (cmin tuplas)