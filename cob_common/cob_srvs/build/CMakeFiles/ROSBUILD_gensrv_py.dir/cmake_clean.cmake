FILE(REMOVE_RECURSE
  "../src/cob_srvs/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/cob_srvs/srv/__init__.py"
  "../src/cob_srvs/srv/_GetPose.py"
  "../src/cob_srvs/srv/_GetTransformCamera2Base.py"
  "../src/cob_srvs/srv/_SetMaxVel.py"
  "../src/cob_srvs/srv/_GetColoredPointCloud.py"
  "../src/cob_srvs/srv/_SetOperationMode.py"
  "../src/cob_srvs/srv/_GetEnvModel.py"
  "../src/cob_srvs/srv/_MoveCart.py"
  "../src/cob_srvs/srv/_GetTOFImages.py"
  "../src/cob_srvs/srv/_SetJointTrajectory.py"
  "../src/cob_srvs/srv/_GetCameraInfo.py"
  "../src/cob_srvs/srv/_ElmoRecorderReadout.py"
  "../src/cob_srvs/srv/_ElmoRecorderConfig.py"
  "../src/cob_srvs/srv/_GetTransformCamera2BasePoint.py"
  "../src/cob_srvs/srv/_GetPointCloud2.py"
  "../src/cob_srvs/srv/_TransformCamera2Base.py"
  "../src/cob_srvs/srv/_SetJointStiffness.py"
  "../src/cob_srvs/srv/_Trigger.py"
  "../src/cob_srvs/srv/_GetPlatformPosition.py"
  "../src/cob_srvs/srv/_MoveNeck.py"
  "../src/cob_srvs/srv/_AcquireCalibrationImages.py"
  "../src/cob_srvs/srv/_SetDefaultVel.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
