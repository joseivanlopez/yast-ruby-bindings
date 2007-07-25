require 'yast'

m = YaST::Module.new("SCR")
m.Read(".proc.modules")

exit
m = YaST::Module.new("Timezone")
zonemap = m.get_zonemap()
puts zonemap.class
zonemap.each do | element |
  element.each do | key, value |
    value.each do | k, v |
      puts "#{k} #{v}"
    end
  end
end


exit
m = YaST::Module.new("Arch")
puts m.sparc32
puts m.arch_short
puts m.is_xen

m = YaST::Module.new("Popup")
m.Message("Hello")


m = YaST::Module.new("Storage")
dp = m.GetDiskPartition("/dev/sda1")
dp.each do | key, value |
  puts "#{key} #{value}"
end


