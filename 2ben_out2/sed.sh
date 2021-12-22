#!/usr/local/bin/bash


# atom num
atom=24

# data num(atom*4+2)
data=98

for i in {00..10}; do
    #データの抽出
    grep -A "${data}" "Effective charges" ./${i}/ben2_${i}.ph.out > ./${i}/BEN_${i}.txt

    #余計な行を削除
    sed -i '1,2d' ./${i}/BEN_${i}.txt
    sed -i '/atom/d' ./${i}/BEN_${i}.txt

    #データの抽出
    awk '{ print $3,$4,$5 }' ./${i}/BEN_${i}.txt  > ./${i}/BEN2_${i}.txt
done
