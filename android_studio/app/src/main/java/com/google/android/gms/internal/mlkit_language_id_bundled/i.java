package com.google.android.gms.internal.mlkit_language_id_bundled;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:language-id@@17.0.4 */
/* loaded from: classes2.dex */
public final class i extends zbj {

    /* renamed from: e  reason: collision with root package name */
    static final zbj f30287e = new i(new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f30288c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f30289d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Object[] objArr, int i4) {
        this.f30288c = objArr;
        this.f30289d = i4;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbj, com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    final int a(Object[] objArr, int i4) {
        System.arraycopy(this.f30288c, 0, objArr, 0, this.f30289d);
        return this.f30289d;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    final int b() {
        return this.f30289d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    public final int c() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.mlkit_language_id_bundled.zbg
    public final Object[] d() {
        return this.f30288c;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        d.a(i4, this.f30289d, "index");
        Object obj = this.f30288c[i4];
        obj.getClass();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f30289d;
    }
}
