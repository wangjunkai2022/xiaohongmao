package com.iab.omid.library.giphy.adsession;

import io.sentry.protocol.r;

/* loaded from: classes2.dex */
public enum Owner {
    NATIVE(r.b.f83834j),
    JAVASCRIPT("javascript"),
    NONE("none");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f39335a;

    Owner(String str) {
        this.f39335a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f39335a;
    }
}
