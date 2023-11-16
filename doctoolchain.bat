set DTC_COMMAND=

if not "%1" == "" (
  set DTC_COMMAND=-c "doctoolchain . %1 %2 %3 %4 %5 %6 %7 %8 %9 -PinputPath=/project/src/docs/ -PmainConfigFile=docToolchain.groovy && exit"
)


docker run --rm -e JAVA_TOOL_OPTIONS="-Dplantuml.include.path=\"/project/src/docs/arc42/chapters\""  --entrypoint /bin/bash -it -v %cd%:/project mydoc_v3.1.1 %DTC_COMMAND%

