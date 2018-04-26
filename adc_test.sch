<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="SPI_MISO" />
        <signal name="AMP_DOUT" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SCK" />
        <signal name="AD_CONV" />
        <signal name="AMP_CS" />
        <signal name="AMP_SHDN" />
        <signal name="DAC_CLR" />
        <signal name="DAC_CS" />
        <signal name="SPI_SS_B" />
        <signal name="FPGA_INIT_B" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="Line(63:0)" />
        <signal name="Line(13:0)" />
        <signal name="Line(63:14)" />
        <signal name="XLXN_33(7:0)" />
        <signal name="XLXN_34" />
        <signal name="XLXN_36(7:0)" />
        <signal name="XLXN_38(7:0)" />
        <signal name="XLXN_39" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Input" name="AMP_DOUT" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AMP_SHDN" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
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
        <blockdef name="continously_check_adc">
            <timestamp>2018-4-26T8:12:33</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="LCD1x64" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="Line(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="ADC_Ctrl" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="XLXN_34" name="AMP_WE" />
            <blockpin signalname="XLXN_7" name="ADC_Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_33(7:0)" name="AMP_DI(7:0)" />
            <blockpin signalname="XLXN_8" name="Busy" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AMP_SHDN" name="AMP_SHDN" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin signalname="Line(13:0)" name="ADC_DOA(13:0)" />
            <blockpin name="ADC_DOB(13:0)" />
            <blockpin name="Reset" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
        </block>
        <block symbolname="continously_check_adc" name="XLXI_5">
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_8" name="Busy" />
            <blockpin signalname="XLXN_34" name="ADCCheck" />
            <blockpin signalname="XLXN_7" name="ADCStart" />
            <blockpin signalname="XLXN_33(7:0)" name="ADCWord(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1600" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <instance x="832" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="208" y1="336" y2="336" x1="176" />
            <wire x2="176" y1="336" y2="1296" x1="176" />
            <wire x2="816" y1="1296" y2="1296" x1="176" />
            <wire x2="832" y1="1296" y2="1296" x1="816" />
            <wire x2="816" y1="1296" y2="1424" x1="816" />
            <wire x2="1600" y1="1424" y2="1424" x1="816" />
            <wire x2="816" y1="1424" y2="1424" x1="688" />
            <wire x2="832" y1="1232" y2="1232" x1="816" />
            <wire x2="816" y1="1232" y2="1296" x1="816" />
        </branch>
        <iomarker fontsize="28" x="688" y="1424" name="Clk_50MHz" orien="R180" />
        <branch name="SPI_MISO">
            <wire x2="1344" y1="368" y2="368" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="368" name="SPI_MISO" orien="R0" />
        <branch name="AMP_DOUT">
            <wire x2="1344" y1="688" y2="688" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="688" name="AMP_DOUT" orien="R0" />
        <branch name="SPI_MOSI">
            <wire x2="1344" y1="432" y2="432" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="432" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="1344" y1="496" y2="496" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="496" name="SPI_SCK" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="1328" y1="560" y2="560" x1="1312" />
            <wire x2="1344" y1="560" y2="560" x1="1328" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="1344" y1="624" y2="624" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="624" name="AMP_CS" orien="R0" />
        <branch name="AMP_SHDN">
            <wire x2="1344" y1="752" y2="752" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="752" name="AMP_SHDN" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="1344" y1="816" y2="816" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="816" name="DAC_CLR" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="1344" y1="880" y2="880" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="880" name="DAC_CS" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="1344" y1="944" y2="944" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="944" name="SPI_SS_B" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="1344" y1="1072" y2="1072" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1072" name="FPGA_INIT_B" orien="R0" />
        <branch name="LCD_E">
            <wire x2="2048" y1="1168" y2="1168" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1168" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2048" y1="1232" y2="1232" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1232" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2048" y1="1296" y2="1296" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1296" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2048" y1="1360" y2="1360" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1360" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2048" y1="1424" y2="1424" x1="2016" />
        </branch>
        <iomarker fontsize="28" x="2048" y="1424" name="SF_CE" orien="R0" />
        <branch name="Line(63:0)">
            <wire x2="1584" y1="848" y2="1168" x1="1584" />
            <wire x2="1600" y1="1168" y2="1168" x1="1584" />
            <wire x2="1760" y1="848" y2="848" x1="1584" />
            <wire x2="1760" y1="560" y2="576" x1="1760" />
            <wire x2="1760" y1="576" y2="672" x1="1760" />
            <wire x2="1760" y1="672" y2="848" x1="1760" />
        </branch>
        <bustap x2="1664" y1="576" y2="576" x1="1760" />
        <bustap x2="1664" y1="672" y2="672" x1="1760" />
        <branch name="Line(13:0)">
            <wire x2="1568" y1="1168" y2="1168" x1="1312" />
            <wire x2="1568" y1="672" y2="1168" x1="1568" />
            <wire x2="1664" y1="672" y2="672" x1="1568" />
        </branch>
        <branch name="Line(63:14)">
            <wire x2="1616" y1="336" y2="576" x1="1616" />
            <wire x2="1664" y1="576" y2="576" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1344" y="560" name="AD_CONV" orien="R0" />
        <branch name="XLXN_33(7:0)">
            <wire x2="816" y1="464" y2="464" x1="592" />
            <wire x2="832" y1="432" y2="432" x1="816" />
            <wire x2="816" y1="432" y2="464" x1="816" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="816" y1="336" y2="336" x1="592" />
            <wire x2="816" y1="336" y2="368" x1="816" />
            <wire x2="832" y1="368" y2="368" x1="816" />
        </branch>
        <instance x="208" y="496" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="208" y1="464" y2="464" x1="96" />
            <wire x2="96" y1="464" y2="1376" x1="96" />
            <wire x2="1328" y1="1376" y2="1376" x1="96" />
            <wire x2="1328" y1="1296" y2="1296" x1="1312" />
            <wire x2="1328" y1="1296" y2="1376" x1="1328" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="704" y1="400" y2="400" x1="592" />
            <wire x2="704" y1="400" y2="528" x1="704" />
            <wire x2="832" y1="528" y2="528" x1="704" />
        </branch>
    </sheet>
</drawing>