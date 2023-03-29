(cl:in-package #:common-lisp-user)

(defpackage #:clearcut-customization
  (:use #:common-lisp)
  (:shadow
   #:first
   #:rest
   #:atom
   #:nil
   #:null
   #:cons
   #:list
   #:mapcar)
  (:export
   #:first
   #:rest
   #:atom
   #:nil
   #:null
   #:cons
   #:list
   #:mapcar
   #:raw
   #:cook))

(defpackage #:clearcut
  (:use #:common-lisp)
  (:local-nicknames (#:cc #:clearcut-customization))
  (:shadow
   #:first
   #:rest
   #:atom
   #:nil
   #:null
   #:cons
   #:list
   #:mapcar)
  (:export
   #:*client*
   #:first
   #:rest
   #:atom
   #:nil
   #:null
   #:cons
   #:list
   #:mapcar
   #:raw
   #:cook))

(defpackage #:clearcut-default
  (:use #:common-lisp)
  (:local-nicknames (#:cc #:clearcut-customization))
  (:shadowing-import-from
   #:clearcut
   #:first
   #:rest
   #:atom
   #:nil
   #:null
   #:cons))
