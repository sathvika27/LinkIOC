#!../../bin/linux-x86_64/linkIOC

## You may have to change linkIOC to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/linkIOC.dbd"
linkIOC_registerRecordDeviceDriver pdbbase

## Load record instances
dbLoadRecords("db/linkDb.db","I=ip,O=op")

cd "${TOP}/iocBoot/${IOC}"
set_requestfile_path("$(TOP)/autoSaveRestore", "")
set_savefile_path("$(TOP)/autoSaveRestore")
set_pass0_restoreFile("auto.sav")
set_pass1_restoreFile("auto.sav")
iocInit
create_monitor_set("auto.req", 5, "I=ip,O=op")
 

## Start any sequence programs
#seq sncxxx,"user=epics"
