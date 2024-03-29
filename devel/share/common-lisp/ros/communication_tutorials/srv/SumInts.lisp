; Auto-generated. Do not edit!


(cl:in-package communication_tutorials-srv)


;//! \htmlinclude SumInts-request.msg.html

(cl:defclass <SumInts-request> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (i
    :reader i
    :initarg :i
    :type cl:integer
    :initform 0))
)

(cl:defclass SumInts-request (<SumInts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumInts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumInts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name communication_tutorials-srv:<SumInts-request> is deprecated: use communication_tutorials-srv:SumInts-request instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <SumInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communication_tutorials-srv:a-val is deprecated.  Use communication_tutorials-srv:a instead.")
  (a m))

(cl:ensure-generic-function 'i-val :lambda-list '(m))
(cl:defmethod i-val ((m <SumInts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communication_tutorials-srv:i-val is deprecated.  Use communication_tutorials-srv:i instead.")
  (i m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumInts-request>) ostream)
  "Serializes a message object of type '<SumInts-request>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'i)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumInts-request>) istream)
  "Deserializes a message object of type '<SumInts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumInts-request>)))
  "Returns string type for a service object of type '<SumInts-request>"
  "communication_tutorials/SumIntsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumInts-request)))
  "Returns string type for a service object of type 'SumInts-request"
  "communication_tutorials/SumIntsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumInts-request>)))
  "Returns md5sum for a message object of type '<SumInts-request>"
  "c4ba0434e54f58dda95d9e73abb2a1f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumInts-request)))
  "Returns md5sum for a message object of type 'SumInts-request"
  "c4ba0434e54f58dda95d9e73abb2a1f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumInts-request>)))
  "Returns full string definition for message of type '<SumInts-request>"
  (cl:format cl:nil "int64 a~%int64 i~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumInts-request)))
  "Returns full string definition for message of type 'SumInts-request"
  (cl:format cl:nil "int64 a~%int64 i~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumInts-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumInts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SumInts-request
    (cl:cons ':a (a msg))
    (cl:cons ':i (i msg))
))
;//! \htmlinclude SumInts-response.msg.html

(cl:defclass <SumInts-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass SumInts-response (<SumInts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SumInts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SumInts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name communication_tutorials-srv:<SumInts-response> is deprecated: use communication_tutorials-srv:SumInts-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <SumInts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader communication_tutorials-srv:sum-val is deprecated.  Use communication_tutorials-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SumInts-response>) ostream)
  "Serializes a message object of type '<SumInts-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SumInts-response>) istream)
  "Deserializes a message object of type '<SumInts-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SumInts-response>)))
  "Returns string type for a service object of type '<SumInts-response>"
  "communication_tutorials/SumIntsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumInts-response)))
  "Returns string type for a service object of type 'SumInts-response"
  "communication_tutorials/SumIntsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SumInts-response>)))
  "Returns md5sum for a message object of type '<SumInts-response>"
  "c4ba0434e54f58dda95d9e73abb2a1f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SumInts-response)))
  "Returns md5sum for a message object of type 'SumInts-response"
  "c4ba0434e54f58dda95d9e73abb2a1f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SumInts-response>)))
  "Returns full string definition for message of type '<SumInts-response>"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SumInts-response)))
  "Returns full string definition for message of type 'SumInts-response"
  (cl:format cl:nil "int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SumInts-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SumInts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SumInts-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SumInts)))
  'SumInts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SumInts)))
  'SumInts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SumInts)))
  "Returns string type for a service object of type '<SumInts>"
  "communication_tutorials/SumInts")