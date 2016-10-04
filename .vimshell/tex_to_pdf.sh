#!/bin/bash
 
basename=$1 # 引数からファイル名を受取る
filename=${basename%.*} # 拡張子を取った名前
pdfflag=1
dviflag=1
 
if [ -a ${filename}.tex ]; then
    # tex -> dviファイル
    platex ${filename}.tex
else
    echo "ファイル：${filename}.tex が存在しません"
    dviflag=0
    pdfflag=0
fi
 
if [ -a ${filename}.dvi ]; then
	# dvi -> pdfファイル
    dvipdfmx ${filename}.dvi
elif [ $dviflag != 0 ]; then
    echo "${filename}.dvi が作成できていないようです．"
    pdfflag=0
fi
 
if [ -a ${filename}.pdf ]; then
	    # pdfファイルを開く
    open ${filename}.pdf
elif [ $pdfflag != 0 ]; then
    echo "${filename}.pdf が開けません．"
fi


