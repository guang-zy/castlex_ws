
(cl:in-package :asdf)

(defsystem "communication_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SumInts" :depends-on ("_package_SumInts"))
    (:file "_package_SumInts" :depends-on ("_package"))
  ))