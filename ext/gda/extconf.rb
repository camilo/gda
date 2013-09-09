require 'mkmf'

# :stopdoc:

if RUBY_PLATFORM =~ /darwin/
  ENV['PKG_CONFIG_PATH'] ||= if ENV['BOXEN_HOME']
                               '/opt/boxen/homebrew/lib/pkgconfig:/opt/boxen/homebrew/Library/ENV/pkgconfig/10.8'
                             else
                               '/usr/local/opt/libxml2/lib/pkgconfig:/usr/local/lib/pkgconfig'
                             end
end

dir_config 'libgda'

def asplode missing
  abort "#{missing} is missing. Try 'brew install libgda'"
end

pkg_config 'libgda-5.0'
find_header('libgda/sql-parser/gda-sql-parser.h') || asplode("libgda")

create_makefile 'gda/gda'


# :startdoc:
