#find duplicate filenames and folders
find . -mindepth 1 -printf '%h %f\n' | sort -t ' ' -k 2,2 | uniq -f 1 --all-repeated=separate | tr ' ' '/'
#./recup_dir.201/t2369151336.jpg
#./recup_dir.202/t2369151336.jpg

#find duplicate filenames only
find . -mindepth 1 -type f -printf '%p %f\n' | sort -t ' ' -k 2,2 | uniq -f 1 --all-repeated=separate | cut -d' ' -f1