from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


@annotation
def level_data(memory, addr):
    DataBlock(memory, addr, format="p", amount=2)
    
    entry_table_addr = memory.word(addr)
    layout_table_addr = memory.word(addr + 2)
    memory.addLabel(entry_table_addr, f"level_{memory.bankNumber:02x}_entry_table")
    memory.addLabel(layout_table_addr, f"level_{memory.bankNumber:02x}_layout_table")

    entry_count = memory.byte(entry_table_addr - 1)
    DataBlock(memory, entry_table_addr, format="p", amount=entry_count)
    for n in range(entry_count):
        entry_ptr = memory.word(entry_table_addr + n * 2)
        memory.addLabel(entry_ptr, f"level_{memory.bankNumber:02x}_entry_{n:02x}")

        if not memory[entry_ptr]:
            DataBlock(memory, entry_ptr, format="bbwwwwwwp", amount=1)

    layout_count = 0
    while layout_count == 0 or memory.getLabel(layout_table_addr + layout_count * 3) is None:
        layout_addr = memory.word(layout_table_addr + layout_count * 3)
        memory.addLabel(layout_addr, f"level_{memory.bankNumber:02x}_layout_{layout_count:02x}")
        DataBlock(memory, layout_addr, format="p", amount=4)
        memory.addLabel(memory.word(layout_addr+0), f"level_{memory.bankNumber:02x}_layout_{layout_count:02x}_tile_physics")
        memory.addLabel(memory.word(layout_addr+2), f"level_{memory.bankNumber:02x}_layout_{layout_count:02x}_metatiles")
        memory.addLabel(memory.word(layout_addr+4), f"level_{memory.bankNumber:02x}_layout_{layout_count:02x}_metametatiles")
        memory.addLabel(memory.word(layout_addr+6), f"level_{memory.bankNumber:02x}_layout_{layout_count:02x}_tilemap")
        layout_count += 1
    print(layout_count)
    DataBlock(memory, layout_table_addr, format="pb", amount=layout_count)