echo "*****************cloning workspace**********************/n"

git clone https://github.com/sopansagorkar/ReactWebApp.git

cd ReactWebApp

npm cache clean -f

npm config set strict-ssl false

npm install

npm run start