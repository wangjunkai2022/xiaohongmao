package com.google.android.gms.common;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
final class b0 extends a0 {

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f28964d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f28964d = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.a0
    public final byte[] n1() {
        return this.f28964d;
    }
}
