# Set default node version
# See: https://github.com/jorgebucaran/nvm.fish#nvm_default_version
set --universal nvm_default_version lts

if status is-interactive && set --query nvm_default_version && ! set --query nvm_current_version 
	nvm use --silent $nvm_default_version 
end 
