# dockerfile
Base image Dockerfile Test

> ADD
> 
> ## Anaconda install
> 1. cd / tmp
> 2. wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
> 3. bash Anaconda3-5.2.0-Linux-x86_64.sh
> 4. source ~ / .bashrc
> 5. conda list # 설치 확인
> 
> ## Jupyter 노트북 설치
> 1. conda install jupyter notebook
> 
> > > Error
> > > Do not vi editor 
> > > Do not conda


Error
# conda install jupyter notebook
... 
Preparing transaction: done
Verifying transaction: done
Executing transaction: done

root@914e5ee27435:/tmp# conda install tensorflow

Traceback (most recent call last):
  File "/root/anaconda3/bin/conda", line 7, in <module>
    from conda.cli import main
ModuleNotFoundError: No module named 'conda'
