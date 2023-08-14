-- docker-compose.yamlのみで使用
use resources_202308;

CREATE TABLE IF NOT EXISTS `emp_master` (
    `emp_id`                INT         NOT NULL,
    `emp_name`              CHAR(50)    NOT NULL,
    `emp_code`              CHAR(6),
    `company_code`          CHAR(4)     NOT NULL,
    `hire_date`             DATE        NOT NULL,
    `retirement_date`       DATE,
    PRIMARY KEY (emp_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `contract` (
    `emp_id`                INT         NOT NULL,
    `start_date`            DATE        NOT NULL,
    `end_date`              DATE,
    `working_rate`          FLOAT       NOT NULL,
    PRIMARY KEY (emp_id, start_date)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `team_master` (
    `team_id`               INT         NOT NULL,
    `team_name`             VARCHAR(20) NOT NULL,
    `start_date`            DATE        NOT NULL,
    `end_date`              DATE,
    `team_reader_id`        INT         NOT NULL,
    PRIMARY KEY (team_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `team_bilonging_hist` (
    `emp_id`                INT         NOT NULL,
    `team_id`               INT         NOT NULL,
    `start_date`            DATE        NOT NULL,
    `end_date`              DATE,
    PRIMARY KEY (emp_id, team_id, start_date)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `rr_master` (
    `rr_id`                 INT         NOT NULL,
    `rr_name`               VARCHAR(20) NOT NULL,
    `is_billable`           BOOLEAN     NOT NULL,
    PRIMARY KEY (rr_id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `rr_hist` (
    `emp_id`                INT         NOT NULL,
    `start_date`            DATE        NOT NULL,
    `end_date`              DATE,
    `rr_id`                 INT         NOT NULL,
    `note`                  VARCHAR(200),
    PRIMARY KEY (emp_id, start_date)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;




