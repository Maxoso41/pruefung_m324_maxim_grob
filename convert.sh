#!/bin/bash

# Check if task-3.md exists
if [ ! -f task-3.md ]; then
  echo "task-3.md not found!"
  exit 1
fi

# Read the content of task-3.md
content=$(cat task-3.md)

# Create the HTML file and write the content
cat <<EOF > task-3.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task 3</title>
</head>
<body>
<pre>
$content
</pre>
</body>
</html>
EOF

echo "task-3.html has been created."