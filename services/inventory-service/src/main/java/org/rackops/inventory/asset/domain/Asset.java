package org.rackops.inventory.asset.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "asset")
public class Asset {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "serial_number")
    public String serialNumber;
}
