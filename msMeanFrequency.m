function [mean_freq] = msMeanFrequency(ms);
%MSPLOTCELLPOP Summary of this function goes here
%   Detailed explanation goes here

%% Analysis cell population data

for cell_i = 1:length(ms.transients);
    if ~isempty(ms.transients{cell_i});
    
    cell_start_times = ms.transients{cell_i}.start_time;
    cell_inter_spike_inter = diff(cell_start_times);
    cell_instantaneous_freqs = 1./cell_inter_spike_inter;
    
    mean_freqs(cell_i) = mean(cell_instantaneous_freqs);
    
    end

end

mean_freq = mean(mean_freqs);


end

