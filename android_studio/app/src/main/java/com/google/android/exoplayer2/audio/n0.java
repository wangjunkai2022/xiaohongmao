package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;

/* compiled from: TrimmingAudioProcessor.java */
/* loaded from: classes2.dex */
final class n0 extends z {

    /* renamed from: p  reason: collision with root package name */
    private static final int f21335p = 2;

    /* renamed from: i  reason: collision with root package name */
    private int f21336i;

    /* renamed from: j  reason: collision with root package name */
    private int f21337j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f21338k;

    /* renamed from: l  reason: collision with root package name */
    private int f21339l;

    /* renamed from: m  reason: collision with root package name */
    private byte[] f21340m = z0.f27748f;

    /* renamed from: n  reason: collision with root package name */
    private int f21341n;

    /* renamed from: o  reason: collision with root package name */
    private long f21342o;

    @Override // com.google.android.exoplayer2.audio.z, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean b() {
        return super.b() && this.f21341n == 0;
    }

    @Override // com.google.android.exoplayer2.audio.z, com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer c() {
        int i4;
        if (super.b() && (i4 = this.f21341n) > 0) {
            l(i4).put(this.f21340m, 0, this.f21341n).flip();
            this.f21341n = 0;
        }
        return super.c();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i4 = limit - position;
        if (i4 == 0) {
            return;
        }
        int min = Math.min(i4, this.f21339l);
        this.f21342o += min / this.f21418b.f21011d;
        this.f21339l -= min;
        byteBuffer.position(position + min);
        if (this.f21339l > 0) {
            return;
        }
        int i10 = i4 - min;
        int length = (this.f21341n + i10) - this.f21340m.length;
        ByteBuffer l10 = l(length);
        int t9 = z0.t(length, 0, this.f21341n);
        l10.put(this.f21340m, 0, t9);
        int t10 = z0.t(length - t9, 0, i10);
        byteBuffer.limit(byteBuffer.position() + t10);
        l10.put(byteBuffer);
        byteBuffer.limit(limit);
        int i11 = i10 - t10;
        int i12 = this.f21341n - t9;
        this.f21341n = i12;
        byte[] bArr = this.f21340m;
        System.arraycopy(bArr, t9, bArr, 0, i12);
        byteBuffer.get(this.f21340m, this.f21341n, i11);
        this.f21341n += i11;
        l10.flip();
    }

    @Override // com.google.android.exoplayer2.audio.z
    public AudioProcessor.a h(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f21010c == 2) {
            this.f21338k = true;
            return (this.f21336i == 0 && this.f21337j == 0) ? AudioProcessor.a.f21007e : aVar;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void i() {
        if (this.f21338k) {
            this.f21338k = false;
            int i4 = this.f21337j;
            int i10 = this.f21418b.f21011d;
            this.f21340m = new byte[i4 * i10];
            this.f21339l = this.f21336i * i10;
        }
        this.f21341n = 0;
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void j() {
        int i4;
        if (this.f21338k) {
            if (this.f21341n > 0) {
                this.f21342o += i4 / this.f21418b.f21011d;
            }
            this.f21341n = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void k() {
        this.f21340m = z0.f27748f;
    }

    public long m() {
        return this.f21342o;
    }

    public void n() {
        this.f21342o = 0L;
    }

    public void o(int i4, int i10) {
        this.f21336i = i4;
        this.f21337j = i10;
    }
}
