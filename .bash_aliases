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

# ping Google Public DNS
alias pingoo='ping -i.25 8.8.8.8'

# git / svn
alias gitinit='git init && git add -A && git commit -a -m "first commit" && git config branch.master.remote origin && git config branch.master.merge refs/heads/master'
alias refreshgit='a=(*); for ((i=${#a[*]}; i>1; i--)); do j=$[RANDOM%i]; tmp=${a[$j]}; a[$j]=${a[$[i-1]]}; a[$[i-1]]=$tmp; done; for i in "${a[@]}"; do cd $i; echo -e "\n\nREPOSITORY: $i\n"; git pull; sleep 5; cd ..; done'
alias refreshsvn='a=(*); for ((i=${#a[*]}; i>1; i--)); do j=$[RANDOM%i]; tmp=${a[$j]}; a[$j]=${a[$[i-1]]}; a[$[i-1]]=$tmp; done; for i in "${a[@]}"; do cd $i; echo -e "\n\nREPOSITORY: $i\n"; svn up;   sleep 1; cd ..; done'
alias gcl='git clone'

# misc.
alias dnes='egrep -h "$(date +"%m/%d|%b* %d")" /usr/share/calendar/*'
alias lamewav='for s in *.wav; do lame -b 320 "$s" "${s%.wav}.mp3"; done'
alias mirrorsite='wget -m --html-extension --convert-links --restrict-file-names=windows -e robots=off -U "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)"'
alias flushdns='sudo /etc/init.d/nscd restart'
alias flushcache='sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches" && free -m'
alias scansite='sudo nmap -O -v -sSU'
alias path='echo -e ${PATH//:/\\n}'
alias hour='while true; do clear; echo "========"; date +"%r"; echo "========"; sleep 1; done'
alias clock='cal; echo; while true; do echo -ne "\b\b\b\b\b\b\b\b\b\b\b"; echo -n `date +"%r"`; sleep 1; done'
alias setterm='gconftool --type string --set /desktop/gnome/applications/terminal/exec terminator'
alias setnemo='xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search'
alias mtpzen='sudo mtpfs -o allow_other ~/ZEN'
alias showhiddenstartapps='sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop'
alias fixlocales='sudo apt-get install language-pack-en-base language-pack-en language-pack-cs language-pack-cs-base && sudo locale-gen en_US en_US.UTF-8 && sudo locale-gen cs_CZ cs_CZ.UTF-8 && sudo dpkg-reconfigure locales'
alias vdiuuid='VBoxManage internalcommands sethduuid'
alias refreshfonts='sudo fc-cache -f -v'
alias myhistory='history |tr "\011" " " |tr -s " "| cut -d" " -f3 |sort |uniq -c |sort -nbr |head -n10'
alias su='sudo -i'
alias mem='free -mlt'
alias mymemory='ps auxf | sort -nr -k 4 | head -10'

# reload bash
alias reload='. ~/.bashrc'
