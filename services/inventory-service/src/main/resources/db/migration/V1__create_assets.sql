CREATE TABLE assets (
                        id UUID PRIMARY KEY,
                        serial_number VARCHAR(100) NOT NULL,
                        model VARCHAR(100) NOT NULL,
                        height_u INTEGER NOT NULL,
                        power_watts INTEGER NOT NULL,
                        status VARCHAR(30) NOT NULL DEFAULT 'AVAILABLE',

                        CONSTRAINT uq_assets_serial_number
                            UNIQUE (serial_number),

                        CONSTRAINT chk_assets_serial_number_not_blank
                            CHECK (btrim(serial_number) <> ''),

                        CONSTRAINT chk_assets_model_not_blank
                            CHECK (btrim(model) <> ''),

                        CONSTRAINT chk_assets_height_positive
                            CHECK (height_u > 0),

                        CONSTRAINT chk_assets_power_positive
                            CHECK (power_watts > 0),

                        CONSTRAINT chk_assets_status
                            CHECK (status IN (
                                              'AVAILABLE',
                                              'RESERVED',
                                              'INSTALLED',
                                              'OUT_OF_SERVICE'
                                ))
);