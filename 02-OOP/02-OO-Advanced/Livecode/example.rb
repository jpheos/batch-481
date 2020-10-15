require 'amazing_print'

require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'



simba = Lion.new('Simba')
nala = Lion.new('Nala')
meerkat = Meerkat.new('Timon')
warthog = Warthog.new('Pumbaa')


animals = [simba, nala, meerkat, warthog]

animals.each do |animal|
  puts animal.talk
end
