(cl:in-package #:clearcut-implementation-s-expression)

(defmethod cc:first ((client client) expression)
  (first expression))

(defmethod cc:rest ((client client) expression)
  (rest expression))

(defmethod cc:atom ((client client) expression)
  (atom expression))

(defmethod cc:nil ((client client))
  nil)

(defmethod cc:null ((client client) expression)
  (null expression))

(defmethod cc:cons ((client client) first rest)
  (cons first rest))
