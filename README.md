# Flandria
![](/webapp/static/assets/logo.png?raw=True)


Starting 01.01.2022, I stopped working on Flandria and took the website down.

If you're considering hosting the website yourself, please remove my personal about page, legal notice and donation links before publishing. The site should not include any information about me anymore.
Please be wary, that I did not update any security over the years, so it is probably not safe to use as it is.
There's also no documentation on how to do things and I won't provide any support or help.

Please also honor the License applied to the project.

Thanks for all the support over the years.

## Contribute to project ##

### Setup development environment ###
Clone repository:
```commandline
git clone https://github.com/lauderandtaiga/flandria.git
cd flandria
```

(Optional) Create new branch:
```commandline
git checkout -b my_new_branch
git status
```

(Optional) Install [PyCharm](https://www.jetbrains.com/pycharm/)

#### Install requirements ####
**PyCharm**</br>
Open base project-folder _flandria_ in IDE to be automatically asked to create a new virtual environment from the
_requirements.txt_. Restarting the IDE might be required.</br>
If not asked automatically: create new virtual environment from the IDE-dialog. Afterwards open _requirements.txt_,
you will then be asked if you want to install all packages to your current interpreter environment.
</br>**Console**</br>
```commandline
python3 -m venv my_env
source my_env/bin/activate
pip install -r requirements.txt
```
Leaving virtual environment:
```commandline
deactivate
```

#### Run flask-server ####
**PyCharm**</br>
[Create run-configuration for flask](https://www.jetbrains.com/help/pycharm/run-debug-configuration-flask-server.html)
</br>**Console**</br>
`FLASK_ENV=development FLASK_APP=app.py flask run --host=0.0.0.0 --port 5000`

#### Initialize database ####
Run the following commands with virtual environment **activated**.
```commandline
export FLASK_APP=app.py
flask db upgrade head
```

##### Fill database #####
Download data from Florensia:
```commandline
flask updater download
```
Update database:
```commandline
flask updater database
```
Update icons:
```commandline
flask updater icons
```