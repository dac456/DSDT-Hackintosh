/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT2.aml, Mon Oct 26 11:02:28 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000B38 (2872)
 *     Revision         0x01
 *     Checksum         0x15
 *     OEM ID           "OptRef"
 *     OEM Table ID     "OptTabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20051117 (537202967)
 */
DefinitionBlock ("SSDT2.aml", "SSDT", 1, "OptRef", "OptTabl", 0x00001000)
{

    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.LPCB.H_EC.OPST, FieldUnitObj)
    External (_SB_.PCI0.P0P2, DeviceObj)
    External (_SB_.PCI0.P0P2.PEGP, DeviceObj)
    External (_SB_.PCI0.P0P2.PEGP._ADR, IntObj)
    External (EBAS, FieldUnitObj)
    External (ECON, FieldUnitObj)
    External (ODID, FieldUnitObj)
    External (OPWA, FieldUnitObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (SECS, MethodObj)    // 1 Arguments

    Scope (\_SB.PCI0.P0P2)
    {
        OperationRegion (RPCI, SystemMemory, 0xF8008000, 0x1000)
        Field (RPCI, DWordAcc, Lock, Preserve)
        {
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
                ,   1, 
            RCCC,   1, 
            Offset (0x1FC), 
                ,   9, 
            SGL1,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x224), 
            Offset (0x225), 
            DQDA,   1, 
            Offset (0xC28), 
            HCLQ,   1, 
            Offset (0xC34), 
                ,   30, 
            PEDQ,   1, 
            PIDQ,   1, 
            Offset (0xDFC), 
                ,   1, 
            PEPO,   3, 
            Offset (0xE08), 
                ,   31, 
            ROE0,   1, 
            Offset (0xE28), 
                ,   31, 
            ROE1,   1, 
            Offset (0xE48), 
                ,   31, 
            ROE2,   1, 
            Offset (0xE68), 
                ,   31, 
            ROE3,   1, 
            Offset (0xE88), 
                ,   31, 
            ROE4,   1, 
            Offset (0xEA8), 
                ,   31, 
            ROE5,   1, 
            Offset (0xEC8), 
                ,   31, 
            ROE6,   1, 
            Offset (0xEE8), 
                ,   31, 
            ROE7,   1, 
            Offset (0xF08), 
                ,   31, 
            ROE8,   1, 
            Offset (0xF28), 
                ,   31, 
            ROE9,   1, 
            Offset (0xF48), 
                ,   31, 
            ROEA,   1, 
            Offset (0xF68), 
                ,   31, 
            ROEB,   1, 
            Offset (0xF88), 
                ,   31, 
            ROEC,   1, 
            Offset (0xFA8), 
                ,   31, 
            ROED,   1, 
            Offset (0xFC8), 
                ,   31, 
            ROEE,   1, 
            Offset (0xFE8), 
                ,   31, 
            ROEF,   1
        }

        OperationRegion (DMIB, SystemMemory, 0xFED18000, 0x1000)
        Field (DMIB, DWordAcc, Lock, Preserve)
        {
            Offset (0xC34), 
            LLGE,   1, 
                ,   28, 
            PCGE,   1, 
                ,   1, 
            LGGE,   1
        }
    }

    Scope (\_SB.PCI0.P0P2.PEGP)
    {
        Name (OPCM, One)
        Name (OPCE, 0x02)
        Name (_PSC, Zero)  // _PSC: Power State Current
        OperationRegion (BPCI, SystemMemory, EBAS, 0x1000)
        Field (BPCI, ByteAcc, NoLock, Preserve)
        {
            VGAR,   2048, 
            Offset (0x48B), 
            VGHA,   8
        }

        Name (VGAB, Buffer (0x0100)
        {
            /* 0000 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0008 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0010 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0018 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0020 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0028 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0030 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0038 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0040 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0048 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0050 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0058 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0060 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0068 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0070 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0078 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0080 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0088 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0090 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
            /* 0098 */  0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00 
        })
        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        OperationRegion (GPIO, SystemIO, 0x0500, 0x4A)
        Field (GPIO, ByteAcc, Lock, Preserve)
        {
            Offset (0x0C), 
            Offset (0x0E), 
            PO16,   1, 
            PI17,   1, 
            Offset (0x38), 
                ,   4, 
            PO36,   1, 
            PI37,   1, 
                ,   14, 
            PO52,   1, 
            PO53,   1, 
            Offset (0x48), 
                ,   3, 
            PO67,   1
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.P0P2.PEGP._ADR)
            _OFF ()
        }

        Name (DGPS, Zero)
        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store (Zero, _PSC)
            If (LNotEqual (DGPS, Zero))
            {
                \_SB.PCI0.P0P2.PEGP._ON ()
                Store (Zero, DGPS)
            }
        }

        Method (_PS1, 0, NotSerialized)  // _PS1: Power State 1
        {
            Store (One, _PSC)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (OPCE, 0x03))
            {
                If (LEqual (DGPS, Zero))
                {
                    \_SB.PCI0.P0P2.PEGP._OFF ()
                    Store (One, DGPS)
                }

                Store (0x02, OPCE)
            }

            Store (0x03, _PSC)
        }

        OperationRegion (VROM, SystemMemory, 0xCAAC1018, 0x00010000)
        Field (VROM, AnyAcc, NoLock, Preserve)
        {
            RBF1,   262144, 
            RBF2,   262144
        }

        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            P8XH (One, 0x44)
            P8XH (Zero, One)
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            CreateWordField (RBF1, 0x02, RVBS)
            ShiftLeft (And (RVBS, 0xFF), 0x09, RVBS)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Store (And (Arg2, 0xFF), Local0)
            P8XH (One, 0xDD)
            P8XH (Zero, Local0)
            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (Buffer (0x04)
                    {
                         0x02, 0x00, 0x00, 0x80                         
                    })
                }

                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x10, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (_T_0, 0x10))
                    {
                        Return (GOBT (Arg3))
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x1A))
                        {
                            Store (Zero, Local0)
                            Store (ShiftLeft (DerefOf (Index (Arg3, 0x03)), 0x18), Local0)
                            Add (ShiftLeft (DerefOf (Index (Arg3, 0x02)), 0x10), Local0, Local0)
                            Add (ShiftLeft (DerefOf (Index (Arg3, One)), 0x08), Local0, Local0)
                            Add (ShiftLeft (DerefOf (Index (Arg3, Zero)), Zero), Local0, Local0)
                            If (And (Local0, One))
                            {
                                ShiftRight (Local0, 0x18, Local2)
                                If (LEqual (Local2, 0x03))
                                {
                                    Store (0x03, OPCE)
                                }
                            }

                            Name (TMP1, Buffer (0x04)
                            {
                                 0x00, 0x00, 0x00, 0x00                         
                            })
                            CreateField (TMP1, 0x18, 0x03, DGPC)
                            CreateField (TMP1, Zero, One, OPEN)
                            CreateField (TMP1, 0x03, 0x02, CGCS)
                            If (OPCM)
                            {
                                Store (One, OPEN)
                                Store (One, DGPC)
                                If (LEqual (PO36, Zero))
                                {
                                    Store (0x03, CGCS)
                                }
                            }

                            Return (TMP1)
                        }
                    }
                }

                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80                         
                })
            }

            Return (0x80000001)
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            If (LEqual (PO36, One))
            {
                Store (Zero, PO16)
                Sleep (0x32)
                Store (Zero, PO36)
                Sleep (0x32)
                \SECS (0xBF)
                Sleep (0x64)
                Store (One, PO16)
                Sleep (0x64)
                Store (Zero, LLGE)
                Store (Zero, LGGE)
                Store (Zero, PEPO)
                Store (Zero, ROE0)
                Store (Zero, ROE1)
                Store (Zero, ROE2)
                Store (Zero, ROE3)
                Store (Zero, ROE4)
                Store (Zero, ROE5)
                Store (Zero, ROE6)
                Store (Zero, ROE7)
                Store (Zero, ROE8)
                Store (Zero, ROE9)
                Store (Zero, ROEA)
                Store (Zero, ROEB)
                Store (Zero, ROEC)
                Store (Zero, ROED)
                Store (Zero, ROEE)
                Store (Zero, ROEF)
                Store (Zero, PCGE)
                Store (Zero, HCLQ)
                Store (Zero, PEDQ)
                Store (Zero, LNKD)
                Store (One, LLGE)
                Store (One, LGGE)
                Sleep (0x64)
                Store (0x64, Local1)
                While (Local1)
                {
                    Sleep (One)
                    Decrement (Local1)
                    If (LEqual (LNKS, 0x07))
                    {
                        Store (Zero, Local1)
                    }
                }

                Store (Zero, VGHA)
                Sleep (0x03E8)
                Store (VGAB, VGAR)
                Sleep (0x64)
                If (LEqual (\ECON, Zero))
                {
                    \SECS (0xBB)
                }
                Else
                {
                    Store (One, \_SB.PCI0.LPCB.H_EC.OPST)
                }
            }

            If (LEqual (\OPWA, One))
            {
                Notify (\_SB.PCI0, Zero)
            }
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            Store (VGAR, VGAB)
            Sleep (0x64)
            Store (Zero, LLGE)
            Store (Zero, LGGE)
            Store (One, LNKD)
            While (LNotEqual (LNKS, Zero))
            {
                Sleep (One)
            }

            Store (One, PEDQ)
            Store (Zero, LNKD)
            While (LNotEqual (PIDQ, One))
            {
                Sleep (One)
            }

            Store (One, PCGE)
            Store (One, HCLQ)
            Store (0x03, PEPO)
            Store (One, ROE0)
            Store (One, ROE1)
            Store (One, ROE2)
            Store (One, ROE3)
            Store (One, ROE4)
            Store (One, ROE5)
            Store (One, ROE6)
            Store (One, ROE7)
            Store (One, ROE8)
            Store (One, ROE9)
            Store (One, ROEA)
            Store (One, ROEB)
            Store (One, ROEC)
            Store (One, ROED)
            Store (One, ROEE)
            Store (One, ROEF)
            Store (One, LLGE)
            Store (One, LGGE)
            Store (Zero, PO16)
            Sleep (0x32)
            \SECS (0xBE)
            Sleep (0x32)
            Store (One, PO36)
            If (LEqual (\ECON, Zero))
            {
                \SECS (0xBC)
            }
            Else
            {
                /*Store (Zero, \_SB.PCI0.LPCB.H_EC.OPST)*/
            }
        }

        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE6)
            {
                /* 0000 */  0x99, 0xBF, 0xEC, 0xCA, 0xC3, 0x15, 0xBF, 0xF5,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x73, 0x61, 0x6D, 0x73, 0x75,
                /* 0058 */  0x6E, 0x67, 0x20, 0x65, 0x75, 0x72, 0x6F, 0x70,
                /* 0060 */  0x61, 0x20, 0x6E, 0x31, 0x31, 0x70, 0x2D, 0x20,
                /* 0068 */  0x2D, 0x20, 0x4F, 0x49, 0x2F, 0x27, 0x54, 0x26,
                /* 0070 */  0x53, 0x21, 0x55, 0x22, 0x53, 0x59, 0x37, 0x42,
                /* 0078 */  0x20, 0x20, 0x2E, 0x40, 0x4E, 0x5F, 0x36, 0x21,
                /* 0080 */  0x3C, 0x59, 0x34, 0x39, 0x3D, 0x31, 0x5B, 0x5D,
                /* 0088 */  0x42, 0x3E, 0x49, 0x5B, 0x5E, 0x47, 0x57, 0x4C,
                /* 0090 */  0x2E, 0x35, 0x54, 0x30, 0x52, 0x4E, 0x30, 0x50,
                /* 0098 */  0x2D, 0x4D, 0x23, 0x2E, 0x45, 0x2E, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            Name (GEVK, Buffer (0xE6)
            {
                /* 0000 */  0x21, 0xF0, 0x41, 0x08, 0xE0, 0x38, 0x27, 0x29,
                /* 0008 */  0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35,
                /* 0018 */  0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x73, 0x61, 0x6D, 0x73, 0x75,
                /* 0058 */  0x6E, 0x67, 0x20, 0x65, 0x75, 0x72, 0x6F, 0x70,
                /* 0060 */  0x61, 0x20, 0x31, 0x31, 0x6D, 0x67, 0x65, 0x20,
                /* 0068 */  0x2D, 0x20, 0x5E, 0x5B, 0x34, 0x3F, 0x2F, 0x24,
                /* 0070 */  0x5C, 0x2D, 0x5A, 0x54, 0x40, 0x29, 0x4B, 0x39,
                /* 0078 */  0x49, 0x3C, 0x4D, 0x23, 0x24, 0x24, 0x41, 0x30,
                /* 0080 */  0x4D, 0x52, 0x4D, 0x3C, 0x33, 0x32, 0x5F, 0x44,
                /* 0088 */  0x3D, 0x48, 0x38, 0x4E, 0x34, 0x5E, 0x34, 0x26,
                /* 0090 */  0x3C, 0x5B, 0x3F, 0x5B, 0x21, 0x3F, 0x2B, 0x28,
                /* 0098 */  0x28, 0x4F, 0x24, 0x52, 0x4C, 0x58, 0x20, 0x2D,
                /* 00A0 */  0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67,
                /* 00A8 */  0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20,
                /* 00B0 */  0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43,
                /* 00B8 */  0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69,
                /* 00C0 */  0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52,
                /* 00C8 */  0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65,
                /* 00D0 */  0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31,
                /* 00D8 */  0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36,
                /* 00E0 */  0x39, 0x38, 0x35, 0x28, 0x52, 0x29             
            })
            Name (TPVK, Buffer (One)
            {
                 0x00                                           
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                If (LEqual (ODID, 0x0DF3))
                {
                    Return (OPVK)
                }
                Else
                {
                    If (LEqual (ODID, 0x0A70))
                    {
                        Return (GEVK)
                    }
                    Else
                    {
                        Return (TPVK)
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Store (And (Arg2, 0xFF), Local0)
            P8XH (One, 0xD1)
            P8XH (Zero, Local0)
            Return (\_SB.PCI0.P0P2.PEGP._DSM (Arg0, Arg1, Arg2, Arg3))
        }
    }

    Scope (\_SB.PCI0)
    {
        Device (WMI1)
        {
            Name (_HID, "PNP0c14")  // _HID: Hardware ID
            Name (_UID, "OPT1")  // _UID: Unique ID
            Name (_WDG, Buffer (0x14)
            {
                /* 0000 */  0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E,
                /* 0008 */  0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0,
                /* 0010 */  0x4D, 0x58, 0x01, 0x02                         
            })
            Method (WMMX, 3, NotSerialized)
            {
                CreateDWordField (Arg2, Zero, FUNC)
                If (LEqual (FUNC, 0x4D53445F))
                {
                    If (LGreaterEqual (SizeOf (Arg2), 0x1C))
                    {
                        CreateField (Arg2, Zero, 0x80, MUID)
                        CreateDWordField (Arg2, 0x10, REVI)
                        CreateDWordField (Arg2, 0x14, SFNC)
                        CreateField (Arg2, 0xE0, 0x20, XRG0)
                        Return (\_SB.PCI0.GFX0._DSM (MUID, REVI, SFNC, XRG0))
                    }
                }

                Return (Zero)
            }
        }
    }
}

