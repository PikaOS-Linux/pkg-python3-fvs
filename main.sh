# Clone Upstream
git clone https://github.com/mirkobrombin/FVS -b 0.3.4 ./fvs
cp -rvf ./debian ./fvs/
cd ./fvs

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
