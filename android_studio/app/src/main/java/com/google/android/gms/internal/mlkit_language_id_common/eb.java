package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class eb extends zzu {

    /* renamed from: c  reason: collision with root package name */
    final transient int f30466c;

    /* renamed from: d  reason: collision with root package name */
    final transient int f30467d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ zzu f30468e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(zzu zzuVar, int i4, int i10) {
        this.f30468e = zzuVar;
        this.f30466c = i4;
        this.f30467d = i10;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    final int b() {
        return this.f30468e.c() + this.f30466c + this.f30467d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final int c() {
        return this.f30468e.c() + this.f30466c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    @r7.a
    public final Object[] d() {
        return this.f30468e.d();
    }

    @Override // java.util.List
    public final Object get(int i4) {
        g9.a(i4, this.f30467d, "index");
        return this.f30468e.get(i4 + this.f30466c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30467d;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzu, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i4, int i10) {
        return subList(i4, i10);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzu
    public final zzu zzf(int i4, int i10) {
        g9.c(i4, i10, this.f30467d);
        zzu zzuVar = this.f30468e;
        int i11 = this.f30466c;
        return zzuVar.subList(i4 + i11, i10 + i11);
    }
}
