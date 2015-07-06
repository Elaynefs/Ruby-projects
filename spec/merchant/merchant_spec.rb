require "../spec_helper.rb"


describe "Simbols and its values" do
  merchant= Merchant.new
  merchant.data_input("glob is I")
  merchant.data_input("prok is V")
  merchant.data_input("pish is X")
  merchant.data_input("tegj is L")
  merchant.data_input("glob glob Silver is 34 Credits")
  merchant.data_input("glob prok Gold is 57800 Credits")
  merchant.data_input("pish pish Iron is 3910 Credits")


  it "For the question: How much is pish tegj glob glob? The answer is 42." do
    expect(merchant.data_input('How much is pish tegj glob glob ?')).to eq("pish tegj glob glob is 42");
  end  

  it "For the question: How many Credits is glob prok Silver ? The answer is 68." do
    expect(merchant.data_input('How many Credits is glob prok Silver ?')).to eq("glob prok Silver is 68 Credits");
  end

  it "For the question: How many Credits is glob prok Gold ?The answer is 57800." do
    expect(merchant.data_input('How many Credits is glob prok Gold ?')).to eq("glob prok Gold is 57800 Credits");
  end

  it "For the question: How many Credits is glob prok Iron ?The answer is 782." do
    expect(merchant.data_input('How many Credits is glob prok Iron ?')).to eq("glob prok Iron is 782 Credits");
  end

  it "For the question: How much wood could a woodchuck chuck if a woodchuck could chuck wood? The answer is no idea." do
    expect(merchant.data_input('How much wood could a woodchuck chuck if a woodchuck could chuck wood?')).to eq("I have no idea what you are talking about");
  end

end
