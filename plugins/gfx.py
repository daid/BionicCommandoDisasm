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

    gfx_info = {}
    for n in range(amount):
        base_addr = memory.word(addr + n * 2)
        if memory[base_addr]:
            continue
        gfx_count = 0
        while memory.byte(base_addr + gfx_count * 4) != 0:
            gfx_count += 1
        DataBlock(memory, base_addr, format="bbp", amount=gfx_count)
        for idx in range(gfx_count):
            gfx_count = memory.byte(base_addr + idx * 4 + 0)
            gfx_addr =  memory.word(base_addr + idx * 4 + 2)
            if gfx_addr not in gfx_info:
                gfx_info[gfx_addr] = []
            gfx_info[gfx_addr].append((gfx_count))
    gfx_addrs = list(sorted(gfx_info.keys()))
    for gfx_addr, c in gfx_info.items():
        count = max(c)
        for a in gfx_addrs:
            if a > gfx_addr:
                new_count = (a - gfx_addr) // 0x10
                if new_count < count:
                    if memory[gfx_addr] is None:
                        GfxImageBlock(memory, gfx_addr, name=f"tiles/{memory.bankNumber:02x}/{gfx_addr:04x}", width=new_count, height=1)
                    count -= new_count
                    gfx_addr += new_count * 0x10
        if count:
            if memory[gfx_addr] is None:
                GfxImageBlock(memory, gfx_addr, name=f"tiles/{memory.bankNumber:02x}/{gfx_addr:04x}", width=count, height=1)
