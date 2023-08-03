package com.facebook.common.memory;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: PooledByteBufferFactory.java */
/* loaded from: classes.dex */
public interface g {
    PooledByteBuffer a(InputStream inputStream) throws IOException;

    PooledByteBuffer b(InputStream inputStream, int initialCapacity) throws IOException;

    i c();

    PooledByteBuffer d(byte[] bytes);

    PooledByteBuffer e(int size);

    i f(int initialCapacity);
}
