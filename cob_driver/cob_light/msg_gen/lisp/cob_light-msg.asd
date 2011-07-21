
(cl:in-package :asdf)

(defsystem "cob_light-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Light" :depends-on ("_package_Light"))
    (:file "_package_Light" :depends-on ("_package"))
  ))