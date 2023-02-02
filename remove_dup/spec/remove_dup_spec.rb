require "rspec"
require "remove_dup"


describe "remove_dup" do
  let(:arr_1) {[1,2,1,3,3]}
  let(:duped) { remove_dup(arr_1.dup)}

  #  it "returns a duped arr" do
  #   expect(remove_dup([1,2,1,3,3])).to eq([1,2,3])
  # end



  it "should only contain unique elements" do
    arr_1.each do |ele|
     expect(duped.count(ele)).to eq(1)
    end
  end

  it "should return a new array that does not mutate the original array" do
    expect(arr_1.object_id).not_to eq(duped.object_id)
    expect(duped).to be_a(Array)
  end

  it "should not include elements not in the original array" do
    expect(duped.all?{|el|arr_1.include?(el)}).to eq(true)
  end

end


