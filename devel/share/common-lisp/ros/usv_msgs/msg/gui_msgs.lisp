; Auto-generated. Do not edit!


(cl:in-package usv_msgs-msg)


;//! \htmlinclude gui_msgs.msg.html

(cl:defclass <gui_msgs> (roslisp-msg-protocol:ros-message)
  ((setyaw
    :reader setyaw
    :initarg :setyaw
    :type cl:integer
    :initform 0)
   (BT1
    :reader BT1
    :initarg :BT1
    :type cl:fixnum
    :initform 0)
   (Bspline_px
    :reader Bspline_px
    :initarg :Bspline_px
    :type (cl:vector cl:float)
   :initform (cl:make-array 15 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass gui_msgs (<gui_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gui_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gui_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name usv_msgs-msg:<gui_msgs> is deprecated: use usv_msgs-msg:gui_msgs instead.")))

(cl:ensure-generic-function 'setyaw-val :lambda-list '(m))
(cl:defmethod setyaw-val ((m <gui_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:setyaw-val is deprecated.  Use usv_msgs-msg:setyaw instead.")
  (setyaw m))

(cl:ensure-generic-function 'BT1-val :lambda-list '(m))
(cl:defmethod BT1-val ((m <gui_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:BT1-val is deprecated.  Use usv_msgs-msg:BT1 instead.")
  (BT1 m))

(cl:ensure-generic-function 'Bspline_px-val :lambda-list '(m))
(cl:defmethod Bspline_px-val ((m <gui_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader usv_msgs-msg:Bspline_px-val is deprecated.  Use usv_msgs-msg:Bspline_px instead.")
  (Bspline_px m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gui_msgs>) ostream)
  "Serializes a message object of type '<gui_msgs>"
  (cl:let* ((signed (cl:slot-value msg 'setyaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BT1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BT1)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'Bspline_px))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gui_msgs>) istream)
  "Deserializes a message object of type '<gui_msgs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'setyaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BT1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BT1)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Bspline_px) (cl:make-array 15))
  (cl:let ((vals (cl:slot-value msg 'Bspline_px)))
    (cl:dotimes (i 15)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gui_msgs>)))
  "Returns string type for a message object of type '<gui_msgs>"
  "usv_msgs/gui_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gui_msgs)))
  "Returns string type for a message object of type 'gui_msgs"
  "usv_msgs/gui_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gui_msgs>)))
  "Returns md5sum for a message object of type '<gui_msgs>"
  "e85378122f7e5778d97d9e6e96c6698a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gui_msgs)))
  "Returns md5sum for a message object of type 'gui_msgs"
  "e85378122f7e5778d97d9e6e96c6698a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gui_msgs>)))
  "Returns full string definition for message of type '<gui_msgs>"
  (cl:format cl:nil "#huong dan msg trong ros~%	int32 setyaw			~%	uint16 BT1			    ~%	float64[15] Bspline_px~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gui_msgs)))
  "Returns full string definition for message of type 'gui_msgs"
  (cl:format cl:nil "#huong dan msg trong ros~%	int32 setyaw			~%	uint16 BT1			    ~%	float64[15] Bspline_px~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gui_msgs>))
  (cl:+ 0
     4
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'Bspline_px) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gui_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'gui_msgs
    (cl:cons ':setyaw (setyaw msg))
    (cl:cons ':BT1 (BT1 msg))
    (cl:cons ':Bspline_px (Bspline_px msg))
))
