################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
F2806x_CodeStartBranch.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_CodeStartBranch.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_CodeStartBranch.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_DefaultIsr.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_DefaultIsr.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_DefaultIsr.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_GlobalVariableDefs.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/source/F2806x_GlobalVariableDefs.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_GlobalVariableDefs.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_PieCtrl.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_PieCtrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_PieCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_PieVect.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_PieVect.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_PieVect.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_Sci.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_Sci.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_Sci.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_SysCtrl.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_SysCtrl.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_SysCtrl.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

F2806x_usDelay.obj: E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/source/F2806x_usDelay.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="F2806x_usDelay.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Main.obj: ../Main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="Main.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Serial_Cmd_Monitor.obj: ../Serial_Cmd_Monitor.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="Serial_Cmd_Monitor.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

UART_Comm.obj: ../UART_Comm.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --float_support=fpu32 --vcu_support=vcu0 -g --include_path="E:/ti/ccsv6/tools/compiler/c2000_15.12.3.LTS/include" --include_path="/packages/ti/xdais" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_headers/include" --include_path="E:/ti/controlSUITE/device_support/f2806x/v136/F2806x_common/include" --define="_DEBUG" --define="LARGE_MODEL" --quiet --verbose_diagnostics --diag_warning=225 --issue_remarks --output_all_syms --cdebug_asm_data --preproc_with_compile --preproc_dependency="UART_Comm.d" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


