lcm安装指令：git clone https://github.com/lcm-proj/lcm.git && cd lcm && mkdir build && cd build && cmake .. && make -j && make install

1.先在.lcm定义接口；通常在一个 `.lcm`文件中定义，并通过LCM的代码生成工具生成对应的C++代码

2.将.lcm后缀转换成.hpp，使用LCM提供的工具从 `.lcm`文件生成C++代码，相关指令:lcm-gen -x unitree_h1_lcm.lcm

https://chatgpt.com/share/6718f10c-3770-8013-b0f7-6d28183abebe
