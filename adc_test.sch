<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_49" />
        <signal name="XLXN_62" />
        <signal name="XLXN_65(7:0)" />
        <signal name="XLXN_77(13:0)" />
        <signal name="XLXN_79" />
        <signal name="XLXN_92" />
        <signal name="XLXN_100" />
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
        <signal name="Line(13:0)" />
        <signal name="XLXN_114" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_33(7:0)" />
        <signal name="VGA_VS" />
        <signal name="VGA_HS" />
        <signal name="VGA_B" />
        <signal name="VGA_G" />
        <signal name="VGA_R" />
        <signal name="XLXN_122" />
        <signal name="XLXN_124" />
        <signal name="Btn_0" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127" />
        <signal name="XLXN_128" />
        <signal name="XLXN_129" />
        <signal name="XLXN_130" />
        <signal name="XLXN_131" />
        <signal name="XLXN_132" />
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
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="Btn_0" />
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
        <blockdef name="VGADisplay">
            <timestamp>2018-5-24T21:20:24</timestamp>
            <rect width="352" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <block symbolname="ADC_Ctrl" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
            <blockpin signalname="XLXN_131" name="AMP_WE" />
            <blockpin signalname="XLXN_132" name="ADC_Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="AMP_DOUT" name="AMP_DOUT" />
            <blockpin signalname="XLXN_33(7:0)" name="AMP_DI(7:0)" />
            <blockpin name="Busy" />
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
        <block symbolname="VGADisplay" name="XLXI_6">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Btn_0" name="RESUME_BTN" />
            <blockpin signalname="Line(13:0)" name="POSITION_IN(13:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
            <blockpin signalname="XLXN_131" name="AMP_WE" />
            <blockpin signalname="XLXN_132" name="ADC_Start" />
            <blockpin signalname="XLXN_33(7:0)" name="AMP_DI(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="2720" height="1760">
        <branch name="SPI_MISO">
            <wire x2="1168" y1="336" y2="336" x1="1136" />
        </branch>
        <branch name="AMP_DOUT">
            <wire x2="1168" y1="656" y2="656" x1="1136" />
        </branch>
        <branch name="SPI_MOSI">
            <wire x2="1168" y1="400" y2="400" x1="1136" />
        </branch>
        <branch name="SPI_SCK">
            <wire x2="1168" y1="464" y2="464" x1="1136" />
        </branch>
        <branch name="AD_CONV">
            <wire x2="1168" y1="528" y2="528" x1="1136" />
        </branch>
        <branch name="AMP_CS">
            <wire x2="1168" y1="592" y2="592" x1="1136" />
        </branch>
        <branch name="AMP_SHDN">
            <wire x2="1168" y1="720" y2="720" x1="1136" />
        </branch>
        <branch name="DAC_CLR">
            <wire x2="1168" y1="784" y2="784" x1="1136" />
        </branch>
        <branch name="DAC_CS">
            <wire x2="1168" y1="848" y2="848" x1="1136" />
        </branch>
        <branch name="SPI_SS_B">
            <wire x2="1168" y1="912" y2="912" x1="1136" />
        </branch>
        <branch name="FPGA_INIT_B">
            <wire x2="1168" y1="1040" y2="1040" x1="1136" />
        </branch>
        <branch name="Line(13:0)">
            <wire x2="1168" y1="1136" y2="1136" x1="1136" />
            <wire x2="1168" y1="1136" y2="1392" x1="1168" />
            <wire x2="1536" y1="1392" y2="1392" x1="1168" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="640" y1="1200" y2="1200" x1="480" />
            <wire x2="656" y1="1200" y2="1200" x1="640" />
            <wire x2="640" y1="1200" y2="1264" x1="640" />
            <wire x2="656" y1="1264" y2="1264" x1="640" />
            <wire x2="640" y1="1264" y2="1328" x1="640" />
            <wire x2="1472" y1="1328" y2="1328" x1="640" />
            <wire x2="1536" y1="944" y2="944" x1="1472" />
            <wire x2="1472" y1="944" y2="1328" x1="1472" />
        </branch>
        <branch name="XLXN_33(7:0)">
            <wire x2="656" y1="400" y2="400" x1="608" />
            <wire x2="608" y1="400" y2="1456" x1="608" />
            <wire x2="2048" y1="1456" y2="1456" x1="608" />
            <wire x2="2048" y1="1392" y2="1392" x1="2016" />
            <wire x2="2048" y1="1392" y2="1456" x1="2048" />
        </branch>
        <instance x="656" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <branch name="VGA_VS">
            <wire x2="2048" y1="1200" y2="1200" x1="2016" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2048" y1="1136" y2="1136" x1="2016" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2048" y1="1072" y2="1072" x1="2016" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2048" y1="1008" y2="1008" x1="2016" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2048" y1="944" y2="944" x1="2016" />
        </branch>
        <instance x="1536" y="1424" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1168" y="336" name="SPI_MISO" orien="R0" />
        <iomarker fontsize="28" x="1168" y="656" name="AMP_DOUT" orien="R0" />
        <iomarker fontsize="28" x="1168" y="400" name="SPI_MOSI" orien="R0" />
        <iomarker fontsize="28" x="1168" y="464" name="SPI_SCK" orien="R0" />
        <iomarker fontsize="28" x="1168" y="592" name="AMP_CS" orien="R0" />
        <iomarker fontsize="28" x="1168" y="720" name="AMP_SHDN" orien="R0" />
        <iomarker fontsize="28" x="1168" y="784" name="DAC_CLR" orien="R0" />
        <iomarker fontsize="28" x="1168" y="848" name="DAC_CS" orien="R0" />
        <iomarker fontsize="28" x="1168" y="912" name="SPI_SS_B" orien="R0" />
        <iomarker fontsize="28" x="1168" y="1040" name="FPGA_INIT_B" orien="R0" />
        <iomarker fontsize="28" x="1168" y="528" name="AD_CONV" orien="R0" />
        <iomarker fontsize="28" x="2048" y="944" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2048" y="1008" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2048" y="1072" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2048" y="1136" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2048" y="1200" name="VGA_VS" orien="R0" />
        <branch name="Btn_0">
            <wire x2="512" y1="1264" y2="1264" x1="480" />
            <wire x2="512" y1="1264" y2="1360" x1="512" />
            <wire x2="1504" y1="1360" y2="1360" x1="512" />
            <wire x2="1504" y1="1168" y2="1360" x1="1504" />
            <wire x2="1536" y1="1168" y2="1168" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="480" y="1200" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="480" y="1264" name="Btn_0" orien="R180" />
        <branch name="XLXN_131">
            <wire x2="544" y1="336" y2="1520" x1="544" />
            <wire x2="2112" y1="1520" y2="1520" x1="544" />
            <wire x2="656" y1="336" y2="336" x1="544" />
            <wire x2="2112" y1="1264" y2="1264" x1="2016" />
            <wire x2="2112" y1="1264" y2="1520" x1="2112" />
        </branch>
        <branch name="XLXN_132">
            <wire x2="656" y1="496" y2="496" x1="576" />
            <wire x2="576" y1="496" y2="1488" x1="576" />
            <wire x2="2080" y1="1488" y2="1488" x1="576" />
            <wire x2="2080" y1="1328" y2="1328" x1="2016" />
            <wire x2="2080" y1="1328" y2="1488" x1="2080" />
        </branch>
    </sheet>
</drawing>