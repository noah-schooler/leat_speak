require('rspec')
require('pry')
require('leet_speak.rb')

describe('#leet_speak') do
  it('returns a string as is when no Leetspeak rules apply') do
    expect(leet_speak("happy")).to(eq("happy"))
  end

  it('replaces every "e" in a string with a "3"') do
     expect(leet_speak("leet")).to(eq("l33t"))
  end

  it('replaces every "o" in a string with a "0"') do
    expect(leet_speak("boo boo")).to(eq("b00 b00"))
  end

  it('replaces every "I" in a string with a "1"') do
    expect(leet_speak("I like Ike")).to(eq("1 lik3 1k3"))
  end

  it('replaces every "s" in a string with a "z"') do
    expect(leet_speak("roses")).to(eq("r0z3z"))
  end

  it('does not replace the first letter when it is an s') do
    expect(leet_speak("sassafrass")).to(eq("sazzafrazz"))
  end
end
