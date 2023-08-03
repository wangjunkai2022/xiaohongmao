package com.fasterxml.jackson.core;

/* loaded from: classes.dex */
public enum JsonEncoding {
    UTF8("UTF-8", false, 8),
    UTF16_BE(h9.c.f69066d, true, 16),
    UTF16_LE("UTF-16LE", false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);
    

    /* renamed from: a  reason: collision with root package name */
    private final String f13673a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f13674b;

    /* renamed from: c  reason: collision with root package name */
    private final int f13675c;

    JsonEncoding(String str, boolean z9, int i4) {
        this.f13673a = str;
        this.f13674b = z9;
        this.f13675c = i4;
    }

    public int bits() {
        return this.f13675c;
    }

    public String getJavaName() {
        return this.f13673a;
    }

    public boolean isBigEndian() {
        return this.f13674b;
    }
}
