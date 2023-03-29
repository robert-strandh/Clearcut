(cl:in-package #:clearcut-default)

;;;; This file contains implementations of functions that can be
;;;; implemented in terms of the basic operations, so that these
;;;; implementations are independent of the representation of
;;;; expressions.

;;; We hope that the number of elements is not too great.  Either way,
;;; conforming code client code can not supply more than 50 arguments,
;;; so we should be safe from blowing the stack.  So we use a simple
;;; recursive implementation.
(defmethod cc:list (client &rest elements)
  (labels ((aux (elements)
             (if (null elements)
                 ;; We need to use NIL rather than '() so that we get
                 ;; the representation-specific version of empty list.
                 nil
                 (cons (first elements)
                       (aux (rest elements))))))
    (aux elements)))
