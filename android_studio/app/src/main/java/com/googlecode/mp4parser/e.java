package com.googlecode.mp4parser;

import java.io.Closeable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* compiled from: DataSource.java */
/* loaded from: classes2.dex */
public interface e extends Closeable {
    long C() throws IOException;

    void S(long j4) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    ByteBuffer e0(long j4, long j10) throws IOException;

    long m(long j4, long j10, WritableByteChannel writableByteChannel) throws IOException;

    int read(ByteBuffer byteBuffer) throws IOException;

    long size() throws IOException;
}
