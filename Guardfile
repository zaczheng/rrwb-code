# More info at https://github.com/guard/guard#readme

# Instructions:
# 1) gem install guard guard-shell
# 2) run guard in root

# run test with 'redgreen' gem(for colour) if available otherwise with plain ruby
guard "shell" do
  watch(%r{^(.+)/.+\.rb$}) do |m|
  	cmd = `which rg`.empty? ? "ruby" : "rg"
	  puts `cd #{m[1]}; #{cmd} #{m[1]}_test.rb`
  end
end