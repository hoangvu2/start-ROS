;; Auto-generated. Do not edit!


(when (boundp 'usv_msgs::gui_msgs)
  (if (not (find-package "USV_MSGS"))
    (make-package "USV_MSGS"))
  (shadow 'gui_msgs (find-package "USV_MSGS")))
(unless (find-package "USV_MSGS::GUI_MSGS")
  (make-package "USV_MSGS::GUI_MSGS"))

(in-package "ROS")
;;//! \htmlinclude gui_msgs.msg.html


(defclass usv_msgs::gui_msgs
  :super ros::object
  :slots (_setyaw _BT1 _Bspline_px ))

(defmethod usv_msgs::gui_msgs
  (:init
   (&key
    ((:setyaw __setyaw) 0)
    ((:BT1 __BT1) 0)
    ((:Bspline_px __Bspline_px) (make-array 15 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _setyaw (round __setyaw))
   (setq _BT1 (round __BT1))
   (setq _Bspline_px __Bspline_px)
   self)
  (:setyaw
   (&optional __setyaw)
   (if __setyaw (setq _setyaw __setyaw)) _setyaw)
  (:BT1
   (&optional __BT1)
   (if __BT1 (setq _BT1 __BT1)) _BT1)
  (:Bspline_px
   (&optional __Bspline_px)
   (if __Bspline_px (setq _Bspline_px __Bspline_px)) _Bspline_px)
  (:serialization-length
   ()
   (+
    ;; int32 _setyaw
    4
    ;; uint16 _BT1
    2
    ;; float64[15] _Bspline_px
    (* 8    15)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _setyaw
       (write-long _setyaw s)
     ;; uint16 _BT1
       (write-word _BT1 s)
     ;; float64[15] _Bspline_px
     (dotimes (i 15)
       (sys::poke (elt _Bspline_px i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _setyaw
     (setq _setyaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _BT1
     (setq _BT1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64[15] _Bspline_px
   (dotimes (i (length _Bspline_px))
     (setf (elt _Bspline_px i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get usv_msgs::gui_msgs :md5sum-) "e85378122f7e5778d97d9e6e96c6698a")
(setf (get usv_msgs::gui_msgs :datatype-) "usv_msgs/gui_msgs")
(setf (get usv_msgs::gui_msgs :definition-)
      "#huong dan msg trong ros
	int32 setyaw			
	uint16 BT1			    
	float64[15] Bspline_px

")



(provide :usv_msgs/gui_msgs "e85378122f7e5778d97d9e6e96c6698a")


