view_xport[0] = irandom_range(-tremor, tremor);
view_yport[0] = irandom_range(-tremor, tremor);

tremor = lerp(tremor, 0, 0.1);

if(tremor <= 1) instance_destroy();