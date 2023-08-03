package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class p extends zzan {

    /* renamed from: e  reason: collision with root package name */
    static final zzan f29889e = new p(new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f29890c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f29891d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(Object[] objArr, int i4) {
        this.f29890c = objArr;
        this.f29891d = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzan, com.google.android.gms.internal.mlkit_common.zzaj
    public final int a(Object[] objArr, int i4) {
        System.arraycopy(this.f29890c, 0, objArr, 0, this.f29891d);
        return this.f29891d;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    final int b() {
        return this.f29891d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final int c() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_common.zzaj
    public final Object[] d() {
        return this.f29890c;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        d.a(i4, this.f29891d, "index");
        Object obj = this.f29890c[i4];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29891d;
    }
}
