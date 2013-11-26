pushd .
cd ./precompile/js
node duster.js &
cd ../sass
sass --watch .:../../www/css/ --style compressed &
popd