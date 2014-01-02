
OUTPUT_DIR="`pwd`/bin"
NAME="screen-recording"
PROJECT="`pwd`/$NAME.xcodeproj"

echo "rm -rf \"$OUTPUT_DIR\""
rm -rf "\"$OUTPUT_DIR\""

echo "Project: $PROJECT"
echo "Scheme: $NAME"
echo "Configuration: Release"
echo "Output Dir: $OUTPUT_DIR"

xcodebuild \
  -project $PROJECT \
  -scheme $NAME \
  -configuration Release \
  CONFIGURATION_BUILD_DIR=$OUTPUT_DIR
