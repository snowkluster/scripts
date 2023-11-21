# basic structure setup
# creating all folders and files that maybe required

if (!(Test-Path -Path "build")) {
    New-Item -ItemType Directory "build"
    New-Item -ItemType File -Path "build/.gitkeep"
}

if (!(Test-Path -Path "src")) {
    New-Item -ItemType Directory "src"
    New-Item -ItemType File -Path "src/.gitkeep"
}

if (!(Test-Path -Path "lib")) {
    New-Item -ItemType Directory "lib"
    New-Item -ItemType File -Path "lib/.gitkeep"
}

if (!(Test-Path -Path "bin")) {
    New-Item -ItemType Directory "bin"
    New-Item -ItemType File -Path "bin/.gitkeep"
}

if (!(Test-Path -Path "include")) {
    New-Item -ItemType Directory "include"
    New-Item -ItemType File -Path "include/.gitkeep"
}

if (!(Test-Path -Path ".gitignore")) {
    New-Item -ItemType File ".gitignore"
}

if (!(Test-Path -Path "Makefile")) {
    New-Item -ItemType File "Makefile"
}

if (!(Test-Path -Path "README.md")) {
    New-Item -ItemType File "README.md"
}

if (!(Test-Path -Path "testing")) {
    New-Item -ItemType Directory "testing"
    New-Item -ItemType File -Path "testing/.gitkeep"
}

# setting up .gitignore
Clear-Content ".gitignore"

$ignore = "# Prerequisites
*.d

# Object files
*.o
*.ko
*.obj
*.elf

# Linker output
*.ilk
*.map
*.exp

# Precompiled Headers
*.gch
*.pch

# Libraries
*.lib
*.a
*.la
*.lo

# Shared objects (inc. Windows DLLs)
*.dll
*.so
*.so.*
*.dylib

# Executables
*.exe
*.out
*.app
*.i*86
*.x86_64
*.hex

# Debug files
*.dSYM/
*.su
*.idb
*.pdb

# Kernel Module Compile Results
*.mod*
*.cmd
.tmp_versions/
modules.order
Module.symvers
Mkfile.old
dkms.conf

# Logs
logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*
lerna-debug.log*
.pnpm-debug.log*

# Diagnostic reports 
report.[0-9]*.[0-9]*.[0-9]*.[0-9]*.json

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Directory for instrumented libs generated by jscoverage/JSCover
lib-cov

# Coverage directory used by tools like istanbul
coverage
*.lcov

# nyc test coverage
.nyc_output

# Grunt intermediate storage 
.grunt

# Bower dependency directory 
bower_components

# node-waf configuration
.lock-wscript

# Compiled binary addons 
build/Release

# Dependency directories
node_modules/
jspm_packages/

# Snowpack dependency directory 
web_modules/

# TypeScript cache
*.tsbuildinfo

# Optional npm cache directory
.npm

# Optional eslint cache
.eslintcache

# Optional stylelint cache
.stylelintcache

# Microbundle cache
.rpt2_cache/
.rts2_cache_cjs/
.rts2_cache_es/
.rts2_cache_umd/

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variable files
.env
.env.development.local
.env.test.local
.env.production.local
.env.local

# parcel-bundler cache 
.cache
.parcel-cache

# Next.js build output
.next
out

# Nuxt.js build / generate output
.nuxt
dist

# Gatsby files
.cache/

# public

# vuepress build output
.vuepress/dist

# vuepress v2.x temp and cache directory
.temp
.cache

# Docusaurus cache and generated files
.docusaurus

# Serverless directories
.serverless/

# FuseBox cache
.fusebox/

# DynamoDB Local files
.dynamodb/

# TernJS port file
.tern-port

# Stores VSCode versions used for testing VSCode extensions
.vscode-test

# yarn v2
.yarn/cache
.yarn/unplugged
.yarn/build-state.yml
.yarn/install-state.gz
.pnp.*"

Add-Content -Path ".gitignore" -Value $ignore

# setting up README.md

Add-Content -Path "README.md" -Value "# NEW PROJECT"
