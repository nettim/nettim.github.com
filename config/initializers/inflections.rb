# Be sure to restart your server when you modify this file.

 

# Modified by Tso 2012-08-16 Start

# Connect to Database

require 'rubygems'

require 'oci8'

tnsnames = '(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = 203.188.100.43)(PORT = 1521)) (CONNECT_DATA = (SID = orctest)))'

conn = OCI8.new('isis_demo', '123456', tnsnames)

 

# Find all tables

cursor = conn.exec('SELECT tname from tab')

 

# Modified by Tso 2012-08-16 End

 

# Add new inflection rules using the following format

# (all these examples are active by default):

ActiveSupport::Inflector.inflections do |inflect|

#   inflect.plural /^(ox)$/i, '\1en'

#   inflect.singular /^(ox)en/i, '\1'

#   inflect.irregular 'person', 'people'

#   inflect.uncountable %w( fish sheep teacher)

    while r = cursor.fetch()

      inflect.uncountable (r[0].strip)

    end

   

 end

#

# These inflection rules are supported but not enabled by default:

# ActiveSupport::Inflector.inflections do |inflect|

#   inflect.acronym 'RESTful'

# end