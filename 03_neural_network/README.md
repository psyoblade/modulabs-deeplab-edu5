## 3장. 신경망

### 주피터 사용 팁
* Shift + Enter : 현재 셀 실행
* Alt + Enter   : 현재 셀 실행 + 다음 셀 생성
* D, D          : 현재 셀 삭제
* Alt + Click   : 멀티 셀 선택
* Shift + L     : 라인넘버 토글
* Ref.
    * [https://github.com/lambdalisue/jupyter-vim-binding] (jupyter vim binding) 어마 어마하게 좋음 !!!

### numpy 사용 팁
* np.astype 함수의 반환값이 ndarray 이므로 np.array(fn, dtype) 형식으로 간략히 처리가 가능함
```python
    y = x > 0 ; y.astype(np.int)    이 두 라인이
    np.array(x > 0, dtype=int)      한 라인으로 표현 가능
```
* Ref.
    * [https://docs.scipy.org/doc/numpy/genindex.html] (numpy index)

### matplotlib 사용 팁
* Ref.
    * [https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.plot] (matplotlib plot)

### 신경망에 대한 이해
* 신경망을 통한 문제점 해결
    * 현실에서 발견되는 문제점들을 해결하기 위함
    * (인퍼런스) 수식으로 표현하면 방정식으로 표현되고 이에 대한 파라메터를 추정하는 문제로 
    * 방정식을 그래프로 노드와 네트워크로 표현할 수 있다
    * 노드로 표현하고 각 파라메터 추정의 문제를 벡터/선형대수로 풀면 편하다
* 활성화함수
    * 뉴런에서 다음 뉴런으로 이동할 수 있는 지 여부를 말하는 것
    * 왜 sigmoid or relu 를 쓰는가? not step?
     : 미분 가능한 함수를 쓰는 것이 (B.P)에서 최적화 문제를 풀 수 있으므로
    * why not step? 미분 불가능함수, 이분법적인 접근이 어색함
    * why not sigmoid? 층이 깊어질 수록 업데이트 시에 영향을 너무 적게 주기 때문에 
    * why relu? step -> sigmoid -> relu 등장
    * why tanh?
* 학습의 수렴에 대하여
    * 예를 들어 모든 노드의 가중치를 일정하게 주었을 때에도 수렴하는가?
    * 레이어(층)가 깊어지면 왜 더 정확하고 좋은가?
    * 비선형 분포를 선형함수 한 번으로는 분류해낼 수 없다
    * 레이어의 노드의 개수를 더 많아지면 좋은가?
* 학습 과정에 대하여
    * 왜 편미분을 하는가?
    * 중간 노드의 결과는 0~1사이의 값이며, 확률이라고 보기는 애매하다
    * 마지막 클래스 구성시에 softmax 함수를 쓰면 확률을 계산할 수 있다
* 두 함수의 차이는 어떤가?
    * sigmoid vs. softmax?
    * boolean vs. prob.
* 왜 bias 가 필요한가?
    * 어떤 activation 하기 위한 최소값
    * 학습 시에 너무 오래 시간이 걸리기 위해
    * 입력값이 0인 경우 학습이 불가능하기 떄문
* 파라메터?
    * 즉, 가중치 w 와 편향 b 2가지를 학습한다
    * 학습 시에 편미분인 것은 변수가 2가지(w,b)라서 그런가?
* Q. 노드의 인덱스가 왜 순서가 다른가?
    * to A from B 형식으로 영문식으로도 이해가 편하기도 함
    * matrix 연산 시에 보기에는 역순이 더 편하다
* Q. 왜 np.matrix 안 쓰고, np.array 쓰는가? 차이점이 뭔가?
    * ...
* Q. softmax 함수는 학습이 빠르다는데?
    * [https://www.youtube.com/watch?v=jeOp8aIm1x8](소프트맥스 함수와 시그모이드 함수 비교)
    * 최종에만 쓰지 않고 학습 중에도 사용하는데 loss 함수에서 우도 최대 시에 덧셈을*
    * exponential 은 자연로그 쓸 때에 없어지니까..
    * 왜 exp 인가? 약분하기 편하게 하기 위해서 사용한다
    * 결론은 학습과정에서도 softmax 를 사용하는 것이 적절할 수도 있다 -- 명시적으로 빠를 것이다
    * softmax 시에 sigmoid 대비 무조건 좋다면 굳이 쓸 필요없는 것 아닌가?
* Q. hardmax 도 있더라...
    * 한 번 처리했을 때의 최대값을 
        * 처리한 결과에서 다음의 최대값을 softmax
* Q. tanh (하이퍼볼릭 탄젠트) 함수?
    * ...


