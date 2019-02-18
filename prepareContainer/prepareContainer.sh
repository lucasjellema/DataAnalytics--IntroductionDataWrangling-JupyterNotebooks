pip install --upgrade pip
git clone https://github.com/kavgan/word_cloud 
cd word_cloud && pip install -e . 
cp  ~/word_cloud/*clouds.ipynb  ~/work/Example_word_clouds.ipynb
pip install plotly 
pip install matplotlib_venn 
pip install cufflinks 
pip install gender-guesser
pip install -U nltk
# apparently the base image already contain ipywidgets
#pip install ipywidgets
pip install pyarrow
# word_cloud has a fixed dependency on an older version of pandas - and when installed will overwrite the current one that comes in the Docker image
# here I am force installing the latest pandas - required by the widgets notebook; word_cloud will still work
pip install --upgrade pandas
cd ~/work
git clone http://bitbucket.org/hrojas/learn-pandas
# adding notebook to play with ipywidgets
git clone https://github.com/WillKoehrsen/Data-Analysis
cp -R Data-Analysis/widgets ~/work
mkdir temp
cd temp
# next follows a round about way to get a single file into the running container
git clone https://github.com/lucasjellema/katacoda-scenarios
cp katacoda-scenarios/jupyter-notebook/assets/introPythonForDataAnalysis.ipynb ~/work
# clone the data wrangling workshop github repo
git clone https://github.com/lucasjellema/DataAnalytics--IntroductionDataWrangling-JupyterNotebooks
# then move folder CaseOfOracleOpenWorld2018 under ~/work
mv DataAnalytics--IntroductionDataWrangling-JupyterNotebooks/CaseOfOracleOpenWorld2018 ~/work
# and move folder HelloWorldNotebook under ~/work
mv DataAnalytics--IntroductionDataWrangling-JupyterNotebooks/HelloWorldNotebook ~/work
# and move folder Titanic under ~/work
mv DataAnalytics--IntroductionDataWrangling-JupyterNotebooks/Titanic ~/work

cd ~/work
rm -Rf temp 
