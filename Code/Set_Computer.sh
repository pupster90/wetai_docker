VERSION_NAME=v1.0.0
# Set io's Version name in custom.js file
sed -i "s/{VERSION_NAME}/$VERSION_NAME/g"  ~/io_docker_setup/custom.js

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
echo "c.NotebookApp.password = 'sha1:3efc472a30b9:6320e471692e9224957bd4ea358116df997980ed'" >> ~/.jupyter/jupyter_notebook_config.py 

### Generic Software Update
apt update
apt-get install update
conda update -y conda


### Install nb-extensiosn and GenePattern notebook
conda install -y -c damianavila82 rise
conda install -y -c conda-forge jupyter_contrib_nbextensions
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





