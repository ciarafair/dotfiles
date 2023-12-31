#! /usr/bin/env bash

os_name=$(uname -s)

if [ "$os_name" = "Darwin" ]; then
	echo "Updating Homebrew..."
	brew bundle
	brew update && brew upgrade
	echo "Done"
	break
fi

if [ "$os_name" = "Linux" ]; then
	if [ -f /etc/os-release ]; then
		source /etc/os-release
	if [ "$ID" = "ubuntu" ] || [ "$ID" = "debian" ]; then
		echo "Updating APT packages..."
		sudo apt install zsh tmux curl
 		chsh -s /bin/zsh
		sudo apt update && sudo apt upgrade -y
		echo "Done"
		break
	elif [ "$ID" = "centos" ]; then
		echo "Updating YUM packages..."
		sudo yum install zsh tmux curl
 		chsh -s /bin/zsh
		sudo yum update -y
		echo "Done"
		break
	elif [ "$ID" = "fedora" ]; then
		echo "Updating DNF packages..."
		sudo dnf install zsh tmux curl
 		chsh -s /bin/zsh
		sudo dnf update -y
		echo "Done"
		break
	else
		echo "Unsupported Linux distribution: $ID"
		break
	fi
	else
		echo "Could not determine the Linux distribution."
		break
	fi
fi
