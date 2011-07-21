
(cl:in-package :asdf)

(defsystem "cob_arm_navigation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "HandleObject" :depends-on ("_package_HandleObject"))
    (:file "_package_HandleObject" :depends-on ("_package"))
  ))