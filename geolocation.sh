
#!bin/bash/
#Small GEOLOCATION TOOL


# Color var
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_MAGENTA=$ESC_SEQ"35;01m"
COL_CYAN=$ESC_SEQ"36;01m"

#welcome function
function welcome()
{

  echo ""
  echo ""

  #ipgeo ascii art
  chmod +x logo.sh
  ./logo.sh
  echo ""
  echo "Choose a number down below..."
  echo ""
  sleep 0.1
  echo -e "$COL_RED[1]$COL_RESET What is my IP address? "
  #echo ""
  sleep 0.1
  echo -e "$COL_RED[2]$COL_RESET IP Look-up / Geo-location  "
  #echo ""
  sleep 0.1
  echo -e "$COL_RED[3]$COL_RESET Whois "
  #echo ""
  sleep 0.1
  echo -e "$COL_RED[4]$COL_RESET Port scanner "
  #echo ""
  sleep 0.1
  echo -e "$COL_RED[5]$COL_RESET IOT BOTNET SCANNER" #using https://scanme.iot.def.com
  #echo ""
  sleep 0.1
  echo -e "$COL_RED[6]$COL_RESET Active Hosts scanner LAN"
  sleep 0.1
  #Work in progress
  #echo -e "$COL_RED[7]$COL_RESET Active Hosts scanner WLAN"
  echo ""
  echo -e "$COL_CYAN>> Type '--help' for help$COL_RESET"
  sleep 0.1
  echo -e "$COL_CYAN>> Press 'q' to quit$COL_RESET";echo "";sleep 0.2

}

function nmapscans()
{

  #list of nmap scans
  python asciiart.py
  echo ""
  echo -e "$COL_RED[1]$COL_RESET Intense scan"
  #nmap -T4 -A -v $insertip
  sleep 0.1
  echo -e "$COL_RED[2]$COL_RESET Intense scan + TCP Ports"
  #nmap -p 1-65535 -T4 -A -v $insertip
  sleep 0.1
  echo -e "$COL_RED[3]$COL_RESET Intense scan + UDP ports"
  #nmap -sS -sU -T4 -A -v $insertip
  sleep 0.1
  echo -e "$COL_RED[4]$COL_RESET Intense scan, no ping"
  #nmap -T4 -A -v -Pn $insertip
  sleep 0.1
  echo -e "$COL_RED[5]$COL_RESET Quick scan"
  #nmap -T4 -F $insertip
  sleep 0.1
  echo -e "$COL_RED[6]$COL_RESET Quick scan + OS Detection"
  #nmap -sV -T4 -O -F -version-light $insertip
  sleep 0.1
  echo -e "$COL_RED[7]$COL_RESET Quick traceroute"
  #nmap -sn -traceroute $insertip
  sleep 0.1
  echo -e "$COL_RED[8]$COL_RESET Regular scan (RECOMENDED FOR NOOB USERS)"
  #nmap $insertip
  sleep 0.1
  echo -e "$COL_RED[9]$COL_RESET Slow Comprehensive scan (Going to take ages)"
  #nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 -script "defualt or (discovery and safe)" $insertip
  sleep 0.1
  echo -e "$COL_RED[10]$COL_RESET Ping scan"
  #nmap -sn $insertip
  echo ""
  echo -e "$COL_CYAN>> Type '--help' for help$COL_RESET"
  sleep 0.1
  echo -e "$COL_CYAN>> Press 'b' to go back $COL_RESET"
  sleep 0.1
  echo -e "$COL_CYAN>> Press 'o' to view options $COL_RESET"
  echo ""

}

#Shows about information on each tool
function about() {
  echo ""
  echo -e "$COL_YELLOW --What is my IP address?$COL_RESET - Show your current Public IP"
  echo -e "$COL_YELLOW --IP Look-up / Geo-location$COL_RESET - Gives Look-up info on Inputted IP"
  echo -e "$COL_YELLOW --Whois$COL_RESET - Give Whois info on Inputted IP "
  echo -e "$COL_YELLOW --Port scanner$COL_RESET - Scans for open ports / Bypass Firewall "
  echo -e "$COL_YELLOW --IOT BOTNET SCANNER$COL_RESET - Scans for ports that botnets can exploit "
  echo -e "$COL_YELLOW --Active Hosts scanner$COL_RESET - Scans for active hosts on network "
  echo ""
}
function hlp() {
  echo ""
  echo " --about - Shows information about what each option does "
  echo ""
  echo " --about[option] - Shows information on a specific tool instead of them all "
  echo ""
  echo "EXAMPLES:"
  echo " ex.--abouttwo - (IP Look-up - Gives Look-up info on Inputted IP)"
  echo ""
}

#Shows info about portscannertools
function portscanhelp() {
  echo ""
  echo ""
  echo "--about - Show information about what each option does "
  echo ""
  echo "--about[option] - Shows information on a specfic tool instead of them all"
  echo ""
  echo "EXAMPLES:"
  echo " ex. --abouttwo - (nmap -p 1-65535 -T4 -A -v ) "
  echo ""
  echo "Normally Nmap scans a list of 1000 most common protocols,"
  echo "but instead we will in this example scan everything from port 1 to 65535 (max)."
  echo "The 1000 most common protocols listing can be found in the file called nmap-services."
  echo ""
  echo ""
}
function portscanabout() {
  echo ""
  echo ""
  #Intense scan
  echo -e "$COL_RED Intense scan $COL_RESET ( nmap -T4 -A -v)"
  echo ""
  echo " Should be reasonable quick, scan the most common TCP ports."
  echo " It will make an effort in determining the OS type"
  echo " and what services and their versions are running."
  echo ""
  echo ""

  #Intense scan + TCP ports
  echo -e "$COL_RED Intense scan + TCP $COL_RESET ( nmap -p 1-65535 -T4 -A -v <target> )"
  echo ""
  echo " Leave no TCP ports unchecked."
  echo " Normally Nmap scans a list of 1000 most common protocols, but instead we will in "
  echo " this example scan everything from port 1 to 65535 (max). The 1000 most "
  echo " common protocols listing can be found in the file called nmap-services."
  echo ""
  echo ""

  #Intense scan + UDP
  echo -e "$COL_RED Intense scan + UDP $COL_RESET ( nmap -p 1-65535 -T4 -A -v <target> )"
  echo ""
  echo " Same as the regular Intense scan, just that we will also scan UDP ports (-sU)."
  echo " The -sS option is telling Nmap that it should also scan TCP ports using SYN packets."
  echo " Because this scan includes UDP ports this explicit definition of -sS is necessary."
  echo ""
  echo ""

  #Intense scan, no ping
  echo -e "$COL_RED Intense scan, no ping $COL_RESET ( nmap -T4 -A -v -Pn <target> )"
  echo ""
  echo " Just like the other intense scans, however this will assume the host is up. "
  echo " Usefull if the target is blocking ping request and you already know the target is up."
  echo ""
  echo ""

  #Quick scan
  echo -e "$COL_RED Quick scan $COL_RESET ( nmap -T4 -F <target> )"
  echo ""
  echo " Scan faster than the intense scan by limiting the number of TCP ports"
  echo " scanned to only the top 100 most common TCP ports."
  echo ""
  echo ""

  #Quick scan + OS Detection
  echo -e "$COL_RED Quick scan + OS Detection $COL_RESET ( nmap -sV -T4 -O -F -version-light <target> )"
  echo ""
  echo " Add a little bit of version and OS detection and you got the Quick scan plus."
  echo ""
  echo ""

  #Quick scan traceroute
  echo -e "$COL_RED Quick scan traceroute $COL_RESET ( nmap -sn -traceroute <target> )"
  echo ""
  echo " Use this option when you need to determine hosts and routers in a network scan."
  echo " It will traceroute and ping all hosts defined in the target."
  echo ""
  echo ""

  #Regular scan
  echo -e "$COL_RED Regular scan $COL_RESET ( nmap <target> )"
  echo ""
  echo " Default everything. This means it will issue a TCP SYN scan for the most "
  echo " common 1000 TCP ports, using ICMP Echo request (ping) for host detection."
  echo ""
  echo ""

  #Slow Comprehensive
  echo -e "$COL_RED Slow Comprehensive scan $COL_RESET "
  echo ""
  echo " (nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 -script 'defualt or (discovery and safe)' <target> )"
  echo ""
  echo " This scan has a whole bunch of options in it and it may seem daunting to"
  echo " understand at first. It is however not so complicated once you take a closer"
  echo " look at the options. The scan can be said to be a “Intense scan plus UDP” plus some extras features."
  echo ""
  echo " It will put a whole lot of effort into host detection, not giving up if "
  echo " the initial ping request fails. It uses three different protocols in order to "
  echo " detect the hosts; TCP, UDP and SCTP."
  echo ""
  echo " If a host is detected it will do its best in determining what OS, services "
  echo " and versions the host are running based on the most common TCP and UDP services. "
  echo " Also the scan camouflages itself as source port 53 (DNS)."
  echo ""
  echo ""

  #Ping scan
  echo -e "$COL_RED Ping scan $COL_RESET ( nmap -sn <target> )"
  echo ""
  echo " Do only a ping only on the target, no port scan."
  echo ""
  echo ""





}


#FUNCTIONS FOR --about [option]
function Intensescan() {
  echo ""
  echo ""
  #Intense scan
  echo -e "$COL_RED Intense scan $COL_RESET ( nmap -T4 -A -v)"
  echo ""
  echo " Should be reasonable quick, scan the most common TCP ports."
  echo " It will make an effort in determining the OS type"
  echo " and what services and their versions are running."
  echo ""
  echo ""
}
function Intensetcpscan() {
  echo ""
  echo -e "$COL_RED Intense scan + TCP $COL_RESET ( nmap -p 1-65535 -T4 -A -v <target> )"
  echo ""
  echo " Leave no TCP ports unchecked."
  echo " Normally Nmap scans a list of 1000 most common protocols, but instead we will in "
  echo " this example scan everything from port 1 to 65535 (max). The 1000 most "
  echo " common protocols listing can be found in the file called nmap-services."
  echo ""
  echo ""
}
function Intenseudpscan() {
  echo ""
  echo -e "$COL_RED Intense scan + UDP $COL_RESET ( nmap -p 1-65535 -T4 -A -v <target> )"
  echo ""
  echo " Same as the regular Intense scan, just that we will also scan UDP ports (-sU)."
  echo " The -sS option is telling Nmap that it should also scan TCP ports using SYN packets."
  echo " Because this scan includes UDP ports this explicit definition of -sS is necessary."
  echo ""
  echo ""
}
function Intensenoping() {
  echo ""
  echo -e "$COL_RED Intense scan, no ping $COL_RESET ( nmap -T4 -A -v -Pn <target> )"
  echo ""
  echo " Just like the other intense scans, however this will assume the host is up. "
  echo " Usefull if the target is blocking ping request and you already know the target is up."
  echo ""
  echo ""
}
function Quickscan() {
  echo ""
  echo -e "$COL_RED Quick scan $COL_RESET ( nmap -T4 -F <target> )"
  echo ""
  echo " Scan faster than the intense scan by limiting the number of TCP ports"
  echo " scanned to only the top 100 most common TCP ports."
  echo ""
  echo ""
}
function QuickscanandOS() {
  echo ""
  echo -e "$COL_RED Quick scan + OS Detection $COL_RESET ( nmap -sV -T4 -O -F -version-light <target> )"
  echo ""
  echo " Add a little bit of version and OS detection and you got the Quick scan plus."
  echo ""
  echo ""
}
function Quickscantraceroute() {
  echo ""
  echo -e "$COL_RED Quick scan traceroute $COL_RESET ( nmap -sn -traceroute <target> )"
  echo ""
  echo " Use this option when you need to determine hosts and routers in a network scan."
  echo " It will traceroute and ping all hosts defined in the target."
  echo ""
  echo ""
}
function Regularscan() {
  echo ""
  echo -e "$COL_RED Regular scan $COL_RESET ( nmap <target> )"
  echo ""
  echo " Default everything. This means it will issue a TCP SYN scan for the most "
  echo " common 1000 TCP ports, using ICMP Echo request (ping) for host detection."
  echo ""
  echo ""
}
function Slowcompscan() {
  echo ""
  echo -e "$COL_RED Slow Comprehensive scan $COL_RESET "
  echo ""
  echo " (nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 -script 'defualt or (discovery and safe)' <target> )"
  echo ""
  echo " This scan has a whole bunch of options in it and it may seem daunting to"
  echo " understand at first. It is however not so complicated once you take a closer"
  echo " look at the options. The scan can be said to be a “Intense scan plus UDP” plus some extras features."
  echo ""
  echo " It will put a whole lot of effort into host detection, not giving up if "
  echo " the initial ping request fails. It uses three different protocols in order to "
  echo " detect the hosts; TCP, UDP and SCTP."
  echo ""
  echo " If a host is detected it will do its best in determining what OS, services "
  echo " and versions the host are running based on the most common TCP and UDP services. "
  echo " Also the scan camouflages itself as source port 53 (DNS)."
  echo ""
  echo ""
}
function Pingscan() {
  echo ""
  echo -e "$COL_RED Ping scan $COL_RESET ( nmap -sn <target> )"
  echo ""
  echo " Do only a ping only on the target, no port scan."
  echo ""
  echo ""
}


#FUNCTIONS for active hosts scanner wlan
#function wlanhostscanfunc() {
#  echo ""
  #insert asciart3 here
#  echo ""

#  echo -e "$COL_YELLOW  >> Type in your wlan IP but change the last number to '0/24'$COL_RESET"
#  echo ""
#  sleep 0.1
#  echo -e "$COL_GREEN ex. 192.168.1.0/24 the '0/24' makes sure that it scans"
#  sleep 0.1
#  echo -e "     IP addresses from '192.168.1.0' - '192.168.1.255'$COL_RESET"
#  sleep 0.1
#  echo ""
#  echo -e "$COL_GREEN     Not sure what your lan IP is? Type 'mywlanip'$COL_RESET"
#  echo ""
#  echo -e "$COL_CYAN>> Press 'b' to go back $COL_RESET"
#  echo -e "$COL_CYAN>> Type 'startscan' to begin$COL_RESET"
#  echo -e "$COL_CYAN>> Press 'h' If you didn't understand ex. -_-$COL_RESET"
#  echo ""
#}

#Other

function hostscanfunc() {
  echo ""
  python asciiart2.py
  echo ""
  echo -e "$COL_YELLOW  >> Type in your lan IP but change the last number to '0/24'$COL_RESET"
  echo ""
  sleep 0.1
  echo -e "$COL_GREEN ex. 192.168.1.0/24 the '0/24' makes sure that it scans "
  sleep 0.1
  echo -e "     IP addresses from '192.168.1.0' - '192.168.1.255'$COL_RESET"
  sleep 0.1
  echo ""
  echo -e "$COL_GREEN     Not sure what your lan IP is? Type 'mylanip'$COL_RESET"
  echo ""
  echo -e "$COL_CYAN>> Press 'b' to go back $COL_RESET"
  echo -e "$COL_CYAN>> Type 'startscan' to begin$COL_RESET"
  echo -e "$COL_CYAN>> Press 'h' If you didn't understand ex. -_-$COL_RESET"
  echo ""
}

function downloads() {
  echo ""
  echo ""
  echo -e "$COL_GREEN...Installing nmap if you haven't already... $COL_RESET"
  sudo apt-get install nmap
  echo -e "$COL_GREEN...Installing arp-scan if you haven't already... $COL_RESET"
  sudo apt-get install arp-scan
  echo -e "$COL_GREEN...Installing fping if you haven't already... $COL_RESET"
  sudo apt-get install fping
  echo -e "$COL_GREEN...Installing whois if you haven't already... $COL_RESET"
  sudo apt-get install whois

}

#Executes start of code

publicip="$(curl ifconfig.co)"
downloads
clear
welcome

#publicip="$(dig +short myip.opendns.com @resolver1.opendns.com)"

#could also use

#If the top one is slower make sure to uncomment it

#publicip="$(curl ifconfig.me)"
#publicip="$(curl icanhazip.com)"
#publicip="$(curl ipecho.net/plain")
#publicip="$(curl ifconfig.co)"

#they all show public/wan ip


#Shows lan ip
lanip="$(hostname -I)"


#If statement for options

#CREATE A WHILE LOOP FROM THIS

while : [ $userinput != 1 ] || [ $userinput != 2 ] ||
        [ $userinput != 3 ] || [ $userinput != "q" ] ||
        [ $userinput != "--about"] || [ $userinput != "--help" ]
do

  read -p "Please select an option: " userinput
  echo -e "Selected: $COL_GREEN$userinput$COL_RESET"

  if [ -z $userinput ]
  then
  echo ""
  echo -e "$COL_RED >> Unkown Command type '--help'$COL_RESET"
  echo ""

  #IF USER USES --about[option]
  elif [ $userinput == "--aboutone" ]
  then
    echo ""
    echo -e "$COL_YELLOW --What is my IP address?$COL_RESET - Show your current Public IP"
    echo ""
  elif [ $userinput == "--abouttwo" ]
  then
    echo ""
    echo -e "$COL_YELLOW --IP Look-up / Geo-location$COL_RESET - Gives Look-up info on Inputted IP"
    echo ""
  elif [ $userinput == "--aboutthree" ]
  then
    echo ""
    echo -e "$COL_YELLOW --Whois$COL_RESET - Give Whois info on Inputted IP "
    echo ""
  elif [ $userinput == "--aboutfour" ]
  then
    echo ""
    echo -e "$COL_YELLOW --Port scanner$COL_RESET - Scans for open ports / Bypass Firewall "
    echo ""
  elif [ $userinput == "--aboutfive" ]
  then
    echo ""
    echo -e "$COL_YELLO --IOT BOTNET SCANNER$COL_RESET - Scans for ports that botnets can exploit "
    echo ""

  #VIEW PUBLIC IP
  elif [ $userinput == 1 ]
  then
    echo ""
    echo -e "Your Public IP is:$COL_GREEN $publicip $COL_RESET"; echo ""

  #HELP INFORMATION
  elif [ $userinput == "--help" ]
  then
    hlp

  #ABOUT TOOLS INFORMATION
  elif [ $userinput == "--about" ]
  then
    about

  #GEO LOCATION
  elif [ $userinput == 2 ]
  then
    echo ""
    #fix later *EDIT* FIXED
    read -p "Plese insert a valid IP: "  userinputip
    echo -e "$COL_CYAN>> Please wait..$COL_RESET"
    echo ""
    sleep 1
    firefox "http://www.ip-tracker.org/locator/ip-lookup.php?ip=$userinputip"

  #WHO INFORMATION
  elif [ $userinput == 3 ]
  then
    clear
    python asciiart3.py
    echo ""
    echo -e "$COL_CYAN >> Press 'b' to go back$COL_RESET"
    echo ""
    echo " Would you like see whois through CLI or Web?"
    echo -e "$COL_CYAN Type 'cli' or 'web' $COL_RESET"
    echo ""
    while : [ $choice != "cli" ] || [ $choice != "CLI" ]
    do
      read -p " host@whoisscan: " choice
      if [ -z $choice ]
      then
        echo ""
        echo -e "$COL_RED I don't understand that.$COL_RESET"
        echo ""
      elif [ $choice == "cli" ] || [ $choice == "CLI" ]
      then
        echo ""
        read -p " Plese insert a valid IP: " userinputip
        echo ""
        echo -e "$COL_CYAN >> Please wait...$COL_RESET"
        echo ""
        sudo whois $userinputip
        echo ""
        read -p "Press enter to continue.."
        clear
        welcome
        break
      elif [ $choice == "Web" ] || [ $choice == "web" ]
      then
        echo ""
        read -p " Plese insert a valid IP: " userinputip
        echo ""
        echo -e "$COL_CYAN >> Please wait...$COL_RESET"
        echo ""
        firefox "https://www.whois.com/whois/$userinputip" &
        firefox "https://whois.domaintools.com/$userinputip" &
        firefox "https://who.is/whois-ip/ip-address/$userinputip"
        echo ""
      elif [ $choice == "b" ]
      then
        clear
        welcome
        break
      else
        echo ""
        echo -e "$COL_RED I don't understand that.$COL_RESET"
        echo ""
      fi
    done

  #Start of port scanner
  elif [ $userinput == 4 ]
  then
    clear
    nmapscans
    echo ""
    #Start of While loop for port scanner
    #didn't need to do != this many times but i like the color orange...
    while : [ $portscanip != 1 ] || [ $portscanip != 2 ] || [ $portscanip != 3 ] ||
            [ $portscanip != 4 ] || [ $portscanip != 5 ] || [ $portscanip != 6 ] ||
            [ $portscanip != 7 ] || [ $portscanip != 8 ] || [ $portscanip != 9 ] ||
            [ $portscanip != "b" ] || $portscanip != "--help" ] || [ $portscanip != "--about" ] ||
            [ $portscanip != 10 ]
    do
      read -p "Please select an option: " portscanip
      echo -e "Selected: $COL_GREEN$portscanip$COL_RESET"

      if [ -z $portscanip ]
      then
        echo ""
        echo -e "$COL_RED Unknown Command type '--help'$COL_RESET"
        echo ""

      #IF user inputs --about [option]
      elif [ $portscanip == "--aboutone" ]
      then
        Intensescan
      elif [ $portscanip == "--abouttwo" ]
      then
        Intensetcpscan
      elif [ $portscanip == "--aboutthree" ]
      then
        Intenseudpscan
      elif [ $portscanip == "--aboutfour" ]
      then
        Intensenoping
      elif [ $portscanip == "--aboutfive" ]
      then
        Quickscan
      elif [ $portscanip == "--aboutsix" ]
      then
        QuickscanandOS
      elif [ $portscanip == "--aboutseven" ]
      then
        Quickscantraceroute
      elif [ $portscanip == "--abouteight" ]
      then
        Regularscan
      elif [ $portscanip == "--aboutnine" ]
      then
        Slowcompscan
      elif [ $portscanip == "--aboutten" ]
      then
        Pingscan

      #Shows help information while in port scanner
      elif [ $portscanip == "--help" ]
      then
        portscanhelp

      #Show about information while in port scanner
      elif [ $portscanip == "--about"  ]
      then
        portscanabout

      #Breaks while loop incase user wishes to go back
      elif [ $portscanip == "b" ]
      then
        clear
        welcome
        break

      #Intense Scan
      elif [ $portscanip == 1 ]
      then
        echo ""
        read -p "Please enter valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Starting Intense scan..$COL_RESET"
        echo ""
        iscan="$(sudo nmap -T4 -A -v $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Intense scan /all TCP ports
      elif [ $portscanip == 2 ]
      then
        echo ""
        read -p "Please enter valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Starting Intense scan + TCP ports..$COL_RESET"
        echo ""
        iscan="$(sudo nmap -p 1-65535 -T4 -A -v $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Intense scan + UDP ports
      elif [ $portscanip == 3 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Stating Intense scan + UDP ports... $COL_RESET"
        iscan="$(sudo nmap -sS -sU -T4 -A -v $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      elif [ $portscanip == "o" ]
      then
        echo ""
        clear
        nmapscans

      #Intense scan, no ping
      elif [ $portscanip == 4 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Starting Intense scan, no ping...$COL_RESET"
        iscan="$(sudo nmap -T4 -A -v -Pn $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Quick scan
      elif [ $portscanip == 5 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Starting Quick scan..."
        iscan="$(sudo nmap -T4 -F $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      elif [ $portscanip == 6 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Starting Quick scan + OS Detection...$COL_RESET"
        iscan="$(sudo nmap -sV -T4 -O -F -version-light $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Quick traceroute
      elif [ $portscanip == 7 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Staring Quick traceroute...$COL_RESET"
        iscan="$(sudo nmap -sn -traceroute $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Regular scan
      elif [ $portscanip == 8 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Stating Regular scan...$COL_RESET"
        iscan="$(sudo nmap $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Slow Comprehensive Scan
      elif [ $portscanip == 9 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Starting Slow Comperhensive Scan...$COL_RESET"
        echo ""
        iscan="$(sudo nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 -script "defualt or (discovery and safe)" $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      #Ping scan
      elif [ $portscanip == 10 ]
      then
        echo ""
        read -p "Please enter a valid IP: " validip
        echo ""
        echo -e "$COL_YELLOW Staring Ping scan...$COL_RESET"
        echo ""
        iscan="$(sudo nmap -sn $validip)"
        echo -e "$COL_YELLOW$iscan$COL_RESET"
        echo ""
        read -p "Press enter to continue..."
        echo ""
        nmapscans

      else
        echo ""
        echo -e "$COL_RED Unknown Command type '--help'$COL_RESET"
        echo ""

      fi
    done

  #IOT BOTNET SCANNER
  elif [ $userinput == 5 ]
  then
    echo ""
    echo -e "$COL_YELLOW Please wait patiently...$COL_RESET"
    echo ""
    sleep 2
    firefox "https://scanme.iotdef.com/"

  #Active Hosts scan
  elif [ $userinput == 6 ]
  then
    clear
    hostscanfunc
    while : [ $useracthost != "mylanip" ]
    do
      echo ""
      read -p "host@activescan: " useracthost
      echo ""
      if [ -z $useracthost ]
      then
        echo ""
        echo -e "$COL_RED Unknown comand $COL_RESET"
      elif [ $useracthost == "mylanip" ]
      then
        echo -e "Your LAN IP is: $COL_GREEN $lanip $COL_RESET"
        echo ""
      elif [ $useracthost == "b" ]
      then
        clear
        welcome
        break
      elif [ $useracthost == "h" ]
      then
        echo ""
        echo -e "$COL_CYAN REPLACE THE LAST NUMBER OF YOUR LAN IP WITH '0/24'$COL_RESET"
        echo ""
      elif [ $useracthost == "startscan" ]
      then
        echo ""
        read -p "Please enter lan IP: " hostscan
        echo ""
        echo -e "$COL_MAGENTA Gathering information..$COL_RESET"
        echo -e "$COL_MAGENTA This may take a moment...$COL_RESET"
        sleep 2
        echo ""
        echo -e "$COL_GREEN Starting Active Hosts Scan...$COL_RESET"


        #variable for nmap active host scan
        nmaphscan="$(sudo nmap -sn $hostscan)"
        arps="$(sudo arp-scan -l)"
        morearp="$(sudo arp)"
        #fpingscan="$(fping -a -g 192.168.1.0/24 2>/dev/null)"
        fpingscanbetter="$(sudo fping -c1 -gds $hostscan 2>&1| egrep -v "ICMP|xmt")"

        echo ""
        echo ""
        echo -e "$COL_YELLOW $nmaphscan $COL_RESET"
        echo ""
        sleep 1
        echo -e "$COL_GREEN Arp Scan..$COL_RESET "
        echo ""
        echo -e "$COL_CYAN $arps $COL_RESET"
        echo ""
        echo -e "$COL_CYAN $morearp $COL_RESET"
        echo ""
        sleep 1
        echo -e "$COL_GREEN fping Scan..$COL_RESET "
        echo ""
        echo -e "$COL_RED $fpingscanbetter $COL_RESET"
        echo ""
        read -p "Press enter to continue.."
        clear
        hostscanfunc
      else
        echo ""
        echo -e "$COL_RED Unknown command $COL_RESET"
      fi
    done

  #QUIT PROGRAM
  elif [ "$userinput" == "q" ]
  then
    echo ""
    echo -e "$COL_YELLOW Quitting...$COL_RESET"
    echo ""
    sleep 0.1
    exit 1

  else
    echo ""
    echo -e "$COL_RED >> Unknown Command type '--help' $COL_RESET"
    echo ""
  fi
done
