-���̺� ���� ���ɾ�-
SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;
-----------------����------------------
--���������� ������̺� �� �������� ����

BEGIN
    FOR C IN (SELECT TABLE_NAME FROM USER_TABLES) LOOP
    EXECUTE IMMEDIATE ('DROP TABLE '||C.TABLE_NAME||' CASCADE CONSTRAINTS');
    END LOOP;
END;
/
--���������� ��� ������ ����
BEGIN
FOR C IN (SELECT * FROM USER_SEQUENCES) LOOP
  EXECUTE IMMEDIATE 'DROP SEQUENCE '||C.SEQUENCE_NAME;
END LOOP;
END;
/
--���������� ��� �� ����
BEGIN
FOR C IN (SELECT * FROM USER_VIEWS) LOOP
  EXECUTE IMMEDIATE 'DROP VIEW '||C.VIEW_NAME;
END LOOP;
END;
/
---------------------------------------

CREATE TABLE "MEMBER" (
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"USER_ID"	VARCHAR2(100)		NOT NULL,
	"USER_PASSWORD"	VARCHAR2(100)		NOT NULL,
	"USER_TYPE"	NUMBER	DEFAULT 1	NOT NULL,
	"USER_NICK"	VARCHAR2(100)		NULL,
	"USER_NAME"	VARCHAR2(100)		NOT NULL,
	"USER_BRITH"	VARCHAR2(100)		NULL,
	"USER_EMAIL"	VARCHAR2(100)		NULL,
	"USER_PHONE"	VARCHAR2(100)		NOT NULL,
	"USER_ENTERDATE"	DATE	DEFAULT SYSDATE	NOT NULL,
	"USER_ADDRESS"	VARCHAR2(500)		NULL,
	"USER_ADDRESSNUM"	VARCHAR2(100)		NULL,
	"USER_POINT"	NUMBER		NULL,
	"USER_STATUS"	VARCHAR2(10)	DEFAULT 'Y'	NULL,
	"REASON"	VARCHAR2(500)		NULL
);

COMMENT ON COLUMN "MEMBER"."USER_NO" IS 'ȸ����ȣ';

COMMENT ON COLUMN "MEMBER"."USER_ID" IS 'ȸ�����̵�';

COMMENT ON COLUMN "MEMBER"."USER_PASSWORD" IS 'ȸ����й�ȣ';

COMMENT ON COLUMN "MEMBER"."USER_TYPE" IS 'ȸ������';

COMMENT ON COLUMN "MEMBER"."USER_NICK" IS 'ȸ����Ī';

COMMENT ON COLUMN "MEMBER"."USER_NAME" IS 'ȸ���̸�';

COMMENT ON COLUMN "MEMBER"."USER_BRITH" IS 'ȸ���������';

COMMENT ON COLUMN "MEMBER"."USER_EMAIL" IS 'ȸ���̸���';

COMMENT ON COLUMN "MEMBER"."USER_PHONE" IS 'ȸ����ȭ��ȣ';

COMMENT ON COLUMN "MEMBER"."USER_ENTERDATE" IS 'ȸ��������';

COMMENT ON COLUMN "MEMBER"."USER_ADDRESS" IS 'ȸ���ּ�';

COMMENT ON COLUMN "MEMBER"."USER_ADDRESSNUM" IS '������ȣ';

COMMENT ON COLUMN "MEMBER"."USER_POINT" IS '��������Ʈ';

COMMENT ON COLUMN "MEMBER"."USER_STATUS" IS 'ȸ������';

COMMENT ON COLUMN "MEMBER"."REASON" IS 'Ż�����';



CREATE TABLE "CATEGORY_TYPE" (
	"PROJECT_CATEGORY"	VARCHAR2(10)		NOT NULL,
	"PROJECT_NAME"	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN "CATEGORY_TYPE"."PROJECT_CATEGORY" IS '������ƮŸ�Թ�ȣ';

COMMENT ON COLUMN "CATEGORY_TYPE"."PROJECT_NAME" IS '������ƮŸ���̸�';



CREATE TABLE "FUNDING_LIST" (
	"FUNDING_NO"	VARCHAR2(10)		NOT NULL,
	"REWARD_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"FUNDING_PRODUCT"	VARCHAR2(100)		NULL,
	"FUNDING_COST"	NUMBER		NULL,
	"FUNDING_QUANTITY"	NUMBER		NULL,
	"FUNDING_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"FUNDING_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"PAYMENT_METHOD"	VARCHAR2(100)		NULL,
	"FUNDING_SPONSERSHIP"	NUMBER		NULL
);

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_NO" IS '�ݵ���ȣ';

COMMENT ON COLUMN "FUNDING_LIST"."REWARD_NO" IS '�������ȣ';

COMMENT ON COLUMN "FUNDING_LIST"."USER_NO" IS 'ȸ����ȣ';

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_PRODUCT" IS '�ݵ��ؼ�������ǰ';

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_COST" IS '�ݵ��ݾ�';

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_QUANTITY" IS '�ݵ�����';

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_DATE" IS '�ݵ�����';

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_STATUS" IS '�ݵ�����';

COMMENT ON COLUMN "FUNDING_LIST"."PAYMENT_METHOD" IS '�������';

COMMENT ON COLUMN "FUNDING_LIST"."FUNDING_SPONSERSHIP" IS '�Ŀ���';



CREATE TABLE "PROJECT" (
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"PROJECT_CATEGORY"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"PROJECT_NAME"	VARCHAR2(100)		NULL,
	"PROJECT_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"PROJECT_STARTDATE"	DATE		NULL,
	"PROJECT_FINISHDATE"	DATE		NULL,
	"PROJECT_CONTENT"	CLOB		NULL,
	"PROJECT_TARGET_AMOUNT"	NUMBER		NULL,
	"PROJECT_REPORT"	NUMBER		NULL,
	"HASHTAGS"	VARCHAR2(500)		NULL,
	"PROJECT_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"STATUS_STORY"	VARCHAR2(1)		NULL
);

COMMENT ON COLUMN "PROJECT"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "PROJECT"."PROJECT_CATEGORY" IS '������ƮŸ�Թ�ȣ';

COMMENT ON COLUMN "PROJECT"."USER_NO" IS 'ȸ����ȣ';

COMMENT ON COLUMN "PROJECT"."PROJECT_NAME" IS '������Ʈ�̸�';

COMMENT ON COLUMN "PROJECT"."PROJECT_DATE" IS '������Ʈ ������';

COMMENT ON COLUMN "PROJECT"."PROJECT_STARTDATE" IS '������Ʈ������';

COMMENT ON COLUMN "PROJECT"."PROJECT_FINISHDATE" IS '������Ʈ������';

COMMENT ON COLUMN "PROJECT"."PROJECT_CONTENT" IS '������Ʈ����';

COMMENT ON COLUMN "PROJECT"."PROJECT_TARGET_AMOUNT" IS '������Ʈ��ǥ�ݾ�';

COMMENT ON COLUMN "PROJECT"."PROJECT_REPORT" IS '�Ű�����Ƚ��';

COMMENT ON COLUMN "PROJECT"."HASHTAGS" IS '�ؽ��±׵�';

COMMENT ON COLUMN "PROJECT"."PROJECT_STATUS" IS '������Ʈ���°�';

COMMENT ON COLUMN "PROJECT"."STATUS_STORY" IS '���丮���°�';



CREATE TABLE "FAQ" (
	"FAQ_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"FAQ_TITLE"	VARCHAR2(500)		NULL,
	"FAQ_ANSWER"	VARCHAR2(500)		NULL,
	"FAQ_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "FAQ"."FAQ_NO" IS 'FAQ��ȣ';

COMMENT ON COLUMN "FAQ"."USER_NO" IS 'ȸ����ȣ.�ۼ���';

COMMENT ON COLUMN "FAQ"."FAQ_TITLE" IS '��������';

COMMENT ON COLUMN "FAQ"."FAQ_ANSWER" IS 'FAQ�亯';

COMMENT ON COLUMN "FAQ"."FAQ_STATUS" IS '���°�';



CREATE TABLE "NOTICE_TEMP" (
	"NOTICE_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"NOTICE_TITLE"	VARCHAR2(100)		NULL,
	"NOTICE_CONTENT"	CLOB		NULL,
	"NOTICE_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"NOTICE_COUNT"	NUMBER		NULL,
	"NOTICE_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "NOTICE_TEMP"."NOTICE_NO" IS '������ȣ';

COMMENT ON COLUMN "NOTICE_TEMP"."USER_NO" IS 'ȸ����ȣ.�ۼ���';

COMMENT ON COLUMN "NOTICE_TEMP"."NOTICE_TITLE" IS '��������';

COMMENT ON COLUMN "NOTICE_TEMP"."NOTICE_CONTENT" IS '��������';

COMMENT ON COLUMN "NOTICE_TEMP"."NOTICE_DATE" IS '�ۼ���';

COMMENT ON COLUMN "NOTICE_TEMP"."NOTICE_COUNT" IS '��ȸ��';

COMMENT ON COLUMN "NOTICE_TEMP"."NOTICE_STATUS" IS '���°�';



CREATE TABLE "ATTACHMENT" (
	"FILE_NO"	VARCHAR2(10)		NOT NULL,
	"REF_NO"	VARCHAR2(10)		NULL,
	"ORIGIN_NAME"	VARCHAR2(100)		NULL,
	"CHANGE_NAME"	VARCHAR2(100)		NULL,
	"FILE_PATH"	VARCHAR2(4000)		NULL,
	"UPLOAD_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"FILE_LEVEL"	NUMBER		NULL,
	"STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "ATTACHMENT"."FILE_NO" IS '���Ϲ�ȣ';

COMMENT ON COLUMN "ATTACHMENT"."REF_NO" IS '������ȣ';

COMMENT ON COLUMN "ATTACHMENT"."ORIGIN_NAME" IS '����';

COMMENT ON COLUMN "ATTACHMENT"."CHANGE_NAME" IS '����';

COMMENT ON COLUMN "ATTACHMENT"."FILE_PATH" IS '���';

COMMENT ON COLUMN "ATTACHMENT"."UPLOAD_DATE" IS '��¥';

COMMENT ON COLUMN "ATTACHMENT"."FILE_LEVEL" IS '���Ϸ���';

COMMENT ON COLUMN "ATTACHMENT"."STATUS" IS '���°�';



CREATE TABLE "REPLY_ANSWER" (
	"ANS_NO"	VARCHAR2(10)		NOT NULL,
	"QUESETION_NUMBER"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"ANS_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"ANS_CONTENT"	VARCHAR2(100)		NULL,
	"ANS_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"ANS_BAN_COUNT"	NUMBER	DEFAULT 0	NULL
);

COMMENT ON COLUMN "REPLY_ANSWER"."ANS_NO" IS '�亯��ȣ';

COMMENT ON COLUMN "REPLY_ANSWER"."QUESETION_NUMBER" IS '���ǹ�ȣ';

COMMENT ON COLUMN "REPLY_ANSWER"."USER_NO" IS 'ȸ����ȣ,�亯���ػ��';

COMMENT ON COLUMN "REPLY_ANSWER"."ANS_DATE" IS '�亯��¥';

COMMENT ON COLUMN "REPLY_ANSWER"."ANS_CONTENT" IS '�亯����';

COMMENT ON COLUMN "REPLY_ANSWER"."ANS_STATUS" IS '���°�';

COMMENT ON COLUMN "REPLY_ANSWER"."ANS_BAN_COUNT" IS '�亯 �Ű� Ƚ��';


CREATE TABLE "REWARD" (
	"REWARD_NO"	VARCHAR2(10)		NOT NULL,
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"REWARD_TITLE"	VARCHAR2(100)		NULL,
	"REWARD_CONTENT"	VARCHAR2(4000)		NULL,
	"REWARD_COST"	NUMBER		NULL,
	"REWARD_REMAINING_QUANTITY"	NUMBER		NULL,
	"REWARD_DELIVERY_COST"	NUMBER	DEFAULT 3000	NULL,
	"REWARD_STATUS"	VARCHAR2(1)		NULL
);

COMMENT ON COLUMN "REWARD"."REWARD_NO" IS '�������ȣ';

COMMENT ON COLUMN "REWARD"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "REWARD"."REWARD_TITLE" IS '����������';

COMMENT ON COLUMN "REWARD"."REWARD_CONTENT" IS '�����峻��';

COMMENT ON COLUMN "REWARD"."REWARD_COST" IS '�����峻��';

COMMENT ON COLUMN "REWARD"."REWARD_REMAINING_QUANTITY" IS '��ǰ�ܿ���';

COMMENT ON COLUMN "REWARD"."REWARD_DELIVERY_COST" IS '��ۺ�';



CREATE TABLE "WISHLIST" (
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"WISHLIST_DATE"	DATE		NULL,
	"WISHLIST_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "WISHLIST"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "WISHLIST"."USER_NO" IS 'ȸ����ȣ';

COMMENT ON COLUMN "WISHLIST"."WISHLIST_DATE" IS '���ѳ�¥';

COMMENT ON COLUMN "WISHLIST"."WISHLIST_STATUS" IS '���°�';



CREATE TABLE "EVENT" (
	"EVENT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"EVENT_CONTENT"	CLOB		NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"EVENT_TITLE"	VARCHAR2(100)		NULL,
	"EVENT_DATE"	DATE		NULL,
	"EVENT_COUNT"	NUMBER		NULL,
	"EVENT_STARTDATE"	DATE		NULL,
	"EVENT_ENDDATE"	DATE		NULL,
	"EVENT_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "EVENT"."EVENT_NUMBER" IS '�Խñ۹�ȣ';

COMMENT ON COLUMN "EVENT"."EVENT_CONTENT" IS '�̺�Ʈ����';

COMMENT ON COLUMN "EVENT"."USER_NO" IS 'ȸ����ȣ.�ۼ���';

COMMENT ON COLUMN "EVENT"."EVENT_TITLE" IS '�̺�Ʈ����';

COMMENT ON COLUMN "EVENT"."EVENT_DATE" IS '�ۼ���';

COMMENT ON COLUMN "EVENT"."EVENT_COUNT" IS '��ȸ��';

COMMENT ON COLUMN "EVENT"."EVENT_STARTDATE" IS '�̺�Ʈ������';

COMMENT ON COLUMN "EVENT"."EVENT_ENDDATE" IS '�̺�Ʈ������';

COMMENT ON COLUMN "EVENT"."EVENT_STATUS" IS '���°�';



CREATE TABLE "PAYMENT" (
	"PAY_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"PAY_NAME"	VARCHAR2(50)		NULL,
	"PAY_EMAIL"	VARCHAR2(50)		NULL,
	"PAY_PHONE"	VARCHAR2(50)		NULL,
	"PAY_DATE"	DATE		NULL,
	"PAY_RESERVE_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"CARD_NO"	VARCHAR2(19)		NULL,
	"CARD_V_DATE"	VARCHAR2(5)		NULL,
	"CARD_CVC"	VARCHAR2(3)		NULL
);

COMMENT ON COLUMN "PAYMENT"."PAY_NO" IS '������ȣ';

COMMENT ON COLUMN "PAYMENT"."USER_NO" IS 'ȸ����ȣ';

COMMENT ON COLUMN "PAYMENT"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "PAYMENT"."PAY_NAME" IS '�����̸�';

COMMENT ON COLUMN "PAYMENT"."PAY_EMAIL" IS '�����̸���';

COMMENT ON COLUMN "PAYMENT"."PAY_PHONE" IS '��������ó';

COMMENT ON COLUMN "PAYMENT"."PAY_DATE" IS '��������';

COMMENT ON COLUMN "PAYMENT"."PAY_RESERVE_DATE" IS '��������';

COMMENT ON COLUMN "PAYMENT"."CARD_NO" IS 'ī���ȣ';

COMMENT ON COLUMN "PAYMENT"."CARD_V_DATE" IS 'ī����ȿ�Ⱓ';

COMMENT ON COLUMN "PAYMENT"."CARD_CVC" IS 'ī��CVC';



CREATE TABLE "NEWS" (
	"NEWS_NO"	VARCHAR2(10)		NOT NULL,
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"NEWS_TITLE"	VARCHAR2(100)		NULL,
	"NEWS_CONTENT"	CLOB		NULL,
	"NEWS_DATE"	DATE		NULL,
	"NEWS_COUNT"	NUMBER	DEFAULT 0	NULL,
	"NEWS_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL
);

COMMENT ON COLUMN "NEWS"."NEWS_NO" IS '���ҽĹ�ȣ';

COMMENT ON COLUMN "NEWS"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "NEWS"."NEWS_TITLE" IS '���ҽ�����';

COMMENT ON COLUMN "NEWS"."NEWS_CONTENT" IS '���ҽĳ���';

COMMENT ON COLUMN "NEWS"."NEWS_DATE" IS '�ۼ���';

COMMENT ON COLUMN "NEWS"."NEWS_COUNT" IS '��ȸ��';

COMMENT ON COLUMN "NEWS"."NEWS_STATUS" IS '���°�';



CREATE TABLE "BAN_LIST" (
	"BAN_NO"	VARCHAR(10)		NOT NULL,
	"REPORT_NO"	VARCHAR2(10)		NOT NULL,
	"BAN_COUNT"	NUMBER		NULL,
	"BAN_CATEGORY"	NUMBER		NULL,
	"BAN_STATUS"	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN "BAN_LIST"."BAN_NO" IS '������ȣ';

COMMENT ON COLUMN "BAN_LIST"."REPORT_NO" IS '�ǰ߹�ȣ,������ȣ (���⿡  �����ϸ����� �ٲ��������)';

COMMENT ON COLUMN "BAN_LIST"."BAN_COUNT" IS '�Ű�ī����';

COMMENT ON COLUMN "BAN_LIST"."BAN_CATEGORY" IS '���ҽ�=1,������Ʈ=2';

COMMENT ON COLUMN "BAN_LIST"."BAN_STATUS" IS '�̰ɷ� �Խñ� �ִ��� ������';



CREATE TABLE "REPORT" (
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"REPORT_NO"	VARCHAR2(10)		NOT NULL,
	"REPORT_CATEGORY"	VARCHAR2(10)		NULL,
	"REPORT_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"REPORT_TITLE"	VARCHAR2(100)		NULL,
	"REPORT_CONTENT"	VARCHAR2(100)		NULL
);

COMMENT ON COLUMN "REPORT"."USER_NO" IS 'ȸ����ȣ.�Ű��ѻ��';

COMMENT ON COLUMN "REPORT"."REPORT_NO" IS '�Ű���ȣ.�Ű��Ȼ��ҽ� �Ǵ� �Ű���������Ʈ��ȣ';

COMMENT ON COLUMN "REPORT"."REPORT_CATEGORY" IS '���ҽ�=1, ������Ʈ=2';

COMMENT ON COLUMN "REPORT"."REPORT_DATE" IS '�Ű���¥';

COMMENT ON COLUMN "REPORT"."REPORT_TITLE" IS '�Ű�����';

COMMENT ON COLUMN "REPORT"."REPORT_CONTENT" IS '�Ű�����';



CREATE TABLE "TB_OPTION" (
	"REWARD_NO"	VARCHAR2(10)		NOT NULL,
	"ITEM_NO"	VARCHAR2(10)		NOT NULL,
	"ITEM_QUANTITY"	VARCHAR2(10)		NULL
);

COMMENT ON COLUMN "TB_OPTION"."REWARD_NO" IS '�������ȣ';

COMMENT ON COLUMN "TB_OPTION"."ITEM_NO" IS '�����۹�ȣ';

COMMENT ON COLUMN "TB_OPTION"."ITEM_QUANTITY" IS '�����ۼ���';



CREATE TABLE "PROJECT_BASIC" (
	"PROJECT_BASIC_NO"	VARCHAR2(10)		NOT NULL,
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"ANSWER1"	VARCHAR2(1000)		NULL,
	"ANSWER2"	VARCHAR2(1000)		NULL,
	"ANSWER3"	VARCHAR2(1000)		NULL,
	"ANSWER4"	VARCHAR2(1000)		NULL,
	"CHECK1"	VARCHAR2(10)		NULL,
	"CHECK2"	VARCHAR2(10)		NULL,
	"STATUS"	VARCHAR2(1)		NULL
);

COMMENT ON COLUMN "PROJECT_BASIC"."PROJECT_BASIC_NO" IS '������Ʈ�⺻��ȣ';

COMMENT ON COLUMN "PROJECT_BASIC"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "PROJECT_BASIC"."ANSWER1" IS '�亯����';

COMMENT ON COLUMN "PROJECT_BASIC"."ANSWER2" IS '�亯����';

COMMENT ON COLUMN "PROJECT_BASIC"."ANSWER3" IS '�亯����';

COMMENT ON COLUMN "PROJECT_BASIC"."ANSWER4" IS '�亯����';

COMMENT ON COLUMN "PROJECT_BASIC"."CHECK1" IS 'üũ����';

COMMENT ON COLUMN "PROJECT_BASIC"."CHECK2" IS 'üũ����';

COMMENT ON COLUMN "PROJECT_BASIC"."STATUS" IS '���°�';



CREATE TABLE "PROJECT_MAKER" (
	"MAKER_NO"	VARCHAR(255)		NOT NULL,
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL,
	"MAKER_NAME"	VARCHAR2(100)		NULL,
	"MAKER_EMAIL"	VARCHAR2(100)		NULL,
	"MAKER_PHONE"	VARCHAR2(100)		NULL,
	"MAKER_TYPE"	VARCHAR2(100)		NULL,
	"REPRESENTATIVE_NAME"	VARCHAR2(100)		NULL,
	"REPRESENTATIVE_EMAIL"	VARCHAR2(100)		NULL,
	"STATUS"	VARCHAR2(1)		NULL
);

COMMENT ON COLUMN "PROJECT_MAKER"."MAKER_NO" IS '����Ŀ��ȣ';

COMMENT ON COLUMN "PROJECT_MAKER"."PROJECT_NUMBER" IS '������Ʈ��ȣ';

COMMENT ON COLUMN "PROJECT_MAKER"."MAKER_NAME" IS '����Ŀ��';

COMMENT ON COLUMN "PROJECT_MAKER"."MAKER_EMAIL" IS '�̸���';

COMMENT ON COLUMN "PROJECT_MAKER"."MAKER_PHONE" IS '��ȭ��ȣ';

COMMENT ON COLUMN "PROJECT_MAKER"."MAKER_TYPE" IS '����ڱ���';

COMMENT ON COLUMN "PROJECT_MAKER"."REPRESENTATIVE_NAME" IS '��ǥ�ڸ�';

COMMENT ON COLUMN "PROJECT_MAKER"."REPRESENTATIVE_EMAIL" IS '��ǥ���̸���';

COMMENT ON COLUMN "PROJECT_MAKER"."STATUS" IS '���°�';



CREATE TABLE "ITEM" (
	"ITEM_NO"	VARCHAR2(10)		NOT NULL,
	"ITEM_NAME"	VARCHAR2(100)		NULL,
	"PROJECT_NUMBER"	VARCHAR2(10)		NOT NULL
);

COMMENT ON COLUMN "ITEM"."ITEM_NO" IS '�����۹�ȣ';

COMMENT ON COLUMN "ITEM"."ITEM_NAME" IS '�����۸�';

COMMENT ON COLUMN "ITEM"."PROJECT_NUMBER" IS '������Ʈ��ȣ';



CREATE TABLE "PERSON_QUESTION" (
	"A_QUESTION_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"QUESTION_TYPE"	NUMBER		NOT NULL,
	"QUESTION_TITLE"	VARCHAR2(100)		NULL,
	"QUESTION_CONTENT"	VARCHAR2(4000)		NULL,
	"QUESTION_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"QUESTION_YN"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"QUESTION_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"ANS_TITLE"	VARCHAR2(100)		NULL,
	"ANS_CONTENT"	VARCHAR2(100)		NULL,
	"ANS_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"ANS_NO"	VARCHAR2(10)		NULL
);

COMMENT ON COLUMN "PERSON_QUESTION"."A_QUESTION_NO" IS '�ǰ߹�ȣ';

COMMENT ON COLUMN "PERSON_QUESTION"."USER_NO" IS 'ȸ����ȣ.�ۼ���';

COMMENT ON COLUMN "PERSON_QUESTION"."QUESTION_TYPE" IS '�亯��(1, ����� / 2. ������)';

COMMENT ON COLUMN "PERSON_QUESTION"."QUESTION_TITLE" IS '�ǰ�����';

COMMENT ON COLUMN "PERSON_QUESTION"."QUESTION_CONTENT" IS '�ǰ߳���';

COMMENT ON COLUMN "PERSON_QUESTION"."QUESTION_DATE" IS '���ǵ�ϳ�¥';

COMMENT ON COLUMN "PERSON_QUESTION"."QUESTION_YN" IS '�ǰ߿���';

COMMENT ON COLUMN "PERSON_QUESTION"."QUESTION_STATUS" IS '���°�';

COMMENT ON COLUMN "PERSON_QUESTION"."ANS_TITLE" IS '�亯����';

COMMENT ON COLUMN "PERSON_QUESTION"."ANS_CONTENT" IS '�亯����';

COMMENT ON COLUMN "PERSON_QUESTION"."ANS_DATE" IS '�亯��¥';

COMMENT ON COLUMN "PERSON_QUESTION"."ANS_NO" IS 'ȸ����ȣ.�亯��';



CREATE TABLE "REPLY" (
	"P_QUESTION_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NOT NULL,
	"QUESTION_CONTENT"	VARCHAR2(4000)		NULL,
	"QUESTION_DATE"	DATE	DEFAULT SYSDATE	NULL,
	"QUESTION_YN"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"QUESTION_STATUS"	VARCHAR2(10)	DEFAULT 'N'	NULL,
	"QUESTION_BAN_COUNT"	NUMBER	DEFAULT 0	NULL
);

COMMENT ON COLUMN "REPLY"."P_QUESTION_NO" IS '�ǰ߹�ȣ';

COMMENT ON COLUMN "REPLY"."USER_NO" IS 'ȸ����ȣ.�ۼ���';

COMMENT ON COLUMN "REPLY"."QUESTION_CONTENT" IS '�ǰ߳���';

COMMENT ON COLUMN "REPLY"."QUESTION_DATE" IS '���ǵ�ϳ�¥';

COMMENT ON COLUMN "REPLY"."QUESTION_YN" IS '�ǰ߿���';

COMMENT ON COLUMN "REPLY"."QUESTION_STATUS" IS '���°�';

COMMENT ON COLUMN "REPLY"."QUESTION_BAN_COUNT" IS '�ǰߴ� ��� �Ű�Ƚ��';



CREATE TABLE "STATISTICS" (
	"STATISTICS_NO"	VARCHAR2(10)		NOT NULL,
	"USER_NO"	VARCHAR2(10)		NULL,
	"STATISTICS_DAY"	DATE	DEFAULT SYSDATE	NULL
);

COMMENT ON COLUMN "STATISTICS"."STATISTICS_NO" IS '����ȣ';

COMMENT ON COLUMN "STATISTICS"."USER_NO" IS 'ȸ����ȣ';

COMMENT ON COLUMN "STATISTICS"."STATISTICS_DAY" IS '��¥';

ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY (
	"USER_NO"
);

ALTER TABLE "CATEGORY_TYPE" ADD CONSTRAINT "PK_CATEGORY_TYPE" PRIMARY KEY (
	"PROJECT_CATEGORY"
);

ALTER TABLE "FUNDING_LIST" ADD CONSTRAINT "PK_FUNDING_LIST" PRIMARY KEY (
	"FUNDING_NO"
);

ALTER TABLE "PROJECT" ADD CONSTRAINT "PK_PROJECT" PRIMARY KEY (
	"PROJECT_NUMBER"
);

ALTER TABLE "FAQ" ADD CONSTRAINT "PK_FAQ" PRIMARY KEY (
	"FAQ_NO"
);

ALTER TABLE "NOTICE_TEMP" ADD CONSTRAINT "PK_NOTICE_TEMP" PRIMARY KEY (
	"NOTICE_NO"
);

ALTER TABLE "ATTACHMENT" ADD CONSTRAINT "PK_ATTACHMENT" PRIMARY KEY (
	"FILE_NO"
);

ALTER TABLE "REPLY_ANSWER" ADD CONSTRAINT "PK_REPLY_ANSWER" PRIMARY KEY (
	"ANS_NO"
);

ALTER TABLE "REWARD" ADD CONSTRAINT "PK_REWARD" PRIMARY KEY (
	"REWARD_NO"
);

ALTER TABLE "WISHLIST" ADD CONSTRAINT "PK_WISHLIST" PRIMARY KEY (
	"PROJECT_NUMBER",
	"USER_NO"
);

ALTER TABLE "EVENT" ADD CONSTRAINT "PK_EVENT" PRIMARY KEY (
	"EVENT_NUMBER"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "PK_PAYMENT" PRIMARY KEY (
	"PAY_NO",
	"USER_NO"
);

ALTER TABLE "NEWS" ADD CONSTRAINT "PK_NEWS" PRIMARY KEY (
	"NEWS_NO"
);

ALTER TABLE "BAN_LIST" ADD CONSTRAINT "PK_BAN_LIST" PRIMARY KEY (
	"BAN_NO"
);

ALTER TABLE "REPORT" ADD CONSTRAINT "PK_REPORT" PRIMARY KEY (
	"USER_NO",
	"REPORT_NO"
);

ALTER TABLE "TB_OPTION" ADD CONSTRAINT "PK_OPTION" PRIMARY KEY (
	"REWARD_NO",
	"ITEM_NO"
);

ALTER TABLE "PROJECT_BASIC" ADD CONSTRAINT "PK_PROJECT_BASIC" PRIMARY KEY (
	"PROJECT_BASIC_NO"
);

ALTER TABLE "PROJECT_MAKER" ADD CONSTRAINT "PK_PROJECT_MAKER" PRIMARY KEY (
	"MAKER_NO"
);

ALTER TABLE "ITEM" ADD CONSTRAINT "PK_ITEM" PRIMARY KEY (
	"ITEM_NO"
);

ALTER TABLE "PERSON_QUESTION" ADD CONSTRAINT "PK_PERSON_QUESTION" PRIMARY KEY (
	"A_QUESTION_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "PK_REPLY" PRIMARY KEY (
	"P_QUESTION_NO"
);

ALTER TABLE "STATISTICS" ADD CONSTRAINT "PK_STATISTICS" PRIMARY KEY (
	"STATISTICS_NO"
);

ALTER TABLE "FUNDING_LIST" ADD CONSTRAINT "FK_REWARD_TO_FUNDING_LIST_1" FOREIGN KEY (
	"REWARD_NO"
)
REFERENCES "REWARD" (
	"REWARD_NO"
);

ALTER TABLE "FUNDING_LIST" ADD CONSTRAINT "FK_MEMBER_TO_FUNDING_LIST_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "PROJECT" ADD CONSTRAINT "FK_CATEGORY_TYPE_TO_PROJECT_1" FOREIGN KEY (
	"PROJECT_CATEGORY"
)
REFERENCES "CATEGORY_TYPE" (
	"PROJECT_CATEGORY"
);

ALTER TABLE "PROJECT" ADD CONSTRAINT "FK_MEMBER_TO_PROJECT_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "FAQ" ADD CONSTRAINT "FK_MEMBER_TO_FAQ_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "NOTICE_TEMP" ADD CONSTRAINT "FK_MEMBER_TO_NOTICE_TEMP_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "REPLY_ANSWER" ADD CONSTRAINT "FK_REPLY_TO_REPLY_ANSWER_1" FOREIGN KEY (
	"QUESETION_NUMBER"
)
REFERENCES "REPLY" (
	"P_QUESTION_NO"
);

ALTER TABLE "REPLY_ANSWER" ADD CONSTRAINT "FK_MEMBER_TO_REPLY_ANSWER_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "REWARD" ADD CONSTRAINT "FK_PROJECT_TO_REWARD_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "WISHLIST" ADD CONSTRAINT "FK_PROJECT_TO_WISHLIST_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "WISHLIST" ADD CONSTRAINT "FK_MEMBER_TO_WISHLIST_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "EVENT" ADD CONSTRAINT "FK_MEMBER_TO_EVENT_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_MEMBER_TO_PAYMENT_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_PROJECT_TO_PAYMENT_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "NEWS" ADD CONSTRAINT "FK_PROJECT_TO_NEWS_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "TB_OPTION" ADD CONSTRAINT "FK_REWARD_TO_TB_OPTION_1" FOREIGN KEY (
	"REWARD_NO"
)
REFERENCES "REWARD" (
	"REWARD_NO"
);

ALTER TABLE "TB_OPTION" ADD CONSTRAINT "FK_ITEM_TO_TB_OPTION_1" FOREIGN KEY (
	"ITEM_NO"
)
REFERENCES "ITEM" (
	"ITEM_NO"
);

ALTER TABLE "PROJECT_BASIC" ADD CONSTRAINT "FK_PROJECT_TO_PROJECT_BASIC_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "PROJECT_MAKER" ADD CONSTRAINT "FK_PROJECT_TO_PROJECT_MAKER_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "ITEM" ADD CONSTRAINT "FK_PROJECT_TO_ITEM_1" FOREIGN KEY (
	"PROJECT_NUMBER"
)
REFERENCES "PROJECT" (
	"PROJECT_NUMBER"
);

ALTER TABLE "PERSON_QUESTION" ADD CONSTRAINT "FK_MEMBER_TO_PERSON_QUESTION_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "REPLY" ADD CONSTRAINT "FK_MEMBER_TO_REPLY_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);

ALTER TABLE "STATISTICS" ADD CONSTRAINT "FK_MEMBER_TO_STATISTICS_1" FOREIGN KEY (
	"USER_NO"
)
REFERENCES "MEMBER" (
	"USER_NO"
);
