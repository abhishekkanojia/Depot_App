class ActiveRecord::ConnectionAdapters::Mysql2Adapter
  NATIVE_DATABASE_TYPES[:primary_key] = "int(11) DEFAULT NULL auto_increment PRIMARY KEY"
end