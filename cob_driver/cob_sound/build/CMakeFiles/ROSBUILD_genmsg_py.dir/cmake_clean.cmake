FILE(REMOVE_RECURSE
  "../src/cob_sound/msg"
  "../src/cob_sound/srv"
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/cob_sound/msg/__init__.py"
  "../src/cob_sound/msg/_SayAction.py"
  "../src/cob_sound/msg/_SayGoal.py"
  "../src/cob_sound/msg/_SayActionGoal.py"
  "../src/cob_sound/msg/_SayResult.py"
  "../src/cob_sound/msg/_SayActionResult.py"
  "../src/cob_sound/msg/_SayFeedback.py"
  "../src/cob_sound/msg/_SayActionFeedback.py"
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
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
