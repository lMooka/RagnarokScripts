-- OBS: Preste atenção nos updates, eles são por versão.

-- v1.0.0+
DROP TABLE IF EXISTS `pvpm_data`;
CREATE TABLE `pvpm_data` (
`id` int(11) unsigned NOT NULL default '0',
`name` varchar(255) NOT NULL default '',
`kills` int(11) unsigned NOT NULL default '0',
`dies` int(11) unsigned NOT NULL default '0',
`leader` int(11) unsigned NOT NULL default '0',
`annc` int(11) unsigned NOT NULL default '0',
`ban` int(11) unsigned NOT NULL default '0',
`type` int(11) unsigned NOT NULL default '0',
KEY `id` (`id`),
KEY `kills` (`kills`),
KEY `dies` (`dies`)
) ENGINE=MyISAM;

-- v1.1.1+
alter table pvpm_data add ratio int(11) not null default '0' after dies;

-- v1.1.7+
DROP TABLE IF EXISTS `pvpm_map`;
CREATE TABLE `pvpm_map` (
`id` int(11) unsigned NOT NULL default '0',
`map` varchar(255) NOT NULL default 'NULL',
`type` int(11) unsigned NOT NULL default '0',
KEY `id` (`id`)
) ENGINE=MyISAM;
insert into pvpm_map (id,map,type) values (0,'guild_vs3',0);
insert into pvpm_map (id,map,type) values (1,'pvp_n_1-5',0);
insert into pvpm_map (id,map,type) values (2,'guild_vs1',2);
insert into pvpm_map (id,map,type) values (3,'prt_are01',2);
insert into pvpm_map (id,map,type) values (4,'guild_vs2',1);

-- v1.2.3+
alter table pvpm_map add noguild int(11) not null default '0';
update pvpm_map set noguild=1 where map='guild_vs1';

-- v1.3.0+

DROP TABLE IF EXISTS `pvpm_lang`;
CREATE TABLE IF NOT EXISTS `pvpm_lang` (
  `id` int(11) unsigned NOT NULL,
  `lang` int(11) unsigned NOT NULL default '0',
  `str` varchar(255) NOT NULL default '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
