INSERT INTO EVENT 
VALUES(seq_event.nextval, '7월달 이벤트', '7월은 장마가 시작되면서 비가 가장 많이 내리는 달입니다. 
밤낮없이 폭염과 열대야가 본격적으로 시작하는 달이며, 한여름이 시작하는 달이기도 합니다.
이런 7월을 맞이해 열대야를 시원하게 보내게 해줄 화이트 와인과 비소리를 들으며 마실 수있는 전통주를 추첨을 통해 각 한분씩 선정하여 선물로 드립니다!',
'2022-06-30', '2022-07-01', '2022-07-15', 'july_event.png', 0);
INSERT INTO EVENT 
VALUES(seq_event.nextval, '8월달 이벤트', '8월은 1년 중 가장 더운 달입니다. 
잦은 폭염으로 인해 가장 스트레스를 많이 받는 달이기도 하며 피서가기 가장 좋은 달이기도 한다.
이런 8월을 맞이해 스트레스를 톡톡 터트려버릴 수 있는 샴페인과 잔에 얼음을 가득담아 토닉워터와 함께 즐길 수있는 위스키를 추첨을 통해 각 한분씩 선정하여 선물로 드립니다!',
'2022-07-31', '2022-08-01', '2022-08-15', 'august_event.png', 0);
-- DROP TABLE event;
-- DROP SEQUENCE seq_event;

SELECT * FROM event;
COMMIT;
