FILE(REMOVE_RECURSE
  "../src/cob_srvs/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/cob_srvs/GetPose.h"
  "../srv_gen/cpp/include/cob_srvs/GetTransformCamera2Base.h"
  "../srv_gen/cpp/include/cob_srvs/SetMaxVel.h"
  "../srv_gen/cpp/include/cob_srvs/GetColoredPointCloud.h"
  "../srv_gen/cpp/include/cob_srvs/SetOperationMode.h"
  "../srv_gen/cpp/include/cob_srvs/GetEnvModel.h"
  "../srv_gen/cpp/include/cob_srvs/MoveCart.h"
  "../srv_gen/cpp/include/cob_srvs/GetTOFImages.h"
  "../srv_gen/cpp/include/cob_srvs/SetJointTrajectory.h"
  "../srv_gen/cpp/include/cob_srvs/GetCameraInfo.h"
  "../srv_gen/cpp/include/cob_srvs/ElmoRecorderReadout.h"
  "../srv_gen/cpp/include/cob_srvs/ElmoRecorderConfig.h"
  "../srv_gen/cpp/include/cob_srvs/GetTransformCamera2BasePoint.h"
  "../srv_gen/cpp/include/cob_srvs/GetPointCloud2.h"
  "../srv_gen/cpp/include/cob_srvs/TransformCamera2Base.h"
  "../srv_gen/cpp/include/cob_srvs/SetJointStiffness.h"
  "../srv_gen/cpp/include/cob_srvs/Trigger.h"
  "../srv_gen/cpp/include/cob_srvs/GetPlatformPosition.h"
  "../srv_gen/cpp/include/cob_srvs/MoveNeck.h"
  "../srv_gen/cpp/include/cob_srvs/AcquireCalibrationImages.h"
  "../srv_gen/cpp/include/cob_srvs/SetDefaultVel.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
