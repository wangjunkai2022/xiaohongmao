package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class a0 implements z0 {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f31718a;

    public a0(ByteBuffer byteBuffer) {
        this.f31718a = byteBuffer.slice();
    }

    @Override // com.google.android.play.core.internal.z0
    public final void a(MessageDigest[] messageDigestArr, long j4, int i4) throws IOException {
        ByteBuffer slice;
        synchronized (this.f31718a) {
            int i10 = (int) j4;
            this.f31718a.position(i10);
            this.f31718a.limit(i10 + i4);
            slice = this.f31718a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            slice.position(0);
            messageDigest.update(slice);
        }
    }

    @Override // com.google.android.play.core.internal.z0
    public final long zza() {
        return this.f31718a.capacity();
    }
}
