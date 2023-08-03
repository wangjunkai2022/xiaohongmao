package com.google.android.datatransport.runtime;

import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TransportFactoryImpl.java */
/* loaded from: classes2.dex */
public final class p implements com.google.android.datatransport.h {

    /* renamed from: a  reason: collision with root package name */
    private final Set<com.google.android.datatransport.c> f20458a;

    /* renamed from: b  reason: collision with root package name */
    private final o f20459b;

    /* renamed from: c  reason: collision with root package name */
    private final s f20460c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Set<com.google.android.datatransport.c> set, o oVar, s sVar) {
        this.f20458a = set;
        this.f20459b = oVar;
        this.f20460c = sVar;
    }

    @Override // com.google.android.datatransport.h
    public <T> com.google.android.datatransport.g<T> a(String str, Class<T> cls, com.google.android.datatransport.f<T, byte[]> fVar) {
        return b(str, cls, com.google.android.datatransport.c.b("proto"), fVar);
    }

    @Override // com.google.android.datatransport.h
    public <T> com.google.android.datatransport.g<T> b(String str, Class<T> cls, com.google.android.datatransport.c cVar, com.google.android.datatransport.f<T, byte[]> fVar) {
        if (this.f20458a.contains(cVar)) {
            return new r(this.f20459b, str, cVar, fVar, this.f20460c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", cVar, this.f20458a));
    }
}
