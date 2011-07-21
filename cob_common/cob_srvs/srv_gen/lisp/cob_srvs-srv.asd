
(cl:in-package :asdf)

(defsystem "cob_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cob_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
               :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPose" :depends-on ("_package_GetPose"))
    (:file "_package_GetPose" :depends-on ("_package"))
    (:file "GetTransformCamera2Base" :depends-on ("_package_GetTransformCamera2Base"))
    (:file "_package_GetTransformCamera2Base" :depends-on ("_package"))
    (:file "SetMaxVel" :depends-on ("_package_SetMaxVel"))
    (:file "_package_SetMaxVel" :depends-on ("_package"))
    (:file "GetColoredPointCloud" :depends-on ("_package_GetColoredPointCloud"))
    (:file "_package_GetColoredPointCloud" :depends-on ("_package"))
    (:file "SetOperationMode" :depends-on ("_package_SetOperationMode"))
    (:file "_package_SetOperationMode" :depends-on ("_package"))
    (:file "GetEnvModel" :depends-on ("_package_GetEnvModel"))
    (:file "_package_GetEnvModel" :depends-on ("_package"))
    (:file "MoveCart" :depends-on ("_package_MoveCart"))
    (:file "_package_MoveCart" :depends-on ("_package"))
    (:file "GetTOFImages" :depends-on ("_package_GetTOFImages"))
    (:file "_package_GetTOFImages" :depends-on ("_package"))
    (:file "SetJointTrajectory" :depends-on ("_package_SetJointTrajectory"))
    (:file "_package_SetJointTrajectory" :depends-on ("_package"))
    (:file "GetCameraInfo" :depends-on ("_package_GetCameraInfo"))
    (:file "_package_GetCameraInfo" :depends-on ("_package"))
    (:file "ElmoRecorderReadout" :depends-on ("_package_ElmoRecorderReadout"))
    (:file "_package_ElmoRecorderReadout" :depends-on ("_package"))
    (:file "ElmoRecorderConfig" :depends-on ("_package_ElmoRecorderConfig"))
    (:file "_package_ElmoRecorderConfig" :depends-on ("_package"))
    (:file "GetTransformCamera2BasePoint" :depends-on ("_package_GetTransformCamera2BasePoint"))
    (:file "_package_GetTransformCamera2BasePoint" :depends-on ("_package"))
    (:file "GetPointCloud2" :depends-on ("_package_GetPointCloud2"))
    (:file "_package_GetPointCloud2" :depends-on ("_package"))
    (:file "TransformCamera2Base" :depends-on ("_package_TransformCamera2Base"))
    (:file "_package_TransformCamera2Base" :depends-on ("_package"))
    (:file "SetJointStiffness" :depends-on ("_package_SetJointStiffness"))
    (:file "_package_SetJointStiffness" :depends-on ("_package"))
    (:file "Trigger" :depends-on ("_package_Trigger"))
    (:file "_package_Trigger" :depends-on ("_package"))
    (:file "GetPlatformPosition" :depends-on ("_package_GetPlatformPosition"))
    (:file "_package_GetPlatformPosition" :depends-on ("_package"))
    (:file "MoveNeck" :depends-on ("_package_MoveNeck"))
    (:file "_package_MoveNeck" :depends-on ("_package"))
    (:file "AcquireCalibrationImages" :depends-on ("_package_AcquireCalibrationImages"))
    (:file "_package_AcquireCalibrationImages" :depends-on ("_package"))
    (:file "SetDefaultVel" :depends-on ("_package_SetDefaultVel"))
    (:file "_package_SetDefaultVel" :depends-on ("_package"))
  ))