package com.google.android.gms.internal.common;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class e<E> extends i0<E> {

    /* renamed from: c  reason: collision with root package name */
    private final zzag<E> f29387c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(zzag<E> zzagVar, int i4) {
        super(zzagVar.size(), i4);
        this.f29387c = zzagVar;
    }

    @Override // com.google.android.gms.internal.common.i0
    protected final E a(int i4) {
        return this.f29387c.get(i4);
    }
}
