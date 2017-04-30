# Rails Google App Engine With Postgresql Sample

Sample Rails app to run on Google App Engine following the [Running Rails 5 on the Google App Engine flexible environment](https://cloud.google.com/ruby/rails/appengine).

## Command Quick Reference

Note: The following assumes that you've created a project in [Google Cloud
Platform Console](https://console.cloud.google.com/),
[enabled billing](https://console.cloud.google.com/project/_/settings) for your
project, and installed the [Google Cloud
SDK](https://cloud.google.com/sdk/docs/).

# Additional steps before for first deploy

bundle
sed s/SOMETHING_SECRET/$(bundle exec rails secret)/g app.yaml.sample > app.yaml
gcloud app create

# Deploy

RAILS_ENV=production bundle exec rails assets:precompile
gcloud app deploy

# Useful after deploy

gcloud app browse
gcloud app logs read
