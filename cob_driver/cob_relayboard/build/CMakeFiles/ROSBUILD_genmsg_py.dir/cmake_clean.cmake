FILE(REMOVE_RECURSE
  "../src/cob_relayboard/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/cob_relayboard/msg/__init__.py"
  "../src/cob_relayboard/msg/_EmergencyStopState.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
