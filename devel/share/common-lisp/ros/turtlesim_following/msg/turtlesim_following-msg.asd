
(cl:in-package :asdf)

(defsystem "turtlesim_following-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TurtleVelocity" :depends-on ("_package_TurtleVelocity"))
    (:file "_package_TurtleVelocity" :depends-on ("_package"))
  ))