package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class db extends ya {

    /* renamed from: c  reason: collision with root package name */
    private final zzu f30432c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public db(zzu zzuVar, int i4) {
        super(zzuVar.size(), i4);
        this.f30432c = zzuVar;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.ya
    protected final Object a(int i4) {
        return this.f30432c.get(i4);
    }
}
