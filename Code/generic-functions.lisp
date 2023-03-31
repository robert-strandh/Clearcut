(cl:in-package #:clearcut-customization)

(defgeneric first (client expression))

(defgeneric second (client expression))

(defgeneric rest (client expression))

(defgeneric atom (client expression))

(defgeneric nil (client))

(defgeneric null (client expression))

(defgeneric cons (client first rest))

(defgeneric raw (client expression))

(defgeneric cook (client expression))

(defgeneric list (client &rest elements))

(defgeneric mapcar (client function &rest sequences))

