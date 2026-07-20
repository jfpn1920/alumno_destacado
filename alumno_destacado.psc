Algoritmo alumno_destacado
	Definir opcion, totalAlumnos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir nombre Como Caracter
	Definir curso Como Caracter
	Definir promedio Como Real
	Definir reconocimiento Como Caracter
	Definir profesor Como Caracter
	Definir fecha Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension nombre[100]
	Dimension curso[100]
	Dimension promedio[100]
	Dimension reconocimiento[100]
	Dimension profesor[100]
	Dimension fecha[100]
	Dimension estado[100]
	totalAlumnos <- 0
	siguienteID <- 1
	//-------------------------------------//
	//--|menu_principal_alumno_destacado|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal alumno destacado"
		Escribir "1) registrar alumno"
		Escribir "2) editar alumno"
		Escribir "3) eliminar alumno"
		Escribir "4) buscar alumno"
		Escribir "5) listar alumnos"
		Escribir "6) ver detalles del alumno"
		Escribir "7) salir"
		Escribir "seleccione una opción:"
		Leer opcion
		Segun opcion Hacer
			//----------------------//
			//--|registrar_alumno|--//
			//----------------------//
			1:
				Escribir "registrar alumno destacado"
				Si totalAlumnos < 100 Entonces
					id[totalAlumnos + 1] <- siguienteID
					siguienteID <- siguienteID + 1
					Escribir "id asignado: ", id[totalAlumnos + 1]
					Escribir "ingrese el nombre:"
					Leer nombre[totalAlumnos + 1]
					Escribir "ingrese el curso:"
					Leer curso[totalAlumnos + 1]
					Escribir "ingrese el promedio:"
					Leer promedio[totalAlumnos + 1]
					Escribir "ingrese el reconocimiento:"
					Leer reconocimiento[totalAlumnos + 1]
					Escribir "ingrese el profesor responsable:"
					Leer profesor[totalAlumnos + 1]
					Escribir "ingrese la fecha:"
					Leer fecha[totalAlumnos + 1]
					Escribir "ingrese el estado:"
					Leer estado[totalAlumnos + 1]
					totalAlumnos <- totalAlumnos + 1
					Escribir "alumno destacado registrado correctamente."
				SiNo
					Escribir "no es posible registrar más alumnos."
				FinSi
			//-------------------//
			//--|editar_alumno|--//
			//-------------------//
			2:
				Escribir "editar alumno"
				Si totalAlumnos = 0 Entonces
					Escribir "no hay alumnos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAlumnos Hacer
						Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", promedio[i], " | ", reconocimiento[i], " | ", profesor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del alumno:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlumnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre:"
							Leer nombre[i]
							Escribir "ingrese el nuevo curso:"
							Leer curso[i]
							Escribir "ingrese el nuevo promedio:"
							Leer promedio[i]
							Escribir "ingrese el nuevo reconocimiento:"
							Leer reconocimiento[i]
							Escribir "ingrese el nuevo profesor:"
							Leer profesor[i]
							Escribir "ingrese la nueva fecha:"
							Leer fecha[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "alumno editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alumno con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|eliminar_alumno|--//
			//---------------------//
			3:
				Escribir "eliminar alumno"
				Si totalAlumnos = 0 Entonces
					Escribir "no hay alumnos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAlumnos Hacer
						Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", promedio[i], " | ", reconocimiento[i], " | ", profesor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del alumno:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlumnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAlumnos Entonces
								Para j <- i Hasta totalAlumnos - 1 Hacer
									id[j] <- id[j+1]
									nombre[j] <- nombre[j+1]
									curso[j] <- curso[j+1]
									promedio[j] <- promedio[j+1]
									reconocimiento[j] <- reconocimiento[j+1]
									profesor[j] <- profesor[j+1]
									fecha[j] <- fecha[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalAlumnos <- totalAlumnos - 1
							Escribir "alumno eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alumno con ese id."
					FinSi
				FinSi
			//-------------------//
			//--|buscar_alumno|--//
			//-------------------//
			4:
				Escribir "buscar alumno"
				Si totalAlumnos = 0 Entonces
					Escribir "no hay alumnos registrados."
				SiNo
					Escribir "ingrese el id del alumno:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlumnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", promedio[i], " | ", reconocimiento[i], " | ", profesor[i], " | ", fecha[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alumno con ese id."
					FinSi
				FinSi
			//--------------------//
			//--|listar_alumnos|--//
			//--------------------//
			5:
				Escribir "listar alumnos"
				Si totalAlumnos = 0 Entonces
					Escribir "no hay alumnos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAlumnos Hacer
						Escribir id[i], " | ", nombre[i], " | ", curso[i], " | ", promedio[i], " | ", reconocimiento[i], " | ", profesor[i], " | ", fecha[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------//
			//--|ver_detalles_del_alumno|--//
			//-----------------------------//
			6:
				Escribir "ver detalles del alumno"
				Si totalAlumnos = 0 Entonces
					Escribir "no hay alumnos registrados."
				SiNo
					Escribir "ingrese el id del alumno:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlumnos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del alumno"
							Escribir "id: ", id[i]
							Escribir "nombre: ", nombre[i]
							Escribir "curso: ", curso[i]
							Escribir "promedio: ", promedio[i]
							Escribir "reconocimiento: ", reconocimiento[i]
							Escribir "profesor: ", profesor[i]
							Escribir "fecha: ", fecha[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alumno con ese id."
					FinSi
				FinSi
			//--------------------------//
			//--|salir_menu_principal|--//
			//--------------------------//
			7:
				Escribir "gracias por utilizar alumno destacado."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo