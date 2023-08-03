package com.fasterxml.jackson.core;

/* loaded from: classes.dex */
public enum StreamReadCapability implements com.fasterxml.jackson.core.util.e {
    DUPLICATE_PROPERTIES(false),
    SCALARS_AS_OBJECTS(false),
    UNTYPED_SCALARS(false);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13740a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13741b = 1 << ordinal();

    StreamReadCapability(boolean z9) {
        this.f13740a = z9;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledByDefault() {
        return this.f13740a;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledIn(int i4) {
        return (i4 & this.f13741b) != 0;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public int getMask() {
        return this.f13741b;
    }
}
