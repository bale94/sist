/*product_no NUMBER NOT NULL,  상품번호 
	product_name VARCHAR2(50),  상품이름 
	product_img VARCHAR2(200), 이미지이름 
	product_price NUMBER,  상품가격 
	product_info VARCHAR2(500),  상품정보 
	ac_category VARCHAR2(50),  주류카테고리 
	w_category VARCHAR2(50),  날씨카테고리 
	store_no NUMBER  매장번호  
	1: 와인/위스키 wine / whiskey
	2: 맥주/전통주 beer / trad
	3: 사케
	**/

--와인
INSERT INTO product values(seq_product, '카사 로호 마초맨', '', 49900, '인증받은 가성비 최고인 와인', 'wine', '', 1); 
INSERT INTO product values(seq_product, '피체사레 바롤로', '', 115000, '세계 100대 와인 중 6위', 'wine', '', 1); 
INSERT INTO product values(seq_product, '브레드앤버터 샤도네이', '', 45900, '과일향 위에 부드러운 오크와 버터의 향기', 'wine', '', 1); 
--위스키
INSERT INTO product values(seq_product, '잭다니엘', '', 49900, '테네시 위스키, 잭콕(콜라) 강추!', 'whiskey', '', 1); 
INSERT INTO product values(seq_product, '잭다니엘 허니', '', 51900, '아몬드, 꿀, 호두향이 은은', 'whiskey', '', 1); 
INSERT INTO product values(seq_product, '핸드릭스 진', '', 61900, '오이 진토닉 강추!', 'whiskey', '', 1); 

--맥주
INSERT INTO product values(seq_product, '맥파이 가을가득', '', 6300, '톡 쏘는 호밀과 쌉쌀한 홉의 조화가 매력적', 'beer', '', 2); 
INSERT INTO product values(seq_product, '맥파이 땅거미', '', 6200, '흑미의 고소함과 쓴맛의 매력', 'beer', '', 2); 
INSERT INTO product values(seq_product, '맥파이 페일에일', '', 5500, '열대과일과 감귤의 깔끔한 데일리맥주', 'beer', '', 2); 
--전통주
INSERT INTO product values(seq_product, '해창막걸리9', '', 13100, '단맛 신맛 감칠맛이 모두 뿜뿜 나는 막걸리', 'trad', '', 2);
INSERT INTO product values(seq_product, '복순도가 손막걸리', '', 12000, '차가울수록 청량한 막걸리계의 샴페인', 'trad', '', 2); 
INSERT INTO product values(seq_product, '제주오메기맑은술', '', 25000, '제주 차조로 만든 산미가득한 맑은술', 'trad', '', 2); 

--사케
INSERT INTO product values(seq_product, '무사시노 블루', '', 21900, '담백한 사케의 맛', 'sake', '', 3); 
INSERT INTO product values(seq_product, '이소노사와 준마이', '', 17900, '쌀과 누룩, 깨끗한 물로 만든 부드러움', 'sake', '', 3); 
INSERT INTO product values(seq_product, '쿠보타 센쥬', '', 42800, '온화한 향기, 담백한 맛, 인지도 1위', 'sake', '', 3); 
