# 创建用户信息表
CREATE TABLE user_info(
  id INT(32) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(20) DEFAULT NULL COMMENT '用户名'
)ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT '用户信息';

CREATE TABLE `system_log` (
  `id` VARCHAR(32) NOT NULL,
  `description` VARCHAR(50) DEFAULT NULL COMMENT '日志信息描述',
  `method` VARCHAR(20) DEFAULT NULL COMMENT '方法名称',
  `log_type` VARCHAR(10) DEFAULT NULL COMMENT '日志类型 0是正常，1是异常',
  `request_ip` VARCHAR(30) DEFAULT NULL COMMENT '请求的ip',
  `exception_code` VARCHAR(50) DEFAULT NULL COMMENT '异常错误码',
  `exception_detail` VARCHAR(255) DEFAULT NULL COMMENT '异常详情',
  `params` VARCHAR(1000) DEFAULT NULL COMMENT '请求参数',
  `user_id` VARCHAR(32) DEFAULT NULL COMMENT '请求的用户id',
  `create_time` DATETIME DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='系统日志';