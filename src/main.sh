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

# Load a Logo

case $distro in
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

# Print to screen

echo
echo -e "${logo[0]} \uf007  $user@$host"
echo -e "${logo[1]} \uf109  $kernel"
echo -e "${logo[2]} \uf31a  $distro $architecture"
echo -e "${logo[3]} \ue795  $sh"
echo -e "${logo[4]} \ue22b  $white$dot $red$dot $yellow$dot $green$dot $blue$dot $cyan$dot $magenta$dot $black$dot $reset"
echo

cd $prev_dir
