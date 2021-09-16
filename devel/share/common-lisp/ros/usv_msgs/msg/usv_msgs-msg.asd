
(cl:in-package :asdf)

(defsystem "usv_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gui_msgs" :depends-on ("_package_gui_msgs"))
    (:file "_package_gui_msgs" :depends-on ("_package"))
  ))