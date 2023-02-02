require "rspec"
require "remove_dup"


describe "remove_dup" do
  let(:arr_1) {[1,2,1,3,3]}
  let(:duped) { remove_dup(arr_1.dup)}

  #  it "returns a duped arr" do
  #   expect(remove_dup([1,2,1,3,3])).to eq([1,2,3])
  # end


  it "should return a new arr"

  it "should only contain unique elements" do
    arr_1.each do |ele|
     expect(duped.count(ele)).to eq(1)
    end
  end

  it "should not mutate the original array"

  it "should not include elements not in the original array"

end


