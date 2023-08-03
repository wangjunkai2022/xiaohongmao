package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.g0;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.util.w;
import java.nio.ByteBuffer;

/* compiled from: C2Mp3TimestampTracker.java */
/* loaded from: classes2.dex */
final class j {

    /* renamed from: d  reason: collision with root package name */
    private static final long f24064d = 529;

    /* renamed from: e  reason: collision with root package name */
    private static final String f24065e = "C2Mp3TimestampTracker";

    /* renamed from: a  reason: collision with root package name */
    private long f24066a;

    /* renamed from: b  reason: collision with root package name */
    private long f24067b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f24068c;

    private long a(Format format) {
        return (this.f24066a * 1000000) / format.sampleRate;
    }

    public void b() {
        this.f24066a = 0L;
        this.f24067b = 0L;
        this.f24068c = false;
    }

    public long c(Format format, DecoderInputBuffer decoderInputBuffer) {
        if (this.f24068c) {
            return decoderInputBuffer.f21574e;
        }
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.g(decoderInputBuffer.f21572c);
        int i4 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            i4 = (i4 << 8) | (byteBuffer.get(i10) & 255);
        }
        int m9 = g0.m(i4);
        if (m9 == -1) {
            this.f24068c = true;
            w.n(f24065e, "MPEG audio header is invalid.");
            return decoderInputBuffer.f21574e;
        } else if (this.f24066a == 0) {
            long j4 = decoderInputBuffer.f21574e;
            this.f24067b = j4;
            this.f24066a = m9 - f24064d;
            return j4;
        } else {
            long a10 = a(format);
            this.f24066a += m9;
            return this.f24067b + a10;
        }
    }
}
