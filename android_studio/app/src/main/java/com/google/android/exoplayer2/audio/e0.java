package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.t1;
import java.nio.ByteBuffer;

/* compiled from: ForwardingAudioSink.java */
/* loaded from: classes2.dex */
public class e0 implements AudioSink {

    /* renamed from: e  reason: collision with root package name */
    private final AudioSink f21200e;

    public e0(AudioSink audioSink) {
        this.f21200e = audioSink;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean F() {
        return this.f21200e.F();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void J(boolean z9) {
        this.f21200e.J(z9);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean a(Format format) {
        return this.f21200e.a(format);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean b() {
        return this.f21200e.b();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean c() {
        return this.f21200e.c();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void d() {
        this.f21200e.d();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public t1 e() {
        return this.f21200e.e();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void f(float f10) {
        this.f21200e.f(f10);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        this.f21200e.flush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void g(t1 t1Var) {
        this.f21200e.g(t1Var);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void h() {
        this.f21200e.h();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void i(e eVar) {
        this.f21200e.i(eVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public boolean j(ByteBuffer byteBuffer, long j4, int i4) throws AudioSink.InitializationException, AudioSink.WriteException {
        return this.f21200e.j(byteBuffer, j4, i4);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void k(AudioSink.a aVar) {
        this.f21200e.k(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void l(int i4) {
        this.f21200e.l(i4);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public int m(Format format) {
        return this.f21200e.m(format);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void n() {
        this.f21200e.n();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void o() throws AudioSink.WriteException {
        this.f21200e.o();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public long p(boolean z9) {
        return this.f21200e.p(z9);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.f21200e.pause();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void q() {
        this.f21200e.q();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void r() {
        this.f21200e.r();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void reset() {
        this.f21200e.reset();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void s(Format format, int i4, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        this.f21200e.s(format, i4, iArr);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void u(y yVar) {
        this.f21200e.u(yVar);
    }
}
