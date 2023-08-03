package com.clj.fastble.exception;

import android.bluetooth.BluetoothGatt;

/* loaded from: classes.dex */
public class ConnectException extends BleException {

    /* renamed from: d  reason: collision with root package name */
    private BluetoothGatt f9849d;

    /* renamed from: e  reason: collision with root package name */
    private int f9850e;

    public ConnectException(BluetoothGatt bluetoothGatt, int i4) {
        super(101, "Gatt Exception Occurred! ");
        this.f9849d = bluetoothGatt;
        this.f9850e = i4;
    }

    public BluetoothGatt getBluetoothGatt() {
        return this.f9849d;
    }

    public int getGattStatus() {
        return this.f9850e;
    }

    public ConnectException setBluetoothGatt(BluetoothGatt bluetoothGatt) {
        this.f9849d = bluetoothGatt;
        return this;
    }

    public ConnectException setGattStatus(int i4) {
        this.f9850e = i4;
        return this;
    }

    @Override // com.clj.fastble.exception.BleException
    public String toString() {
        return "ConnectException{gattStatus=" + this.f9850e + ", bluetoothGatt=" + this.f9849d + "} " + super.toString();
    }
}
