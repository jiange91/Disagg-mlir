line = 4 * 512 * 4
local_size = 67108864
total_size = 136314880
slots = int(local_size / line)

for i in range(16):
	cfg_line = f'{i+1} 0 {i*slots} {i*total_size} {i*local_size} {slots} {line} {i}'
	print(cfg_line)