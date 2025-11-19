from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo


class Rst8Block(CodeBlock):
    def onCall(self, from_memory, from_address, next_addr):
        print("call", from_memory, from_address, next_addr)
        DataBlock(from_memory, next_addr, format="b", amount=1)
        CodeBlock(from_memory, next_addr + 1)


@annotation(priority=0)
def rst8(memory, addr):
    # not sure what RST8 does, except that it does read 1 byte after the rst, so we need to skip that as data
    Rst8Block(memory, addr)
