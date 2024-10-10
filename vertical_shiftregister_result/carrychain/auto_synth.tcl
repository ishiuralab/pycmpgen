set targetFile "../comp2_1vivado_exe.v"
set dirPath "/home/kanai/reserch/pycmpgen/vertical_shiftregister_result"

# ファイルが存在するかチェック
if { [file isdirectory $dirPath] } {
    # .vファイルすべて取得
    set vFiles [glob -nocomplain "$dirPath/*.v"]
    # ファイルの内容を読み込んで表示
    if { [llength $vFiles] == 0 } {
        puts "No .v files found in the directory."
    } else {
        # open_project /home/kanai/reserch/pycmpgen/comp2_1project/comp2_1project.xpr

        foreach file $vFiles {
            puts "#########################"
            puts $file
            puts "#########################"
            set timingFile [string map {".v" "_timing.txt"} $file]
            set utilFile [string map {".v" "_util.txt"} $file]
            # targetファイルに書き込み
            set fileData [open $file r]
            set target [open $targetFile w]
            while {[gets $fileData line] != -1} {
                puts $target $line
            }
            close $fileData
            close $target

            # Vivadoで合成、実装
            open_project /home/kanai/reserch/pycmpgen/comp2_1project/comp2_1project.xpr
            update_compile_order -fileset sources_1
            reset_run synth_1
            set_property top shift_register [current_fileset]
            launch_runs synth_1 -jobs 6
            wait_on_run synth_1
            launch_runs impl_1 -jobs 6
            wait_on_run impl_1
            open_run impl_1
            report_timing -max_paths 1 -file $timingFile
            report_utilization -file $utilFile
            close_project
        }

        exit
    }


} else {
    puts stderr "Error: File does not exist."
    exit 1
}
