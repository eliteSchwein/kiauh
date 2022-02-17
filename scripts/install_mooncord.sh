install_MoonCord(){
    source_kiauh_ini
    #MoonCord main installation
    MoonCord_setup
}

MoonCord_setup(){
  source_kiauh_ini
  status_msg "Downloading MoonCord ..."
  #force remove existing MoonCord dir
  [ -d $MOONCORD_DIR ] && rm -rf $$MOONCORD_DIR
  #clone into fresh MoonCord dir
  cd ${HOME} && git clone $MOONCORD_REPO
  ok_msg "Download complete!"
  status_msg "Installing MoonCord ..."
  cd $MOONCORD_DIR
  bash $MOONCORD_DIR/scripts/install.sh --config_path="$klipper_cfg_loc"
  echo; ok_msg "MoonCord successfully installed!"
}