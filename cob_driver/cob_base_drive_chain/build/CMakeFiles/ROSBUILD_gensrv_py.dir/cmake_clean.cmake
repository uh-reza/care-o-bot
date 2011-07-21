FILE(REMOVE_RECURSE
  "../src/cob_base_drive_chain/srv"
  "../srv_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/cob_base_drive_chain/srv/__init__.py"
  "../src/cob_base_drive_chain/srv/_GetJointState.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
