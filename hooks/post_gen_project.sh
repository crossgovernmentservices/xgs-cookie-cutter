#!/bin/bash

git clone  https://github.com/crossgovernmentservices/govuk-assets-flask.git scripts/govuk-assets-flask

make -f scripts/govuk-assets-flask/Makefile govuk_assets_all

cp -a application/static/govuk_template/assets/* application/static/

sass --style expanded --line-numbers --load-path  application/static/govuk_frontend_toolkit/stylesheets  application/static/govuk_elements/public/sass/main.scss application/static/stylesheets/main.css


# this might be a bit to brutal but don't really need this hanging around
# can maybe put this into a makefile for the project rather than a post get
# task
rm -rf application/static/govuk_frontend_toolkit
rm -rf application/static/govuk_elements
rm -rf application/static/govuk_template
