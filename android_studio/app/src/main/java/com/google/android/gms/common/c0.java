package com.google.android.gms.common;

import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
abstract class c0 extends a0 {

    /* renamed from: e  reason: collision with root package name */
    private static final WeakReference<byte[]> f28966e = new WeakReference<>(null);

    /* renamed from: d  reason: collision with root package name */
    private WeakReference<byte[]> f28967d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(byte[] bArr) {
        super(bArr);
        this.f28967d = f28966e;
    }

    protected abstract byte[] J1();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.a0
    public final byte[] n1() {
        byte[] bArr;
        synchronized (this) {
            bArr = this.f28967d.get();
            if (bArr == null) {
                bArr = J1();
                this.f28967d = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}
