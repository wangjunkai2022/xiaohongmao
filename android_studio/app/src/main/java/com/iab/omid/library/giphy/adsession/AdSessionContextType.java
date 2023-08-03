package com.iab.omid.library.giphy.adsession;

import io.sentry.protocol.r;

/* loaded from: classes2.dex */
public enum AdSessionContextType {
    HTML("html"),
    NATIVE(r.b.f83834j);
    

    /* renamed from: a  reason: collision with root package name */
    private final String f39331a;

    AdSessionContextType(String str) {
        this.f39331a = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f39331a;
    }
}
