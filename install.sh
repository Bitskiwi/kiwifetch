echo "alias kiwifetch='. ~/kiwifetch/src/main.sh'" >> ~/.bashrc
echo "> created alias (kiwifetch)"
declare prev_dir="$(pwd)"
cd ~
source .bashrc
cd $prev_dir
echo "> loaded .bashrc to current terminal"
echo "> install complete"
