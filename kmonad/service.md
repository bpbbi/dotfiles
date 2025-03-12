# Service for systemd to autostart kmonad instance.
After installing configs do:
```bash
sudo mkdir /etc/kmonad/
sudo ln -s ~/.config/kmonad/config.kbd /etc/kmonad/
sudo cp kmonad.service /etc/systemd/user/
systemctl -user enable kmonad.service 
systemctl -user start kmonad.service 
# to check if instance start correctly
journalctl -ex --user
```
