#!/usr/bin/env python

# Define color codes for different background colors
red_bg_color_code_start = "1;41m"
green_bg_color_code_start = "1;42m"
yellow_bg_color_code_start = "1;43m"
blue_bg_color_code_start = "1;44m"
magenta_bg_color_code_start = "1;45m"
cyan_bg_color_code_start = "1;46m"
black_bg_color_code_start = "1;40m"

color_code_end = "1;m"

# Print "COMMBASE:" with different background colors on separate lines followed by "hello world"
print(f"\033[{red_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{green_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{yellow_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{blue_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{magenta_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{cyan_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
print(f"\033[{black_bg_color_code_start}COMMBASE:\033[{color_code_end} hello world\033[0m")
