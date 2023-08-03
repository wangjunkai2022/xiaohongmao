package com.google.android.gms.internal.common;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class f extends zzag {

    /* renamed from: c  reason: collision with root package name */
    final transient int f29390c;

    /* renamed from: d  reason: collision with root package name */
    final transient int f29391d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ zzag f29392e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(zzag zzagVar, int i4, int i10) {
        this.f29392e = zzagVar;
        this.f29390c = i4;
        this.f29391d = i10;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int b() {
        return this.f29392e.c() + this.f29390c + this.f29391d;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int c() {
        return this.f29392e.c() + this.f29390c;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean d() {
        return true;
    }

    @Override // com.google.android.gms.internal.common.zzac
    @r7.a
    final Object[] e() {
        return this.f29392e.e();
    }

    @Override // java.util.List
    public final Object get(int i4) {
        b0.a(i4, this.f29391d, "index");
        return this.f29392e.get(i4 + this.f29390c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29391d;
    }

    @Override // com.google.android.gms.internal.common.zzag, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i4, int i10) {
        return subList(i4, i10);
    }

    @Override // com.google.android.gms.internal.common.zzag
    public final zzag zzh(int i4, int i10) {
        b0.c(i4, i10, this.f29391d);
        zzag zzagVar = this.f29392e;
        int i11 = this.f29390c;
        return zzagVar.subList(i4 + i11, i10 + i11);
    }
}
