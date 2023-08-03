package com.clj.fastble.exception;

/* loaded from: classes.dex */
public class GattException extends BleException {

    /* renamed from: d  reason: collision with root package name */
    private int f9851d;

    public GattException(int i4) {
        super(101, "Gatt Exception Occurred! ");
        this.f9851d = i4;
    }

    public int getGattStatus() {
        return this.f9851d;
    }

    public GattException setGattStatus(int i4) {
        this.f9851d = i4;
        return this;
    }

    @Override // com.clj.fastble.exception.BleException
    public String toString() {
        return "GattException{gattStatus=" + this.f9851d + "} " + super.toString();
    }
}
