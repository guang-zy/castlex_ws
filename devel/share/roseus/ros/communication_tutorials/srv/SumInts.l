;; Auto-generated. Do not edit!


(when (boundp 'communication_tutorials::SumInts)
  (if (not (find-package "COMMUNICATION_TUTORIALS"))
    (make-package "COMMUNICATION_TUTORIALS"))
  (shadow 'SumInts (find-package "COMMUNICATION_TUTORIALS")))
(unless (find-package "COMMUNICATION_TUTORIALS::SUMINTS")
  (make-package "COMMUNICATION_TUTORIALS::SUMINTS"))
(unless (find-package "COMMUNICATION_TUTORIALS::SUMINTSREQUEST")
  (make-package "COMMUNICATION_TUTORIALS::SUMINTSREQUEST"))
(unless (find-package "COMMUNICATION_TUTORIALS::SUMINTSRESPONSE")
  (make-package "COMMUNICATION_TUTORIALS::SUMINTSRESPONSE"))

(in-package "ROS")





(defclass communication_tutorials::SumIntsRequest
  :super ros::object
  :slots (_a _i ))

(defmethod communication_tutorials::SumIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:i __i) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _i (round __i))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:i
   (&optional __i)
   (if __i (setq _i __i)) _i)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _i
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _i
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _i (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _i) (= (length (_i . bv)) 2)) ;; bignum
              (write-long (ash (elt (_i . bv) 0) 0) s)
              (write-long (ash (elt (_i . bv) 1) -1) s))
             ((and (class _i) (= (length (_i . bv)) 1)) ;; big1
              (write-long (elt (_i . bv) 0) s)
              (write-long (if (>= _i 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _i s)(write-long (if (>= _i 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _i
#+(or :alpha :irix6 :x86_64)
      (setf _i (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _i (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass communication_tutorials::SumIntsResponse
  :super ros::object
  :slots (_sum ))

(defmethod communication_tutorials::SumIntsResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass communication_tutorials::SumInts
  :super ros::object
  :slots ())

(setf (get communication_tutorials::SumInts :md5sum-) "c4ba0434e54f58dda95d9e73abb2a1f5")
(setf (get communication_tutorials::SumInts :datatype-) "communication_tutorials/SumInts")
(setf (get communication_tutorials::SumInts :request) communication_tutorials::SumIntsRequest)
(setf (get communication_tutorials::SumInts :response) communication_tutorials::SumIntsResponse)

(defmethod communication_tutorials::SumIntsRequest
  (:response () (instance communication_tutorials::SumIntsResponse :init)))

(setf (get communication_tutorials::SumIntsRequest :md5sum-) "c4ba0434e54f58dda95d9e73abb2a1f5")
(setf (get communication_tutorials::SumIntsRequest :datatype-) "communication_tutorials/SumIntsRequest")
(setf (get communication_tutorials::SumIntsRequest :definition-)
      "int64 a
int64 i
---
int64 sum

")

(setf (get communication_tutorials::SumIntsResponse :md5sum-) "c4ba0434e54f58dda95d9e73abb2a1f5")
(setf (get communication_tutorials::SumIntsResponse :datatype-) "communication_tutorials/SumIntsResponse")
(setf (get communication_tutorials::SumIntsResponse :definition-)
      "int64 a
int64 i
---
int64 sum

")



(provide :communication_tutorials/SumInts "c4ba0434e54f58dda95d9e73abb2a1f5")


