; Auto-generated. Do not edit!


(cl:in-package robot1-msg)


;//! \htmlinclude motor_cmd.msg.html

(cl:defclass <motor_cmd> (roslisp-msg-protocol:ros-message)
  ((motor_id
    :reader motor_id
    :initarg :motor_id
    :type cl:fixnum
    :initform 0)
   (motor_onoff
    :reader motor_onoff
    :initarg :motor_onoff
    :type cl:boolean
    :initform cl:nil)
   (motor_desired_direction
    :reader motor_desired_direction
    :initarg :motor_desired_direction
    :type cl:boolean
    :initform cl:nil)
   (motor_desired_rpm
    :reader motor_desired_rpm
    :initarg :motor_desired_rpm
    :type cl:integer
    :initform 0)
   (motor_desired_angle
    :reader motor_desired_angle
    :initarg :motor_desired_angle
    :type cl:integer
    :initform 0))
)

(cl:defclass motor_cmd (<motor_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot1-msg:<motor_cmd> is deprecated: use robot1-msg:motor_cmd instead.")))

(cl:ensure-generic-function 'motor_id-val :lambda-list '(m))
(cl:defmethod motor_id-val ((m <motor_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot1-msg:motor_id-val is deprecated.  Use robot1-msg:motor_id instead.")
  (motor_id m))

(cl:ensure-generic-function 'motor_onoff-val :lambda-list '(m))
(cl:defmethod motor_onoff-val ((m <motor_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot1-msg:motor_onoff-val is deprecated.  Use robot1-msg:motor_onoff instead.")
  (motor_onoff m))

(cl:ensure-generic-function 'motor_desired_direction-val :lambda-list '(m))
(cl:defmethod motor_desired_direction-val ((m <motor_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot1-msg:motor_desired_direction-val is deprecated.  Use robot1-msg:motor_desired_direction instead.")
  (motor_desired_direction m))

(cl:ensure-generic-function 'motor_desired_rpm-val :lambda-list '(m))
(cl:defmethod motor_desired_rpm-val ((m <motor_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot1-msg:motor_desired_rpm-val is deprecated.  Use robot1-msg:motor_desired_rpm instead.")
  (motor_desired_rpm m))

(cl:ensure-generic-function 'motor_desired_angle-val :lambda-list '(m))
(cl:defmethod motor_desired_angle-val ((m <motor_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot1-msg:motor_desired_angle-val is deprecated.  Use robot1-msg:motor_desired_angle instead.")
  (motor_desired_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_cmd>) ostream)
  "Serializes a message object of type '<motor_cmd>"
  (cl:let* ((signed (cl:slot-value msg 'motor_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_onoff) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'motor_desired_direction) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'motor_desired_rpm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor_desired_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_cmd>) istream)
  "Deserializes a message object of type '<motor_cmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'motor_onoff) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'motor_desired_direction) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_desired_rpm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_desired_angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_cmd>)))
  "Returns string type for a message object of type '<motor_cmd>"
  "robot1/motor_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_cmd)))
  "Returns string type for a message object of type 'motor_cmd"
  "robot1/motor_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_cmd>)))
  "Returns md5sum for a message object of type '<motor_cmd>"
  "e39fb850cd33bf75c7d2d2cb00151e67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_cmd)))
  "Returns md5sum for a message object of type 'motor_cmd"
  "e39fb850cd33bf75c7d2d2cb00151e67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_cmd>)))
  "Returns full string definition for message of type '<motor_cmd>"
  (cl:format cl:nil "int8 motor_id~%~%bool motor_onoff~%bool  motor_desired_direction ~%int32 motor_desired_rpm~%int32 motor_desired_angle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_cmd)))
  "Returns full string definition for message of type 'motor_cmd"
  (cl:format cl:nil "int8 motor_id~%~%bool motor_onoff~%bool  motor_desired_direction ~%int32 motor_desired_rpm~%int32 motor_desired_angle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_cmd>))
  (cl:+ 0
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_cmd
    (cl:cons ':motor_id (motor_id msg))
    (cl:cons ':motor_onoff (motor_onoff msg))
    (cl:cons ':motor_desired_direction (motor_desired_direction msg))
    (cl:cons ':motor_desired_rpm (motor_desired_rpm msg))
    (cl:cons ':motor_desired_angle (motor_desired_angle msg))
))
