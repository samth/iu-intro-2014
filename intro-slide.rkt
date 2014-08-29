#lang slideshow

(require unstable/gui/ppict "config.rkt" "helper.rkt" "beamer.rkt"
         unstable/gui/pslide)

(require ppict-slide-grid)
;(set-grid-base-pict!)

;; use this as the real title slide
#;
(pslide
 #:go (coord .5 .5 'cc) 
 (bitmap plt-background-path)
 #:go (coord 0.05 .85 'lc)
 (t/cant "Sam Tobin-Hochstadt" size2)
 #:go (coord 0.95 .95 'rc)
 (colorize (t/quat "Indiana University" size3)
           "midnightblue")
 #:go (coord 0.05 .15 'lc)
 (t/cant "Typed Racket" size1)
 #:go (coord 0.95 .25 'rc)
 (t/quat "A playground for language design" size2))

(define gap-small 0.125)
(define gap-big (+ gap-small 0.12))

(define (left n)
  (coord 0.025 (+ .05 (* (sub1 n) gap-big)) 'lc))
(define (right n [k 0.975])
  (coord (- k 0.025) (+ .05 gap-small (* (sub1 n) gap-big)) 'rc))

(pslide/play #:delay 0.01 #:steps 50 (n)
 #:go (coord .5 .5 'cc) 
 (bitmap plt-background-path)
 #:go (left 1)
 (t/quat "Sam Tobin-Hochstadt" size1)
 #:go (left 3.5)
 (t/kau "Projects" size2)
 #:go (right 3.5)
 (t/quat "Typed Racket, Racket Contracts" size2)
 (t/quat "JIT Compilers, JS Modules" size2)
 #:go (left 2)
 (t/kau "Interests" size2)
 #:go (right 2)
 (t/quat "Gradual Types, Extensible Languages" size2)
 (t/quat "Shipping Code, Teaching Programming" size2)
)
