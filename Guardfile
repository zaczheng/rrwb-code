# More info at https://github.com/guard/guard#readme

# run test with 'redgreen' gem(for colour) if available otherwise with plain ruby
guard "shell" do
  watch(%r{^(.+)/.+\.rb$}) do |m|
  	cmd = `which rg`.empty? ? "ruby" : "rg"
	  puts `cd #{m[1]}; #{cmd} #{m[1]}_test.rb`
  end
end