;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname proyecto) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(start 900 700)

;;variables de llegada del muñeco
(define a2 795)
(define b1 800)
(define b2 795)
(define b3 802)
(define b4 806)
(define b5 808)
(define b6 810)
(define b7 793)
(define b8 791)
(define b10 798)
(define b11 797 )
(define b12 799)
(define b13 800)
;;variablles de bajada
(define a3 730)
(define a1 480)
(define a 500)
(define b 510)
(define c 525)
(define d 535)
(define y 545)
(define f 568)
(define g 565)
(define j 515)
;;variables llegada 
(define a4 730)
(define c1 735)
(define c11 750)
(define c2 745)
(define c3 742)
(define c4 740)
(define c5 748)
(define c6 747)
(define c7 749)
(define c8 750)

;;ventanas
(define z1 512)
(define z 495)

;;ventanas de bajada
(define z2 483)
(define z3 503)

(define giro 0)
(define giro1 0)
(define op 0)
(define rueda 0)
(define t1 540);;escalera
(define montadas 0)
(define t 0)
(define w 0);;luces
(define montadas1 0 );;numero de personas montadas en la rueda
(define pagar 0)


;movimiento de la salida del muñeco 
(define a5 130)
(define f1 150)
(define f2 148)
(define f3 148)
(define f4 140)
(define f5 138)
(define f6 135)
(define f7 142)
(define f8 140)

(define (menu p)
 (begin
   (fondo2 p)
   (ruedab p)
   (luces p)
   (inicia_variables p)
   (write "***********************************************")
   (newline)
   (write "*            MENU PRINCIPAL                   *")
   (newline)
   (write "***********************************************")
   (newline)
   (newline)
   (write "               1. Montar pasajero")
   (newline)
   (write "               2. Girar rueda")
   (newline)
   (write "               3. Totales")
   (newline)
   (write "               4. Final del juego ")
   (newline)
   (newline)
   (validaop p)
   
   (cond
     [(= op 1)(montar1 p)]
     [(= op 2)(girar p)]
     [(= op 3)(total p)]
     [else
      (begin 
        (newline)
        (write "********* Final del programa ***********")
        (set! montadas (* montadas 0) ))])))
(define (inicia_variables  p)
  (begin
    (set! b1 (+(* b1 0)800))
    (set! a2 (+(* a2 0)795))
    (set! b2 (+(* b2 0)795))
    (set! b3 (+(* b3 0)802))
    (set! b4 (+(* b4 0)806))
    (set! b5 (+(* b5 0)808))
    (set! b6 (+(* b6 0)810))
    (set! b7 (+(* b7 0)793))
    (set! b8 (+(* b8 0)791))
    (set! b10(+(* b10 0)798))
    (set! b11(+(* b11 0)797))
    (set! b12(+(* b12 0)799))
    (set! b13(+(* b13 0)800))
   
    (set! a3(+(* a3 0)730))
    (set! a1(+(* a1 0)480))
    (set! a (+(* a 0)500))
    (set! b (+(* b 0)510))
    (set! c (+(* c 0)525))
    (set! d (+(* d 0)535))
    (set! y (+(* y 0)545)) 
    (set! f (+(* f 0)568))
    (set! g (+(* g 0)565))
    (set! j (+(* j 0)515))
    
    (set! a4(+(* a4 0)730))
    (set! c1(+(* c1 0)745))
    (set! c2(+(* c2 0)745))
    (set! c3(+(* c3 0)742))
    (set! c4(+(* c4 0)740))
    (set! c5(+(* c5 0)748))
    (set! c6(+(* c6 0)747))
    (set! c7(+(* c7 0)749))
    (set! c8(+(* c8 0)750))
    (set! c11 (+(* c11 0 )750))
    
   (set! z1 (+(* z1 0)512));;ventana
   (set! z (+(* z 0)495))
   
   (set! z2 (+(* z2 0)483))
    (set! z3 (+(* z3 0)503))
   
  
   (set! t1(+(* t1 0 ) 540))
   
   (set! a5(+(* a5 0)130))
   (set! f1(+(* f1 0)150))
   (set! f2(+(* f2 0)148))
   (set! f3(+(* f3 0)148))
   (set! f4(+(* f4 0)140))
   (set! f5(+(* f5 0)138))
   (set! f6(+(* f6 0)135))
   (set! f7(+(* f7 0)142))
   (set! f8(+(* f8 0)140))));;ventana1

 
    
           
(define (validaop p)
  (begin
   (write "      4.Digite su opción (1-2-3-4) ?")
  (newline)
  (set! op (read))
  (cond
    [(and (>= op 1)(<= op 4))0]
    [else
     (begin
       (newline)
       (write "  debe digitar un número entre 1 a 4")
       (menu p))])))

 ;;;;;;;;;;;;;;;;partes que se  mueven;;;;;;;;;;;;;;;;;;;; 
(define (fondo2 p)
  (begin
    (draw-solid-rect (make-posn 1 1)  900 700 'turquoise)
;;nubes
(draw-solid-disk (make-posn 50 40) 30 'white)
(draw-solid-disk (make-posn 100 30) 30 'white)
(draw-solid-disk (make-posn 150 45) 40 'white)
(draw-solid-disk (make-posn 10 40) 20 'white)
(draw-solid-disk (make-posn 200 40) 30 'white)

;;nube saliendo baja
(draw-solid-disk (make-posn 710 200) 20 'white)
(draw-solid-disk (make-posn 750 200) 30 'white)
(draw-solid-disk (make-posn 800 205) 40 'white)
(draw-solid-disk (make-posn 890 200) 20 'white)
(draw-solid-disk (make-posn 850 200) 30 'white)

;;sol 
(draw-solid-disk (make-posn 720 70) 50 'gold)
;;nube cerca del sol
(draw-solid-disk (make-posn 550 90) 30 'white)
(draw-solid-disk (make-posn 600 80) 30 'white)
(draw-solid-disk (make-posn 650 95) 40 'white)
(draw-solid-disk (make-posn 510 90) 20 'white)
(draw-solid-disk (make-posn 700 90) 30 'white)


;;montañas derecha
(draw-solid-disk (make-posn 750 400) 130 'GreenYellow)
(draw-solid-disk (make-posn 850 400) 100 'MediumForestGreen)
(draw-solid-disk (make-posn 650 400) 110 'LimeGreen)
(draw-solid-disk (make-posn 550 400) 50 'YellowGreen)
                                           
;;suelo
(draw-solid-rect (make-posn 1 350)  900 350 'green)


;;cabina
(draw-solid-rect (make-posn 600 480) 100 100 'red)
(draw-solid-rect (make-posn 600 480)10 100 'white)
(draw-solid-rect (make-posn 620 480)10 100 'white)
(draw-solid-rect (make-posn 640 480)10 100 'white)
(draw-solid-rect (make-posn 660 480)10 100 'white)
(draw-solid-rect (make-posn 680 480)10 100 'white)
(draw-solid-rect (make-posn 700 480)10 100 'white)
;;ventana de la cabina
(draw-solid-rect (make-posn 600 480) 110 40 'DodgerBlue)

;;techo de la cabina
(draw-solid-rect (make-posn 600 450 ) 100 10 )
(draw-solid-rect (make-posn 580 460 ) 140 10 )
(draw-solid-rect (make-posn 570 470 ) 160 10 )
;;suelo de la cabina
(draw-solid-rect (make-posn 590 570 ) 130 10 )

;;persona dentro de la cabina 
(draw-solid-disk (make-posn 650 500) 10 'Moccasin);;cabeza
(draw-solid-rect (make-posn 640 510) 20 10 'DarkGreen);;ropa
(draw-solid-disk (make-posn 645 497) 3 'white);;ojos
(draw-solid-disk (make-posn 645 497) 2 'black);;interior de los ojos
(draw-solid-disk (make-posn 655 497) 3 'white);;ojos
(draw-solid-disk (make-posn 655 497) 2 'black);;interior de los ojos
(draw-solid-disk (make-posn 650 506) 3 'red)
(draw-solid-rect (make-posn 645 500) 10 5 'Moccasin)
;;lineas de base del centro de izquierda
(draw-solid-line (make-posn 300 300)(make-posn 200 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 201 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 202 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 203 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 205 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 206 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 204 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 207 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 208 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 209 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 210 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 211 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 212 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 213 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 215 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 216 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 214 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 217 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 218 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 219 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 220 550)'black)

;;lineas de base centro de derecha 
(draw-solid-line (make-posn 300 300)(make-posn 400 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 401 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 402 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 403 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 405 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 406 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 404 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 407 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 408 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 409 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 410 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 411 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 412 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 413 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 414 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 415 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 416 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 417 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 418 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 419 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 420 550)'black)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,

               
               (define (montar1 p)
                 (begin
                   (cond 
                   [(>= t 8) (begin
                               (newline)
                               (write "se han ocupado todo los cajones se puede dar inicio al juego  ")
                               (menu p))]    
                  
                   [else  
                    (begin
                      (entrada1 p)
                      (sleep-for-a-while 1)
                      (dinero p)
                      (sleep-for-a-while 0.10)
                      (ventana p)
                      (sleep-for-a-while 0.15)
                      (bajada1 p)
                      (llegada1 p)
                      (escalera p)
                      (per p)
                      (ventana1 p)
                      (girar1 p)
                      (set! t (+ t 1))
                      (set! montadas1 (+ montadas1 1))
                      (set! montadas (+ montadas 1))
                      (write "valor t   ")
                      (write t)
                      (newline)
                      (menu p))])))
                    
                    
                    
                    
                    
                    
                    
                    
               

(define (girar p)
  (begin
    (cond
      [(<= giro 7)
       (begin
         (ruedab p)
         (sleep-for-a-while 0.50)
         (ruedac p)
         (sleep-for-a-while 0.50)
         (set! giro(+ giro 1))
         (girar p))]
      [else 
       (begin
         (ciclo-bajada p)
         (set! giro(* giro 0))
         (menu p))])))
   
(define (total p) 
  (begin
  (newline)
  (write "numero de personas  montadas en el dia") 
  (newline)
  (write montadas)
  (newline)
  (write "total ganacias del dia")
  (newline)
  (set! pagar (* montadas 5000))
  (write pagar)
  (newline)
   (menu p)))


(define (ruedab p)
  (begin
(draw-solid-rect (make-posn 0 60 )550 350 'turquoise )
;;montañas de la izquierda
(draw-solid-disk (make-posn 150 400) 130 'GreenYellow)
(draw-solid-disk (make-posn 50 400) 80 'MediumForestGreen)
(draw-solid-disk (make-posn 250 400) 110 'LimeGreen)
;;piso
(draw-solid-rect (make-posn 0 350) 550 350'green)
;;nubes
(draw-solid-disk (make-posn 50 40) 30 'white)
(draw-solid-disk (make-posn 100 30) 30 'white)
(draw-solid-disk (make-posn 150 45) 40 'white)
(draw-solid-disk (make-posn 10 40) 20 'white)
(draw-solid-disk (make-posn 200 40) 30 'white)

;;nube cerca del sol
(draw-solid-disk (make-posn 550 90) 30 'white)
(draw-solid-disk (make-posn 600 80) 30 'white)
(draw-solid-disk (make-posn 650 95) 40 'white)
(draw-solid-disk (make-posn 510 90) 20 'white)
(draw-solid-disk (make-posn 700 90) 30 'white)

;;nubes saliendo
(draw-solid-disk (make-posn 50 200) 20 'white)
(draw-solid-disk (make-posn 90 200) 30 'white)
(draw-solid-disk (make-posn 150 205) 40 'white)
(draw-solid-disk (make-posn 230 200) 20 'white)
(draw-solid-disk (make-posn 200 200) 30 'white)

;;lineas del centro
(draw-solid-line (make-posn 100 300)(make-posn 500 300)'black) 
(draw-solid-line (make-posn 300 100 )(make-posn 300 498)'black)
(draw-solid-line(make-posn 140 180)(make-posn 452 412) 'black)
(draw-solid-line(make-posn 450 180)(make-posn 142 427 ) 'black)
(draw-solid-line (make-posn 140 180)(make-posn 280 300)'black)
(draw-solid-line (make-posn 140 180)(make-posn 300 280)'black)
(draw-solid-line(make-posn 142 427)(make-posn 280 300 ) 'black)
(draw-solid-line(make-posn 142 427)(make-posn 300 320 ) 'black) 
(draw-solid-line (make-posn 450 180)(make-posn 300 280)'black)
(draw-solid-line (make-posn 450 180)(make-posn 320 300)'black)
(draw-solid-line (make-posn 452 412)(make-posn 280 300)'black)
(draw-solid-line (make-posn 452 412)(make-posn 320 300)'black)
(draw-solid-line (make-posn 300 100 )(make-posn 280 300)'black)
(draw-solid-line (make-posn 300 100 )(make-posn 320 300)'black)
(draw-solid-line (make-posn 300 498 )(make-posn 280 300)'black)
(draw-solid-line (make-posn 300 498 )(make-posn 320 300)'black)
(draw-solid-line (make-posn 100 300)(make-posn 300 280)'black)
(draw-solid-line (make-posn 100 300)(make-posn 300 320)'black)
(draw-solid-line (make-posn 500 300)(make-posn 300 280)'black)
(draw-solid-line (make-posn 500 300)(make-posn 300 320)'black)

;;circulo
(draw-circle(make-posn 300 300) 200 'black)
(draw-circle (make-posn 300 300 ) 199 'black)
(draw-circle (make-posn 300 300 ) 198 'black)
(draw-circle (make-posn 300 300 ) 197 'black)
(draw-circle (make-posn 300 300 ) 196 'black)
(draw-circle (make-posn 300 300 ) 195 'black)
(draw-circle (make-posn 300 300 ) 194 'black)
(draw-circle (make-posn 300 300 ) 193 'black)
(draw-circle (make-posn 300 300 ) 192 'black)
(draw-circle (make-posn 300 300 ) 191 'black)
(draw-circle (make-posn 300 300 ) 190 'black)
;;circulo del medio
(draw-circle(make-posn 300 300) 20 'black)
(draw-circle(make-posn 300 300) 19 'black)
(draw-circle(make-posn 300 300) 17 'black)
(draw-circle(make-posn 300 300) 18 'black)
(draw-circle(make-posn 300 300) 16 'black)
(draw-circle(make-posn 300 300) 15 'black)

;;circulo mitad
(draw-circle (make-posn 300 300) 150 'black )
(draw-circle (make-posn 300 300) 149 'black )
(draw-circle (make-posn 300 300) 148 'black )


;;lineas de base del centro de izquierda
(draw-solid-line (make-posn 300 300)(make-posn 200 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 201 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 202 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 203 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 205 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 206 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 204 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 207 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 208 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 209 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 210 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 211 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 212 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 213 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 215 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 216 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 214 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 217 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 218 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 219 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 220 550)'black)



;;lineas de base centro de derecha 
(draw-solid-line (make-posn 300 300)(make-posn 400 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 401 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 402 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 403 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 405 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 406 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 404 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 407 550)'black) 
(draw-solid-line (make-posn 300 300)(make-posn 408 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 409 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 410 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 411 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 412 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 413 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 414 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 415 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 416 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 417 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 418 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 419 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 420 550)'black)

;;base
(draw-solid-rect (make-posn 0 550) 450 20 'black)
(draw-solid-rect (make-posn 0 570) 500 10 'black)

;;cajon1
(draw-solid-rect (make-posn 280 490) 50 50 'red)
(draw-solid-rect(make-posn 285 495) 40 20 'SkyBlue)

;;cajon2
(draw-solid-rect (make-posn 50 290) 50 50 'red)
(draw-solid-rect(make-posn 55 295) 40 20 'SkyBlue)

;;cajon3
(draw-solid-rect (make-posn 120 427) 50 50 'red)
(draw-solid-rect(make-posn 125 432) 40 20 'SkyBlue)

;;cajon4
(draw-solid-rect (make-posn 100 130) 50 50 'red)
(draw-solid-rect(make-posn 105 135) 40 20 'SkyBlue)

;;cajon5
(draw-solid-rect (make-posn 280 60) 50 50 'red)
(draw-solid-rect(make-posn 285 65) 40 20 'SkyBlue)

;;cajon6
(draw-solid-rect (make-posn 450 130) 50 50 'red)
(draw-solid-rect(make-posn 455 135) 40 20 'SkyBlue)

;;cajon7
(draw-solid-rect (make-posn  500 280) 50 50 'red)
(draw-solid-rect(make-posn 505 285) 40 20 'SkyBlue)

;;cajon8
(draw-solid-rect (make-posn 452 412) 50 50 'red)
(draw-solid-rect(make-posn 457 415) 40 20 'SkyBlue)

;;luces de la rueda

;;luces1
(draw-solid-disk (make-posn  200 134 ) 3 'yellow )
(draw-solid-disk (make-posn  400 133 ) 3 'orange )

;;luces2
(draw-solid-disk (make-posn  110 250 ) 3 'MediumSpringGreen )
(draw-solid-disk (make-posn  490 253 ) 3 'Aqua )
;;luces3
(draw-solid-disk (make-posn  120 380 ) 3 'BlueViolet )
(draw-solid-disk (make-posn  480 378 ) 3 'Fuchsia )

;;luces4
(draw-solid-disk (make-posn  200 468 ) 3 'White )
(draw-solid-disk (make-posn  400 468 ) 3 'MediumGoldenrod )))


(define (ruedac p)
  (begin
    ;;vertical
(draw-solid-rect (make-posn 0  60 )550 350 'turquoise )
;;montañas de la izquierda
(draw-solid-disk (make-posn 150 400) 130 'GreenYellow)
(draw-solid-disk (make-posn 50 400) 80 'MediumForestGreen)
(draw-solid-disk (make-posn 250 400) 110 'LimeGreen)
;;piso
(draw-solid-rect (make-posn 0 350) 550 350 'green)
;;nubes
(draw-solid-disk (make-posn 50 40) 30 'white)
(draw-solid-disk (make-posn 100 30) 30 'white)
(draw-solid-disk (make-posn 150 45) 40 'white)
(draw-solid-disk (make-posn 10 40) 20 'white)
(draw-solid-disk (make-posn 200 40) 30 'white)

;;nube cerca del sol
(draw-solid-disk (make-posn 550 90) 30 'white)
(draw-solid-disk (make-posn 600 80) 30 'white)
(draw-solid-disk (make-posn 650 95) 40 'white)
(draw-solid-disk (make-posn 510 90) 20 'white)
(draw-solid-disk (make-posn 700 90) 30 'white)

;;nubes saliendo
(draw-solid-disk (make-posn 50 200) 20 'white)
(draw-solid-disk (make-posn 90 200) 30 'white)
(draw-solid-disk (make-posn 150 205) 40 'white)
(draw-solid-disk (make-posn 230 200) 20 'white)
(draw-solid-disk (make-posn 200 200) 30 'white)



;;circulo
(draw-circle(make-posn 300 300) 200 'black)
(draw-circle (make-posn 300 300 ) 199 'black)
(draw-circle (make-posn 300 300 ) 198 'black)
(draw-circle (make-posn 300 300 ) 197 'black)
(draw-circle (make-posn 300 300 ) 196 'black)
(draw-circle (make-posn 300 300 ) 195 'black)
(draw-circle (make-posn 300 300 ) 194 'black)
(draw-circle (make-posn 300 300 ) 193 'black)
(draw-circle (make-posn 300 300 ) 192 'black)
(draw-circle (make-posn 300 300 ) 191 'black)
(draw-circle (make-posn 300 300 ) 190 'black)
;;circulo del medio
(draw-circle(make-posn 300 300) 20 'black)
(draw-circle(make-posn 300 300) 19 'black)
(draw-circle(make-posn 300 300) 17 'black)
(draw-circle(make-posn 300 300) 18 'black)
(draw-circle(make-posn 300 300) 16 'black)
(draw-circle(make-posn 300 300) 15 'black)

;;circulo mitad
(draw-circle (make-posn 300 300) 150 'black )
(draw-circle (make-posn 300 300) 149 'black )
(draw-circle (make-posn 300 300) 148 'black )

;;lineas del centro
(draw-solid-line (make-posn 125 227)(make-posn 480 377)'black) 
(draw-solid-line (make-posn 375 120 )(make-posn 225 478)'black)
(draw-solid-line(make-posn 210 120)(make-posn 380 465) 'black)
(draw-solid-line(make-posn 470 212)(make-posn 130 390 ) 'black)

;;lineas de la estrella
(draw-solid-line(make-posn 125 227)(make-posn 290 310 ) 'black)
(draw-solid-line(make-posn 125 227)(make-posn 310 290 ) 'black)
(draw-solid-line(make-posn 480 377)(make-posn  310 290)'black)
(draw-solid-line(make-posn  480 377)(make-posn 290 310)'black)
(draw-solid-line(make-posn 375 120 )(make-posn 290 290 )'black)
(draw-solid-line(make-posn 375 120 )(make-posn 320 290 )'black)
(draw-solid-line(make-posn 225 478 )(make-posn 290 290)'black)
(draw-solid-line(make-posn 225 478 )(make-posn 320 290)'black)
(draw-solid-line(make-posn 210 120)(make-posn 290 310) 'black)
(draw-solid-line(make-posn 210 120)(make-posn 310 290) 'black)
(draw-solid-line(make-posn 380 465)(make-posn 290 310) 'black)
(draw-solid-line(make-posn 380 465)(make-posn 310 290) 'black)
(draw-solid-line(make-posn 470 212)(make-posn 290 290 ) 'black)
(draw-solid-line(make-posn 470 212)(make-posn 310 310 ) 'black)
(draw-solid-line(make-posn 130 390)(make-posn 310 310 ) 'black)
(draw-solid-line(make-posn 130 390)(make-posn 290 290 ) 'black)
;;lineas de base del centro de izquierda
(draw-solid-line (make-posn 300 300)(make-posn 200 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 201 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 202 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 203 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 205 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 206 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 204 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 207 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 208 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 209 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 210 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 211 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 212 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 213 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 215 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 216 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 214 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 217 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 218 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 219 550)'black) 
(draw-solid-line (make-posn 300 300)(make-posn 220 550)'black)
;;lineas de base centro de derecha 
(draw-solid-line (make-posn 300 300)(make-posn 400 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 401 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 402 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 403 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 405 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 406 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 404 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 407 550)'black) 
(draw-solid-line (make-posn 300 300)(make-posn 408 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 409 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 410 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 411 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 412 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 413 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 414 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 415 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 416 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 417 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 418 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 419 550)'black)
(draw-solid-line (make-posn 300 300)(make-posn 420 550)'black)

;;bases de la rueda
(draw-solid-rect (make-posn 0 550) 450 20 'black)
(draw-solid-rect (make-posn 0 570) 500 10 'black)

;;cajones
;;cajon1 
(draw-solid-rect (make-posn 165 80) 50 50 'red)
(draw-solid-rect(make-posn 170 85) 40 20 'SkyBlue)

;;cajon 2
(draw-solid-rect (make-posn 375 80) 50 50 'red)
(draw-solid-rect(make-posn 380 85) 40 20 'SkyBlue)

;;cajon3
(draw-solid-rect (make-posn 470 165) 50 50 'red)
(draw-solid-rect(make-posn 475 170) 40 20 'SkyBlue)

;;cajon4
(draw-solid-rect (make-posn 480 377) 50 50 'red)
(draw-solid-rect(make-posn 485 382) 40 20 'SkyBlue)

;;cajon5
(draw-solid-rect (make-posn 380 465) 50 50 'red)
(draw-solid-rect(make-posn 385 470) 40 20 'SkyBlue)

;;cajon6
(draw-solid-rect (make-posn 180 478) 50 50 'red)
(draw-solid-rect(make-posn 185 483) 40 20 'SkyBlue)

;;cajon7
(draw-solid-rect (make-posn  80 390) 50 50 'red)
(draw-solid-rect(make-posn 85 395) 40 20 'SkyBlue)

;;cajon8
(draw-solid-rect (make-posn 75 180) 50 50 'red)
(draw-solid-rect(make-posn 80 185) 40 20 'SkyBlue)

;;luces de la rueda
;;luces1
(draw-solid-disk (make-posn  200 134 ) 3 'orange )
(draw-solid-disk (make-posn  400 133 ) 3 'yellow )

;;luces2
(draw-solid-disk (make-posn  110 250 ) 3 'aqua )
(draw-solid-disk (make-posn  490 253 ) 3 'MediumSpringGreen )
;;luces3
(draw-solid-disk (make-posn  120 380 ) 3 'Fuchsia )
(draw-solid-disk (make-posn  480 378 ) 3 'BlueViolet )

;;luces4
(draw-solid-disk (make-posn  200 468 ) 3 'MediumGoldenrod )
(draw-solid-disk (make-posn  400 468 ) 3 'white)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,personas;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (letrero p)
  (begin
;;5
(draw-solid-rect (make-posn 620 460)6 2 'white )
(draw-solid-rect (make-posn 620 461)2 4 'white )
(draw-solid-disk (make-posn 623 469) 4 'white)
(draw-solid-disk (make-posn 621 469) 3 'black)
;;000
(draw-solid-disk (make-posn 635 465) 5 'white)
(draw-solid-disk (make-posn 635 465 )3 'black)

(draw-solid-disk (make-posn 646 465) 5 'white)
(draw-solid-disk (make-posn 646 465 )3 'black)

(draw-solid-disk (make-posn 656 465) 5 'white)
(draw-solid-disk (make-posn 656 465 )3 'black)))




(define (entrada p)
  (begin
(draw-solid-disk (make-posn b1 500) 10 'Moccasin);;cabeza
(draw-solid-disk (make-posn b2 500) 3 'white );;ojos
(draw-solid-disk (make-posn b2 500) 2 'black );;ojos
(draw-solid-rect (make-posn b2 510) 15 30 'Salmon);;cuerpo
(draw-solid-rect (make-posn b7 525) 20 10 'salmon);;falda
(draw-solid-rect (make-posn b8 535) 25 10 'salmon);;falda
(draw-solid-rect (make-posn b10 545) 8 20 'moccasin );;piernas
(draw-solid-disk (make-posn b11 568) 3 'black);;pies
(draw-solid-rect (make-posn b12 565) 8 6 'black );;pies
(draw-solid-rect (make-posn b13 515) 6 15 'moccasin ))) 

(define (bajada p)
  (begin
(draw-solid-disk (make-posn 750 a) 10 'Moccasin);;cabeza
(draw-solid-disk (make-posn 745 a) 3 'white );;ojos
(draw-solid-disk (make-posn 745 a) 2 'black );;ojos
(draw-solid-rect (make-posn 745 b) 15 30 'Salmon);;cuerpo
(draw-solid-rect (make-posn 742 c) 20 10 'salmon);;falda
(draw-solid-rect (make-posn 740 d) 25 10 'salmon);;falda
(draw-solid-rect (make-posn 748 y) 8 20 'moccasin );;piernas
(draw-solid-disk (make-posn 747 f) 3 'black);;pies
(draw-solid-rect (make-posn 749 g) 8 6 'black );;pies
(draw-solid-rect (make-posn 750 j) 6 15 'moccasin )))

(define (llegada p)
  (begin 
(draw-solid-disk (make-posn c11 590) 10 'Moccasin);;cabeza
(draw-solid-disk (make-posn c1 590) 3 'white );;ojos
(draw-solid-disk (make-posn c1 590) 2 'black );;ojos
(draw-solid-rect (make-posn c2 600) 15 30 'Salmon);;cuerpo
(draw-solid-rect (make-posn c3 615) 20 10 'salmon);;falda
(draw-solid-rect (make-posn c4 625) 25 10 'salmon);;falda
(draw-solid-rect (make-posn c5 635) 8 20 'moccasin );;piernas
(draw-solid-disk (make-posn c6 658) 3 'black);;pies
(draw-solid-rect (make-posn c7 655) 8 6 'black );;pies
(draw-solid-rect (make-posn c8 605) 6 15 'moccasin )))

                       (define (per p)
                       (begin
                       (sleep-for-a-while 0.15)
                       (draw-solid-rect (make-posn 290 580) 50 100 'green)
                       (sleep-for-a-while 0.05)
                       (draw-solid-disk (make-posn 305 505) 10 'moccasin )
                       (draw-solid-disk (make-posn 300 504) 4 'white)
                       (draw-solid-disk (make-posn 300 504) 2 'black)
                       (draw-solid-disk (make-posn 310 504) 4 'white)
                       (draw-solid-disk (make-posn 310 504) 2 'black)
                       (draw-solid-disk (make-posn 305 510) 3 'red)
                       (draw-solid-rect (make-posn 300 506) 10 3 'moccasin)))
                       
                       (define (per1 p)
                       (begin
                       (sleep-for-a-while 0.15)
                       (draw-solid-rect (make-posn 290 580) 50 100 'green)
                       (sleep-for-a-while 0.05)
                       (draw-solid-disk (make-posn 205 493) 10 'moccasin )
                       (draw-solid-disk (make-posn 200 492) 4 'white)
                       (draw-solid-disk (make-posn 200 492) 2 'black)
                       (draw-solid-disk (make-posn 208 492) 4 'white)
                       (draw-solid-disk (make-posn 208 492) 2 'black)
                       (draw-solid-disk (make-posn 204 499) 3 'red)
                       (draw-solid-rect (make-posn 200 494) 10 3 'moccasin)))
                       
(define (entrada1 p)
  (begin 
    (cond
      [(and(<= b1 750)(<= a2 750))
       (begin
         (entrada p))]
      [else 
       (begin 
         (entrada p)
         (sleep-for-a-while 0.01)
         (draw-solid-rect (make-posn a2 490 ) 50 100 'green)
         (set! b1 (- b1 2))(set! b2 (- b2 2))(set! b3 (- b3 2))(set! b4 (- b4 2))
         (set! b5 (- b5 2))(set! b6 (- b6 2))(set! b7 (- b7 2))(set! b8 (- b8 2))
         (set! b10 (- b10 2))(set! b11 (- b11 2))(set! b12 (- b12 2))
         (set! b13 (- b13 2))
         (entrada p)        
         (sleep-for-a-while 0.01)
         (draw-solid-rect (make-posn a2 470) 50 20  'green)
         (set! a2 (- a2 2))
         (entrada p)
         (entrada1 p))])))
               
(define (bajada1 p)
                 (begin 
                   (cond
                     [(and(>= a 580)(>= a1 580))
                      (begin
                        (bajada p))]
                     [else 
                      (begin 
                        (bajada p)
                        (sleep-for-a-while 0.01)
                        (draw-solid-rect (make-posn 740 a) 50 100 'green)
                        (set! a (+ a 2))(set! b (+ b 2))(set! c (+ c 2))(set! d (+ d 2))
                        (set! y (+ y 2))(set! f (+ f 2))(set! g (+ g 2))(set! j (+ j 2))
                        (bajada p)
       
                       
                        (sleep-for-a-while 0.01)
                        (draw-solid-rect (make-posn 740 a1) 50 100  'green)
                        (set! a1 (+ a1 2))
                        (bajada p)(bajada1 p))])))
               
(define (llegada1 p)
  (begin  
   (cond 
     
     [(<= c1 300)
      (begin (llegada p))]
     [else
      (begin 
        
        (llegada p)
        (sleep-for-a-while 0.01)
        (draw-solid-rect (make-posn c1 580) 50 100 'green)
         (set! c1 (- c1 2))(set! c2 (- c2 2))(set! c3 (- c3 2))(set! c4 (- c4 2))
         (set! c5 (- c5 2))(set! c6 (- c6 2))(set! c7 (- c7 2))(set! c8 (- c8 2))(set! c11 (- c11 2))
         (llegada p)
         
          (llegada1 p))])))
               
               (define v 1) 
               (define (dinero p)
             (begin
               (cond
           
                [ ( >= v 2) (begin (draw-solid-rect (make-posn 285 495) 40 20 'white))]
      
                [else
                (begin 
              (sleep-for-a-while 1)
              (letrero p)
              (luces p)
              (sleep-for-a-while 1)
              (draw-solid-rect (make-posn 620 460) 100 20 'black)
              (sleep-for-a-while 1)
              (draw-solid-rect (make-posn 680 510)20 8 'OliveDrab)
              (sleep-for-a-while 2)
              (draw-solid-rect (make-posn 680 510)20 8 'DodgerBlue))])))
           
             
           
            (define (ventana p)
             (begin
               (cond
                 [(>= z 510)(begin  (draw-solid-rect (make-posn 285 z) 40 3 'white))]
                 
                 [else
                  (begin
                    
              (draw-solid-rect (make-posn 285 z) 40 3 'white)
              (sleep-for-a-while 0.3)
              (draw-solid-rect (make-posn 285 z) 40 3 'white)
              (set! z (+ z 2))
              (draw-solid-rect (make-posn 285 z) 40 3 'white)
              (ventana p))])))
           
           
           (define (ventana1 p)
             (begin 
               (cond
                 [(<= z1 495) (begin (draw-solid-rect (make-posn 285 z1) 40 3 'SkyBlue))]
                 
                 [else 
                  (begin
                    (draw-solid-rect (make-posn 285 z1) 40 3 'SkyBlue)
                    (sleep-for-a-while 0.3)
                    (draw-solid-rect (make-posn 285 z1) 40 3 'SkyBlue)
                    (set! z1 (- z1 2))
                    (draw-solid-rect (make-posn 285 z1) 40 3 'SkyBlue)
              (ventana1 p))]))) 
                    
  (define (girar1 p)
  (begin
    (cond
      [(<= giro1 1)
       (begin
         (ruedab p)
         (sleep-for-a-while 1)
         (ruedac p)
         (sleep-for-a-while 1)
         (set! giro1(+ giro1 1)))]
    
      [else (begin 
              (set! giro1 (* giro1 0)))])))
           

      



                   
 (define (persona-bajada p) 
(begin
(draw-solid-disk (make-posn f1 485) 10 'Moccasin);;cabeza 
(draw-solid-disk (make-posn f2 483) 3 'white );;ojos
(draw-solid-disk (make-posn f3 483) 2 'black );;ojos
(draw-solid-rect (make-posn f4 495) 15 30 'Salmon);;cuerpo
(draw-solid-rect (make-posn f5 510) 20 10 'salmon);;falda
(draw-solid-rect (make-posn f6 520) 25 10 'salmon);;falda
(draw-solid-rect (make-posn f7 530) 8 20 'moccasin );;piernas
(draw-solid-rect (make-posn f8 500) 6 15 'moccasin )))

(define (salida p)
  (begin 
    (cond
      [(<= f1 -3)
       (begin
       (persona-bajada p))] 
      
      
      [else
       (begin
         (persona-bajada p)
         (sleep-for-a-while 0.05)
         (draw-solid-rect (make-posn f1 470) 30 80 'green )
         (set! f1 (- f1 2))(set! f2 (- f2 2))(set! f3 (- f1 2))(set! f4 (- f4 2))
         (set! f5 (- f5 2))(set! f6 (- f6 2))(set! f7 (- f7 2))(set! f8 (- f8 2))
         (persona-bajada p)
         (sleep-for-a-while 0.03)
         (draw-solid-rect (make-posn a5 470) 45 80 'green )
          (set! a5 (- a5 2))
          (persona-bajada p)
          (salida p))])))
       
      
      
      
 (define (ciclo-bajada p)
  (begin
    (write montadas1)
    (cond
      [( =  montadas1  0 ) 
        (begin 
          (set! t (* t 0)))] 
       
       [else 
        (begin 
          (ventana-bajada p)
          (per1 p)
          (sleep-for-a-while .30)
          (draw-solid-rect (make-posn 185 483) 40 20 'white)
          (sleep-for-a-while 0.30)
          (salida p)
          (ventana1-bajada p)
          (sleep-for-a-while 0.30)
          (ruedab p)
          (sleep-for-a-while 1)
          (ruedac p)
          (sleep-for-a-while 1)
          (set! a5(+(* a5 0)130))
          (set! f1(+(* f1 0)150))
          (set! f2(+(* f2 0)148))
          (set! f3(+(* f3 0)148))
          (set! f4(+(* f4 0)140))
          (set! f5(+(* f5 0)138))
          (set! f6(+(* f6 0)135))
          (set! f7(+(* f7 0)142))
          (set! f8(+(* f8 0)140))
          (set! z2 (+ (* z2 0)483))
          (set! z3 (+ (* z3 0)503))
          (set! montadas1 (-  montadas1 1))
          (ciclo-bajada p))]))) 

 (define (escalera p)
   (begin 
     (cond
       [(> t1 570 )
        (begin
         (draw-solid-rect (make-posn 292 t1) 25 3 'red))]
       [else 
        (begin
         (draw-solid-rect (make-posn 292 t1) 25 5 'red)
         (draw-solid-rect (make-posn 292 t1) 25 1 'black)
         (sleep-for-a-while 0.15)
         (draw-solid-rect (make-posn 292 t1) 25 5 'red)
         (draw-solid-rect (make-posn 292 t1) 25 1 'black)
         (set! t1 (+ t1 4))
          (draw-solid-rect (make-posn 292 t1) 25 5 'red)
          (draw-solid-rect (make-posn 292 t1) 25 1 'black)
          (escalera p))])))
         
(define (ventana-bajada p)
             (begin
               (cond
                 [(>= z2 503)(begin  (draw-solid-rect (make-posn 185 z2) 40 3 'white))]
                 
                 [else
                  (begin
                    
              (draw-solid-rect (make-posn 185 z2) 40 3 'white) 
              (sleep-for-a-while 0.3)
               (draw-solid-rect (make-posn 185 z2) 40 3 'white)
              (set! z2 (+ z2 2))
              (draw-solid-rect (make-posn 185 z2) 40 3 'white)
              (ventana-bajada p))])))
           
           
           (define (ventana1-bajada p)
             (begin 
               (cond
                 [(<= z3 483) (begin (draw-solid-rect (make-posn 185 z3) 40 3 'SkyBlue))]
                 
                 [else 
                  (begin
                    (draw-solid-rect (make-posn 185 z3) 40 3 'SkyBlue)
                    (sleep-for-a-while 0.3)
                    (draw-solid-rect (make-posn 185 z3) 40 3 'SkyBlue)
                    (set! z3 (- z3 2))
                    (draw-solid-rect (make-posn 185 z3) 40 3 'SkyBlue)
              (ventana1-bajada p))]))) 






;;luces

               (define (luces p)
                 (begin
                   (cond 
                    [(>= w 4)(begin 
                               (draw-solid-rect (make-posn 570 470 ) 160 10 )
                               (draw-solid-rect (make-posn 590 570 ) 130 10 )
                               (set! w (* w 0)))]
                    [else
                     (begin
                        (draw-solid-disk (make-posn 590 470 ) 5 'yellow )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 590 470 ) 5 'red )
                        (draw-solid-disk (make-posn 710 470 ) 5 'Aqua )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 710 470 ) 5 'orange )
                        (draw-solid-disk (make-posn 600 575 ) 3 'pink )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 600 575 ) 3 'orchid )
                        (draw-solid-disk (make-posn 620 575 ) 3 'yellow )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 620 575 ) 3 'red )
                        (draw-solid-disk (make-posn 640 575 ) 3 'Aqua )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 640 575 ) 3 'PaleGreen )
                        (draw-solid-disk (make-posn 660 575 ) 3 'pink )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 660 575 ) 3 'orchid )
                        (draw-solid-disk (make-posn 680 575 ) 3 'yellow )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 680 575 ) 3 'red )
                        (draw-solid-disk (make-posn 700 575 ) 3 'Aqua )
                        (sleep-for-a-while 0.08)
                        (draw-solid-disk (make-posn 700 575 ) 3 'yellow )
                        (set! w (+ w 1))
                        (luces p)
                        )])))
         
         

(menu 1)







