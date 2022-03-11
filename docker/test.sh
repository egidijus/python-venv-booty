#!/usr/bin/env bash


images_to_build=$(find . -type f -name "*dockerfile"  )



# myString="${myString:1}"


build_image(){
docker build -t ${i:2} -f ${i:2} .
}

test_image(){
docker run -it --rm ${i:2} --name ${i:2}
}



# for i in $(locate pip | grep .*pip$); do $i --version; done
for i in $images_to_build;
  do 
    echo '====================================================='
    # echo clean $i
    echo Building ${i:2} 
    echo '====================================================='
    build_image; 
    echo Testing ${i:2} 
    echo '====================================================='
    test_image;
    sleep 2
    echo '====================================================='
done
