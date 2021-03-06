require 'plane'


describe Plane do

	let(:plane) {Plane.new}
	
	it 'has a flying status when created' do
		expect(plane.status?).to eq 'flying'
	end

	it 'has a flying status when in the air' do
		plane.take_off!
		expect(plane.status?).to eq 'flying'
	end

	it 'can take off' do
		expect(plane).to receive(:take_off!)
		plane.take_off!
	end

	it 'changes its status to flying after taking off' do
		plane.land!.take_off!
		expect(plane.status?).to eq 'flying'
	end


end