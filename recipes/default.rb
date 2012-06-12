include_recipe "libapr"
include_recipe "libaprutil"
include_recipe "libssl"

packages = Array.new

case node[:lsb][:codename]
when "lucid", "precise"
  packages |= %w/
    apache2-utils
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
