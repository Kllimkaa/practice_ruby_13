puts "Привет, я твой дневник. Скажи мне что у тебя на уме и в душе?"
puts "Я сохраняю всё, что ты напишешь до строки \"end\" в файл."

current_path = File.dirname(__FILE__)
file_path = current_path + "diary.txt"
line = nil
all_lines=[]
file = File.new("./diary.txt", "a:UTF-8")
time = Time.now 
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")

while line != "конец" do
    line = STDIN.gets.encode("UTF-8").chomp
    all_lines << line

end
separator = "__________________________________________"
all_lines.pop
file = File.new(current_path + "/" + file_name + ".txt", "a:UTF-8")
file .print("\r" + time_string = "\n\r")

for item in all_lines do
    file.puts(item)
end

file.puts(separator)
file.close
puts "Всё, я сохранил твою запись в файле #{file_name}.txt"