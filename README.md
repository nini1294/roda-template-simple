# roda-template-simple

Roda Template for a Small Application

Reference directory structure from [Roda Conventions](http://roda.jeremyevans.net/rdoc/files/doc/conventions_rdoc.html#label-Small+Applications)

Run the application
Adds the optional [rack-unreloader](https://github.com/jeremyevans/rack-unreloader) gem for hot reloading after code changes

Includes puma to run the process as a daemon process in the background

## How to setup
 - Clone this git repository
 - `cd` into the directory
 - Remove the `.git` directory
 - run `bundle install`
 - Rename the main.rb to match your classname. For example the Roda convention mentions:
   >...if your application is named `FooBar`, you should use `foo_bar.rb`
   - Additionally you will need to change the `config.ru` file in the root directory to match the new file and class name

## How to run
 - Run the `rake run` command to start the server in development mode with hot reloading active
 - Connect to the server at port [`:9292`](http://localhost:9292) and you should see a "Hello World" response

## Additional rake tasks 
 - `run` - Command `rake run[port_number]`

    Starts the default rack server
 - `puma` - Command `rake puma`

    Starts the puma server as a daemon using the config specified in `./conf/puma.rb`
 - `pumad` - Command `rake pumad`

    Starts the puma server as a daemon using the config specified in `./conf/puma.rb`
 - `restart` - Command `rake restart`

    Restarts puma server in the background by killing the process using the stored PID and starting a new server in the background like above
 - `killserver` - Command `rake killserver`

    Kills the puma servers using the stored PID

