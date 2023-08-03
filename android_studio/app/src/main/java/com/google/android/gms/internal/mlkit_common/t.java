package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class t extends zzan {

    /* renamed from: c  reason: collision with root package name */
    private final transient Object[] f30005c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f30006d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f30007e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(Object[] objArr, int i4, int i10) {
        this.f30005c = objArr;
        this.f30006d = i4;
        this.f30007e = i10;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        d.a(i4, this.f30007e, "index");
        Object obj = this.f30005c[i4 + i4 + this.f30006d];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30007e;
    }
}
