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
INSERT INTO product values(seq_product.nextval, '[ 체리 ] 피체사레 바롤로', 'y.png', 115000, '세계 100대 와인 중 6위', '와인', '강풍', 1); 
INSERT INTO product values(seq_product.nextval, '[ 바게트 ] 브레드앤버터 샤도네이', 'z.png', 45900, '과일향 위에 부드러운 오크와 버터의 향기', '와인', '강풍', 1); 
--위스키
INSERT INTO product values(seq_product.nextval, '[ 위스키 ] 잭다니엘 허니', 'x.png', 51900, '아몬드, 꿀, 호두향이 은은', '위스키', '흐림', 1); 

--맥주
INSERT INTO product values(seq_product.nextval, '[ 에일 ] 맥파이 가을가득', 'p.png', 6300, '톡 쏘는 호밀과 쌉쌀한 홉의 조화가 매력적', '맥주', '맑음', 2); 
INSERT INTO product values(seq_product.nextval, '[ 페일에일 ] 맥파이 페일에일', 'q.png', 5500, '열대과일과 감귤의 깔끔한 데일리맥주', '맥주', '맑음', 2); 
--전통주
INSERT INTO product values(seq_product.nextval, '[ 쌀 ] 해창막걸리9', 'u.png', 13100, '단맛 신맛 감칠맛이 모두 뿜뿜 나는 막걸리', '전통주', '비', 2);
INSERT INTO product values(seq_product.nextval, '[ 쌀 ] 복순도가 손막걸리', 'v.png', 12000, '차가울수록 청량한 막걸리계의 샴페인', '전통주', '비', 2); 
INSERT INTO product values(seq_product.nextval, '[ 좁쌀 ] 제주오메기맑은술', 'w.png', 25000, '제주 차조로 만든 산미가득한 맑은술', '전통주', '비', 2); 

--사케
INSERT INTO product values(seq_product.nextval, '[ 사케 ] 무사시노 블루', 'r.png', 21900, '담백한 사케의 맛', '사케', '눈', 3); 
INSERT INTO product values(seq_product.nextval, '[ 사케 ] 이소노사와 준마이', 's.png', 17900, '쌀과 누룩, 깨끗한 물로 만든 부드러움', '사케', '눈', 3); 
INSERT INTO product values(seq_product.nextval, '[ 사케 ] 쿠보타 센쥬', 't.png', 42800, '온화한 향기, 담백한 맛, 인지도 1위', '사케', '눈', 3); 

--리뷰
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r46.jpg', 16);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r47.jpg', 16);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r48.jpg', 16);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r49.jpg', 17);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r50.jpg', 17);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r51.jpg', 17);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r52.jpg', 18);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r53.jpg', 18);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r54.jpg', 18);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r55.jpg', 19);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r56.jpg', 19);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r57.jpg', 19);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r58.jpg', 20);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r59.jpg', 20);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r60.jpg', 20);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r61.jpg', 21);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r62.jpg', 21);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r63.jpg', 21);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r64.jpg', 22);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r65.jpg', 22);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r66.jpg', 22);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r67.jpg', 23);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r68.jpg', 23);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r69.jpg', 23);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r70.jpg', 24);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r71.jpg', 24);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r72.jpg', 24);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r73.jpg', 25);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r74.jpg', 25);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r75.jpg', 25);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r76.jpg', 26);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r77.jpg', 26);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r78.jpg', 26);





