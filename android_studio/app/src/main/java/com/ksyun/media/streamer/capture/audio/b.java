package com.ksyun.media.streamer.capture.audio;

import java.nio.ByteBuffer;

/* compiled from: KSYAudioDummyRecord.java */
/* loaded from: classes3.dex */
public class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private int f45775a;

    /* renamed from: b  reason: collision with root package name */
    private int f45776b;

    /* renamed from: c  reason: collision with root package name */
    private int f45777c;

    /* renamed from: d  reason: collision with root package name */
    private long f45778d;

    /* renamed from: e  reason: collision with root package name */
    private int f45779e = 0;

    public b(int i4, int i10, int i11) {
        this.f45775a = i4;
        this.f45776b = i10 * 2;
        this.f45777c = (i11 * 1000) / i4;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int a() {
        this.f45779e = 0;
        this.f45778d = System.nanoTime() / 1000;
        return 0;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void a(float f10) {
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void a(boolean z9) {
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int b() {
        return 0;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void c() {
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public long d() {
        return 0L;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int a(ByteBuffer byteBuffer, int i4) {
        int i10;
        if (byteBuffer == null || byteBuffer.capacity() < i4) {
            return 0;
        }
        while (true) {
            i10 = this.f45779e;
            if (i10 >= i4) {
                break;
            }
            try {
                Thread.sleep(this.f45777c);
                long nanoTime = System.nanoTime() / 1000;
                this.f45779e += a(nanoTime - this.f45778d);
                this.f45778d = nanoTime;
            } catch (InterruptedException unused) {
                return 0;
            }
        }
        this.f45779e = i10 - i4;
        for (int i11 = 0; i11 < i4; i11++) {
            byteBuffer.put(i11, (byte) 0);
        }
        byteBuffer.limit(i4);
        byteBuffer.rewind();
        return i4;
    }

    private int a(long j4) {
        return (int) (((this.f45775a * j4) / 1000000) * this.f45776b);
    }
}
