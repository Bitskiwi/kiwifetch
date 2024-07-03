declare prev_dir="$(pwd)"
cd ~/kiwifetch/src


. logo.sh                                # Import logo declarations

# Fetch Info

declare user=$USER
declare host=$HOSTNAME
declare kernel="$(uname -r)"
source /etc/os-release
declare distro="$NAME"
declare architecture="$(uname -m)"
declare sh=$(basename $SHELL)

declare distro_logo=$distro

# check for specified logo

case $1 in
	"deb")
		declare distro_logo="Debian GNU/Linux"
		;;
	"arch")
		declare distro_logo="Arch Linux"
		;;
	"ubu")
		declare distro_logo="Ubuntu"
		;;
	"fedo")
		declare distro_logo="Fedora"
		;;
	"mint")
		declare distro_logo="Linux Mint"
		;;
	"pop")
		declare distro_logo="Pop!_OS"
		;;
	"*")
		declare distro_logo=$distro
		;;
esac

# Load a Logo

case $distro_logo in
	"Arch Linux")
		declare -n logo=arch
		;;
	"Ubuntu")
		declare -n logo=ubuntu
		;;
	"Debian GNU/Linux")
		declare -n logo=debian
		;;
	"Fedora")
		declare -n logo=fedora
		;;
	"Linux Mint")
		declare -n logo=mint
		;;
	"Pop!_OS")
		declare -n logo=popos
		;;
	*)
		declare -n logo=na
		;;
esac

# Visuals and Color

dot="\uf444"
pad="    "
line_h="\u2500\u2500\u2500\u2500\u2500"

# Print to screen

echo -e "\u256d$line_h$line_h\u252c\u2500\u256e"
echo -e "\u2502${logo[0]}\u2502$red\uf007$reset\u2502$red$user@$host$reset" 
echo -e "\u2502${logo[1]}\u2502$yellow\uf109$reset\u2502$yellow$kernel$reset" 
echo -e "\u2502${logo[2]}\u2502$green\uf31a$reset\u2502$green$distro $architecture$reset" 
echo -e "\u2502${logo[3]}\u2502$cyan\ue795$reset\u2502$cyan$sh$reset" 
echo -e "\u2502${logo[4]}\u2502$blue\ue22b$reset\u2502 $white$dot $red$dot $yellow$dot $green$dot $blue$dot $cyan$dot $magenta$dot $black$dot $reset" 
echo -e "\u2570$line_h$line_h\u2534\u2500\u256f"

cd $prev_dir
