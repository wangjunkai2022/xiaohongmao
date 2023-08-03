package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.decoder.f;
import java.nio.ByteBuffer;

/* compiled from: VideoDecoderOutputBuffer.java */
/* loaded from: classes2.dex */
public class h extends com.google.android.exoplayer2.decoder.f {

    /* renamed from: o  reason: collision with root package name */
    public static final int f27932o = 0;

    /* renamed from: p  reason: collision with root package name */
    public static final int f27933p = 1;

    /* renamed from: q  reason: collision with root package name */
    public static final int f27934q = 2;

    /* renamed from: r  reason: collision with root package name */
    public static final int f27935r = 3;

    /* renamed from: d  reason: collision with root package name */
    public int f27936d;

    /* renamed from: e  reason: collision with root package name */
    public int f27937e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f27938f;

    /* renamed from: g  reason: collision with root package name */
    public int f27939g;

    /* renamed from: h  reason: collision with root package name */
    public int f27940h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    public Format f27941i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public ByteBuffer[] f27942j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public int[] f27943k;

    /* renamed from: l  reason: collision with root package name */
    public int f27944l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    public ByteBuffer f27945m;

    /* renamed from: n  reason: collision with root package name */
    private final f.a<h> f27946n;

    public h(f.a<h> aVar) {
        this.f27946n = aVar;
    }

    private static boolean s(int i4, int i10) {
        return i4 >= 0 && i10 >= 0 && (i10 <= 0 || i4 < Integer.MAX_VALUE / i10);
    }

    @Override // com.google.android.exoplayer2.decoder.f
    public void o() {
        this.f27946n.a(this);
    }

    public void p(long j4, int i4, @Nullable ByteBuffer byteBuffer) {
        this.f21626b = j4;
        this.f27937e = i4;
        if (byteBuffer != null && byteBuffer.hasRemaining()) {
            e(268435456);
            int limit = byteBuffer.limit();
            ByteBuffer byteBuffer2 = this.f27945m;
            if (byteBuffer2 != null && byteBuffer2.capacity() >= limit) {
                this.f27945m.clear();
            } else {
                this.f27945m = ByteBuffer.allocate(limit);
            }
            this.f27945m.put(byteBuffer);
            this.f27945m.flip();
            byteBuffer.position(0);
            return;
        }
        this.f27945m = null;
    }

    public void q(int i4, int i10) {
        this.f27939g = i4;
        this.f27940h = i10;
    }

    public boolean r(int i4, int i10, int i11, int i12, int i13) {
        this.f27939g = i4;
        this.f27940h = i10;
        this.f27944l = i13;
        int i14 = (int) ((i10 + 1) / 2);
        if (s(i11, i10) && s(i12, i14)) {
            int i15 = i10 * i11;
            int i16 = i14 * i12;
            int i17 = (i16 * 2) + i15;
            if (s(i16, 2) && i17 >= i15) {
                ByteBuffer byteBuffer = this.f27938f;
                if (byteBuffer != null && byteBuffer.capacity() >= i17) {
                    this.f27938f.position(0);
                    this.f27938f.limit(i17);
                } else {
                    this.f27938f = ByteBuffer.allocateDirect(i17);
                }
                if (this.f27942j == null) {
                    this.f27942j = new ByteBuffer[3];
                }
                ByteBuffer byteBuffer2 = this.f27938f;
                ByteBuffer[] byteBufferArr = this.f27942j;
                byteBufferArr[0] = byteBuffer2.slice();
                byteBufferArr[0].limit(i15);
                byteBuffer2.position(i15);
                byteBufferArr[1] = byteBuffer2.slice();
                byteBufferArr[1].limit(i16);
                byteBuffer2.position(i15 + i16);
                byteBufferArr[2] = byteBuffer2.slice();
                byteBufferArr[2].limit(i16);
                if (this.f27943k == null) {
                    this.f27943k = new int[3];
                }
                int[] iArr = this.f27943k;
                iArr[0] = i11;
                iArr[1] = i12;
                iArr[2] = i12;
                return true;
            }
        }
        return false;
    }
}
