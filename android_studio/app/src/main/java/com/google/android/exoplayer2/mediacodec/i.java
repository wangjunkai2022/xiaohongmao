package com.google.android.exoplayer2.mediacodec;

import androidx.annotation.IntRange;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

/* compiled from: BatchBuffer.java */
/* loaded from: classes2.dex */
final class i extends DecoderInputBuffer {

    /* renamed from: o  reason: collision with root package name */
    public static final int f24059o = 32;
    @VisibleForTesting

    /* renamed from: p  reason: collision with root package name */
    static final int f24060p = 3072000;

    /* renamed from: l  reason: collision with root package name */
    private long f24061l;

    /* renamed from: m  reason: collision with root package name */
    private int f24062m;

    /* renamed from: n  reason: collision with root package name */
    private int f24063n;

    public i() {
        super(2);
        this.f24063n = 32;
    }

    private boolean v(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (z()) {
            if (this.f24062m < this.f24063n && decoderInputBuffer.k() == k()) {
                ByteBuffer byteBuffer2 = decoderInputBuffer.f21572c;
                return byteBuffer2 == null || (byteBuffer = this.f21572c) == null || byteBuffer.position() + byteBuffer2.remaining() <= f24060p;
            }
            return false;
        }
        return true;
    }

    public void A(@IntRange(from = 1) int i4) {
        com.google.android.exoplayer2.util.a.a(i4 > 0);
        this.f24063n = i4;
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, com.google.android.exoplayer2.decoder.a
    public void f() {
        super.f();
        this.f24062m = 0;
    }

    public boolean u(DecoderInputBuffer decoderInputBuffer) {
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.r());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.i());
        com.google.android.exoplayer2.util.a.a(!decoderInputBuffer.l());
        if (v(decoderInputBuffer)) {
            int i4 = this.f24062m;
            this.f24062m = i4 + 1;
            if (i4 == 0) {
                this.f21574e = decoderInputBuffer.f21574e;
                if (decoderInputBuffer.m()) {
                    n(1);
                }
            }
            if (decoderInputBuffer.k()) {
                n(Integer.MIN_VALUE);
            }
            ByteBuffer byteBuffer = decoderInputBuffer.f21572c;
            if (byteBuffer != null) {
                p(byteBuffer.remaining());
                this.f21572c.put(byteBuffer);
            }
            this.f24061l = decoderInputBuffer.f21574e;
            return true;
        }
        return false;
    }

    public long w() {
        return this.f21574e;
    }

    public long x() {
        return this.f24061l;
    }

    public int y() {
        return this.f24062m;
    }

    public boolean z() {
        return this.f24062m > 0;
    }
}
