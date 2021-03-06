------------------------------------------------------------------------------
--                                                                          --
--                             GNAT EXAMPLE                                 --
--                                                                          --
--             Copyright (C) 2014, Free Software Foundation, Inc.           --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 3,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.                                     --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------
with Ada.Synchronous_Task_Control; use Ada.Synchronous_Task_Control;
with Ada.Real_Time; use Ada.Real_Time;
pragma Warnings (Off);
with System.RM57;   use System.RM57;
pragma Warnings (On);
with GioPorts;      use GioPorts;

with TMS570LC43xx;       use TMS570LC43xx;
with TMS570LC43xx.Gio;   use TMS570LC43xx.Gio;
with TMS570LC43xx.GioB;  use TMS570LC43xx.GioB;

package body Driver is
   So    : Suspension_Object;
   task body Controller1 is
      Period     : constant Time_Span := Milliseconds (500);
      Next_Start : Time;

   begin
      loop
         Next_Start := Clock;
         -- original API
         --GioSetBit(GIO_B, 6, True);

         -- new API
         --GioB_Periph.DOut.GioDOut.Arr(6) := 1;
         GioB_Periph.DOut.GioDOut.Val := 16#0#;

         Next_Start := Next_Start + Period;
         delay until Next_Start;
         Set_True (So);

         -- original API
         --GioSetBit(GIO_B, 6, False);
         -- new API
         --GioB_Periph.DOut.GioDOut.Arr(6) := 0;
         GioB_Periph.DOut.GioDOut.Val := 16#FF#;


         Next_Start := Next_Start + Period;
         delay until Next_Start;
      end loop;
   end Controller1;

   task body Controller2 is
      Period     : constant Time_Span := Milliseconds (200);
      Next_Start : Time;
   begin
      loop
         Suspend_Until_True (So);
         --GioSetBit(GIO_B, 7, True);


         Next_Start := Clock;
         Next_Start := Next_Start + Period;
         delay until Next_Start;
         --GioSetBit(GIO_B, 7, False);


         Next_Start := Next_Start + Period;
         delay until Next_Start;
         Set_False (So);
      end loop;
   end Controller2;
end Driver;
