
## 설치 및 환경설정
1. 아나콘다
    * 파이썬 환경에 따라 많은 영향을 미치므로 여러 버전을 설치할 수 밖에 없음
    * 아나콘다의 "Environment" 탭은 아마도 virtualenv 와 유사한 환경이 아닐까 생각이 들었음
    * 해당 환경 탭을 클릭하는 시점에 환경을 업데이트 하는 것으로 보임
```bash
    conda create -n tensorflow python=2.7
    conda install -c conda-forge tensorflow
    conda install ipython
    conda update anaconda
    conda create -n py35 python=3.5 anaconda
#
# To activate this environment, use:
# > source activate py35
#
# To deactivate an active environment, use:
# > source deactivate
#
    py35) psyoblade@psyoblade-mac:~$
```

2. 파이썬
    * 아나콘다 통해 설치된 버전을 공통으로 쓰는 것이 가장 현명한 방법
```bash
    Python 2.7 => /System/Library/Frameworks/Python.framework/Versions/2.7
    Python 3.5 => /Library/Frameworks/Python.framework/Versions/3.5
    Anaconda.Py3.5 => /Users/psyoblade/anaconda/envs/py35/bin/python
```

3. 파이참
    * 파이썬 환경설정
        * Python Interpreter 설정 변경
    * 파이참 보다는 콘솔/eclipse 쪽이 더 익숙하므로 설치만 하고, Pass

4. Vim 연동
> [https://github.com/lambdalisue/jupyter-vim-binding](주피터 Vi 연동)
```
# Create required directory in case (optional)
mkdir -p $(jupyter --data-dir)/nbextensions
# Clone the repository
cd $(jupyter --data-dir)/nbextensions
rm -rf vim_binding
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
# Activate the extension
jupyter nbextension enable vim_binding/vim_binding
```

5. Jupyter Theme 설치
> [http://haanjack.github.io/jupyter/theme/2016/03/08/jupyter-theme.html](주피터 노트북 테마적용)
```bash
    source activate py35
    pip install git+https://github.com/dunovank/jupyter-themes.git
    jt -t grade3 -vim -cursw 1 -cursc b -lineh 120 -fs 12 -nf exosans -nfs 11 -ofs 13 -altp; jupyter notebook
```



