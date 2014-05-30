library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package typepackage is
  type std4t is array (3 downto 0) of std_logic;
  type std8t is array (7 downto 0) of std_logic;
  type std16t is array (15 downto 0) of std_logic;
  type std32t is array (31 downto 0) of std_logic;
  subtype std4s is std_logic_vector(3 downto 0);
  subtype std8s is std_logic_vector(7 downto 0);
  subtype std16s is std_logic_vector(15 downto 0);
  subtype std32s is std_logic_vector(31 downto 0);
  function std4ts(arg : in std4t) return std4s;
  function std4st(arg : in std4s) return std4t;
  function std8ts(arg : in std8t) return std8s;
  function std8st(arg : in std8s) return std8t;
  function std16ts(arg : in std16t) return std16s;
  function std16st(arg : in std16s) return std16t;
  function std32ts(arg : in std32t) return std32s;
  function std32st(arg : in std32s) return std32t;
end typepackage;

package body typepackage is

  function std4ts(arg: in std4t) return std4s is
    variable result: std4s;
  begin
    stdloop: for i in 0 to 3 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std4ts;
 
  function std4st(arg: in std4s) return std4t is
    variable result: std4t;
  begin
    stdloop: for i in 0 to 3 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std4st;
 
  function std8ts(arg: in std8t) return std8s is
    variable result: std8s;
  begin
    stdloop: for i in 0 to 7 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std8ts;
 
  function std8st(arg: in std8s) return std8t is
    variable result: std8t;
  begin
    stdloop: for i in 0 to 7 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std8st;

  function std16ts(arg: in std16t) return std16s is
    variable result: std16s;
  begin
    stdloop: for i in 0 to 15 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std16ts;
 
  function std16st(arg: in std16s) return std16t is
    variable result: std16t;
  begin
    stdloop: for i in 0 to 15 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std16st;
 
  function std32ts(arg: in std32t) return std32s is
    variable result: std32s;
  begin
    stdloop: for i in 0 to 31 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std32ts;
 
  function std32st(arg: in std32s) return std32t is
    variable result: std32t;
  begin
    stdloop: for i in 0 to 31 loop
       result(i) := arg(i);
    end loop stdloop;
    return result;
  end std32st;

end typepackage;
