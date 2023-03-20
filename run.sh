echo "*****************cloning workspace**********************/n"
git clone https://github.com/sopansagorkareactWebApp.git
cd ReactWebApp
npm cache clear --force
npm install
npm run start