FILE(REMOVE_RECURSE
  "../src/cob_sdh/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/cob_sdh/msg/__init__.py"
  "../src/cob_sdh/msg/_TactileSensor.py"
  "../src/cob_sdh/msg/_TactileMatrix.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
