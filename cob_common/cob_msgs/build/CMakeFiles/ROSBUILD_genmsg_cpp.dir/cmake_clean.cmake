FILE(REMOVE_RECURSE
  "../src/cob_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/cob_msgs/MoveCartAction.h"
  "../msg_gen/cpp/include/cob_msgs/MoveCartGoal.h"
  "../msg_gen/cpp/include/cob_msgs/MoveCartActionGoal.h"
  "../msg_gen/cpp/include/cob_msgs/MoveCartResult.h"
  "../msg_gen/cpp/include/cob_msgs/MoveCartActionResult.h"
  "../msg_gen/cpp/include/cob_msgs/MoveCartFeedback.h"
  "../msg_gen/cpp/include/cob_msgs/MoveCartActionFeedback.h"
  "../msg_gen/cpp/include/cob_msgs/ColoredPointCloud.h"
  "../msg_gen/cpp/include/cob_msgs/DetectionArray.h"
  "../msg_gen/cpp/include/cob_msgs/ObjectInstance.h"
  "../msg_gen/cpp/include/cob_msgs/PersonList.h"
  "../msg_gen/cpp/include/cob_msgs/RectArray.h"
  "../msg_gen/cpp/include/cob_msgs/Transformation.h"
  "../msg_gen/cpp/include/cob_msgs/MaskArray.h"
  "../msg_gen/cpp/include/cob_msgs/Detection.h"
  "../msg_gen/cpp/include/cob_msgs/ReprojectionMatrix.h"
  "../msg_gen/cpp/include/cob_msgs/PersonHypothesis.h"
  "../msg_gen/cpp/include/cob_msgs/Rect.h"
  "../msg_gen/cpp/include/cob_msgs/Mask.h"
  "../msg/MoveCartAction.msg"
  "../msg/MoveCartGoal.msg"
  "../msg/MoveCartActionGoal.msg"
  "../msg/MoveCartResult.msg"
  "../msg/MoveCartActionResult.msg"
  "../msg/MoveCartFeedback.msg"
  "../msg/MoveCartActionFeedback.msg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
