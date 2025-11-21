from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock, GfxImageBlock
from block.code import CodeBlock
from romInfo import RomInfo

@annotation
def gfxloadtable(memory, addr, *, amount):
    amount = int(amount)
    DataBlock(memory, addr, format="p", amount=amount)

    for n in range(amount):
        base_addr = memory.word(addr + n * 2)
        if memory[base_addr]:
            continue
        gfx_count = 0
        while memory.byte(base_addr + gfx_count * 4) != 0:
            gfx_count += 1
        DataBlock(memory, base_addr, format="bbp", amount=gfx_count)
