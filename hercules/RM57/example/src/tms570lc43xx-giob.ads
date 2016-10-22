--  This spec has been automatically generated from hercules_gio_port_b_spec_1.2.1.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with System;

package TMS570LC43xx.GioB is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   ------------------
   -- Dir_Register --
   ------------------

   ----------------
   -- Dir.GioDir --
   ----------------

   --  Dir_GioDir array element
   subtype Dir_GioDir_Element is TMS570LC43xx.Bit;

   --  Dir_GioDir array
   type Dir_GioDir_Field_Array is array (0 .. 7) of Dir_GioDir_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for Dir_GioDir
   type Dir_GioDir_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioDir as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioDir as an array
            Arr : Dir_GioDir_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for Dir_GioDir_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype Dir_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Direction Gio B
   type Dir_Register is record
      --  GIO data direction of port n
      GioDir        : Dir_GioDir_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : Dir_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for Dir_Register use record
      GioDir        at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ------------------
   -- DIn_Register --
   ------------------

   ----------------
   -- DIn.GioDIn --
   ----------------

   --  DIn_GioDIn array element
   subtype DIn_GioDIn_Element is TMS570LC43xx.Bit;

   --  DIn_GioDIn array
   type DIn_GioDIn_Field_Array is array (0 .. 7) of DIn_GioDIn_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for DIn_GioDIn
   type DIn_GioDIn_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioDIn as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioDIn as an array
            Arr : DIn_GioDIn_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DIn_GioDIn_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype DIn_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Input Gio B
   type DIn_Register is record
      --  GIO data input of port n
      GioDIn        : DIn_GioDIn_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DIn_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIn_Register use record
      GioDIn        at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- DOut_Register --
   -------------------

   ------------------
   -- DOut.GioDOut --
   ------------------

   --  DOut_GioDOut array element
   subtype DOut_GioDOut_Element is TMS570LC43xx.Bit;

   --  DOut_GioDOut array
   type DOut_GioDOut_Field_Array is array (0 .. 7) of DOut_GioDOut_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for DOut_GioDOut
   type DOut_GioDOut_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioDOut as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioDOut as an array
            Arr : DOut_GioDOut_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DOut_GioDOut_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype DOut_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Output Gio B
   type DOut_Register is record
      --  GIO data output of port n
      GioDOut       : DOut_GioDOut_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DOut_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOut_Register use record
      GioDOut       at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- DSet_Register --
   -------------------

   ------------------
   -- DSet.GioDSet --
   ------------------

   --  DSet_GioDSet array element
   subtype DSet_GioDSet_Element is TMS570LC43xx.Bit;

   --  DSet_GioDSet array
   type DSet_GioDSet_Field_Array is array (0 .. 7) of DSet_GioDSet_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for DSet_GioDSet
   type DSet_GioDSet_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioDSet as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioDSet as an array
            Arr : DSet_GioDSet_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DSet_GioDSet_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype DSet_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Set Gio B
   type DSet_Register is record
      --  GIO data set for port n. Drives the output of GIO pin high.
      GioDSet       : DSet_GioDSet_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DSet_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSet_Register use record
      GioDSet       at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- DClr_Register --
   -------------------

   ------------------
   -- DClr.GioDClr --
   ------------------

   --  DClr_GioDClr array element
   subtype DClr_GioDClr_Element is TMS570LC43xx.Bit;

   --  DClr_GioDClr array
   type DClr_GioDClr_Field_Array is array (0 .. 7) of DClr_GioDClr_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for DClr_GioDClr
   type DClr_GioDClr_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioDClr as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioDClr as an array
            Arr : DClr_GioDClr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for DClr_GioDClr_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype DClr_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Data Clear Gio B
   type DClr_Register is record
      --  GIO data clear for port n. Drives the output of GIO pin low.
      GioDClr       : DClr_GioDClr_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : DClr_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for DClr_Register use record
      GioDClr       at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   ------------------
   -- PDr_Register --
   ------------------

   ----------------
   -- PDr.GioPDr --
   ----------------

   --  PDr_GioPDr array element
   subtype PDr_GioPDr_Element is TMS570LC43xx.Bit;

   --  PDr_GioPDr array
   type PDr_GioPDr_Field_Array is array (0 .. 7) of PDr_GioPDr_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PDr_GioPDr
   type PDr_GioPDr_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioPDr as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioPDr as an array
            Arr : PDr_GioPDr_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PDr_GioPDr_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype PDr_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Open Drain Gio B
   type PDr_Register is record
      --  GIO open drain for port n
      GioPDr        : PDr_GioPDr_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : PDr_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDr_Register use record
      GioPDr        at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- PDis_Register --
   -------------------

   ------------------
   -- PDis.GioPDis --
   ------------------

   --  PDis_GioPDis array element
   subtype PDis_GioPDis_Element is TMS570LC43xx.Bit;

   --  PDis_GioPDis array
   type PDis_GioPDis_Field_Array is array (0 .. 7) of PDis_GioPDis_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PDis_GioPDis
   type PDis_GioPDis_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioPDis as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioPDis as an array
            Arr : PDis_GioPDis_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PDis_GioPDis_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype PDis_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Pull Disable Gio B
   type PDis_Register is record
      --  GIO pull disable for port n
      GioPDis       : PDis_GioPDis_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : PDis_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDis_Register use record
      GioPDis       at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -------------------
   -- PSel_Register --
   -------------------

   ------------------
   -- PSel.GioPSel --
   ------------------

   --  PSel_GioPSel array element
   subtype PSel_GioPSel_Element is TMS570LC43xx.Bit;

   --  PSel_GioPSel array
   type PSel_GioPSel_Field_Array is array (0 .. 7) of PSel_GioPSel_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for PSel_GioPSel
   type PSel_GioPSel_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  GioPSel as a value
            Val : TMS570LC43xx.Byte;
         when True =>
            --  GioPSel as an array
            Arr : PSel_GioPSel_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for PSel_GioPSel_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype PSel_Reserved_8_31_Field is TMS570LC43xx.UInt24;

   --  Pull Select Gio B
   type PSel_Register is record
      --  GIO pull disable for port n
      GioPSel       : PSel_GioPSel_Field := (As_Array => False, Val => 16#0#);
      --  Read returns 0. Writes have no effect.
      Reserved_8_31 : PSel_Reserved_8_31_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for PSel_Register use record
      GioPSel       at 16#0# range 0 .. 7;
      Reserved_8_31 at 16#0# range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  General Purpose Input Output
   type GioB_Peripheral is record
      --  Data Direction Gio B
      Dir  : Dir_Register;
      --  Data Input Gio B
      DIn  : DIn_Register;
      --  Data Output Gio B
      DOut : DOut_Register;
      --  Data Set Gio B
      DSet : DSet_Register;
      --  Data Clear Gio B
      DClr : DClr_Register;
      --  Open Drain Gio B
      PDr  : PDr_Register;
      --  Pull Disable Gio B
      PDis : PDis_Register;
      --  Pull Select Gio B
      PSel : PSel_Register;
      --  Slew Rate Select Gio B
      Srs  : TMS570LC43xx.Word;
   end record
     with Volatile;

   for GioB_Peripheral use record
      Dir  at 16#54# range 0 .. 31;
      DIn  at 16#58# range 0 .. 31;
      DOut at 16#5C# range 0 .. 31;
      DSet at 16#60# range 0 .. 31;
      DClr at 16#64# range 0 .. 31;
      PDr  at 16#68# range 0 .. 31;
      PDis at 16#6C# range 0 .. 31;
      PSel at 16#70# range 0 .. 31;
      Srs  at 16#138# range 0 .. 31;
   end record;

   --  General Purpose Input Output
   GioB_Periph : aliased GioB_Peripheral
     with Import, Address => GioB_Base;

end TMS570LC43xx.GioB;
