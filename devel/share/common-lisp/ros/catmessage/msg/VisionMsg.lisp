; Auto-generated. Do not edit!


(cl:in-package catmessage-msg)


;//! \htmlinclude VisionMsg.msg.html

(cl:defclass <VisionMsg> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type cl:string
    :initform "")
   (width
    :reader width
    :initarg :width
    :type cl:string
    :initform ""))
)

(cl:defclass VisionMsg (<VisionMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name catmessage-msg:<VisionMsg> is deprecated: use catmessage-msg:VisionMsg instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <VisionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catmessage-msg:center-val is deprecated.  Use catmessage-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <VisionMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader catmessage-msg:width-val is deprecated.  Use catmessage-msg:width instead.")
  (width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionMsg>) ostream)
  "Serializes a message object of type '<VisionMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'center))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'width))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionMsg>) istream)
  "Deserializes a message object of type '<VisionMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'center) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'center) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'width) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionMsg>)))
  "Returns string type for a message object of type '<VisionMsg>"
  "catmessage/VisionMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionMsg)))
  "Returns string type for a message object of type 'VisionMsg"
  "catmessage/VisionMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionMsg>)))
  "Returns md5sum for a message object of type '<VisionMsg>"
  "4bcb967f84e12c29dcf056a2d3db22ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionMsg)))
  "Returns md5sum for a message object of type 'VisionMsg"
  "4bcb967f84e12c29dcf056a2d3db22ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionMsg>)))
  "Returns full string definition for message of type '<VisionMsg>"
  (cl:format cl:nil "string center~%string width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionMsg)))
  "Returns full string definition for message of type 'VisionMsg"
  (cl:format cl:nil "string center~%string width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'center))
     4 (cl:length (cl:slot-value msg 'width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionMsg
    (cl:cons ':center (center msg))
    (cl:cons ':width (width msg))
))
