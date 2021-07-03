# Notes to self on using Hugo with GitHub Pages

## Usage
Make changes in this repository. Test website locally using:
```
hugo server
```

When ready to submit changes, compile with Hugo:
```
hugo
```

Then, commit changes to GitHub:
```
cd public
git add .
git commit -m "Commit message"
git push origin main

cd ..
git add .
git commit -m "Commit message"
git push origin main
```

## Setup
If things ever mess up, try re-adding the submodule:
```
git rm public
rm -rf .git/modules/public
git submodule add -b master https://github.com/jarodlam/jarodlam.github.io.git public
```
