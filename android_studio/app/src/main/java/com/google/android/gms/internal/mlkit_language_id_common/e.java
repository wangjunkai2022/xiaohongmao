package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class e extends zzw {

    /* renamed from: f  reason: collision with root package name */
    static final zzw f30433f = new e(null, new Object[0], 0);

    /* renamed from: d  reason: collision with root package name */
    final transient Object[] f30434d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f30435e;

    private e(@r7.a Object obj, Object[] objArr, int i4) {
        this.f30434d = objArr;
        this.f30435e = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e d(int i4, Object[] objArr, fb fbVar) {
        Object obj = objArr[0];
        obj.getClass();
        Object obj2 = objArr[1];
        obj2.getClass();
        za.a(obj, obj2);
        return new e(null, objArr, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw
    final zzq a() {
        return new d(this.f30434d, 1, this.f30435e);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw
    final zzx b() {
        return new b(this, this.f30434d, 0, this.f30435e);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw
    final zzx c() {
        return new c(this, new d(this.f30434d, 0, this.f30435e));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0020 A[RETURN] */
    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzw, java.util.Map
    @r7.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object get(@r7.a java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object[] r0 = r4.f30434d
            int r1 = r4.f30435e
            r2 = 0
            if (r5 != 0) goto L9
        L7:
            r5 = r2
            goto L1d
        L9:
            r3 = 1
            if (r1 != r3) goto L7
            r1 = 0
            r1 = r0[r1]
            r1.getClass()
            boolean r5 = r1.equals(r5)
            if (r5 == 0) goto L7
            r5 = r0[r3]
            r5.getClass()
        L1d:
            if (r5 != 0) goto L20
            return r2
        L20:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_language_id_common.e.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.f30435e;
    }
}
