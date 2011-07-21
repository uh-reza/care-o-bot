
(cl:in-package :asdf)

(defsystem "cob_tray_sensors-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CheckOccupied" :depends-on ("_package_CheckOccupied"))
    (:file "_package_CheckOccupied" :depends-on ("_package"))
  ))