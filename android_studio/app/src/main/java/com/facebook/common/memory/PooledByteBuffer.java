package com.facebook.common.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.nio.ByteBuffer;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public interface PooledByteBuffer extends Closeable {

    /* loaded from: classes.dex */
    public static class ClosedException extends RuntimeException {
        public ClosedException() {
            super("Invalid bytebuf. Already closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    int f(int offset, byte[] buffer, int bufferOffset, int length);

    @r7.h
    ByteBuffer g();

    boolean isClosed();

    byte j(int offset);

    long l();

    int size();
}
