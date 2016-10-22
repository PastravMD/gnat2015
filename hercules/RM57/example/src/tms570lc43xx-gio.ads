--  This spec has been automatically generated from hercules_gio_general_spec_1.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.Gio is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ----------------------
   -- GlbCtrl_Register --
   ----------------------

   subtype GlbCtrl_Reset_Field is TMS570LC43xx.Bit;
   subtype GlbCtrl_Reserved_1_31_Field is TMS570LC43xx.UInt31;

   --  Global Control Register
   type GlbCtrl_Register is record
      --  GIO reset
      Reset         : GlbCtrl_Reset_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_1_31 : GlbCtrl_Reserved_1_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for GlbCtrl_Register use record
      Reset         at 16#0# range 0 .. 0;
      Reserved_1_31 at 16#0# range 1 .. 31;
   end record;

   ---------------------
   -- IntDet_Register --
   ---------------------

   --  IntDet_GioIntDet array element
   subtype IntDet_GioIntDet_Element is TMS570LC43xx.Byte;

   --  IntDet_GioIntDet array
   type IntDet_GioIntDet_Field_Array is array (0 .. 3)
     of IntDet_GioIntDet_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Detect
   type IntDet_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioIntDet as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioIntDet as an array
            Arr : IntDet_GioIntDet_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntDet_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- IntPol_Register --
   ---------------------

   --  IntPol_GioPol array element
   subtype IntPol_GioPol_Element is TMS570LC43xx.Byte;

   --  IntPol_GioPol array
   type IntPol_GioPol_Field_Array is array (0 .. 3) of IntPol_GioPol_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Polarity
   type IntPol_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioPol as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioPol as an array
            Arr : IntPol_GioPol_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntPol_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------------
   -- IntEnaSet_Register --
   ------------------------

   --  IntEnaSet_GioEnaSet array element
   subtype IntEnaSet_GioEnaSet_Element is TMS570LC43xx.Byte;

   --  IntEnaSet_GioEnaSet array
   type IntEnaSet_GioEnaSet_Field_Array is array (0 .. 3)
     of IntEnaSet_GioEnaSet_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Enable Set
   type IntEnaSet_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioEnaSet as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioEnaSet as an array
            Arr : IntEnaSet_GioEnaSet_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntEnaSet_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------------
   -- IntEnaClr_Register --
   ------------------------

   --  IntEnaClr_GioEnaClr array element
   subtype IntEnaClr_GioEnaClr_Element is TMS570LC43xx.Byte;

   --  IntEnaClr_GioEnaClr array
   type IntEnaClr_GioEnaClr_Field_Array is array (0 .. 3)
     of IntEnaClr_GioEnaClr_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Enable Clear
   type IntEnaClr_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioEnaClr as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioEnaClr as an array
            Arr : IntEnaClr_GioEnaClr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntEnaClr_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------------
   -- IntLvlSet_Register --
   ------------------------

   --  IntLvlSet_GioLvlSet array element
   subtype IntLvlSet_GioLvlSet_Element is TMS570LC43xx.Byte;

   --  IntLvlSet_GioLvlSet array
   type IntLvlSet_GioLvlSet_Field_Array is array (0 .. 3)
     of IntLvlSet_GioLvlSet_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Priority Set
   type IntLvlSet_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioLvlSet as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioLvlSet as an array
            Arr : IntLvlSet_GioLvlSet_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntLvlSet_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ------------------------
   -- IntLvlClr_Register --
   ------------------------

   --  IntLvlClr_GioLvlClr array element
   subtype IntLvlClr_GioLvlClr_Element is TMS570LC43xx.Byte;

   --  IntLvlClr_GioLvlClr array
   type IntLvlClr_GioLvlClr_Field_Array is array (0 .. 3)
     of IntLvlClr_GioLvlClr_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Priority Clear
   type IntLvlClr_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioLvlClr as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioLvlClr as an array
            Arr : IntLvlClr_GioLvlClr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntLvlClr_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- IntFlg_Register --
   ---------------------

   --  IntFlg_GioFlg array element
   subtype IntFlg_GioFlg_Element is TMS570LC43xx.Byte;

   --  IntFlg_GioFlg array
   type IntFlg_GioFlg_Field_Array is array (0 .. 3) of IntFlg_GioFlg_Element
     with Component_Size => 8, Size => 32;

   --  Interrupt Flag
   type IntFlg_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioFlg as a value
            Val : TMS570LC43xx.Word;
         when True =>
            --  GioFlg as an array
            Arr : IntFlg_GioFlg_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access,
          Bit_Order => System.Low_Order_First;

   for IntFlg_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   ---------------------
   -- Offst1_Register --
   ---------------------

   subtype Offst1_GioOff1_Field is TMS570LC43xx.UInt6;
   subtype Offst1_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Offset 1
   type Offst1_Register is record
      --  GIO offset 1. These bits index the currently pending high-priority
      --  interrupt.
      GioOff1       : Offst1_GioOff1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Offst1_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Offst1_Register use record
      GioOff1       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   ---------------------
   -- Offst2_Register --
   ---------------------

   subtype Offst2_GioOff2_Field is TMS570LC43xx.UInt6;
   subtype Offst2_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Offset 2
   type Offst2_Register is record
      --  GIO offset 2. These bits index the currently pending low-priority
      --  interrupt.
      GioOff2       : Offst2_GioOff2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Offst2_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Offst2_Register use record
      GioOff2       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -------------------
   -- Emu1_Register --
   -------------------

   subtype Emu1_GioEmu1_Field is TMS570LC43xx.UInt6;
   subtype Emu1_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Emulation 1
   type Emu1_Register is record
      --  GIO offset emulation 1. These bits index the currently pending
      --  high-priority interrupt.
      GioEmu1       : Emu1_GioEmu1_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Emu1_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Emu1_Register use record
      GioEmu1       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -------------------
   -- Emu2_Register --
   -------------------

   subtype Emu2_GioEmu2_Field is TMS570LC43xx.UInt6;
   subtype Emu2_Reserved_6_31_Field is TMS570LC43xx.UInt26;

   --  Emulation 2
   type Emu2_Register is record
      --  GIO offset emulation 2. These bits index the currently pending
      --  low-priority interrupt.
      GioEmu2       : Emu2_GioEmu2_Field := 16#0#;
      --  Read returns 0. Writes have no effect.
      Reserved_6_31 : Emu2_Reserved_6_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Emu2_Register use record
      GioEmu2       at 16#0# range 0 .. 5;
      Reserved_6_31 at 16#0# range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input Output
   type Gio_Peripheral is record
      --  Global Control Register
      GlbCtrl   : GlbCtrl_Register;
      --  Power Down
      PwDn      : TMS570LC43xx.Word;
      --  Interrupt Detect
      IntDet    : IntDet_Register;
      --  Interrupt Polarity
      IntPol    : IntPol_Register;
      --  Interrupt Enable Set
      IntEnaSet : IntEnaSet_Register;
      --  Interrupt Enable Clear
      IntEnaClr : IntEnaClr_Register;
      --  Interrupt Priority Set
      IntLvlSet : IntLvlSet_Register;
      --  Interrupt Priority Clear
      IntLvlClr : IntLvlClr_Register;
      --  Interrupt Flag
      IntFlg    : IntFlg_Register;
      --  Offset 1
      Offst1    : Offst1_Register;
      --  Offset 2
      Offst2    : Offst2_Register;
      --  Emulation 1
      Emu1      : Emu1_Register;
      --  Emulation 2
      Emu2      : Emu2_Register;
   end record
     with Volatile;

   for Gio_Peripheral use record
      GlbCtrl   at 16#0# range 0 .. 31;
      PwDn      at 16#4# range 0 .. 31;
      IntDet    at 16#8# range 0 .. 31;
      IntPol    at 16#C# range 0 .. 31;
      IntEnaSet at 16#10# range 0 .. 31;
      IntEnaClr at 16#14# range 0 .. 31;
      IntLvlSet at 16#18# range 0 .. 31;
      IntLvlClr at 16#1C# range 0 .. 31;
      IntFlg    at 16#20# range 0 .. 31;
      Offst1    at 16#24# range 0 .. 31;
      Offst2    at 16#28# range 0 .. 31;
      Emu1      at 16#2C# range 0 .. 31;
      Emu2      at 16#30# range 0 .. 31;
   end record;

   --  General Purpose Input Output
   Gio_Periph : aliased Gio_Peripheral
     with Import, Address => Gio_Base;

end TMS570LC43xx.Gio;
