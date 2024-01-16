declare user=$USER
declare host=$HOSTNAME
declare os=$(uname -o)
declare kernel=$(uname -r)
source /etc/os-release
declare distro=$NAME
declare sh=$(basename $SHELL)
dot="\uf444"

pad="    "

white="\033[37m"
red="\033[31m" 
yellow="\033[33m" 
green="\033[32m" 
blue="\033[34m" 
cyan="\033[36m" 
magenta="\033[35m" 
black="\033[30m" 

echo -e "$pad\uf007  $user@$host"
echo -e "$pad\uf109  $kernel"
echo -e "$pad\uf31a  $distro"
echo -e "$pad\ue795  $sh"
echo -e "$pad\ue22b  $white$dot $red$dot $yellow$dot $green$dot $blue$dot $cyan$dot $magenta$dot $black$dot \033[0m"
