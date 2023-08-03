package com.google.android.gms.internal.mlkit_common;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class m extends zzan {

    /* renamed from: c  reason: collision with root package name */
    final transient int f29812c;

    /* renamed from: d  reason: collision with root package name */
    final transient int f29813d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ zzan f29814e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(zzan zzanVar, int i4, int i10) {
        this.f29814e = zzanVar;
        this.f29812c = i4;
        this.f29813d = i10;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    final int b() {
        return this.f29814e.c() + this.f29812c + this.f29813d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final int c() {
        return this.f29814e.c() + this.f29812c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    @r7.a
    public final Object[] d() {
        return this.f29814e.d();
    }

    @Override // java.util.List
    public final Object get(int i4) {
        d.a(i4, this.f29813d, "index");
        return this.f29814e.get(i4 + this.f29812c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29813d;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzan, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i4, int i10) {
        return subList(i4, i10);
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzan
    public final zzan zzf(int i4, int i10) {
        d.c(i4, i10, this.f29813d);
        zzan zzanVar = this.f29814e;
        int i11 = this.f29812c;
        return zzanVar.subList(i4 + i11, i10 + i11);
    }
}
