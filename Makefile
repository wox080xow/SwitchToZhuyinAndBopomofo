all: SwitchToZhuyinAndBopomofo

SwitchToZhuyinAndBopomofo: SwitchToZhuyinAndBopomofo.m
	gcc -o $@ -Wall $< -framework AppKit -framework Carbon -framework Foundation
