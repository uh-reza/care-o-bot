FILE(REMOVE_RECURSE
  "../src/cob_msgs/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genaction_msgs"
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
  INCLUDE(CMakeFiles/ROSBUILD_genaction_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
