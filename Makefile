# Makefile Reference
# Please use this file as the project Makefile reference


##############################################################################
# Default DALVIK_VM_BUILD setting is 27
# android 4.0: 27
# android 4.1: 28
# htc t328t is special one
#-----------------------------------------------------------------------------
DALVIK_VM_BUILD := 27


##############################################################################
# Directorys which you want to remove in vendor directory
#-----------------------------------------------------------------------------
vendor_remove_dirs := app appbackup

##############################################################################
# Files which you want to remove in vendor directory
#-----------------------------------------------------------------------------
# vendor_remove_files := bin/zchgd

##############################################################################
# Vendor apks you want to use
#-----------------------------------------------------------------------------
vendor_saved_apps := MtkBt

##############################################################################
# Apks build from current project root directory
# if the apk is decode from baidu:
# 1, check if the apk in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's apk to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_apps := FMRadio
# you need decode FMRadio.apk to the project directory (use apktool d FMRadio.apk) first
# then you can make it by:   make FMRadio
#-----------------------------------------------------------------------------
vendor_modify_apps := FMRadio

##############################################################################
# Jars build from current project root directory
# if the jar is decode from baidu:
# 1, check if the jar in BAIDU_UPDATE_RES_APPS (you can see it in build/configs/baidu_default.mk)
# 2, if in, you need to change the resource id to "#type@name#t" or "#type@name#a" by idtoname.py:
#	a, use "apktool d source/system/framework/framework-res.apk other/TMP/framework-res"
#	b, use "idtoname.py other/TMP/framework-res/res/values/public_master.xml XXXX/smali" 
#		(XXXX is the directory where you decode baidu's jar to)
# 3, if not, just decode it
# 
# if the apk is decode from vendor: just decode it
#
# eg: vendor_modify_jars := android.policy
# you need decode android.policy.jar to the project directory (use apktool d android.policy.jar) first
# then you can make it by:   make android.policy
#-----------------------------------------------------------------------------
vendor_modify_jars := framework secondary_framework services 

##############################################################################
# Directorys which you want to saved in baidu directory
#-----------------------------------------------------------------------------
# baidu_saved_dirs := media/audio/ui

##############################################################################
# Files which you want to saved in baidu directory
#-----------------------------------------------------------------------------
baidu_saved_files := lib/libwebcore.so lib/libsurfaceflinger.so

##############################################################################
# baidu_remove_apps: those baidu apk you want remove 
#-----------------------------------------------------------------------------
#baidu_remove_apps := BaiduUserFeedback

##############################################################################
# baidu_modify_apps: which base the baidu's apk
# just override the res, append *.smali.part
#-----------------------------------------------------------------------------
baidu_modify_apps := SystemUI

##############################################################################
# baidu_modify_jars: which base the baidu's jar
# just append *.smali.part
#-----------------------------------------------------------------------------
# baidu_modify_jars := android.policy

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
override_property += \
    ro.baidu.2nd_storage.format=enable \
    ro.product.device.alias=v970,V970,v970_jb,v970_ics2 \
    ro.baidu.default_write.settable=true \
    ro.build.version.incremental=20120828.093925

override_property += \
    ro.rom.mt.font=1

##############################################################################
# override_property: this property will override the build.prop
#-----------------------------------------------------------------------------
remove_property += \
    ro.operator.optr \
    ro.operator.spec \
    ro.operator.seg


include $(PORT_BUILD)/main.mk
include $(PORT_BUILD)/autopatch.mk
