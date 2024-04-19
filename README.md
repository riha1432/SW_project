SW 인제양성 4기
===============
## 공통 프로젝트
* ### clone code

<br>

## sql 수업
* ### sql_class 
<br>
  
## 개인 프로젝트
### private project /
&emsp;&emsp;&emsp; 1_setup.py : 모듈 및 데이터 파일 다운  
&emsp;&emsp;&emsp; 2_yolotrain.py : yolo 사용하여 학습  
&emsp;&emsp;&emsp; 3_yolo_predict.py : 데이터 예측  
### &emsp; labeling /
&emsp;&emsp;&emsp; data_label.py : 기존 라벨링 데이터 축소  
&emsp;&emsp;&emsp; date_check.py : 텍스트 데이터 라벨링 확인  
&emsp;&emsp;&emsp; date_split.py : 학습, 검토, 테스트 파일로 분할  
&emsp;&emsp;&emsp; xml_to_test.py :xml 파일을 test 파일로 변환  
&emsp;&emsp;&emsp; label.py : 라벨링 데이터 확인
    
### 실행 순서
      1. 1_setup.py  
      2. 2_yolotrain.py  ( 경고!! GPU CUDA 환경이 있을시 실행 )
      3. 3_yolo_predict.py  
### 참고 사이트 및 문서
    * AI-HUB : https://www.aihub.or.kr/aihubdata/data/view.do?currMenu=115&topMenu=100&dataSetSn=233
    * YOLOV8 : https://github.com/ultralytics/ultralytics
  


