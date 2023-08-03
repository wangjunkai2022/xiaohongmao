package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* compiled from: SonicAudioProcessor.java */
/* loaded from: classes2.dex */
public final class l0 implements AudioProcessor {

    /* renamed from: q  reason: collision with root package name */
    public static final int f21298q = -1;

    /* renamed from: r  reason: collision with root package name */
    private static final float f21299r = 1.0E-4f;

    /* renamed from: s  reason: collision with root package name */
    private static final int f21300s = 1024;

    /* renamed from: b  reason: collision with root package name */
    private int f21301b;

    /* renamed from: c  reason: collision with root package name */
    private float f21302c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f21303d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f21304e;

    /* renamed from: f  reason: collision with root package name */
    private AudioProcessor.a f21305f;

    /* renamed from: g  reason: collision with root package name */
    private AudioProcessor.a f21306g;

    /* renamed from: h  reason: collision with root package name */
    private AudioProcessor.a f21307h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f21308i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private k0 f21309j;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer f21310k;

    /* renamed from: l  reason: collision with root package name */
    private ShortBuffer f21311l;

    /* renamed from: m  reason: collision with root package name */
    private ByteBuffer f21312m;

    /* renamed from: n  reason: collision with root package name */
    private long f21313n;

    /* renamed from: o  reason: collision with root package name */
    private long f21314o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f21315p;

    public l0() {
        AudioProcessor.a aVar = AudioProcessor.a.f21007e;
        this.f21304e = aVar;
        this.f21305f = aVar;
        this.f21306g = aVar;
        this.f21307h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f21006a;
        this.f21310k = byteBuffer;
        this.f21311l = byteBuffer.asShortBuffer();
        this.f21312m = byteBuffer;
        this.f21301b = -1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a() {
        return this.f21305f.f21008a != -1 && (Math.abs(this.f21302c - 1.0f) >= 1.0E-4f || Math.abs(this.f21303d - 1.0f) >= 1.0E-4f || this.f21305f.f21008a != this.f21304e.f21008a);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean b() {
        k0 k0Var;
        return this.f21315p && ((k0Var = this.f21309j) == null || k0Var.k() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer c() {
        int k10;
        k0 k0Var = this.f21309j;
        if (k0Var != null && (k10 = k0Var.k()) > 0) {
            if (this.f21310k.capacity() < k10) {
                ByteBuffer order = ByteBuffer.allocateDirect(k10).order(ByteOrder.nativeOrder());
                this.f21310k = order;
                this.f21311l = order.asShortBuffer();
            } else {
                this.f21310k.clear();
                this.f21311l.clear();
            }
            k0Var.j(this.f21311l);
            this.f21314o += k10;
            this.f21310k.limit(k10);
            this.f21312m = this.f21310k;
        }
        ByteBuffer byteBuffer = this.f21312m;
        this.f21312m = AudioProcessor.f21006a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f21313n += remaining;
            ((k0) com.google.android.exoplayer2.util.a.g(this.f21309j)).t(asShortBuffer);
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public AudioProcessor.a e(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f21010c == 2) {
            int i4 = this.f21301b;
            if (i4 == -1) {
                i4 = aVar.f21008a;
            }
            this.f21304e = aVar;
            AudioProcessor.a aVar2 = new AudioProcessor.a(i4, aVar.f21009b, 2);
            this.f21305f = aVar2;
            this.f21308i = true;
            return aVar2;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void f() {
        k0 k0Var = this.f21309j;
        if (k0Var != null) {
            k0Var.s();
        }
        this.f21315p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (a()) {
            AudioProcessor.a aVar = this.f21304e;
            this.f21306g = aVar;
            AudioProcessor.a aVar2 = this.f21305f;
            this.f21307h = aVar2;
            if (this.f21308i) {
                this.f21309j = new k0(aVar.f21008a, aVar.f21009b, this.f21302c, this.f21303d, aVar2.f21008a);
            } else {
                k0 k0Var = this.f21309j;
                if (k0Var != null) {
                    k0Var.i();
                }
            }
        }
        this.f21312m = AudioProcessor.f21006a;
        this.f21313n = 0L;
        this.f21314o = 0L;
        this.f21315p = false;
    }

    public long g(long j4) {
        if (this.f21314o >= 1024) {
            long l10 = this.f21313n - ((k0) com.google.android.exoplayer2.util.a.g(this.f21309j)).l();
            int i4 = this.f21307h.f21008a;
            int i10 = this.f21306g.f21008a;
            if (i4 == i10) {
                return z0.f1(j4, l10, this.f21314o);
            }
            return z0.f1(j4, l10 * i4, this.f21314o * i10);
        }
        return (long) (this.f21302c * j4);
    }

    public void h(int i4) {
        this.f21301b = i4;
    }

    public void i(float f10) {
        if (this.f21303d != f10) {
            this.f21303d = f10;
            this.f21308i = true;
        }
    }

    public void j(float f10) {
        if (this.f21302c != f10) {
            this.f21302c = f10;
            this.f21308i = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.f21302c = 1.0f;
        this.f21303d = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f21007e;
        this.f21304e = aVar;
        this.f21305f = aVar;
        this.f21306g = aVar;
        this.f21307h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f21006a;
        this.f21310k = byteBuffer;
        this.f21311l = byteBuffer.asShortBuffer();
        this.f21312m = byteBuffer;
        this.f21301b = -1;
        this.f21308i = false;
        this.f21309j = null;
        this.f21313n = 0L;
        this.f21314o = 0L;
        this.f21315p = false;
    }
}
