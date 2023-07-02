all: SwitchToZhuyinAndBopomofo

SwitchToZhuyinAndBopomofo: SwitchToZhuyinAndBopomofo.m
	gcc -o $@ -Wall $< -framework Carbon -framework Foundation
