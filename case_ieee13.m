function mpc = case_ieee13
%   Power flow data for IEEE 13 bus test case (single phase equivalent).
%
%	This testbed is distributed in the hope that it will be useful, but without any warranty.
%	We do request that publications in which this testbed is adopted, explicitly acknowledge that fact by citing:
%
%	N. Nazir, M. Almassalkhi (2020)
%	"Voltage positioning using co-optimization of controllable grid assets"
%	Preprint available at http://arxiv.org/abs/1911.00338

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 1;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0.0 	0.0 	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	2	1	0.00	0.00	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	3	1	0.160	0.110	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	4	1	0.170	0.125	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	5	1	0.230	0.132	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	6	1	0.555	0.371	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	7	1	0.485	0.190	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	8	1	0.00	0.00	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	9	1	0.00	0.00	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	10	1	0.128	0.086	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
	11	1	0.170	0.080	0.000	0.000	1	1	0	4.16	1	1.2	0.8	;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	200	-200	1	1	1	200	-200	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.0076	0.0223	0	100	100	100	0	0	1	-360	360	;
	2	3	0.0041	0.0065	0	100	100	100	0	0	1	-360	360	;
	2	4	0.0073	0.0074	0	100	100	100	0	0	1	-360	360	;
	4	5	0.0044	0.0044	0	100	100	100	0	0	1	-360	360	;
	2	6	0.0076	0.0223	0	100	100	100	0	0	1	-360	360	;
	6	7	0.0044	0.0024	0	100	100	100	0	0	1	-360	360	;
	6	8	0.0038	0.0111	0	100	100	100	0	0	1	-360	360	;
	6	9	0.0043	0.0045	0	100	100	100	0	0	1	-360	360	;
	9	10	0.0118	0.0045	0	100	100	100	0	0	1	-360	360	;
	9	11	0.0044	0.0044	0	100	100	100	0	0	1	-360	360	;
];
