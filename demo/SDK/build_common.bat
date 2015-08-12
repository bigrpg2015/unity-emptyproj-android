@echo ""
@echo "Compiling Java..."

@del /F /S /Q  com
@javac  CommonConfigReader.java  CommonSDK.java  -source 1.6  -target 1.6  -bootclasspath android.jar  -classpath  SDK.jar  -d .

@javap -s com.zulong.unisdk.CommonConfigReader
@javap -s com.zulong.unisdk.CommonSDK



@jar cvfM common.jar com/


@echo ""
@echo "Done!"
@pause