package com.google.android.gms.internal.mlkit_language_id_bundled;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:language-id@@17.0.4 */
/* loaded from: classes2.dex */
public final class h extends zbj {

    /* renamed from: c  reason: collision with root package name */
    final transient int f30284c;

    /* renamed from: d  reason: collision with root package name */
    final transient int f30285d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ zbj f30286e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(zbj zbjVar, int i4, int i10) {
        this.f30286e = zbjVar;
        this.f30284c = i4;
        this.f30285d = i10;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    final int b() {
        return this.f30286e.c() + this.f30284c + this.f30285d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    public final int c() {
        return this.f30286e.c() + this.f30284c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    @r7.a
    public final Object[] d() {
        return this.f30286e.d();
    }

    @Override // java.util.List
    public final Object get(int i4) {
        d.a(i4, this.f30285d, "index");
        return this.f30286e.get(i4 + this.f30284c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30285d;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbj, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i4, int i10) {
        return subList(i4, i10);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbj
    public final zbj zbf(int i4, int i10) {
        d.c(i4, i10, this.f30285d);
        zbj zbjVar = this.f30286e;
        int i11 = this.f30284c;
        return zbjVar.subList(i4 + i11, i10 + i11);
    }
}
