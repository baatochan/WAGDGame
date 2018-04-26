<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_3" />
        <signal name="XLXN_1(63:0)" />
        <signal name="XLXN_5" />
        <signal name="CLK" />
        <port polarity="Input" name="CLK" />
        <blockdef name="ADC_Ctrl">
            <timestamp>2018-4-26T6:46:41</timestamp>
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <rect width="64" x="0" y="-748" height="24" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="416" y1="-800" y2="-800" x1="480" />
            <line x2="480" y1="-736" y2="-736" x1="416" />
            <line x2="480" y1="-672" y2="-672" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-12" height="24" />
            <line x2="480" y1="0" y2="0" x1="416" />
            <rect width="64" x="416" y="52" height="24" />
            <line x2="480" y1="64" y2="64" x1="416" />
            <line x2="480" y1="128" y2="128" x1="416" />
            <line x2="0" y1="128" y2="128" x1="64" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="416" y1="-480" y2="-480" x1="480" />
            <line x2="0" y1="-640" y2="-640" x1="64" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-608" y2="-608" x1="416" />
            <rect width="352" x="64" y="-832" height="992" />
            <line x2="0" y1="0" y2="0" x1="64" />
            <line x2="0" y1="64" y2="64" x1="64" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2018-4-26T6:56:17</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_2">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_1(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin name="LCD_D(3:0)" />
            <blockpin name="LCD_E" />
            <blockpin name="LCD_RW" />
            <blockpin name="LCD_RS" />
            <blockpin name="SF_CE" />
        </block>
        <block symbolname="ADC_Ctrl" name="XLXI_1">
            <blockpin signalname="CLK" name="Clk_Sys" />
            <blockpin name="AMP_WE" />
            <blockpin name="ADC_Start" />
            <blockpin name="SPI_MISO" />
            <blockpin name="AMP_DOUT" />
            <blockpin name="AMP_DI(7:0)" />
            <blockpin name="Busy" />
            <blockpin name="SPI_MOSI" />
            <blockpin name="SPI_SCK" />
            <blockpin name="AMP_CS" />
            <blockpin name="AMP_SHDN" />
            <blockpin name="AD_CONV" />
            <blockpin name="DAC_CS" />
            <blockpin name="DAC_CLR" />
            <blockpin name="SPI_SS_B" />
            <blockpin name="SF_CE0" />
            <blockpin name="FPGA_INIT_B" />
            <blockpin signalname="XLXN_1(63:0)" name="ADC_DOA(13:0)" />
            <blockpin name="ADC_DOB(13:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1600" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <instance x="832" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(63:0)">
            <wire x2="1600" y1="1168" y2="1168" x1="1312" />
        </branch>
        <branch name="CLK">
            <wire x2="816" y1="1424" y2="1424" x1="688" />
            <wire x2="1600" y1="1424" y2="1424" x1="816" />
            <wire x2="832" y1="1232" y2="1232" x1="816" />
            <wire x2="816" y1="1232" y2="1296" x1="816" />
            <wire x2="832" y1="1296" y2="1296" x1="816" />
            <wire x2="816" y1="1296" y2="1424" x1="816" />
        </branch>
        <iomarker fontsize="28" x="688" y="1424" name="CLK" orien="R180" />
    </sheet>
</drawing>