use auth;
INSERT INTO application VALUES (0x__APPLICATION_UUID__,'PIC-SURE multiple data access API',0x01,'PICSURE','','/picsureui');
INSERT INTO `privilege` (uuid, description, name, application_id, queryScope, queryTemplate) VALUES 
(0x7044061AF65B425F86CE73A1BF7F4402,'PIC-SURE Auth super admin for managing roles/privileges/application/connections','SUPER_ADMIN',NULL,'[]',NULL),
(0xAD08212E096F414CBA8D1BAE09415DAB,'PIC-SURE Auth admin for managing users.','ADMIN',NULL,'[]',NULL);
INSERT INTO `privilege` VALUES (0xF65B425F867044061ACE73A1BF7F4402,'User who cann run any PIC-SURE Query','PIC_SURE_ANY_QUERY',0x__APPLICATION_UUID__,'[]',NULL);
INSERT INTO `role` VALUES (0x002DC366B0D8420F998F885D0ED797FD,'PIC-SURE Top Admin','PIC-SURE Auth Micro App Top admin including Admin and super Admin, can manage roles and privileges directly');
INSERT INTO `role` VALUES (0x8F885D0ED797FD002DC366B0D8420F99,'Admin','Normal admin users, can manage other users including assignment of roles and privileges');
INSERT INTO `role` VALUES (0x797FD002DC366B0D8420F998F885D0ED,'PIC-SURE User','Normal user, can run any query including data export.');

INSERT INTO `role_privilege` VALUES 
(0x002DC366B0D8420F998F885D0ED797FD,0x7044061AF65B425F86CE73A1BF7F4402),
(0x002DC366B0D8420F998F885D0ED797FD,0xAD08212E096F414CBA8D1BAE09415DAB),
(0x8F885D0ED797FD002DC366B0D8420F99,0xAD08212E096F414CBA8D1BAE09415DAB),
(0x797FD002DC366B0D8420F998F885D0ED,0xF65B425F867044061ACE73A1BF7F4402);
