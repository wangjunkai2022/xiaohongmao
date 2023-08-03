package com.google.android.gms.internal.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class h<E> extends zzag<E> {

    /* renamed from: e  reason: collision with root package name */
    static final zzag<Object> f29401e = new h(new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f29402c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f29403d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Object[] objArr, int i4) {
        this.f29402c = objArr;
        this.f29403d = i4;
    }

    @Override // com.google.android.gms.internal.common.zzag, com.google.android.gms.internal.common.zzac
    final int a(Object[] objArr, int i4) {
        System.arraycopy(this.f29402c, 0, objArr, 0, this.f29403d);
        return this.f29403d;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int b() {
        return this.f29403d;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final int c() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final boolean d() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzac
    final Object[] e() {
        return this.f29402c;
    }

    @Override // java.util.List
    public final E get(int i4) {
        b0.a(i4, this.f29403d, "index");
        E e4 = (E) this.f29402c[i4];
        e4.getClass();
        return e4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f29403d;
    }
}
