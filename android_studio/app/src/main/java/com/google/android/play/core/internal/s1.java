package com.google.android.play.core.internal;

import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class s1 implements z0 {

    /* renamed from: a  reason: collision with root package name */
    private final FileChannel f31742a;

    /* renamed from: b  reason: collision with root package name */
    private final long f31743b;

    /* renamed from: c  reason: collision with root package name */
    private final long f31744c;

    public s1(FileChannel fileChannel, long j4, long j10) {
        this.f31742a = fileChannel;
        this.f31743b = j4;
        this.f31744c = j10;
    }

    @Override // com.google.android.play.core.internal.z0
    public final void a(MessageDigest[] messageDigestArr, long j4, int i4) throws IOException {
        MappedByteBuffer map = this.f31742a.map(FileChannel.MapMode.READ_ONLY, this.f31743b + j4, i4);
        map.load();
        for (MessageDigest messageDigest : messageDigestArr) {
            map.position(0);
            messageDigest.update(map);
        }
    }

    @Override // com.google.android.play.core.internal.z0
    public final long zza() {
        return this.f31744c;
    }
}
