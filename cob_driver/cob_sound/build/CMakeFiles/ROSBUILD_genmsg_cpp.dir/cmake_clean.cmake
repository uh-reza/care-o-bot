FILE(REMOVE_RECURSE
  "../src/cob_sound/msg"
  "../src/cob_sound/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/cob_sound/SayAction.h"
  "../msg_gen/cpp/include/cob_sound/SayGoal.h"
  "../msg_gen/cpp/include/cob_sound/SayActionGoal.h"
  "../msg_gen/cpp/include/cob_sound/SayResult.h"
  "../msg_gen/cpp/include/cob_sound/SayActionResult.h"
  "../msg_gen/cpp/include/cob_sound/SayFeedback.h"
  "../msg_gen/cpp/include/cob_sound/SayActionFeedback.h"
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
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
