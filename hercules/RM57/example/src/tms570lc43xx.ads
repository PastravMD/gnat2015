--  This spec has been automatically generated from tms570lc43xx.xml

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;

with Interfaces;  use Interfaces;
with System;

--  TMS570LC43xx BGA, 4MB Flash, 512kB RAM, 2ch FlexRay, 10/100M Ethernet
package TMS570LC43xx is
   pragma Preelaborate;

   ---------------
   -- Base type --
   ---------------

   subtype Word is Interfaces.Unsigned_32;
   subtype Short is Interfaces.Unsigned_16;
   subtype Byte is Interfaces.Unsigned_8;
   type Bit is mod 2**1
     with Size => 1;
   type UInt2 is mod 2**2
     with Size => 2;
   type UInt3 is mod 2**3
     with Size => 3;
   type UInt4 is mod 2**4
     with Size => 4;
   type UInt5 is mod 2**5
     with Size => 5;
   type UInt6 is mod 2**6
     with Size => 6;
   type UInt7 is mod 2**7
     with Size => 7;
   type UInt9 is mod 2**9
     with Size => 9;
   type UInt10 is mod 2**10
     with Size => 10;
   type UInt11 is mod 2**11
     with Size => 11;
   type UInt12 is mod 2**12
     with Size => 12;
   type UInt13 is mod 2**13
     with Size => 13;
   type UInt14 is mod 2**14
     with Size => 14;
   type UInt15 is mod 2**15
     with Size => 15;
   type UInt17 is mod 2**17
     with Size => 17;
   type UInt18 is mod 2**18
     with Size => 18;
   type UInt19 is mod 2**19
     with Size => 19;
   type UInt20 is mod 2**20
     with Size => 20;
   type UInt21 is mod 2**21
     with Size => 21;
   type UInt22 is mod 2**22
     with Size => 22;
   type UInt23 is mod 2**23
     with Size => 23;
   type UInt24 is mod 2**24
     with Size => 24;
   type UInt25 is mod 2**25
     with Size => 25;
   type UInt26 is mod 2**26
     with Size => 26;
   type UInt27 is mod 2**27
     with Size => 27;
   type UInt28 is mod 2**28
     with Size => 28;
   type UInt29 is mod 2**29
     with Size => 29;
   type UInt30 is mod 2**30
     with Size => 30;
   type UInt31 is mod 2**31
     with Size => 31;

   --------------------
   -- Base addresses --
   --------------------

   Cp15_Base : constant System.Address :=
     System'To_Address (16#FFF7C200#);
   Vfp_Base : constant System.Address :=
     System'To_Address (16#FFF7C000#);
   MibAdc2_Base : constant System.Address :=
     System'To_Address (16#FFF7C200#);
   MibAdc1_Base : constant System.Address :=
     System'To_Address (16#FFF7C000#);
   Dcan4_Base : constant System.Address :=
     System'To_Address (16#FFF7E200#);
   Dcan3_Base : constant System.Address :=
     System'To_Address (16#FFF7E000#);
   Dcan2_Base : constant System.Address :=
     System'To_Address (16#FFF7DE00#);
   Dcan1_Base : constant System.Address :=
     System'To_Address (16#FFF7DC00#);
   EMAC_Base : constant System.Address :=
     System'To_Address (16#FCF78000#);
   CPGMAC_Base : constant System.Address :=
     System'To_Address (16#FCF78800#);
   MDIO_Base : constant System.Address :=
     System'To_Address (16#FCF78900#);
   ePWM1_Base : constant System.Address :=
     System'To_Address (16#FCF78C00#);
   ePWM2_Base : constant System.Address :=
     System'To_Address (16#FCF78D00#);
   ePWM3_Base : constant System.Address :=
     System'To_Address (16#FCF78E00#);
   ePWM4_Base : constant System.Address :=
     System'To_Address (16#FCF78F00#);
   ePWM5_Base : constant System.Address :=
     System'To_Address (16#FCF79000#);
   ePWM6_Base : constant System.Address :=
     System'To_Address (16#FCF79100#);
   ePWM7_Base : constant System.Address :=
     System'To_Address (16#FCF79200#);
   eCAP1_Base : constant System.Address :=
     System'To_Address (16#FCF79300#);
   eCAP2_Base : constant System.Address :=
     System'To_Address (16#FCF79400#);
   eCAP3_Base : constant System.Address :=
     System'To_Address (16#FCF79500#);
   eCAP4_Base : constant System.Address :=
     System'To_Address (16#FCF79600#);
   eCAP5_Base : constant System.Address :=
     System'To_Address (16#FCF79700#);
   eCAP6_Base : constant System.Address :=
     System'To_Address (16#FCF79800#);
   eQEP1_Base : constant System.Address :=
     System'To_Address (16#FCF79900#);
   eQEP2_Base : constant System.Address :=
     System'To_Address (16#FCF79A00#);
   FlexRay_Base : constant System.Address :=
     System'To_Address (16#FFF7C800#);
   FlexRayTU_Base : constant System.Address :=
     System'To_Address (16#FFF7A000#);
   Gio_Base : constant System.Address :=
     System'To_Address (16#FFF7BC00#);
   GioA_Base : constant System.Address :=
     System'To_Address (16#FFF7BC00#);
   GioB_Base : constant System.Address :=
     System'To_Address (16#FFF7BC00#);
   I2C1_Base : constant System.Address :=
     System'To_Address (16#FFF7D400#);
   I2C2_Base : constant System.Address :=
     System'To_Address (16#FFF7D500#);
   Nhet1_Base : constant System.Address :=
     System'To_Address (16#FFF7B800#);
   Nhet2_Base : constant System.Address :=
     System'To_Address (16#FFF7B900#);
   Htu1_Base : constant System.Address :=
     System'To_Address (16#FFF7A400#);
   Htu2_Base : constant System.Address :=
     System'To_Address (16#FFF7A500#);
   IOMM_Base : constant System.Address :=
     System'To_Address (16#FFFF1C00#);
   MibSpi1_Base : constant System.Address :=
     System'To_Address (16#FFF7F400#);
   MibSpi2_Base : constant System.Address :=
     System'To_Address (16#FFF7F600#);
   MibSpi3_Base : constant System.Address :=
     System'To_Address (16#FFF7F800#);
   MibSpi4_Base : constant System.Address :=
     System'To_Address (16#FFF7FA00#);
   MibSpip5_Base : constant System.Address :=
     System'To_Address (16#FFF7FC00#);
   Lin2_Base : constant System.Address :=
     System'To_Address (16#FFF7E600#);
   Lin1_Base : constant System.Address :=
     System'To_Address (16#FFF7E400#);
   Sci4_Base : constant System.Address :=
     System'To_Address (16#FFF7E700#);
   Sci3_Base : constant System.Address :=
     System'To_Address (16#FFF7E500#);
   CcmR5_Base : constant System.Address :=
     System'To_Address (16#FFFFF600#);
   Crc1_Base : constant System.Address :=
     System'To_Address (16#FE000000#);
   Crc2_Base : constant System.Address :=
     System'To_Address (16#FE000000#);
   Dcc1_Base : constant System.Address :=
     System'To_Address (16#FFFFEC00#);
   Dcc2_Base : constant System.Address :=
     System'To_Address (16#FFFFF400#);
   Dma_Base : constant System.Address :=
     System'To_Address (16#FFFFF000#);
   Dmm_Base : constant System.Address :=
     System'To_Address (16#FFFFF700#);
   Esm1_Base : constant System.Address :=
     System'To_Address (16#FFFFF500#);
   Esm2_Base : constant System.Address :=
     System'To_Address (16#FFFFE900#);
   FlashWrapper_Base : constant System.Address :=
     System'To_Address (16#FFF87000#);
   Pbist_Base : constant System.Address :=
     System'To_Address (16#FFFFE400#);
   PMM_Base : constant System.Address :=
     System'To_Address (16#FFFF0000#);
   Rtp_Base : constant System.Address :=
     System'To_Address (16#FFFFFA00#);
   Rti_Base : constant System.Address :=
     System'To_Address (16#FFFFFC00#);
   Stc1_Base : constant System.Address :=
     System'To_Address (16#FFFFE600#);
   Stc2_Base : constant System.Address :=
     System'To_Address (16#FFFF0800#);
   Scm_Base : constant System.Address :=
     System'To_Address (16#FFFF0A00#);
   Epc_Base : constant System.Address :=
     System'To_Address (16#FFFF0C00#);
   Interconnect_Base : constant System.Address :=
     System'To_Address (16#FA000000#);
   Nmpu1_Base : constant System.Address :=
     System'To_Address (16#FFFF1800#);
   Nmpu2_Base : constant System.Address :=
     System'To_Address (16#FFFF1A00#);
   Nmpu3_Base : constant System.Address :=
     System'To_Address (16#FCFF1800#);
   Sys_Base : constant System.Address :=
     System'To_Address (16#FFFFFF00#);
   Sys2_Base : constant System.Address :=
     System'To_Address (16#FFFFE100#);
   Vim_Base : constant System.Address :=
     System'To_Address (16#FFFFFE00#);
   Vim_base2_Base : constant System.Address :=
     System'To_Address (16#FFFFFD00#);
   Emif_Base : constant System.Address :=
     System'To_Address (16#FCFFE800#);
   Pcr3_Base : constant System.Address :=
     System'To_Address (16#FFF78000#);
   Pcr2_Base : constant System.Address :=
     System'To_Address (16#FCFF1000#);
   Pcr1_Base : constant System.Address :=
     System'To_Address (16#FFFF1000#);
   L2ramw_Base : constant System.Address :=
     System'To_Address (16#FFFFF900#);

end TMS570LC43xx;
