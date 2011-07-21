FILE(REMOVE_RECURSE
  "../src/cob_sound/msg"
  "../src/cob_sound/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genaction_msgs"
  "../msg/SayAction.msg"
  "../msg/SayGoal.msg"
  "../msg/SayActionGoal.msg"
  "../msg/SayResult.msg"
  "../msg/SayActionResult.msg"
  "../msg/SayFeedback.msg"
  "../msg/SayActionFeedback.msg"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genaction_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
