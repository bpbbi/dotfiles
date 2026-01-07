# Service for systemd to autostart kmonad instance.
After installing configs do:
```bash
sudo mkdir /etc/kmonad/
sudo ln -s ~/.config/kmonad/config.kbd /etc/kmonad/
sudo cp kmonad.service /etc/systemd/user/
systemctl --user enable kmonad.service 
systemctl --user start kmonad.service 
# to check if instance start correctly
journalctl -ex --user
```
In there is no input alias should add to /etc/udev/rules.d/80-btkeyboard.rules that where name is your keyboard name
```
KERNEL=="event[0-9]*", SUBSYSTEM=="input", ATTRS{name}=="BT5.0 KB Keyboard", ACTION=="add", SYMLINK+="input/btkeyboard"
```
