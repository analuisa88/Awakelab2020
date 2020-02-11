
Funcion Prom3not <- Prom ( N1,N2,N3 )
	Prom3not<-(N1+N2+N3)/3
Fin Funcion

Funcion Fbano(N_bano,gen_bano)
	Si gen_bano="mujer" Entonces
		Escribir N_bano, " diríjase al baño de Mujeres en el primer piso"
	Fin Si
	Si gen_bano="hombre" Entonces
		Escribir N_bano, " diríjase al baño de Hombres en el segundo piso"
	Fin Si
Fin Funcion
Funcion pbano(N_bano,serv_bano)
	Si serv_bano="baño" Entonces
		Escribir N_bano, "el valor del baño tiene un costo de $250 pesos."
	Fin Si
	Si serv_bano="ducha" Entonces
		Escribir N_bano, "el valor de la ducha tiene un costo de $2500 pesos."
	Fin Si
	
Fin Funcion


Algoritmo Prueba_1
	Repetir
		Limpiar Pantalla
		Escribir "Menú:"
		Escribir "1. Secuencial:"
		Escribir "2. Condicional Si Entonces"
		Escribir "3. Condicional Si entonces anidado:"
		Escribir "4. Condicional Según:"
		Escribir "5. Repetitiva Mientras"
		Escribir "6. Repetitiva Repetir"
		Escribir "7. Repetitiva Para"
		Escribir "8. Arreglo Simple"
		Escribir "9. Arreglo Bidimensional"
		Escribir "10. Salir"
		
		Escribir "Ingrese una opción del 1 al 10"
		Leer Op
		//Procesando la opción indicada
		Segun Op Hacer
			1:
				Limpiar Pantalla
				Escribir "1. Secuencial"
				Escribir "Ingrese el primer número a promediar"
				Leer N1
				Escribir "Ingrese el segundo número a promediar"
				Leer N2
				Escribir "Ingrese el tercer número a promediar"
				Leer N3
				
				Escribir "El promedio de ",N1," ",N2," ",N3, " es ", Prom(N1,N2,N3)
			2:
				Limpiar Pantalla
				Escribir "2. Condicional Si Entonces"
				Escribir "Por favor, ingrese su nombre"
				Leer N_bano
				Escribir "Ahora ingrese su género (hombre-mujer)"
				Leer gen_bano
				Fbano(N_bano,gen_bano)
				
			3:
				Limpiar Pantalla
				Escribir "3. Condicional Si entonces anidado:"
				Escribir "Por favor, ingrese su nombre"
				Leer N_bano
				Escribir "Ahora ingrese su género (hombre-mujer)"
				Leer gen_bano
				Fbano(N_bano,gen_bano)
				Escribir "¿Qué servicio desea utilizar (baño o ducha)?"
				Leer serv_bano
				pbano(serv_bano)
			4:
				Limpiar Pantalla
				Escribir "4. Condicional Según:"
				Escribir "Ingresa un número del 1 al 10"
				Leer E_num
				Segun E_num Hacer
					1:
						Escribir "Uno"
					2:
						Escribir "Dos"
					3:
						Escribir "Tres"
					4:
						Escribir "Cuatro"
					5:
						Escribir "Cinco"
					6:
						Escribir "Seis"
					7:
						Escribir "Siete"
					8:
						Escribir "Ocho"
					9:
						Escribir "Nueve"
					10:
						Escribir "Diez"
					De Otro Modo:
						Escribir "Recuerda que debe ser entre 1 y 10. Vuelve a intentarlo"
				Fin Segun
			5:
				Limpiar Pantalla
				Escribir "5. Repetitiva Mientras"
				
				
			6:
				Limpiar Pantalla
				Escribir "6. Repetitiva Repetir"
				Escribir "¿Crees ser capaz de adivinar mi nombre?, Te desafío"
				Escribir "Una pista: inicia con J"
				Escribir "¿Cuál crees que es mi nombre?"
				Leer N_ing
				
				NElegido="Juan"
				intentos<-100
				Mientras N_ing <> "Juan" Y intentos>1 Hacer
					Si N_ing<>NElegido Entonces
						Escribir "Eehh no. Inténtalo con más ganas"
					Fin Si
					intentos<-intentos-1
					Leer N_ing
				Fin Mientras
				Si N_ing="Juan" Entonces
					Escribir "¡Ganaste! Has Adivinado mi nombre en ",101-intentos," intentos."
				FinSi
			7:
				Limpiar Pantalla
				Escribir "7. Repetitiva Para"
				Escribir "Indíquenme sus nombres por favor (Hasta diez)"
				Leer Np1
				Leer Np2
				Leer Np3
				Leer Np4
				Leer Np5
				Leer Np6
				Leer Np7
				Leer Np8
				Leer Np9
				Leer Np10
				Definir matriz como caracter
				Dimension Fun_ejer7(10)
				//A cada arreglo le asignamos un nombre
				Fun_ejer7(1)=Np1
				Fun_ejer7(2)=Np2
				Fun_ejer7(3)=Np3
				Fun_ejer7(4)=Np4
				Fun_ejer7(5)=Np5
				Fun_ejer7(6)=Np6
				Fun_ejer7(7)=Np7
				Fun_ejer7(8)=Np8
				Fun_ejer7(9)=Np9
				Fun_ejer7(10)=Np10
				
				cont=0
				Para i<-1 Hasta 10 Con Paso 1 Hacer
					Si Np1=Np2   Entonces
						cont=Np1+1
						Escribir "El nombre ",Np1,"se repite",cont," veces."
					SiNo
						Escribir "No existen nombres repetidos"
					Fin Si
				Fin Para
				
			8:
				Limpiar Pantalla
				Escribir "8. Arreglo Simple"
			9:
				Limpiar Pantalla
				Escribir "9. Arreglo Bidimensional"
				Escribir "Ingrese el nombre del alumno"
				
			10:
				Limpiar Pantalla
				Escribir "Gracias por su visita. Hasta Luego"
			De Otro Modo:
				Escribir "Opción no válida. Inténtelo nuevamente"
		Fin Segun
		Escribir "Presione Enter para continuar"
		Esperar Tecla
	Hasta Que Op=10
FinAlgoritmo
