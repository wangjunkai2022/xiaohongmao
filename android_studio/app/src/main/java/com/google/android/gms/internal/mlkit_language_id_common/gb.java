package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class gb extends zzu {

    /* renamed from: e  reason: collision with root package name */
    static final zzu f30521e = new gb(new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f30522c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f30523d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(Object[] objArr, int i4) {
        this.f30522c = objArr;
        this.f30523d = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzu, com.google.android.gms.internal.mlkit_language_id_common.zzq
    final int a(Object[] objArr, int i4) {
        System.arraycopy(this.f30522c, 0, objArr, 0, this.f30523d);
        return this.f30523d;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    final int b() {
        return this.f30523d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final int c() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzq
    public final Object[] d() {
        return this.f30522c;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        g9.a(i4, this.f30523d, "index");
        Object obj = this.f30522c[i4];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30523d;
    }
}
