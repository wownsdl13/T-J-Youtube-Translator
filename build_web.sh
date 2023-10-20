flutter build web
#mkdir build/web/assets/assets/downloads/
#cp assets/downloads/* build/web/assets/assets/downloads/
cd build/web
cp index.html 404.html
git add ./
git commit -m 'deploy'
git push origin main --force
cd ../..