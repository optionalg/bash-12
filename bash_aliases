# ls
alias ll='ls -lh'
alias lz='ll -S'
alias lt='ll -t'
alias l='ll -CF'
alias la='ll -a'
alias lr='ll -R'

# disk
alias df='df -h'
alias du='du -h'

# apt
alias uu='sudo apt-get update -y && sudo apt-get upgrade && sudo apt-get autoremove'
alias listpackages='dpkg --get-selections'
alias showinstalled='listpackages | grep -v deinstall | grep '

# versioning
alias gitinit='git init && git add -A && git commit -a -m "first commit" && git config branch.master.remote origin && git config branch.master.merge refs/heads/master'
alias refreshgit='a=(*); for ((i=${#a[*]}; i>1; i--)); do j=$[RANDOM%i]; tmp=${a[$j]}; a[$j]=${a[$[i-1]]}; a[$[i-1]]=$tmp; done; for i in "${a[@]}"; do cd $i; echo -e "\n\nREPOSITORY: $i\n"; git pull; sleep 20; cd ..; done'
alias refreshsvn='a=(*); for ((i=${#a[*]}; i>1; i--)); do j=$[RANDOM%i]; tmp=${a[$j]}; a[$j]=${a[$[i-1]]}; a[$[i-1]]=$tmp; done; for i in "${a[@]}"; do cd $i; echo -e "\n\nREPOSITORY: $i\n"; svn up;   sleep 2; cd ..; done'

# misc.
alias dnes='egrep -h "$(date +"%m/%d|%b* %d")" /usr/share/calendar/*'
alias lamewav='for s in *.wav; do lame -b 320 "$s" "${s%.wav}.mp3"; done'
alias mirrorsite='wget -m --html-extension --convert-links --restrict-file-names=windows -e robots=off -U "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)"'
alias flushdns='sudo /etc/init.d/nscd restart'
alias flushcache='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches" && free -m'
alias scansite='sudo nmap -O -v -sSU'
alias path='echo -e ${PATH//:/\\n}'
alias setterm='gconftool --type string --set /desktop/gnome/applications/terminal/exec terminator'
alias setnemo='xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search'
alias mtpzen='sudo mtpfs -o allow_other ~/ZEN'
alias showhiddenstartapps='sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop'
alias fixlocales='sudo apt-get install language-pack-en-base language-pack-en language-pack-cs language-pack-cs-base && sudo locale-gen en_US en_US.UTF-8 && sudo locale-gen cs_CZ cs_CZ.UTF-8 && sudo dpkg-reconfigure locales'
alias refreshfonts='sudo fc-cache -f -v'
alias myhistory='history |tr "\011" " " |tr -s " "| cut -d" " -f3 |sort |uniq -c |sort -nbr |head -n10'

# reload bash
alias reload='. ~/.bashrc'

# system info
function sysinfo () {
    echo -e "${RED_FG}=================== System Information ====================$NC"
    echo -e "- ${RED_FG}You are logged on host:$NC $HOSTNAME"
    echo -ne "- ${RED_FG}Kernel name:$NC "; uname -s
    echo -ne "- ${RED_FG}Kernel release:$NC "; uname -r
    echo -ne "- ${RED_FG}Kernel version:$NC "; uname -v
    echo -ne "- ${RED_FG}Machine hardware name:$NC "; uname -m 
    echo -ne "- ${RED_FG}Processor:$NC "; uname -p
    echo -ne "- ${RED_FG}Hardware platform:$NC "; uname -i
    echo -ne "- ${RED_FG}OS:$NC "; uname -o
    echo -ne "- ${RED_FG}Current date:$NC "; date
    echo -ne "\n${RED_FG}Machine stats:$NC"; uptime
    echo -e "\n${RED_FG}==================== Users logged on =====================$NC "; w | tail -n 2
    echo -e "\n${RED_FG}================== Memory stats (in MB) ==================$NC "; free -m
    echo -e "\n${RED_FG}======================= Disc stats =======================$NC "; df -h
    echo -e "\n${RED_FG}==================== Users of system =====================$NC ";
    echo -e "UID\tGUID\tShell\t\tUser\t\tName\t\tHome"
}
