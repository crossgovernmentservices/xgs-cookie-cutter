demo-cookie-cutter
==================

A template for a python3 flask application using [cookiecutter](https://github.com/audreyr/cookiecutter). This cookie cutter template has been very heavily influenced by [cookiecutter-flask](https://github.com/sloria/cookiecutter-flask)

####Prerequisites

1. Python 3
2. Virtualenv and VirtualenvWrapper
3. [Sass](http://sass-lang.com/) - required for flask-assets


####How to use it

Install cookiecutter (in it's own virtualenv would be a smashing idea)
```
mkvirtualenv  --python=/path/to/required/python3 cookiecutter
pip install cookiecutter
```


Clone the repo and then run cookiecutter with the directory you just checked out as an argument:

```
cookiecutter xgs-cookie-cutter
```

You also run the cookiecutter with the git repo as an argument:

```
cookiecutter git@github.com:crossgovernmentservices/xgs-cookie-cutter.git
```

You will be prompted for the name of your application. Don't use a kebab-case name as that would result in an invalid python module name. Use single words or snake case, e.g. leftfootfinder or left_foot_finder.

The cookiecutter will create a directory for your app with the name you answered and in that directory you will find a simple skeleton app with a base govuk template and stylesheets. The rest is up to you.


The govuk template, styles and additional govuk elements styles are pulled in using [https://github.com/crossgovernmentservices/govuk-assets-flask](https://github.com/crossgovernmentservices/govuk-assets-flask)

####What happens next

deactivate cookiecutter virtual env, cd into the newly create directory for the application.

Create a virtualenv for your *newly* created app

```
mkvirtualenv --python=/path/to/required/python3 [appname]
```

Install python requirements.
```
pip install -r requirements/dev.txt
```

Run the app:

```
./run.sh
```

and have a look at http://localhost:8000


#### License
MIT


#### TODO
Do some more cleanup in post gen script, specifically with the all gov uk template etc.

Need to correct path variable for govuk_elements to match flask expectations

Need to move images from govuk_template and govuk_elements to suitable location for flask.

Get post gen to delete all the crap that comes with some of the dependencies

Add some makefile targets for re-downloading external asset stuff from govuk-assets-flask.
