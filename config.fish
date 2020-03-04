source ~/.fish_aliases
source ~/.fish_variables

if test -e ~/.fish_local_variables
  source ~/.fish_local_variables else
  echo did not load local variables
end
    
set fish_key_bindings fish_user_key_bindings
   
# /usr/local/bin/fish
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and . (pyenv init -|psub) 
# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc'; else; . '/Users/aron/Downloads/google-cloud-sdk/path.fish.inc'; end; end #   
#   if test "$TERM" = "dumb"
#       function fish_title; end
#   end
#   # emacs ansi-term support
#   if test -n "$EMACS"
#       set -x TERM eterm-color
#   end
#   
#   # this function may be required
#   function fish_title
#       true
#   end
function proxy_on
	# alias azscrew="corkscrew SEprivatezen.astrazeneca.net 9480"
	export http_proxy=SEprivatezen.astrazeneca.net:9480
	export {https,ftp,rsync,all}_proxy=$http_proxy
	export {HTTP,HTTPS,FTP,RSYNC,ALL}_PROXY=$http_proxy
	# set git http(s) proxy
	git config --global http.sslverify false
	git config --global http.proxy $http_proxy
	git config --global https.proxy $http_proxy

	export ssh_proxy='ProxyCommand corkscrew SEprivatezen.astrazeneca.net 9480 %h %p || ssh -W %h %p'
end

function proxy_off
	set -e http_proxy 
	set -e https_proxy 
	set -e ftp_proxy 
	set -e rsync_proxy 
	set -e all_proxy 

	git config --global --unset http.proxy
	git config --global --unset https.proxy
	git config --global --unset http.sslverify false

	set -e ssh_proxy
end

# proxy_on
