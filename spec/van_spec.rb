require 'van'

describe Van do

 it 'should respond to release_bike' do
   expect(subject).to respond_to :release_bike
 end

 it 'releases a bike' do
   bike = double :bike
   subject.load bike
   expect(subject.release_bike).to be bike
 end

 it { is_expected.to respond_to(:load).with(1).argument}

 it 'has a default capacity' do
   expect(subject.van_capacity).to eq Van::VAN_DEFAULT_CAPACITY
 end

 describe 'capacity' do
   it 'can set the capacity' do
     expect(subject.van_capacity=(50)).to eq 50
   end
 end

 describe 'release_bike' do
   it 'raises an error when there are no bikes available' do
     expect {subject.release_bike}.to raise_error 'No bikes available'
   end
 end

 describe 'load' do
   it 'raises an error when full' do
     subject.van_capacity.times {subject.load double :bike}
     expect{subject.load double :bike }.to raise_error 'Van full'
   end
 end

end