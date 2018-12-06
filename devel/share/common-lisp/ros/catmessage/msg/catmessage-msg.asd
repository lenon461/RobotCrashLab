
(cl:in-package :asdf)

(defsystem "catmessage-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SpeedMsg" :depends-on ("_package_SpeedMsg"))
    (:file "_package_SpeedMsg" :depends-on ("_package"))
    (:file "VisionMsg" :depends-on ("_package_VisionMsg"))
    (:file "_package_VisionMsg" :depends-on ("_package"))
  ))