package com.facebook.common.memory;

import com.facebook.common.internal.o;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: PooledByteBufferOutputStream.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class i extends OutputStream {
    public abstract PooledByteBuffer a();

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e4) {
            o.d(e4);
        }
    }

    public abstract int size();
}
