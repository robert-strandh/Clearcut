(cl:in-package #:clearcut)

(defvar *client*)

(define-symbol-macro nil
    (cc:nil *client*))

(defun first (expression)
  (cc:first *client* expression))

(defun second (expression)
  (cc:second *client* expression))

(defun rest (expression)
  (cc:rest *client* expression))

(defun atom (expression)
  (cc:atom *client* expression))

(defun null (expression)
  (cc:null *client* expression))

(defun cons (first rest)
  (cc:cons *client* first rest))

(defun raw (expression)
  (cc:raw *client* expression))

(defun cook (expression)
  (cc:cook *client* expression))

(defun list (&rest elements)
  (apply #'cc:list *client* elements))
