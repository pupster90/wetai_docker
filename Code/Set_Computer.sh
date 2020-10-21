VERSION_NAME=v1.0.0
# Set io's Version name in custom.js file
sed -i "s/{VERSION_NAME}/$VERSION_NAME/g"  ~/wetai_io_docker/Code/Set_Interface.js

####################
### Basic Setup ###
##################

### Setup Jupyter config file
echo "c.NotebookApp.ip = '0.0.0.0'" > ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.extra_static_paths = ['/home/jovyan/.js_files']" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.extra_template_paths = ['/home/jovyan/.html_files','...html/templates','...html']" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 80" >> ~/.jupyter/jupyter_notebook_config.py  
echo "c.NotebookApp.token = ''" >> ~/.jupyter/jupyter_notebook_config.py  
echo "c.NotebookApp.allow_root = True" >> ~/.jupyter/jupyter_notebook_config.py  
echo "c.NotebookApp.allow_origin = '*'" >> ~/.jupyter/jupyter_notebook_config.py  
echo "c.NotebookApp.password = 'argon2:\$argon2id\$v=19\$m=10240,t=10,p=8\$lw1+5uzTxfAaGCmLcrQdQA\$5rTtD1TgWidh/JcE84jG4Q'" >> ~/.jupyter/jupyter_notebook_config.py 

### Generic Software Update
apt update
apt-get install update
conda update -y conda


### Install nb-extensiosn and GenePattern notebook
conda install -y -c conda-forge  rise
conda install -y -c conda-forge jupyter_contrib_nbextensions
conda install -c conda-forge jupyter_nbextensions_configurator

# Enable extensions
jupyter nbextensions_configurator enable
jupyter nbextension enable collapsible_headings/main
jupyter nbextension enable help_panel/help_panel
jupyter nbextension enable notify/notify
jupyter nbextension enable toc2/main
jupyter nbextension enable varInspector/main
jupyter nbextension enable codefolding/main
jupyter nbextension enable hide_header/main
jupyter nbextension enable hide_input_all/main
jupyter nbextension enable table_beautifier/main
jupyter nbextension enable codefolding/edit
jupyter nbextension enable contrib_nbextensions_help_item/main
jupyter nbextension enable python-markdown/main
jupyter nbextension enable move_selected_cells/main
jupyter nbextension enable splitcell/splitcell
jupyter nbextension enable tree-filter/index

# Install required python packages
pip install PyGithub
pip install timeago
pip install --upgrade google-cloud-datastore
pip install --upgrade firebase-admin
pip install redis
#pip install tensorflow==2.0.0-alpha0 
#pip install keras

# Setup hidden files
mkdir ~/.html_files && mv ~/io_docker_setup/login.html ~/.html_files
mkdir ~/.jupyter/custom && mv ~/wetai_io_docker/Code/Set_Interface.js ~/.jupyter/custom 

# Setup Password
mv ~/wetai_io_docker/Set_Password.py ~/.Set_Password.py
chmod +x ~/wetai_io_docker/password 
mv ~/wetai_io_docker/password /usr/local/bin



# Create user's starting Apps & Files by downloading everything from github
cd ~ && mkdir Apps Downloads Private Public       #<-- Create folders
#cd ~/Apps && git clone https://github.com/pupster90/Cytoscape.git
cd ~/Apps && git clone https://github.com/pupster90/io_View.git
cd ~/Apps && git clone https://github.com/pupster90/io_Online.git
#cd ~/Apps && git clone https://github.com/pupster90/io_Blog.git
#cd ~/Public && git clone https://github.com/pupster90/Public_Profile.git
cd ~/Public && git clone https://github.com/pupster90/My_First_Research_Paper.git
#cd ~/Public && git clone https://github.com/pupster90/io_Presentation.git



#################
### Clean up ###
###############
#rm -rf ~/work ~/ijava-kernel ~/ijava-kernel.zip ~/io_docker_setup

