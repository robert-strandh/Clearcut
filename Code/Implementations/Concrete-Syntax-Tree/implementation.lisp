(cl:in-package #:clearcut-implementation-concrete-syntax-tree)

(defmethod cc:first ((client client) expression)
  (cst:first expression))

(defmethod cc:rest ((client client) expression)
  (cst:rest expression))

(defmethod cc:atom ((client client) expression)
  (cst:atom expression))

(defmethod cc:nil ((client client))
  (cst:cst-from-expression nil))

(defmethod cc:null ((client client) expression)
  (cst:null expression))

(defmethod cc:cons ((client client) first rest)
  (cst:cons first rest))

(defmethod cc:raw ((client client) expression)
  (cst:raw expression))

(defmethod cc:cook ((client client) expression)
  (cst:cst-from-expression expression))
