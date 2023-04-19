;; Auto-generated. Do not edit!


(when (boundp 'turtlesim_following::TurtleVelocity)
  (if (not (find-package "TURTLESIM_FOLLOWING"))
    (make-package "TURTLESIM_FOLLOWING"))
  (shadow 'TurtleVelocity (find-package "TURTLESIM_FOLLOWING")))
(unless (find-package "TURTLESIM_FOLLOWING::TURTLEVELOCITY")
  (make-package "TURTLESIM_FOLLOWING::TURTLEVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude TurtleVelocity.msg.html


(defclass turtlesim_following::TurtleVelocity
  :super ros::object
  :slots (_robot_name _velocity ))

(defmethod turtlesim_following::TurtleVelocity
  (:init
   (&key
    ((:robot_name __robot_name) "")
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _robot_name (string __robot_name))
   (setq _velocity (float __velocity))
   self)
  (:robot_name
   (&optional __robot_name)
   (if __robot_name (setq _robot_name __robot_name)) _robot_name)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; string _robot_name
    4 (length _robot_name)
    ;; float32 _velocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _robot_name
       (write-long (length _robot_name) s) (princ _robot_name s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _robot_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlesim_following::TurtleVelocity :md5sum-) "c6bb568f2540fd6c412734c452053a41")
(setf (get turtlesim_following::TurtleVelocity :datatype-) "turtlesim_following/TurtleVelocity")
(setf (get turtlesim_following::TurtleVelocity :definition-)
      "
string robot_name
float32 velocity

")



(provide :turtlesim_following/TurtleVelocity "c6bb568f2540fd6c412734c452053a41")


