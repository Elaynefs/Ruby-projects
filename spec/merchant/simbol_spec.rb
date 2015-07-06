
require "../spec_helper.rb"

describe 'Simbol::get_value_of("I")' do
  subject { Simbol.new.get_value_of('I') }

  it { expect(subject).to eq(1) }
end

si=Simbol.new

describe "Simbols and its values" do
  

  it "To the simbol I should have the value 1" do
    expect(si.get_value_of('I')).to eq(1);
  end  

  it "To the simbol V should have the value 5" do
    expect(si.get_value_of('V')).to eq(5);
  end

  it "To the simbol X should have the value 10" do
    expect(si.get_value_of('X')).to eq(10);
  end

  it "To the simbol L should have the value 50" do
    expect(si.get_value_of('L')).to eq(50);
  end

  it "To the simbol C should have the value 100" do
    expect(si.get_value_of('C')).to eq(100);
  end

  it "To the simbol D should have the value 500" do
    expect(si.get_value_of('D')).to eq(500);
  end

  it "To the simbol M should have the value 1000" do
    expect(si.get_value_of('M')).to eq(1000); 
  end
  
end


describe "The symbols 'I', 'X', 'C', and 'M' can be repeated only three times" do
 

  it "To the value IVXCMI should have the value" do
    expect(si.get_total_value('IVXCMI')).to eq(1095);
  end  

  it "To the value IIXXCCMM should have the value" do
    expect(si.get_total_value('IIXXCCMM')).to eq(2222);
  end

  it "To the value IIIXXXCCCMMM should have the value" do
    expect(si.get_total_value('IIIXXXCCCMMM')).to eq(3131);
  end

  it "To the value IIII shouldn't have a valid value" do
    expect(si.get_total_value('IIII')).to eq("Valor inválido");
  end

  it "To the value XXXX shouldn't have a valid value" do
    expect(si.get_total_value('XXXX')).to eq("Valor inválido");
  end

  it "To the value CCCC shouldn't have a valid value" do
    expect(si.get_total_value('CCCC')).to eq("Valor inválido");
  end

  it "To the value MMMM shouldn't have a valid value" do
    expect(si.get_total_value('MMMM')).to eq("Valor inválido");
  end
  
end

describe "The symbols 'I', 'X', 'C', and 'M' may appear four times if the third and fourth are separated by a smaller value " do


  it "To the simbols XXXIXI should have the value 42" do
    expect(si.get_total_value('XXXIXI')).to eq(42);
  end

  it "To the simbols CCCICM should have the value 1201" do
    expect(si.get_total_value('CCCICM')).to eq(1201);
  end

  it "To the simbols MMMIMIIICCCV should have the value 4309" do
    expect(si.get_total_value('MMMIMIIICCCV')).to eq(4309); 
  end

  it "To the simbols IIIMVI should have the value 1009" do
    expect(si.get_total_value('IIIMVI')).to eq(1009);
  end

  it "To the simbols IIII shouldn't have a valid value" do
    expect(si.get_total_value('IIII')).to eq("Valor inválido");
  end

  it "To the simbols XXXXII shouldn't have a valid value" do
    expect(si.get_total_value('XXXXII')).to eq("Valor inválido");
  end

  it "To the simbols CCCCII shouldn't have a valid value" do
    expect(si.get_total_value('CCCCII')).to eq("Valor inválido");
  end

  it "To the simbols MMMMII shouldn't have a valid value" do
    expect(si.get_total_value('MMMMII')).to eq("Valor inválido");
  end 
end

describe "The symbols 'D', 'L', and 'V' can never be repeated" do
  

  it "To the value simbols IDCD shouldn't have a valid value" do
    expect(si.get_total_value('IDCD')).to eq("Valor inválido");
  end

  it "To the simbols MLILL shouldn't have a valid value" do
    expect(si.get_total_value('MLILLI')).to eq("Valor inválido");
  end

  it "To the simbols MVVI shouldn't have a valid value" do
    expect(si.get_total_value('MVVI')).to eq("Valor inválido"); 
  end
end

describe "The symbol 'I' can be subtracted from 'V' and 'X' only" do

  it "To the simbols XDIV should have the value 13" do
    expect(si.get_total_value('IVIX')).to eq(13);
  end

  it "To the simbols IL should have the value 51" do
    expect(si.get_total_value('IL')).to eq(51);
  end

  it "To the simbols IC should have the value 101" do
    expect(si.get_total_value('IC')).to eq(101); 
  end

  it "To the simbols ID should have the value 501" do
    expect(si.get_total_value('ID')).to eq(501);
  end

  it "To the simbols IM should have the value 1001" do
    expect(si.get_total_value('IM')).to eq(1001);
  end

end

describe "The symbol 'X' can be subtracted from 'L' and 'C' only" do

  it "To the simbols XLXC should have the value 130" do
    expect(si.get_total_value('XLXC')).to eq(130);
  end

  it "To the simbols XD should have the value 510" do
    expect(si.get_total_value('XD')).to eq(510);
  end

  it "To the simbols XM should have the value 1010" do
    expect(si.get_total_value('XM')).to eq(1010); 
  end

end

describe "The symbol 'C' can be subtracted from 'D' and 'M' only" do

  it "The simbols XDIV should have the value 1300" do
    expect(si.get_total_value('CDCM')).to eq(1300);
  end

end

describe "The symbols 'V', 'L', and 'D' can never be subtracted" do

  it "The simbols VX should have the value 15" do
    expect(si.get_total_value('VX')).to eq(15);
  end

  it "The simbols LC should have the value 150" do
    expect(si.get_total_value('LC')).to eq(150);
  end

  it "The simbols DM should have the value 1500" do
    expect(si.get_total_value('DM')).to eq(1500); 
  end  


end

