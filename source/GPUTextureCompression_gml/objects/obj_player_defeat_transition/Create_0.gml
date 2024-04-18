// Create a layer for the pixelate filter
transition_layer = layer_create(-10000);

// Create the pixelate filter itself
transition_filter = fx_create("_filter_pixelate");

// Assign the filter to the layer
layer_set_fx(transition_layer, transition_filter);

// Initialize the cell size used for the pixelate filter
cellSize = 1;

// Assign the cell size to the filter
fx_set_parameter(transition_filter, "g_CellSize", cellSize);

// Start Alarm 0
alarm[0] = 1;