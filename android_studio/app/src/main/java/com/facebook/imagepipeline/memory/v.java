package com.facebook.imagepipeline.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.nio.ByteBuffer;

/* compiled from: MemoryChunk.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface v {
    long a();

    int b(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count);

    void close();

    void d(final int offset, final v other, final int otherOffset, final int count);

    int f(final int memoryOffset, final byte[] byteArray, final int byteArrayOffset, final int count);

    @r7.h
    ByteBuffer g();

    int getSize();

    boolean isClosed();

    byte j(final int offset);

    long l() throws UnsupportedOperationException;
}
