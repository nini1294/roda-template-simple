task :run, [:port] do |t, args|
  desc 'Run the server'
  puts 'Starting server'
  args.with_defaults(port: 9292)
  sh "rackup config.ru -p #{args.port}"
end

task :puma do |t|
  desc 'Start the puma server'
	sh 'puma -C ./conf/puma.rb'
end

task :pumad do |t|
  desc 'Start the puma server'
  sh 'puma -C ./conf/puma.rb &'
  puts 'Puma is running in the background'
end

task :restart do |t|
  desc 'Restart puma server'
  pid = `cat ./tmp/pids/puma.pid`
  puts "Killing process with pid #{pid}"
  `kill -9 #{pid}`
  puts 'Restarting server'
  sh 'puma -C ./conf/puma.rb &'
  puts 'Puma is running in the background'
end

task :killserver do |t|
  desc 'Kill Puma server'
  pid = `cat ./tmp/pids/puma.pid`
  puts "Killing process with pid #{pid}"
  `kill -9 #{pid}`
end
