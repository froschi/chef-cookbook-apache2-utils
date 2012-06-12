packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    apache2-utils
  /
when "precise"
  packages |= %w/
    apache2-utils
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
