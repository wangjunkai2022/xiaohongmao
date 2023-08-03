package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.e0;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: DummyTrackOutput.java */
/* loaded from: classes2.dex */
public final class j implements e0 {

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f22292d = new byte[4096];

    @Override // com.google.android.exoplayer2.extractor.e0
    public int a(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9, int i10) throws IOException {
        int read = iVar.read(this.f22292d, 0, Math.min(this.f22292d.length, i4));
        if (read == -1) {
            if (z9) {
                return -1;
            }
            throw new EOFException();
        }
        return read;
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ int b(com.google.android.exoplayer2.upstream.i iVar, int i4, boolean z9) {
        return d0.a(this, iVar, i4, z9);
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public /* synthetic */ void c(com.google.android.exoplayer2.util.h0 h0Var, int i4) {
        d0.b(this, h0Var, i4);
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public void d(Format format) {
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public void e(long j4, int i4, int i10, int i11, @Nullable e0.a aVar) {
    }

    @Override // com.google.android.exoplayer2.extractor.e0
    public void f(com.google.android.exoplayer2.util.h0 h0Var, int i4, int i10) {
        h0Var.T(i4);
    }
}
