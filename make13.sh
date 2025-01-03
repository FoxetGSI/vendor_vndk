#!/bin/bash

systempath=$1
thispath=`cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd`

# Make VNDK symlinks
rm -rf $systempath/lib/vndk-32 $systempath/lib/vndk-sp-32
rm -rf $systempath/lib/vndk-31 $systempath/lib/vndk-sp-31
rm -rf $systempath/lib/vndk-30 $systempath/lib/vndk-sp-30
rm -rf $systempath/lib/vndk-29 $systempath/lib/vndk-sp-29
rm -rf $systempath/lib/vndk-28 $systempath/lib/vndk-sp-28
rm -rf $systempath/lib64/vndk-32 $systempath/lib64/vndk-sp-32
rm -rf $systempath/lib64/vndk-31 $systempath/lib64/vndk-sp-31
rm -rf $systempath/lib64/vndk-30 $systempath/lib64/vndk-sp-30
rm -rf $systempath/lib64/vndk-29 $systempath/lib64/vndk-sp-29
rm -rf $systempath/lib64/vndk-28 $systempath/lib64/vndk-sp-28

ln -s  /apex/com.android.vndk.v32/lib $systempath/lib/vndk-32
ln -s  /apex/com.android.vndk.v31/lib $systempath/lib/vndk-31
ln -s  /apex/com.android.vndk.v30/lib $systempath/lib/vndk-30
ln -s  /apex/com.android.vndk.v29/lib $systempath/lib/vndk-29
ln -s  /apex/com.android.vndk.v28/lib $systempath/lib/vndk-28
ln -s  /apex/com.android.vndk.v32/lib $systempath/lib/vndk-sp-32
ln -s  /apex/com.android.vndk.v31/lib $systempath/lib/vndk-sp-31
ln -s  /apex/com.android.vndk.v30/lib $systempath/lib/vndk-sp-30
ln -s  /apex/com.android.vndk.v29/lib $systempath/lib/vndk-sp-29
ln -s  /apex/com.android.vndk.v28/lib $systempath/lib/vndk-sp-28

ln -s  /apex/com.android.vndk.v32/lib64 $systempath/lib64/vndk-32
ln -s  /apex/com.android.vndk.v31/lib64 $systempath/lib64/vndk-31
ln -s  /apex/com.android.vndk.v30/lib64 $systempath/lib64/vndk-30
ln -s  /apex/com.android.vndk.v29/lib64 $systempath/lib64/vndk-29
ln -s  /apex/com.android.vndk.v28/lib64 $systempath/lib64/vndk-28
ln -s  /apex/com.android.vndk.v32/lib64 $systempath/lib64/vndk-sp-32
ln -s  /apex/com.android.vndk.v31/lib64 $systempath/lib64/vndk-sp-31
ln -s  /apex/com.android.vndk.v30/lib64 $systempath/lib64/vndk-sp-30
ln -s  /apex/com.android.vndk.v29/lib64 $systempath/lib64/vndk-sp-29
ln -s  /apex/com.android.vndk.v28/lib64 $systempath/lib64/vndk-sp-28

# Extract VNDK apex to system
7z x -y $thispath/13/com.android.vndk.v28.7z -o$systempath/apex/ 2>/dev/null >> $systempath/zip.log
7z x -y $thispath/13/com.android.vndk.v29.7z -o$systempath/apex/ 2>/dev/null >> $systempath/zip.log
7z x -y $thispath/13/com.android.vndk.v30.7z -o$systempath/apex/ 2>/dev/null >> $systempath/zip.log
7z x -y $thispath/13/com.android.vndk.v31.7z -o$systempath/apex/ 2>/dev/null >> $systempath/zip.log
7z x -y $thispath/13/com.android.vndk.v32.7z -o$systempath/apex/ 2>/dev/null >> $systempath/zip.log
rm -rf $systempath/zip.log
