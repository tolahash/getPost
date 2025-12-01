cat > README.md << EOF

# Rock Records Application

A C application that collects user data and sends it to a PHP backend for storage and visualization.

## Components

- C program (main.c, send_data.c, appdev.h)
- PHP backend (test.php)
- Chart visualization (chart.html)

## Build

\`\`\`bash
gcc -o app main.c send_data.c -lcurl
\`\`\`

## Run

\`\`\`bash
./app
\`\`\`
EOF
