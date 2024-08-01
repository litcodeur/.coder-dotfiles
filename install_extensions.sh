# Install extensions from the extensions folder relative to the script
for extension in $(ls ./extensions); do
    code-server --install-extension ./extensions/$extension
done