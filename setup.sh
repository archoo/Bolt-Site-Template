echo "
attempting to obtain latest bolt distribution..
"
if [ -a bolt_latest.tgz ]
then
  echo "extracting bolt files.."
  tar -xzf bolt_latest.tgz >&/dev/null
  chmod -R 775 files/ app/database/ app/cache/ app/config/ theme/
  rm app/database/.gitignore
  rm app/tests/cache/.gitignore
  rm app/extensions/niceurls/config.yml
  echo "setting up new site config.."
  cp app/config/config.yml.dist app/config/config.yml
  cp app/config/contenttypes.yml.dist app/config/contenttypes.yml
  cp app/config/taxonomy.yml.dist app/config/taxonomy.yml
  cp app/config/menu.yml.dist app/config/menu.yml
  mv config_local.yml app/config/
  echo "cleaning up.."
  cp -r theme/base-2013 theme/site-theme
  git add .
  echo "done.."
else
  echo "need to download http://bolt.cm/distribution/bolt_latest.tgz"
  echo "use wget, curl or a browser, then run setup again.."
fi
