echo "Installing NodeJS"
apt-get update
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs

echo "Building application"
npm install

# Convert line endings and set executable flag to ensure Windows compatibility
sed -i 's/\r//g' gradlew
chmod a+x gradlew
./gradlew createConfigs
npm run dev
