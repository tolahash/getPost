# Rock Records Application

A C application that collects user data and sends it to a PHP backend for storage and visualization.

## Components

- C program (main.c, sendData.c, appdev.h)
- PHP backend (post.php)
- Chart visualization (post.html)

## Build

\`\`\`
gcc -o app main.c sendData.c -lcurl
\`\`\`

## Run

\`\`\`
./app
\`\`\`
