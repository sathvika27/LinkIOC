TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = linkIOC
# linkIOC.dbd will be created and installed
DBD += linkIOC.dbd

# linkIOC.dbd will be made up from these files:
linkIOC_DBD += base.dbd

# Include dbd files from all support applications:
linkIOC_DBD += asSupport.dbd

# Add all the support libraries needed by this IOC
linkIOC_LIBS += autosave

# linkIOC_registerRecordDeviceDriver.cpp derives from linkIOC.dbd
linkIOC_SRCS += linkIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
linkIOC_SRCS_DEFAULT += linkIOCMain.cpp
linkIOC_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#linkIOC_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
linkIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

