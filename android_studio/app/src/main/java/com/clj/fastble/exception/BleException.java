package com.clj.fastble.exception;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class BleException implements Serializable {
    public static final int ERROR_CODE_GATT = 101;
    public static final int ERROR_CODE_OTHER = 102;
    public static final int ERROR_CODE_TIMEOUT = 100;

    /* renamed from: c  reason: collision with root package name */
    private static final long f9846c = 8004414918500865564L;

    /* renamed from: a  reason: collision with root package name */
    private int f9847a;

    /* renamed from: b  reason: collision with root package name */
    private String f9848b;

    public BleException(int i4, String str) {
        this.f9847a = i4;
        this.f9848b = str;
    }

    public int getCode() {
        return this.f9847a;
    }

    public String getDescription() {
        return this.f9848b;
    }

    public BleException setCode(int i4) {
        this.f9847a = i4;
        return this;
    }

    public BleException setDescription(String str) {
        this.f9848b = str;
        return this;
    }

    public String toString() {
        return "BleException { code=" + this.f9847a + ", description='" + this.f9848b + "'}";
    }
}
