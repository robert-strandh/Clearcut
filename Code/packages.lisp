(cl:in-package #:common-lisp-user)

(defpackage #:clearcut-customization
  (:use #:common-lisp)
  (:shadow
   #:first
   #:second
   #:rest
   #:atom
   #:nil
   #:null
   #:cons
   #:list
   #:mapcar)
  (:export
   #:first
   #:second
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
   #:second
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
   #:second
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
   #:second
   #:rest
   #:atom
   #:nil
   #:null
   #:cons))
