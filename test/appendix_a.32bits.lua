return {
  { roundtrip = true, cbor = "AA==", decoded = 0, hex = "00" };
  { roundtrip = true, cbor = "AQ==", decoded = 1, hex = "01" };
  { roundtrip = true, cbor = "Cg==", decoded = 10, hex = "0a" };
  { roundtrip = true, cbor = "Fw==", decoded = 23, hex = "17" };
  { roundtrip = true, cbor = "GBg=", decoded = 24, hex = "1818" };
  { roundtrip = true, cbor = "GBk=", decoded = 25, hex = "1819" };
  { roundtrip = true, cbor = "GGQ=", decoded = 100, hex = "1864" };
  { roundtrip = true, cbor = "GQPo", decoded = 1000, hex = "1903e8" };
  { roundtrip = true, cbor = "GgAPQkA=", decoded = 1000000, hex = "1a000f4240" };
--  { roundtrip = true, cbor = "GwAAAOjUpRAA", decoded = 1000000000000, hex = "1b000000e8d4a51000" };
--  { roundtrip = true, cbor = "G///////////", decoded = 1.844674407371e+19, hex = "1bffffffffffffffff" };
--  { roundtrip = true, cbor = "wkkBAAAAAAAAAAA=", decoded = 1.844674407371e+19, hex = "c249010000000000000000" };
--  { roundtrip = true, cbor = "O///////////", decoded = -1.844674407371e+19, hex = "3bffffffffffffffff" };
--  { roundtrip = true, cbor = "w0kBAAAAAAAAAAA=", decoded = -1.844674407371e+19, hex = "c349010000000000000000" };
  { roundtrip = true, cbor = "IA==", decoded = -1, hex = "20" };
  { roundtrip = true, cbor = "KQ==", decoded = -10, hex = "29" };
  { roundtrip = true, cbor = "OGM=", decoded = -100, hex = "3863" };
  { roundtrip = true, cbor = "OQPn", decoded = -1000, hex = "3903e7" };
  { roundtrip = true, cbor = "+QAA", decoded = 0, hex = "f90000" };
  { roundtrip = true, cbor = "+YAA", decoded = -0, hex = "f98000" };
  { roundtrip = true, cbor = "+TwA", decoded = 1, hex = "f93c00" };
--  { roundtrip = true, cbor = "+z/xmZmZmZma", decoded = 1.1, hex = "fb3ff199999999999a" };
  { roundtrip = true, cbor = "+T4A", decoded = 1.5, hex = "f93e00" };
  { roundtrip = true, cbor = "+Xv/", decoded = 65504, hex = "f97bff" };
  { roundtrip = true, cbor = "+kfDUAA=", decoded = 100000, hex = "fa47c35000" };
--  { roundtrip = true, cbor = "+n9///8=", decoded = 3.4028234663853e+38, hex = "fa7f7fffff" };
--  { roundtrip = true, cbor = "+3435DyIAHWc", decoded = 1e+300, hex = "fb7e37e43c8800759c" };
--  { roundtrip = true, cbor = "+QAB", decoded = 5.9604644775391e-08, hex = "f90001" };
  { roundtrip = true, cbor = "+QQA", decoded = 6.103515625e-05, hex = "f90400" };
  { roundtrip = true, cbor = "+cQA", decoded = -4, hex = "f9c400" };
--  { roundtrip = true, cbor = "+8AQZmZmZmZm", decoded = -4.1, hex = "fbc010666666666666" };
  { roundtrip = true, cbor = "+XwA", diagnostic = "Infinity", hex = "f97c00" };
  { roundtrip = true, cbor = "+X4A", diagnostic = "NaN", hex = "f97e00" };
  { roundtrip = true, cbor = "+fwA", diagnostic = "-Infinity", hex = "f9fc00" };
  { roundtrip = false, cbor = "+n+AAAA=", diagnostic = "Infinity", hex = "fa7f800000" };
  { roundtrip = false, cbor = "+n/AAAA=", diagnostic = "NaN", hex = "fa7fc00000" };
  { roundtrip = false, cbor = "+v+AAAA=", diagnostic = "-Infinity", hex = "faff800000" };
--  { roundtrip = false, cbor = "+3/wAAAAAAAA", diagnostic = "Infinity", hex = "fb7ff0000000000000" };
--  { roundtrip = false, cbor = "+3/4AAAAAAAA", diagnostic = "NaN", hex = "fb7ff8000000000000" };
--  { roundtrip = false, cbor = "+//wAAAAAAAA", diagnostic = "-Infinity", hex = "fbfff0000000000000" };
  { roundtrip = true, cbor = "9A==", decoded = false, hex = "f4" };
  { roundtrip = true, cbor = "9Q==", decoded = true, hex = "f5" };
  { roundtrip = true, cbor = "9g==", hex = "f6" };
  { roundtrip = true, cbor = "9w==", diagnostic = "undefined", hex = "f7" };
  { roundtrip = true, cbor = "8A==", diagnostic = "simple(16)", hex = "f0" };
  { roundtrip = true, cbor = "+Bg=", diagnostic = "simple(24)", hex = "f818" };
  { roundtrip = true, cbor = "+P8=", diagnostic = "simple(255)", hex = "f8ff" };
  { roundtrip = true, cbor = "wHQyMDEzLTAzLTIxVDIwOjA0OjAwWg==", diagnostic = "0(\"2013-03-21T20:04:00Z\")", hex = "c074323031332d30332d32315432303a30343a30305a" };
  { roundtrip = true, cbor = "wRpRS2ew", diagnostic = "1(1363896240)", hex = "c11a514b67b0" };
  { roundtrip = true, cbor = "wftB1FLZ7CAAAA==", diagnostic = "1(1363896240.5)", hex = "c1fb41d452d9ec200000" };
  { roundtrip = true, cbor = "10QBAgME", diagnostic = "23(h'01020304')", hex = "d74401020304" };
  { roundtrip = true, cbor = "2BhFZElFVEY=", diagnostic = "24(h'6449455446')", hex = "d818456449455446" };
  { roundtrip = true, cbor = "2CB2aHR0cDovL3d3dy5leGFtcGxlLmNvbQ==", diagnostic = "32(\"http://www.example.com\")", hex = "d82076687474703a2f2f7777772e6578616d706c652e636f6d" };
  { roundtrip = true, cbor = "QA==", diagnostic = "h''", hex = "40" };
  { roundtrip = true, cbor = "RAECAwQ=", diagnostic = "h'01020304'", hex = "4401020304" };
  { roundtrip = true, cbor = "YA==", decoded = "", hex = "60" };
  { roundtrip = true, cbor = "YWE=", decoded = "a", hex = "6161" };
  { roundtrip = true, cbor = "ZElFVEY=", decoded = "IETF", hex = "6449455446" };
  { roundtrip = true, cbor = "YiJc", decoded = "\"\\", hex = "62225c" };
  { roundtrip = true, cbor = "YsO8", decoded = "ü", hex = "62c3bc" };
  { roundtrip = true, cbor = "Y+awtA==", decoded = "水", hex = "63e6b0b4" };
  { roundtrip = true, cbor = "ZPCQhZE=", decoded = "𐅑", hex = "64f0908591" };
  {
    roundtrip = true;
    cbor = "gA==";
    decoded = { };
    hex = "80";
  };
  {
    roundtrip = true;
    cbor = "gwECAw==";
    decoded = { 1, 2, 3 };
    hex = "83010203";
  };
  {
    roundtrip = true;
    cbor = "gwGCAgOCBAU=";
    decoded =
    {
      1;
      { 2, 3 };
      { 4, 5 };
    };
    hex = "8301820203820405";
  };
  {
    roundtrip = true;
    cbor = "mBkBAgMEBQYHCAkKCwwNDg8QERITFBUWFxgYGBk=";
    decoded = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 };
    hex = "98190102030405060708090a0b0c0d0e0f101112131415161718181819";
  };
  {
    roundtrip = true;
    cbor = "oA==";
    decoded = { };
    hex = "a0";
  };
  { roundtrip = true, cbor = "ogECAwQ=", diagnostic = "{1: 2, 3: 4}", hex = "a201020304" };
  {
    roundtrip = true;
    cbor = "omFhAWFiggID";
    decoded =
    {
      a = 1;
      b = { 2, 3 };
    };
    hex = "a26161016162820203";
  };
  {
    roundtrip = true;
    cbor = "gmFhoWFiYWM=";
    decoded =
    {
      "a";
      { b = "c" };
    };
    hex = "826161a161626163";
  };
  {
    roundtrip = true;
    cbor = "pWFhYUFhYmFCYWNhQ2FkYURhZWFF";
    decoded = { b = "B", d = "D", c = "C", a = "A", e = "E" };
    hex = "a56161614161626142616361436164614461656145";
  };
  { roundtrip = false, cbor = "X0IBAkMDBAX/", diagnostic = "(_ h'0102', h'030405')", hex = "5f42010243030405ff" };
  { roundtrip = false, cbor = "f2VzdHJlYWRtaW5n/w==", decoded = "streaming", hex = "7f657374726561646d696e67ff" };
  {
    roundtrip = false;
    cbor = "n/8=";
    decoded = { };
    hex = "9fff";
  };
  {
    roundtrip = false;
    cbor = "nwGCAgOfBAX//w==";
    decoded =
    {
      1;
      { 2, 3 };
      { 4, 5 };
    };
    hex = "9f018202039f0405ffff";
  };
  {
    roundtrip = false;
    cbor = "nwGCAgOCBAX/";
    decoded =
    {
      1;
      { 2, 3 };
      { 4, 5 };
    };
    hex = "9f01820203820405ff";
  };
  {
    roundtrip = false;
    cbor = "gwGCAgOfBAX/";
    decoded =
    {
      1;
      { 2, 3 };
      { 4, 5 };
    };
    hex = "83018202039f0405ff";
  };
  {
    roundtrip = false;
    cbor = "gwGfAgP/ggQF";
    decoded =
    {
      1;
      { 2, 3 };
      { 4, 5 };
    };
    hex = "83019f0203ff820405";
  };
  {
    roundtrip = false;
    cbor = "nwECAwQFBgcICQoLDA0ODxAREhMUFRYXGBgYGf8=";
    decoded = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 };
    hex = "9f0102030405060708090a0b0c0d0e0f101112131415161718181819ff";
  };
  {
    roundtrip = false;
    cbor = "v2FhAWFinwID//8=";
    decoded =
    {
      a = 1;
      b = { 2, 3 };
    };
    hex = "bf61610161629f0203ffff";
  };
  {
    roundtrip = false;
    cbor = "gmFhv2FiYWP/";
    decoded =
    {
      "a";
      { b = "c" };
    };
    hex = "826161bf61626163ff";
  };
  {
    roundtrip = false;
    cbor = "v2NGdW71Y0FtdCH/";
    decoded = { Fun = true, Amt = -2 };
    hex = "bf6346756ef563416d7421ff";
  };
}
