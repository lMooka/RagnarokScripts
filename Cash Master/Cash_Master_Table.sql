/*------ v1.0.2+ ----- */
DROP TABLE IF EXISTS `cm_log`;
CREATE TABLE `cm_log` (
  `account_id` int(11) unsigned NOT NULL default '0',
  `charname` varchar(255) NOT NULL default '',
  `itemname` varchar(255) NOT NULL default '',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  KEY `account_id` (`account_id`)
) TYPE=MyISAM;

/*------ v1.0.0+ ----- */
DROP TABLE IF EXISTS `cm_db`;
CREATE TABLE `cm_db` (
  `account_id` int(11) unsigned NOT NULL default '0',
  `cash` int(11) unsigned NOT NULL default '0',
  `mail` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  KEY `account_id` (`account_id`)
) TYPE=MyISAM;
DROP TABLE IF EXISTS `cm_itemdb`;
CREATE TABLE `cm_itemdb` (
  `id`int(11) unsigned not null auto_increment,
  `nameid` int(11) unsigned NOT NULL default '0',
  `price` int(11) unsigned NOT NULL default '0',
  `type` int(11) unsigned NOT NULL default '0',
  KEY `id` (`id`)
) TYPE=MyISAM;