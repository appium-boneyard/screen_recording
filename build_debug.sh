
OUTPUT_DIR="`pwd`/bin"
NAME="screen-recording"
PROJECT="`pwd`/$NAME.xcodeproj"

echo "rm -rf \"$OUTPUT_DIR\""
rm -rf "\"$OUTPUT_DIR\""

echo "Project: $PROJECT"
echo "Scheme: $NAME"
echo "Configuration: Debug"
echo "Output Dir: $OUTPUT_DIR"

xcodebuild \
  -project $PROJECT \
  -scheme $NAME \
  -configuration Debug \
  CONFIGURATION_BUILD_DIR=$OUTPUT_DIR
