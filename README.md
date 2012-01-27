#Heroku process monitor

This is a small application designed to bring the highlights of your running processes (processi?) running on Heroku.

Simply put this creates the output for a custom text widget that shows your running process count broken down by type.

![](http://cl.ly/242Z3f33070Q140v0A2j/content)

To install, clone and deploy to Heroku:

    $ git clone https://github.com/neilmiddleton/heroku_ps_monitor.git
    $ heroku create -d cedar
    $ git push heroku master

You must then give your application your Heroku credentials:

    $ heroku config:add HEROKU_EMAIL=<your_heroku_username> HEROKU_PASSWORD=<your_heroku_password>
    Adding config vars and restarting app... done, v4
      HEROKU_EMAIL    => <your_heroku_username>
      HEROKU_PASSWORD => <your_heroku_password>

Now you have a URL available for geckoboard:

    http://<your_app_name>.herokuapp.com/ps_count/<target_application>.xml

where `<target_application>` is the name of the application you require statistics on.
The output is currently designed to suit a Custom Text widget.