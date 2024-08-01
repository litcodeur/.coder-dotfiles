# Install extensions from the extensions folder one by one
for extension in $(ls -d /extensions/*); do
  code-server --install-extension $extension
done
