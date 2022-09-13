# get the current directory name
# assuming that the current directory name is the current project name
currentProjectName="$(basename $(pwd))"
echo "The current project's name is $currentProjectName"
echo

# ask for a new project's name that you wish to rename to
echo "Please enter a new project's name that you wish to rename to "
read newProjectName
echo


# rename all files that has the name or contain the current project's name to a new name
LC_ALL=C find . -type f -exec sed -i '' "s/"$currentProjectName"/$newProjectName/g" {} +

ruby <<-EORUBY
Dir.glob("**/*").select { |file_path| File.basename(file_path).include?("$currentProjectName") }.reverse().each { |file|
    File.rename(file, file.sub(/.*\K$currentProjectName/, "$newProjectName"))
}
EORUBY

# empty all md files
for file in *.md; do
    if [ -f "$file" ]; then
        echo "empty file $file"
        rm $file
        touch $file
    fi
done
echo

# add new project's name to README
echo "Update README"
echo "#$newProjectName" > README.md
echo

# rename the current directory
echo "Rename the current directory to $newProjectName"
mv ../$currentProjectName ../$newProjectName
echo
