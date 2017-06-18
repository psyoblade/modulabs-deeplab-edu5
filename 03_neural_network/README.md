## 3장. 신경망

### 주피터 사용 팁
* Shift + Enter : 현재 셀 실행
* Alt + Enter   : 현재 셀 실행 + 다음 셀 생성
* D, D          : 현재 셀 삭제
* Alt + Click   : 멀티 셀 선택
* Shift + L     : 라인넘버 토글
* [https://github.com/lambdalisue/jupyter-vim-binding] (jupyter vim binding) 어마 어마하게 좋음 !!!

### numpy 사용 팁
* [https://docs.scipy.org/doc/numpy/genindex.html] (numpy index)
* np.astype 함수의 반환값이 ndarray 이므로 np.array(fn, dtype) 형식으로 간략히 처리가 가능함
```python
    y = x > 0 ; y.astype(np.int)    이 두 라인이
    np.array(x > 0, dtype=int)      한 라인으로 표현 가능
```

### matplotlib 사용 팁
* [https://matplotlib.org/api/pyplot_api.html#matplotlib.pyplot.plot] (matplotlib plot)
