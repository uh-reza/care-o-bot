FILE(REMOVE_RECURSE
  "../src/cob_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/cob_msgs/msg/__init__.py"
  "../src/cob_msgs/msg/_MoveCartAction.py"
  "../src/cob_msgs/msg/_MoveCartGoal.py"
  "../src/cob_msgs/msg/_MoveCartActionGoal.py"
  "../src/cob_msgs/msg/_MoveCartResult.py"
  "../src/cob_msgs/msg/_MoveCartActionResult.py"
  "../src/cob_msgs/msg/_MoveCartFeedback.py"
  "../src/cob_msgs/msg/_MoveCartActionFeedback.py"
  "../src/cob_msgs/msg/_ColoredPointCloud.py"
  "../src/cob_msgs/msg/_DetectionArray.py"
  "../src/cob_msgs/msg/_ObjectInstance.py"
  "../src/cob_msgs/msg/_PersonList.py"
  "../src/cob_msgs/msg/_RectArray.py"
  "../src/cob_msgs/msg/_Transformation.py"
  "../src/cob_msgs/msg/_MaskArray.py"
  "../src/cob_msgs/msg/_Detection.py"
  "../src/cob_msgs/msg/_ReprojectionMatrix.py"
  "../src/cob_msgs/msg/_PersonHypothesis.py"
  "../src/cob_msgs/msg/_Rect.py"
  "../src/cob_msgs/msg/_Mask.py"
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
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
