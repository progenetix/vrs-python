# This script removes the system ga4gh.vrs and updates locally from the current
# source.

pip3 uninstall ga4gh.vrs --break-system-packages
python3 -m build --sdist .
BY=(./dist/*tar.gz)
pip3 install $BY --break-system-packages
rm -rf ./build
rm -rf ./dist
