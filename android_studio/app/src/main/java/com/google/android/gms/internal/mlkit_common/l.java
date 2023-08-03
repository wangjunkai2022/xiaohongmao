package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class l extends f {

    /* renamed from: c  reason: collision with root package name */
    private final zzan f29789c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(zzan zzanVar, int i4) {
        super(zzanVar.size(), i4);
        this.f29789c = zzanVar;
    }

    @Override // com.google.android.gms.internal.mlkit_common.f
    protected final Object a(int i4) {
        return this.f29789c.get(i4);
    }
}
