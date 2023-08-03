package com.google.android.exoplayer2.extractor;

import java.io.IOException;

/* compiled from: ExtractorInput.java */
/* loaded from: classes2.dex */
public interface l extends com.google.android.exoplayer2.upstream.i {
    boolean f(int i4, boolean z9) throws IOException;

    boolean g(byte[] bArr, int i4, int i10, boolean z9) throws IOException;

    long getLength();

    long getPosition();

    void h();

    boolean i(byte[] bArr, int i4, int i10, boolean z9) throws IOException;

    long j();

    void k(int i4) throws IOException;

    <E extends Throwable> void m(long j4, E e4) throws Throwable;

    int n(byte[] bArr, int i4, int i10) throws IOException;

    void o(int i4) throws IOException;

    boolean q(int i4, boolean z9) throws IOException;

    @Override // com.google.android.exoplayer2.upstream.i
    int read(byte[] bArr, int i4, int i10) throws IOException;

    void readFully(byte[] bArr, int i4, int i10) throws IOException;

    void s(byte[] bArr, int i4, int i10) throws IOException;

    int skip(int i4) throws IOException;
}
