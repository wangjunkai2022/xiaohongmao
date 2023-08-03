package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class d extends zzu {

    /* renamed from: c  reason: collision with root package name */
    private final transient Object[] f30409c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f30410d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f30411e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Object[] objArr, int i4, int i10) {
        this.f30409c = objArr;
        this.f30410d = i4;
        this.f30411e = i10;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        g9.a(i4, this.f30411e, "index");
        Object obj = this.f30409c[i4 + i4 + this.f30410d];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30411e;
    }
}
