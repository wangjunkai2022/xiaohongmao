package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* compiled from: DataSink.java */
/* loaded from: classes2.dex */
public interface k {

    /* compiled from: DataSink.java */
    /* loaded from: classes2.dex */
    public interface a {
        k a();
    }

    void a(o oVar) throws IOException;

    void close() throws IOException;

    void write(byte[] bArr, int i4, int i10) throws IOException;
}
