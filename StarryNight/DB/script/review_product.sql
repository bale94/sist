/* 상품 */
CREATE TABLE product (
	product_no NUMBER NOT NULL, /* 상품번호 */
	product_name VARCHAR2(50), /* 상품이름 */
	product_img VARCHAR2(200), /* 이미지이름 */
	product_price NUMBER, /* 상품가격 */
	product_info VARCHAR2(500), /* 상품정보 */
	ac_category VARCHAR2(50), /* 주류카테고리 */
	w_category VARCHAR2(50), /* 날씨카테고리 */
	store_no NUMBER /* 매장번호 */
);

CREATE SEQUENCE seq_product
 	INCREMENT BY 1
 	START WITH 1;

ALTER TABLE product ADD CONSTRAINT PK_product PRIMARY KEY (product_no);

/* 리뷰 */
CREATE TABLE review (
	review_no NUMBER NOT NULL, /* 리뷰번호 */
	review_title VARCHAR2(100), /* 제목 */
	review_content VARCHAR2(500), /* 내용 */
	review_img VARCHAR2(200), /* 이미지이름 */
	product_no NUMBER /* 상품번호 */
);

CREATE SEQUENCE seq_review
 	INCREMENT BY 1
 	START WITH 1;
 
ALTER TABLE review ADD CONSTRAINT PK_review PRIMARY KEY (review_no);

INSERT INTO product values(seq_product.nextval,'[ 오크 ] 엘 레시오', 'a.png',36900 ,'와인수령에 따라 세대로 표현함','와인','맑음',1);
INSERT INTO product values(seq_product.nextval,'[ 붉은 과일 ] 카사 로호 마초맨', 'b.png',49900 ,'인증 받은 가성비 최고인 와인','와인','맑음',1);
INSERT INTO product values(seq_product.nextval,'[ 가죽 ] 꼬또데 이마스 그랑 레제르바', 'c.png',52900 ,'스페인 와인 최고 그랑 리제르바 등급','와인','흐림',1);
INSERT INTO product values(seq_product.nextval,'[ 페일에일 ] 고릴라 부산페일에일', 'd.png',5900 ,'홉의 쌉쌀함과 트로피칼함이 마치 시원한 광안리 해변을 걷는 맛','맥주','맑음',2);
INSERT INTO product values(seq_product.nextval,'맥파이 뙤약볕', 'e.png',7200 ,'깔끔한 데일리 맥주','맥주','흐림',2);
INSERT INTO product values(seq_product.nextval,'[ 맥주 ] 쉐리 세리즈(체리)', 'f.png',5500 ,'상큼한 체리 맥주','맥주','흐림',2);
INSERT INTO product values(seq_product.nextval,'[ 위스키 ] 잭다니엘', 'g.png',49900 ,'테네시 위스키,  잭콕(콜라) 강추!','위스키','강풍',1);
INSERT INTO product values(seq_product.nextval,'[ 위스키 ] 듀어스 12년 700ml', 'h.png',65900 ,'부드럽고 섬세한 과일의 맛과 스모크한 풍미','위스키','눈',1);
INSERT INTO product values(seq_product.nextval,'[ 진 ] 핸드릭스 진', 'i.png',61900 ,'오이 진토닉 강추!','위스키','비',1);
INSERT INTO product values(seq_product.nextval,'[ 쌀 ] 풍정사계 동 25', 'j.png',28000 ,'100일간 숙성을 통해 부드러움 간직한 소주','전통주','강풍',2);
INSERT INTO product values(seq_product.nextval,'[ 쌀, 지초 외 각종약재 ] 감홍로 700', 'k.png',70000 ,'조선시대 3대 명주로, 각종 약재와 술의 조화로움이 깊음','전통주','눈',2);
INSERT INTO product values(seq_product.nextval,'[ 밀 ] 안동 진맥소주 53 500', 'l.png',79000 ,'샌프란시스코 국제증류주품평회 더블골드메달 수상','전통주','비',2);
INSERT INTO product values(seq_product.nextval,'[ 사케 ] 하쿠시카 준마이긴죠', 'm.png',12800 ,'백미를 쪄낸 담백하고 깔끔함','사케','강풍',3);
INSERT INTO product values(seq_product.nextval,'[ 사케 ] 요이비진', 'n.png',14800 ,'저온 발효로 빚은 저알콜 사케','사케','눈',3);
INSERT INTO product values(seq_product.nextval,'[ 리큐르 ] 머스캣슈', 'o.png',19900 ,'청포도의 부드러운 맛!','사케','비',3);

INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r1.jpg', 1);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r2.jpg', 1);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r3.jpg', 1);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r4.jpg', 2);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r5.jpg', 2);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r6.jpg', 2);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r7.jpg', 3);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r8.jpg', 3);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r9.jpg', 3);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r10.jpg', 4);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r11.jpg', 4);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r12.jpg', 4);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r13.jpg', 5);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r14.jpg', 5);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r15.jpg', 5);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r16.jpg', 6);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r17.jpg', 6);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r18.jpg', 6);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r19.jpg', 7);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r20.jpg', 7);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r21.jpg', 7);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r22.jpg', 8);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r23.jpg', 8);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r24.jpg', 8);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r25.jpg', 9);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r26.jpg', 9);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r27.jpg', 9);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r28.jpg', 10);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r29.jpg', 10);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r30.jpg', 10);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r31.jpg', 11);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r32.jpg', 11);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r33.jpg', 11);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r34.jpg', 12);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r35.jpg', 12);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r36.jpg', 12);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r37.jpg', 13);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r38.jpg', 13);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r39.jpg', 13);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r40.jpg', 14);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r41.jpg', 14);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r42.jpg', 14);
INSERT INTO review values(seq_review.nextval, '맛있어요', '기대했던 맛이에요. 선물용으로 좋을 것 같아요. 잘 구매했습니다. 감사합니다.^^', 'r43.jpg', 15);
INSERT INTO review values(seq_review.nextval, '생각보다 별로예요', '다시 구매할 정도로 맛있진 않은 것 같아요. 다른 품목이 더 괜찮은 것 같아요. 오래 기다렸는데 실망했습니다', 'r44.jpg', 15);
INSERT INTO review values(seq_review.nextval, '선물용으로 구매했는데 좋았습니다.', '생일 선물 용으로 적당한 가격의 와인을 찾다가 구매해봤는데 받으신 분도 만족하시고 제 것도 따로 구매해서 마셔봤는데 좋은 것 같아요! ㅎㅎ 감사합니다 재구매 할 것 같아요!', 'r45.jpg', 15);

