
package sdn4core.examples.dynTSN.Integra;

import sdn4core.controller.base.NetConfOpenFlowController;
import inet.node.ethernet.Eth100M;
import inet.common.misc.ThruputMeteringChannel;
import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.common.scenario.ScenarioManager;
import inet.node.ethernet.EtherSwitch;
import sdn4core.switch.base.NewOpenFlowSwitch;
import sdn4core.switch.IEEE8021Qbv.IEEE8021QbvOFNCSwitch;
import core4inet.nodes.ethernet.IEEE8021Q.IEEE8021QEtherHost;



module EdgeSwitch extends NewOpenFlowSwitch
{
    @display("i=device/switch;i2=OpenFlow-Logo-small");
}

module Switch extends IEEE8021QbvOFNCSwitch
{
    @display("i=device/switch;i2=OpenFlow-Logo-small");
}

module Host extends IEEE8021QEtherHost
{
    @display("bgb=487,314"); //background size, color, border
}


network Integra
{
    parameters:
        @display("bgb=1000.0,500.0,white");

    types:
        channel controlplane extends ThruputMeteringChannel
           {
               delay = 1us;
               datarate = 1Gbps;
               thruputDisplayFormat = "u";
           }

           //do not forget to change it also in the monitoring controller app
           channel backbone extends Eth100M
           {
               //delay = 1us;
               length = 5m;
           }

           channel edge extends Eth100M
           {
               //delay = 1us;
               length = 10m;
           }
    submodules:
        configurator: IPv4NetworkConfigurator {}
        scenarioManager: ScenarioManager;
        open_flow_controller1: NetConfOpenFlowController { }
        	switch1: Switch {
	        gates:
	            gateDataPlane[3];
	    }
    switch2: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch3: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
	switch4: Switch {
	        gates:
	            gateDataPlane[5];
	    }
	switch5: Switch {
	        gates:
	            gateDataPlane[3];
	    }
    switch6: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
	switch7: Switch {
	        gates:
	            gateDataPlane[3];
	    }
	switch8: Switch {
	        gates:
	            gateDataPlane[3];
	    }
	switch9: Switch {
	        gates:
	            gateDataPlane[5];
	    }
    switch10: EdgeSwitch {
            gates:
                gateDataPlane[6];
        }
    switch11: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch12: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch13: EdgeSwitch {
            gates:
                gateDataPlane[6];
        }
    switch14: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch15: EdgeSwitch {
            gates:
                gateDataPlane[6];
        }
    switch16: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch17: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch18: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch19: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
    switch20: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
	switch21: Switch {
	        gates:
	            gateDataPlane[4];
	    }
	switch22: Switch {
	        gates:
	            gateDataPlane[3];
	    }
    switch23: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
	switch24: Switch {
	        gates:
	            gateDataPlane[5];
	    }
    switch25: EdgeSwitch {
            gates:
                gateDataPlane[7];
        }
	switch26: Switch {
	        gates:
	            gateDataPlane[5];
	    }
	switch27: Switch {
	        gates:
	            gateDataPlane[4];
	    }


        ethswitch: EtherSwitch {}

        	host1: Host { }
	host2: Host { }
	host3: Host { }
	host4: Host { }
	host5: Host { }
	host6: Host { }
	host7: Host { }
	host8: Host { }
	host9: Host { }
	host10: Host { }
	host11: Host { }
	host12: Host { }
	host13: Host { }
	host14: Host { }
	host15: Host { }
	host16: Host { }
	host17: Host { }
	host18: Host { }
	host19: Host { }
	host20: Host { }
	host21: Host { }
	host22: Host { }
	host23: Host { }
	host24: Host { }
	host25: Host { }
	host26: Host { }
	host27: Host { }
	host28: Host { }
	host29: Host { }
	host30: Host { }
	host31: Host { }
	host32: Host { }
	host33: Host { }
	host34: Host { }
	host35: Host { }
	host36: Host { }
	host37: Host { }
	host38: Host { }
	host39: Host { }
	host40: Host { }
	host41: Host { }
	host42: Host { }
	host43: Host { }
	host44: Host { }
	host45: Host { }
	host46: Host { }
	host47: Host { }
	host48: Host { }
	host49: Host { }
	host50: Host { }
	host51: Host { }
	host52: Host { }
	host53: Host { }
	host54: Host { }
	host55: Host { }
	host56: Host { }
	host57: Host { }
	host58: Host { }
	host59: Host { }
	host60: Host { }
	host61: Host { }
	host62: Host { }
	host63: Host { }
	host64: Host { }
	host65: Host { }
	host66: Host { }
	host67: Host { }
	host68: Host { }
	host69: Host { }
	host70: Host { }
	host71: Host { }
	host72: Host { }
	host73: Host { }
	host74: Host { }
	host75: Host { }
	host76: Host { }
	host77: Host { }
	host78: Host { }
	host79: Host { }
	host80: Host { }

    connections:
        switch1.gateDataPlane[0] <--> backbone <--> switch4.gateDataPlane[0];
switch1.gateDataPlane[1] <--> backbone <--> switch17.gateDataPlane[0];
switch1.gateDataPlane[2] <--> backbone <--> switch21.gateDataPlane[0];
switch2.gateDataPlane[0] <--> backbone <--> switch8.gateDataPlane[0];
switch2.gateDataPlane[1] <--> backbone <--> switch21.gateDataPlane[1];
switch3.gateDataPlane[0] <--> backbone <--> switch4.gateDataPlane[1];
switch3.gateDataPlane[1] <--> backbone <--> switch19.gateDataPlane[0];
switch4.gateDataPlane[2] <--> backbone <--> switch16.gateDataPlane[0];
switch4.gateDataPlane[3] <--> backbone <--> switch19.gateDataPlane[1];
switch4.gateDataPlane[4] <--> backbone <--> switch27.gateDataPlane[0];
switch5.gateDataPlane[0] <--> backbone <--> switch6.gateDataPlane[0];
switch5.gateDataPlane[1] <--> backbone <--> switch7.gateDataPlane[0];
switch5.gateDataPlane[2] <--> backbone <--> switch8.gateDataPlane[1];
switch6.gateDataPlane[1] <--> backbone <--> switch9.gateDataPlane[0];
switch7.gateDataPlane[1] <--> backbone <--> switch8.gateDataPlane[2];
switch7.gateDataPlane[2] <--> backbone <--> switch24.gateDataPlane[0];
switch9.gateDataPlane[1] <--> backbone <--> switch10.gateDataPlane[0];
switch9.gateDataPlane[2] <--> backbone <--> switch14.gateDataPlane[0];
switch9.gateDataPlane[3] <--> backbone <--> switch15.gateDataPlane[0];
switch9.gateDataPlane[4] <--> backbone <--> switch26.gateDataPlane[0];
switch11.gateDataPlane[0] <--> backbone <--> switch13.gateDataPlane[0];
switch11.gateDataPlane[1] <--> backbone <--> switch26.gateDataPlane[1];
switch12.gateDataPlane[0] <--> backbone <--> switch26.gateDataPlane[2];
switch12.gateDataPlane[1] <--> backbone <--> switch27.gateDataPlane[1];
switch14.gateDataPlane[1] <--> backbone <--> switch24.gateDataPlane[1];
switch16.gateDataPlane[1] <--> backbone <--> switch17.gateDataPlane[1];
switch18.gateDataPlane[0] <--> backbone <--> switch20.gateDataPlane[0];
switch18.gateDataPlane[1] <--> backbone <--> switch27.gateDataPlane[2];
switch20.gateDataPlane[1] <--> backbone <--> switch21.gateDataPlane[2];
switch21.gateDataPlane[3] <--> backbone <--> switch22.gateDataPlane[0];
switch22.gateDataPlane[1] <--> backbone <--> switch23.gateDataPlane[0];
switch22.gateDataPlane[2] <--> backbone <--> switch24.gateDataPlane[2];
switch23.gateDataPlane[1] <--> backbone <--> switch24.gateDataPlane[3];
switch24.gateDataPlane[4] <--> backbone <--> switch25.gateDataPlane[0];
switch25.gateDataPlane[1] <--> backbone <--> switch26.gateDataPlane[3];
switch26.gateDataPlane[4] <--> backbone <--> switch27.gateDataPlane[3];

        switch2.gateDataPlane[2] <--> edge <--> host1.ethg;
switch2.gateDataPlane[3] <--> edge <--> host2.ethg;
switch2.gateDataPlane[4] <--> edge <--> host3.ethg;
switch2.gateDataPlane[5] <--> edge <--> host4.ethg;
switch2.gateDataPlane[6] <--> edge <--> host5.ethg;
switch3.gateDataPlane[2] <--> edge <--> host6.ethg;
switch3.gateDataPlane[3] <--> edge <--> host7.ethg;
switch3.gateDataPlane[4] <--> edge <--> host8.ethg;
switch3.gateDataPlane[5] <--> edge <--> host9.ethg;
switch3.gateDataPlane[6] <--> edge <--> host10.ethg;
switch6.gateDataPlane[2] <--> edge <--> host11.ethg;
switch6.gateDataPlane[3] <--> edge <--> host12.ethg;
switch6.gateDataPlane[4] <--> edge <--> host13.ethg;
switch6.gateDataPlane[5] <--> edge <--> host14.ethg;
switch6.gateDataPlane[6] <--> edge <--> host15.ethg;
switch10.gateDataPlane[1] <--> edge <--> host16.ethg;
switch10.gateDataPlane[2] <--> edge <--> host17.ethg;
switch10.gateDataPlane[3] <--> edge <--> host18.ethg;
switch10.gateDataPlane[4] <--> edge <--> host19.ethg;
switch10.gateDataPlane[5] <--> edge <--> host20.ethg;
switch11.gateDataPlane[2] <--> edge <--> host21.ethg;
switch11.gateDataPlane[3] <--> edge <--> host22.ethg;
switch11.gateDataPlane[4] <--> edge <--> host23.ethg;
switch11.gateDataPlane[5] <--> edge <--> host24.ethg;
switch11.gateDataPlane[6] <--> edge <--> host25.ethg;
switch12.gateDataPlane[2] <--> edge <--> host26.ethg;
switch12.gateDataPlane[3] <--> edge <--> host27.ethg;
switch12.gateDataPlane[4] <--> edge <--> host28.ethg;
switch12.gateDataPlane[5] <--> edge <--> host29.ethg;
switch12.gateDataPlane[6] <--> edge <--> host30.ethg;
switch13.gateDataPlane[1] <--> edge <--> host31.ethg;
switch13.gateDataPlane[2] <--> edge <--> host32.ethg;
switch13.gateDataPlane[3] <--> edge <--> host33.ethg;
switch13.gateDataPlane[4] <--> edge <--> host34.ethg;
switch13.gateDataPlane[5] <--> edge <--> host35.ethg;
switch14.gateDataPlane[2] <--> edge <--> host36.ethg;
switch14.gateDataPlane[3] <--> edge <--> host37.ethg;
switch14.gateDataPlane[4] <--> edge <--> host38.ethg;
switch14.gateDataPlane[5] <--> edge <--> host39.ethg;
switch14.gateDataPlane[6] <--> edge <--> host40.ethg;
switch15.gateDataPlane[1] <--> edge <--> host41.ethg;
switch15.gateDataPlane[2] <--> edge <--> host42.ethg;
switch15.gateDataPlane[3] <--> edge <--> host43.ethg;
switch15.gateDataPlane[4] <--> edge <--> host44.ethg;
switch15.gateDataPlane[5] <--> edge <--> host45.ethg;
switch16.gateDataPlane[2] <--> edge <--> host46.ethg;
switch16.gateDataPlane[3] <--> edge <--> host47.ethg;
switch16.gateDataPlane[4] <--> edge <--> host48.ethg;
switch16.gateDataPlane[5] <--> edge <--> host49.ethg;
switch16.gateDataPlane[6] <--> edge <--> host50.ethg;
switch17.gateDataPlane[2] <--> edge <--> host51.ethg;
switch17.gateDataPlane[3] <--> edge <--> host52.ethg;
switch17.gateDataPlane[4] <--> edge <--> host53.ethg;
switch17.gateDataPlane[5] <--> edge <--> host54.ethg;
switch17.gateDataPlane[6] <--> edge <--> host55.ethg;
switch18.gateDataPlane[2] <--> edge <--> host56.ethg;
switch18.gateDataPlane[3] <--> edge <--> host57.ethg;
switch18.gateDataPlane[4] <--> edge <--> host58.ethg;
switch18.gateDataPlane[5] <--> edge <--> host59.ethg;
switch18.gateDataPlane[6] <--> edge <--> host60.ethg;
switch19.gateDataPlane[2] <--> edge <--> host61.ethg;
switch19.gateDataPlane[3] <--> edge <--> host62.ethg;
switch19.gateDataPlane[4] <--> edge <--> host63.ethg;
switch19.gateDataPlane[5] <--> edge <--> host64.ethg;
switch19.gateDataPlane[6] <--> edge <--> host65.ethg;
switch20.gateDataPlane[2] <--> edge <--> host66.ethg;
switch20.gateDataPlane[3] <--> edge <--> host67.ethg;
switch20.gateDataPlane[4] <--> edge <--> host68.ethg;
switch20.gateDataPlane[5] <--> edge <--> host69.ethg;
switch20.gateDataPlane[6] <--> edge <--> host70.ethg;
switch23.gateDataPlane[2] <--> edge <--> host71.ethg;
switch23.gateDataPlane[3] <--> edge <--> host72.ethg;
switch23.gateDataPlane[4] <--> edge <--> host73.ethg;
switch23.gateDataPlane[5] <--> edge <--> host74.ethg;
switch23.gateDataPlane[6] <--> edge <--> host75.ethg;
switch25.gateDataPlane[2] <--> edge <--> host76.ethg;
switch25.gateDataPlane[3] <--> edge <--> host77.ethg;
switch25.gateDataPlane[4] <--> edge <--> host78.ethg;
switch25.gateDataPlane[5] <--> edge <--> host79.ethg;
switch25.gateDataPlane[6] <--> edge <--> host80.ethg;

        ethswitch.ethg++ <--> controlplane <--> switch1.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch2.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch3.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch4.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch5.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch6.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch7.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch8.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch9.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch10.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch11.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch12.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch13.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch14.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch15.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch16.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch17.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch18.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch19.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch20.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch21.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch22.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch23.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch24.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch25.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch26.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> switch27.gateControlPlane;
ethswitch.ethg++ <--> controlplane <--> open_flow_controller1.ethg++;
}
