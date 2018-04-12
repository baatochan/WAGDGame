<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="Clk_50MHz" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="ClockDivider_25MHz">
            <timestamp>2018-4-12T7:37:50</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VGADisplay">
            <timestamp>2018-4-12T7:37:44</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="ClockDivider_25MHz" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="CLKIN" />
            <blockpin signalname="XLXN_1" name="CLKOUT" />
        </block>
        <block symbolname="VGADisplay" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="PixelClk_25MHz" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="1760" height="1360">
        <instance x="320" y="256" name="XLXI_1" orien="R0">
        </instance>
        <instance x="720" y="512" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="720" y1="224" y2="224" x1="704" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="320" y1="224" y2="224" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="224" name="Clk_50MHz" orien="R180" />
        <branch name="VGA_R">
            <wire x2="1136" y1="224" y2="224" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="224" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="1136" y1="288" y2="288" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="288" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="1136" y1="352" y2="352" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="352" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="1136" y1="416" y2="416" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="416" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1136" y1="480" y2="480" x1="1104" />
        </branch>
        <iomarker fontsize="28" x="1136" y="480" name="VGA_VS" orien="R0" />
    </sheet>
</drawing>