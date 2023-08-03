package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: SimpleOutputBuffer.java */
/* loaded from: classes2.dex */
public class h extends f {

    /* renamed from: d  reason: collision with root package name */
    private final f.a<h> f21642d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public ByteBuffer f21643e;

    public h(f.a<h> aVar) {
        this.f21642d = aVar;
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void f() {
        super.f();
        ByteBuffer byteBuffer = this.f21643e;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.f
    public void o() {
        this.f21642d.a(this);
    }

    public ByteBuffer p(long j4, int i4) {
        this.f21626b = j4;
        ByteBuffer byteBuffer = this.f21643e;
        if (byteBuffer == null || byteBuffer.capacity() < i4) {
            this.f21643e = ByteBuffer.allocateDirect(i4).order(ByteOrder.nativeOrder());
        }
        this.f21643e.position(0);
        this.f21643e.limit(i4);
        return this.f21643e;
    }
}
