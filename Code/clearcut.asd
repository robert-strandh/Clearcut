(cl:in-package #:asdf-user)

(defsystem #:clearcut
  :depends-on ()
  :serial t
  :components
  ((:file "packages")
   (:file "generic-functions")
   (:file "protocol")
   (:file "default")))
