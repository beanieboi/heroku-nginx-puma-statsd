workers 1
threads 5, 5

preload_app!

rackup      DefaultRackup
bind        "unix:///tmp/nginx.socket"
environment ENV['RACK_ENV'] || 'development'

on_worker_fork do
  FileUtils.touch('/tmp/app-initialized')
end
