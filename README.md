## Memory map

With reference to https://www.reddit.com/r/beneater/comments/doytpo/6502_project_memory_map/

| Chip | Range | Description |
| --- | --- | --- |
| RAM | `$0000` - `$00ff` | Zero page |
| RAM | `$0100` - `$01ff` | Stack |
| RAM | `$0200` - `$3fff` | General RAM |
| Open | `$4000` - `$5fff` | Not mapped to a device |
| 6522 | `$6000` | I/O Register B |
| 6522 | `$6001` | I/O Register A |
| 6522 | `$6002` | Data Direction Register B |
| 6522 | `$6003` | Data Direction Register A |
| 6522 | `$6004` | T1 Low Order Latches/Counter |
| 6522 | `$6005` | T1 High Order Counter |
| 6522 | `$6006` | T1 Low Order Latches |
| 6522 | `$6007` | T1 High Order Latches |
| 6522 | `$6008` | T2 Low Order Latches/Counter |
| 6522 | `$6009` | T2 High Order Counter |
| 6522 | `$600a` | Shift Register |
| 6522 | `$600b` | Auxiliary Control Register |
| 6522 | `$600c` | Peripheral Control Register |
| 6522 | `$600d` | Interrupt Flag Register |
| 6522 | `$600e` | Interrupt Enable Register |
| 6522 | `$600f` | I/O Register A sans Handshake |
| 6522 | `$6010` - `7fff` | Mirrors of the sixteen VIA registers |
| 28C256 | `$8000` - `$ffff` | ROM |

## Python rom
- ```python makerom.py```
- ```hexdump -C rom.bin```
- ```minipro -p AT28C256 -w rom.bin```
## ASM
```./build.sh```
```./deploy.sh```