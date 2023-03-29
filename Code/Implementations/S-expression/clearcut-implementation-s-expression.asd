(cl:in-package #:asdf-user)

(defsystem #:clearcut-implementation-s-expression
  :depends-on (#:clearcut)
  :serial t
  :components
  ((:file "packages")
   (:file "client")
   (:file "implementation")))
