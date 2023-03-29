(cl:in-package #:asdf-user)

(defsystem #:clearcut-implementation-concrete-syntax-tree
  :depends-on (#:clearcut
               #:concrete-syntax-tree)
  :serial t
  :components
  ((:file "packages")
   (:file "client")
   (:file "implementation")))
