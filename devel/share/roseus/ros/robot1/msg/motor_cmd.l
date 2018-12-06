;; Auto-generated. Do not edit!


(when (boundp 'robot1::motor_cmd)
  (if (not (find-package "ROBOT1"))
    (make-package "ROBOT1"))
  (shadow 'motor_cmd (find-package "ROBOT1")))
(unless (find-package "ROBOT1::MOTOR_CMD")
  (make-package "ROBOT1::MOTOR_CMD"))

(in-package "ROS")
;;//! \htmlinclude motor_cmd.msg.html


(defclass robot1::motor_cmd
  :super ros::object
  :slots (_motor_id _motor_onoff _motor_desired_direction _motor_desired_rpm _motor_desired_angle ))

(defmethod robot1::motor_cmd
  (:init
   (&key
    ((:motor_id __motor_id) 0)
    ((:motor_onoff __motor_onoff) nil)
    ((:motor_desired_direction __motor_desired_direction) nil)
    ((:motor_desired_rpm __motor_desired_rpm) 0)
    ((:motor_desired_angle __motor_desired_angle) 0)
    )
   (send-super :init)
   (setq _motor_id (round __motor_id))
   (setq _motor_onoff __motor_onoff)
   (setq _motor_desired_direction __motor_desired_direction)
   (setq _motor_desired_rpm (round __motor_desired_rpm))
   (setq _motor_desired_angle (round __motor_desired_angle))
   self)
  (:motor_id
   (&optional __motor_id)
   (if __motor_id (setq _motor_id __motor_id)) _motor_id)
  (:motor_onoff
   (&optional __motor_onoff)
   (if __motor_onoff (setq _motor_onoff __motor_onoff)) _motor_onoff)
  (:motor_desired_direction
   (&optional __motor_desired_direction)
   (if __motor_desired_direction (setq _motor_desired_direction __motor_desired_direction)) _motor_desired_direction)
  (:motor_desired_rpm
   (&optional __motor_desired_rpm)
   (if __motor_desired_rpm (setq _motor_desired_rpm __motor_desired_rpm)) _motor_desired_rpm)
  (:motor_desired_angle
   (&optional __motor_desired_angle)
   (if __motor_desired_angle (setq _motor_desired_angle __motor_desired_angle)) _motor_desired_angle)
  (:serialization-length
   ()
   (+
    ;; int8 _motor_id
    1
    ;; bool _motor_onoff
    1
    ;; bool _motor_desired_direction
    1
    ;; int32 _motor_desired_rpm
    4
    ;; int32 _motor_desired_angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _motor_id
       (write-byte _motor_id s)
     ;; bool _motor_onoff
       (if _motor_onoff (write-byte -1 s) (write-byte 0 s))
     ;; bool _motor_desired_direction
       (if _motor_desired_direction (write-byte -1 s) (write-byte 0 s))
     ;; int32 _motor_desired_rpm
       (write-long _motor_desired_rpm s)
     ;; int32 _motor_desired_angle
       (write-long _motor_desired_angle s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _motor_id
     (setq _motor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _motor_id 127) (setq _motor_id (- _motor_id 256)))
   ;; bool _motor_onoff
     (setq _motor_onoff (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _motor_desired_direction
     (setq _motor_desired_direction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _motor_desired_rpm
     (setq _motor_desired_rpm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _motor_desired_angle
     (setq _motor_desired_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot1::motor_cmd :md5sum-) "e39fb850cd33bf75c7d2d2cb00151e67")
(setf (get robot1::motor_cmd :datatype-) "robot1/motor_cmd")
(setf (get robot1::motor_cmd :definition-)
      "int8 motor_id

bool motor_onoff
bool  motor_desired_direction 
int32 motor_desired_rpm
int32 motor_desired_angle


")



(provide :robot1/motor_cmd "e39fb850cd33bf75c7d2d2cb00151e67")


