package com.fasterxml.jackson.core;

/* loaded from: classes.dex */
public enum StreamWriteCapability implements com.fasterxml.jackson.core.util.e {
    CAN_WRITE_BINARY_NATIVELY(false),
    CAN_WRITE_FORMATTED_NUMBERS(false);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13747a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13748b = 1 << ordinal();

    StreamWriteCapability(boolean z9) {
        this.f13747a = z9;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledByDefault() {
        return this.f13747a;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledIn(int i4) {
        return (i4 & this.f13748b) != 0;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public int getMask() {
        return this.f13748b;
    }
}
