; Auto-generated. Do not edit!


(cl:in-package turtlesim_following-msg)


;//! \htmlinclude TurtleVelocity.msg.html

(cl:defclass <TurtleVelocity> (roslisp-msg-protocol:ros-message)
  ((robot_name
    :reader robot_name
    :initarg :robot_name
    :type cl:string
    :initform "")
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass TurtleVelocity (<TurtleVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TurtleVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TurtleVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlesim_following-msg:<TurtleVelocity> is deprecated: use turtlesim_following-msg:TurtleVelocity instead.")))

(cl:ensure-generic-function 'robot_name-val :lambda-list '(m))
(cl:defmethod robot_name-val ((m <TurtleVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_following-msg:robot_name-val is deprecated.  Use turtlesim_following-msg:robot_name instead.")
  (robot_name m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <TurtleVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlesim_following-msg:velocity-val is deprecated.  Use turtlesim_following-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TurtleVelocity>) ostream)
  "Serializes a message object of type '<TurtleVelocity>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TurtleVelocity>) istream)
  "Deserializes a message object of type '<TurtleVelocity>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TurtleVelocity>)))
  "Returns string type for a message object of type '<TurtleVelocity>"
  "turtlesim_following/TurtleVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TurtleVelocity)))
  "Returns string type for a message object of type 'TurtleVelocity"
  "turtlesim_following/TurtleVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TurtleVelocity>)))
  "Returns md5sum for a message object of type '<TurtleVelocity>"
  "c6bb568f2540fd6c412734c452053a41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TurtleVelocity)))
  "Returns md5sum for a message object of type 'TurtleVelocity"
  "c6bb568f2540fd6c412734c452053a41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TurtleVelocity>)))
  "Returns full string definition for message of type '<TurtleVelocity>"
  (cl:format cl:nil "~%string robot_name~%float32 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TurtleVelocity)))
  "Returns full string definition for message of type 'TurtleVelocity"
  (cl:format cl:nil "~%string robot_name~%float32 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TurtleVelocity>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'robot_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TurtleVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'TurtleVelocity
    (cl:cons ':robot_name (robot_name msg))
    (cl:cons ':velocity (velocity msg))
))
