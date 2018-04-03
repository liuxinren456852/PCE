clc;
clear all;
close all;

Dir_Error  = '../TestData/Result';
Dir_Box    = '../TestData/GT';
Dir_Out    = '../TestData/Result';

Targets  = {...
    'cube';...
    'dsp';...
    'gps';...
    'helios';...
    'minisat';...
    'radarsat';...
    'scisat';...
    'spot';...
    };

N = length(Targets);
for i=1:N
    tar = Targets{i};
    FilePath_ER2S   = [Dir_Error '/' tar '_R2S.txt'];
    FilePath_ES2R   = [Dir_Error '/' tar '_S2R.txt'];
    FilePath_Box    = [Dir_Box '/' tar '_box.txt'];
    FilePath_OutFig = [Dir_Out '/' tar '_est.fig'];
    PCEstimation(FilePath_ER2S, FilePath_ES2R, FilePath_Box, FilePath_OutFig);
end