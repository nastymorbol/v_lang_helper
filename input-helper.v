module v_lang_helper

import os

pub fn input_int(prompt string) int {
	if mut var := os.input_opt(prompt) {
		if var == 'q' {
			println('Exit application.')
			exit(0)
		}
		if var.is_int() {
			return var.int()
		}
	}
	return input_int(prompt)
}

pub fn input_bool(prompt string) bool {
	if mut var := os.input_opt(prompt + ' [y/n]: ') {
		if var == 'y' || var == 'Y' {
			return true
		}
		if var == 'n' || var == 'N' {
			return false
		}
		return input_bool(prompt)
	}
	else {
		return input_bool(prompt)
	}
	return false
}