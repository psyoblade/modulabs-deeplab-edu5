
## 설치 및 환경설정
1. 아나콘다
    * 파이썬 환경에 따라 많은 영향을 미치므로 여러 버전을 설치할 수 밖에 없음
```bash
  conda create -n tensorflow python=2.7
  conda install -c conda-forge tensorflow
  conda install ipython
  conda update anaconda
  conda create -n py35 python=3.5 anaconda
```
    * 아나콘다의 "Environment" 탭은 아마도 virtualenv 와 유사한 환경이 아닐까 생각이 들었음
```bash
#
# To activate this environment, use:
# > source activate py35
#
# To deactivate an active environment, use:
# > source deactivate
#
py35) psyoblade@psyoblade-mac:~$
```
    * 해당 환경 탭을 클릭하는 시점에 환경을 업데이트 하는 것으로 보임

2. 파이썬
    * 버전별 경로
```bash
  2.7 /System/Library/Frameworks/Python.framework/Versions/2.7
  3.5 /Library/Frameworks/Python.framework/Versions/3.5
  ana /Users/psyoblade/anaconda/envs/py35/bin/python
```
    * 결국 아나콘다 통해 설치된 버전을 공통으로 쓰는 것이 가장 현명한 방법

3. 파이참
    * 파이썬 환경설정
        * Python Interpreter 설정 변경
    * 파이참 보다는 콘솔/eclipse 쪽이 더 익숙하므로 설치만 하고, Pass
   
