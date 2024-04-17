SW 인제양성 4기
===============
* ## clone code
  * #### 공통 프로젝트
<br>

* ## sql_class
  * #### sql 수업
<br>
  
* ## private project
  * ### 개인 프로젝트
    * ~~cctv.py~~ 실패
    * 1_setup.py
      * 모듈 및 데이터 퍼일 다운
    * data_label.py 
      * 기존 라벨링 데이터 축소
    * date_check.py
      * 텍스트 데이터 라벨링 확인
    * date_split.py
      * 학습, 검토, 테스트 파일로 분할
    * xml_to_test.py
      * xml 파일을 test 파일로 변환
    * 2_yolotrain.py
      * yolo 사용하여 학습
    * label.py
      * 라벨링 데이터 확인
    * 3_yolo_predict.py
      * 데이터 예측
  * 실행 순서
      1. 1_setup.py
      2. 2_yolotrain.py
      3. 3_yolo_predict.py