% Ramp LUT using Math Function
function O = lut_ramp(I, ramp_start, ramp_end)
    O = uint8( (double(I) - ramp_start) ./ (ramp_end - ramp_start)*255);
end