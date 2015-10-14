===============================
{{ cookiecutter.application_name }}
===============================


Quickstart
----------

Then run the following commands to bootstrap your environment.

```
mkvirtualenv --python=/path/to/required/python/version [appname]
```

Install python requirements.
```
pip install -r requirements/dev.txt
```

Set some environment variables. The following is required. Add as needed.

```
export SETTINGS='config.DevelopmentConfig'
```

Once that this all done you can:

```
python manage.py server
```

Deployment
----------

In your production environment, make sure the ``SETTINGS`` environment variable is set to ``config.Config``.


Shell
-----

To open the interactive shell, run ::

```
python manage.py shell
```
