MicroPython with frozen module for VCC_GND_F407VE

- Submodule: third_party/micropython
- Board: VCC_GND_F407VE (vendored definition)
- Frozen module: mymodule

Build:

```bash
./scripts/build_stm32_vcc_gnd_f407ve.sh
```

Deploy (DFU):

```bash
./scripts/build_stm32_vcc_gnd_f407ve.sh deploy
```

Use on board:

```python
import mymodule
print(mymodule.hello())
```