include_recipe "build-essential"
include_recipe 'apt'

package 'libmagickwand-dev'
package 'liblcms2-dev'
package 'liblzma-dev'

remote_file "#{Chef::Config[:file_cache_path]}/tiff-4.0.3.tar.gz" do
  source "ftp://ftp.remotesensing.org/pub/libtiff/tiff-4.0.3.tar.gz"
end

bash "untar_tiff_403" do
  cwd "#{Chef::Config[:file_cache_path]}"
  code <<-EOH
    tar -xzvf tiff-4.0.3.tar.gz
  EOH
  not_if { ::File.directory?("#{Chef::Config['file_cache_path'] || '/tmp'}/tiff-4.0.3") }
end

bash 'install-libtiff4' do
  cwd "#{Chef::Config[:file_cache_path]}/tiff-4.0.3"

  code <<-EOH
    ./configure
    make
    make install
  EOH

  # HELP! Add idempotence
  # not_if do
  # end

end

package 'libtiff4' do
  action :remove
end

remote_file "#{Chef::Config[:file_cache_path]}/ImageMagick-6.8.8-10.tar.gz" do
  source "http://www.imagemagick.org/download/ImageMagick-6.8.8-10.tar.gz"
end

bash 'untar_imagemagick' do
  cwd "#{Chef::Config[:file_cache_path]}"

  code <<-EOH
    tar -xzvf ImageMagick-6.8.8-10.tar.gz
  EOH
  not_if { ::File.directory?("#{Chef::Config['file_cache_path'] || '/tmp'}/ImageMagick-6.8.8-10") }
end

bash 'install-imagemagick' do
  cwd "#{Chef::Config[:file_cache_path]}/ImageMagick-6.8.8-10"

  code <<-EOH
    ./configure
    make
    make install
    ldconfig /usr/local/lib
  EOH

  # HELP! Add idempotence
  # not_if do
  # end
end

