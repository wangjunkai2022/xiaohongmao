package com.google.android.exoplayer2.audio;

import androidx.annotation.CallSuper;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: BaseAudioProcessor.java */
/* loaded from: classes2.dex */
public abstract class z implements AudioProcessor {

    /* renamed from: b  reason: collision with root package name */
    protected AudioProcessor.a f21418b;

    /* renamed from: c  reason: collision with root package name */
    protected AudioProcessor.a f21419c;

    /* renamed from: d  reason: collision with root package name */
    private AudioProcessor.a f21420d;

    /* renamed from: e  reason: collision with root package name */
    private AudioProcessor.a f21421e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f21422f;

    /* renamed from: g  reason: collision with root package name */
    private ByteBuffer f21423g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f21424h;

    public z() {
        ByteBuffer byteBuffer = AudioProcessor.f21006a;
        this.f21422f = byteBuffer;
        this.f21423g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f21007e;
        this.f21420d = aVar;
        this.f21421e = aVar;
        this.f21418b = aVar;
        this.f21419c = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean a() {
        return this.f21421e != AudioProcessor.a.f21007e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public boolean b() {
        return this.f21424h && this.f21423g == AudioProcessor.f21006a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    @CallSuper
    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.f21423g;
        this.f21423g = AudioProcessor.f21006a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.a e(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        this.f21420d = aVar;
        this.f21421e = h(aVar);
        return a() ? this.f21421e : AudioProcessor.a.f21007e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void f() {
        this.f21424h = true;
        j();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f21423g = AudioProcessor.f21006a;
        this.f21424h = false;
        this.f21418b = this.f21420d;
        this.f21419c = this.f21421e;
        i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean g() {
        return this.f21423g.hasRemaining();
    }

    protected AudioProcessor.a h(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        return AudioProcessor.a.f21007e;
    }

    protected void i() {
    }

    protected void j() {
    }

    protected void k() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer l(int i4) {
        if (this.f21422f.capacity() < i4) {
            this.f21422f = ByteBuffer.allocateDirect(i4).order(ByteOrder.nativeOrder());
        } else {
            this.f21422f.clear();
        }
        ByteBuffer byteBuffer = this.f21422f;
        this.f21423g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f21422f = AudioProcessor.f21006a;
        AudioProcessor.a aVar = AudioProcessor.a.f21007e;
        this.f21420d = aVar;
        this.f21421e = aVar;
        this.f21418b = aVar;
        this.f21419c = aVar;
        k();
    }
}
