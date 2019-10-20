// Disable Nvidia graphics
// for 14isk Haswell
DefinitionBlock ("", "SSDT", 2, "14isk", "NDGP", 0x00000000)
{
    External (_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG_.VID_._PS0, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG_.VID_._PS3, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG_.VID_.XDSM, MethodObj)    // 4 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEGP.DGFX._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PEGP._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PXSX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP01.PXSX._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PXSX._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.RP05.PXSX._ON_, MethodObj)    // 0 Arguments (from opcode)    

    Device (DGPU)
    {
        Name (_HID, "DGPU1000")  // _HID: Hardware ID
        Name (RMEN, One)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            _OFF ()
        }

        Method (_ON, 0, NotSerialized)  // _ON_: Power On
        {
            If (CondRefOf (\_SB.PCI0.PEG2.PEGP._ON)){\_SB.PCI0.PEG2.PEGP._ON ()}
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._ON)){\_SB.PCI0.PEG0.PEGP._ON ()}
            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._ON)){ \_SB.PCI0.PEGP.DGFX._ON ()}
            If (CondRefOf (\_SB.PCI0.RP05.PXSX._ON)){\_SB.PCI0.RP05.PXSX._ON ()}
            If (CondRefOf (\_SB.PCI0.PEG.VID._PS0)){\_SB.PCI0.PEG.VID._PS0 ()}
            If (CondRefOf (\_SB.PCI0.RP01.PXSX._ON)){\_SB.PCI0.RP01.PXSX._ON ()}
            If (CondRefOf (\_SB.PCI0.RP01.PEGP._ON)){\_SB.PCI0.RP01.PEGP._ON ()}
        }

        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
        {
            If (CondRefOf (\_SB.PCI0.PEG2.PEGP._OFF)){\_SB.PCI0.PEG2.PEGP._OFF ()}
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP._OFF)){\_SB.PCI0.PEG0.PEGP._OFF ()}
            If (CondRefOf (\_SB.PCI0.PEGP.DGFX._OFF)){\_SB.PCI0.PEGP.DGFX._OFF ()}
            If (CondRefOf (\_SB.PCI0.RP05.PXSX._OFF)){\_SB.PCI0.RP05.PXSX._OFF ()}
            If (CondRefOf (\_SB.PCI0.PEG.VID._PS3))
            {\_SB.PCI0.PEG.VID.XDSM (ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0"), 0x0100, 0x1A, Buffer (0x04)
            {0x01, 0x00, 0x00, 0x03})\_SB.PCI0.PEG.VID._PS3 ()}
            If (CondRefOf (\_SB.PCI0.RP01.PXSX._OFF)){\_SB.PCI0.RP01.PXSX._OFF ()}
            If (CondRefOf (\_SB.PCI0.RP01.PEGP._OFF)){\_SB.PCI0.RP01.PEGP._OFF ()}
        }
    }
}

