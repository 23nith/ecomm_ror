web: kill -0 7 && kill -9 7 ; echo "procfile initiating"; rake db:migrate && RAILS_ENV=production bin/rails server -b 0.0.0.0 -p ${PORT:-3000} & bin/rails tailwindcss:watch