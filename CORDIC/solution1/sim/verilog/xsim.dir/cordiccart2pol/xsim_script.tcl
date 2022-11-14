set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {cordiccart2pol} -view {{cordiccart2pol_dataflow_ana.wcfg}} -tclbatch {cordiccart2pol.tcl} -protoinst {cordiccart2pol.protoinst}
