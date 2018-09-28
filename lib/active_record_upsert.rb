require 'active_record_upsert/version'

unless defined?(Arel)
  raise 'ActiveRecordUpsert has to be required after ActiveRecord/Arel'
end

unless defined?(ActiveRecord)
  raise 'ActiveRecordUpsert has to be required after ActiveRecord'
end

require 'active_record_upsert/arel'
require 'active_record_upsert/active_record'

version = defined?(Rails) ? Rails.version : ActiveRecord.version.to_s

require 'active_record_upsert/compatibility/rails42.rb' if version >= '4.2.0' && version < '5.0.0'

module ActiveRecordUpsert
  # Your code goes here...
end
