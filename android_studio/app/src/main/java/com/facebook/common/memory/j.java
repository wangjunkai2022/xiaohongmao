package com.facebook.common.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: PooledByteStreams.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class j {

    /* renamed from: c  reason: collision with root package name */
    private static final int f11000c = 16384;

    /* renamed from: a  reason: collision with root package name */
    private final int f11001a;

    /* renamed from: b  reason: collision with root package name */
    private final a f11002b;

    public j(a byteArrayPool) {
        this(byteArrayPool, 16384);
    }

    public long a(final InputStream from, final OutputStream to) throws IOException {
        byte[] bArr = this.f11002b.get(this.f11001a);
        long j4 = 0;
        while (true) {
            try {
                int read = from.read(bArr, 0, this.f11001a);
                if (read == -1) {
                    return j4;
                }
                to.write(bArr, 0, read);
                j4 += read;
            } finally {
                this.f11002b.release(bArr);
            }
        }
    }

    public long b(final InputStream from, final OutputStream to, final long bytesToCopy) throws IOException {
        long j4 = 0;
        com.facebook.common.internal.j.o(bytesToCopy > 0);
        byte[] bArr = this.f11002b.get(this.f11001a);
        while (j4 < bytesToCopy) {
            try {
                int read = from.read(bArr, 0, (int) Math.min(this.f11001a, bytesToCopy - j4));
                if (read == -1) {
                    break;
                }
                to.write(bArr, 0, read);
                j4 += read;
            } finally {
                this.f11002b.release(bArr);
            }
        }
        return j4;
    }

    @VisibleForTesting
    public j(a byteArrayPool, int tempBufSize) {
        com.facebook.common.internal.j.d(Boolean.valueOf(tempBufSize > 0));
        this.f11001a = tempBufSize;
        this.f11002b = byteArrayPool;
    }
}
