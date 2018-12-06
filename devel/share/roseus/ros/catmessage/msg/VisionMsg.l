;; Auto-generated. Do not edit!


(when (boundp 'catmessage::VisionMsg)
  (if (not (find-package "CATMESSAGE"))
    (make-package "CATMESSAGE"))
  (shadow 'VisionMsg (find-package "CATMESSAGE")))
(unless (find-package "CATMESSAGE::VISIONMSG")
  (make-package "CATMESSAGE::VISIONMSG"))

(in-package "ROS")
;;//! \htmlinclude VisionMsg.msg.html


(defclass catmessage::VisionMsg
  :super ros::object
  :slots (_center _width ))

(defmethod catmessage::VisionMsg
  (:init
   (&key
    ((:center __center) "")
    ((:width __width) "")
    )
   (send-super :init)
   (setq _center (string __center))
   (setq _width (string __width))
   self)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; string _center
    4 (length _center)
    ;; string _width
    4 (length _width)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _center
       (write-long (length _center) s) (princ _center s)
     ;; string _width
       (write-long (length _width) s) (princ _width s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _center
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _center (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _width
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _width (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get catmessage::VisionMsg :md5sum-) "4bcb967f84e12c29dcf056a2d3db22ab")
(setf (get catmessage::VisionMsg :datatype-) "catmessage/VisionMsg")
(setf (get catmessage::VisionMsg :definition-)
      "string center
string width

")



(provide :catmessage/VisionMsg "4bcb967f84e12c29dcf056a2d3db22ab")


