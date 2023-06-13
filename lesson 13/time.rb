puts Time.now
time = Time.now
puts time.strftime("%H:%M")
puts time.strftime("%d.%m.%Y")
file = File.new("./file.txt", "a:UTF-8")
file.print("Ещё одна строка\n\r")
file.close