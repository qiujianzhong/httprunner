
hrp_version=`echo "4.3.5"`
echo "build version: $hrp_version"

cd ..
rm -rf ./output/
mkdir -p ./output/packages

os_all='linux windows darwin'
arch_all='amd64 arm64'

cd ./output

for os in $os_all; do
    for arch in $arch_all; do
        hrp_dir_name="hrp_${hrp_version}_${os}_${arch}"
        # hrp_path="./packages/"
        # pwd
        echo $hrp_dir_name
        # mkdir -p  $hrp_dir_name
        env CGO_ENABLED=0 GOOS=$os GOARCH=$arch go build -ldflags '-s -w' -tags "$tags" -o "./packages/$hrp_dir_name/hrp" ../hrp/cmd/cli/main.go
        cd packages
        if [ "x${os}" = x"windows" ]; then
            zip -rq $hrp_dir_name.zip $hrp_dir_name
        else
            tar -zcf $hrp_dir_name.tar.gz $hrp_dir_name
        fi  
        cd ..

    done
done

 # packages

