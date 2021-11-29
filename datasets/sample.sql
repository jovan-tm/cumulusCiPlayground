BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'bank2','');
INSERT INTO "Account" VALUES(2,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(3,'bank1','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'2038-11-30','Non-refrigerated','beans','3');
INSERT INTO "Delivery_Item__c" VALUES(2,'3021-12-02','Non-refrigerated','pasta','2');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'2021-11-30T17:00:00.000+0000','Scheduled','3');
INSERT INTO "Delivery__c" VALUES(2,'2021-12-02T17:00:00.000+0000','Requested','1');
INSERT INTO "Delivery__c" VALUES(3,'2021-11-27T17:00:00.000+0000','Completed','1');
COMMIT;
