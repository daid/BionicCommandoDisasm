from annotation.annotation import annotation
from annotation.simple import DataBlock, JumpTable
from block.base import Block
from block.gfx import GfxBlock
from block.code import CodeBlock
from romInfo import RomInfo

CHARMAP = {}
for n in range(0, 255):
    CHARMAP[n] = f"<{n}>"
CHARMAP[1] = " "
CHARMAP[38] = "."
CHARMAP[39] = ","
CHARMAP[40] = "'"
CHARMAP[41] = "!"
CHARMAP[42] = "?"
CHARMAP[46] = ".."
CHARMAP[47] = "-"
CHARMAP[254] = "<NL>"
for n in range(65, 65+26):
    CHARMAP[n-53] = chr(n)
for n in range(97, 97+26):
    CHARMAP[n-33] = chr(n)


@annotation
def bc_texts(memory, addr, *, amount=1):
    DataBlock(memory, addr, format="p", amount=0x4F)
    DataBlock(memory, addr + 0x50 * 2, format="p", amount=int(amount) - 0x50)
    for n in range(int(amount)):
        ptr = memory.word(addr + n * 2)
        if ptr != 0 and not memory[ptr]:
            BCTextBlock(memory, ptr)

@annotation(priority=0)
def bc_text(memory, addr, *, size=None, amount=1):
    BCTextBlock(memory, addr, int(size) if size is not None else None, int(amount))


class BCTextBlock(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr)
        if "TXT" not in RomInfo.macros:
            RomInfo.macros["TXT"] = "SETCHARMAP BASIC\ndb \#"
            RomInfo.charmap["BASIC"] = CHARMAP

        size = 0
        while memory.byte(addr + size) != 0x00:
            if memory.byte(addr + size) in {251, 249, 250}:
                size += 1
            size += 1
        size += 1
        self.resize(size)

    def export(self, file):
        text = ""
        size = 0
        while True:
            c = self.memory.byte(file.addr + size)
            if c in {251, 249, 250}:
                if size > 0:
                    file.asmLine(size, "TXT", "\"%s\"" % (text), is_data=True)
                    text = ""
                    size = 0
                file.dataLine(2)
                continue
            size += 1
            text += CHARMAP[c]
            if c == 0:
                break
            if size == 16 or c in {254, 253}:
                file.asmLine(size, "TXT", "\"%s\"" % (text), is_data=True)
                size = 0
                text = ""
        file.asmLine(size, "TXT", "\"%s\"" % (text), is_data=True)
