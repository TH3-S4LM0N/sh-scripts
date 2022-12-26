function update
    set start_dir (pwd)
    
    # update all packages
    yay -Syu
    yay --clean
    flatpak update
        
    cd $start_dir
end