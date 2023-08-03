package com.ksyun.media.streamer.capture.audio;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class KSYAudioSLRecord implements a {

    /* renamed from: a  reason: collision with root package name */
    private long f45774a;

    static {
        LibraryLoader.load();
    }

    public KSYAudioSLRecord(int i4, int i10, int i11) {
        long _init = _init(i4, i10, i11);
        this.f45774a = _init;
        if (_init == 0) {
            throw new IllegalArgumentException("Create OpenGLES record failed!");
        }
    }

    private native long _init(int i4, int i10, int i11);

    private native int _read(long j4, ByteBuffer byteBuffer, int i4);

    private native void _release(long j4);

    private native void _setEnableLatencyTest(long j4, boolean z9);

    private native void _setVolume(long j4, float f10);

    private native int _start(long j4);

    private native int _stop(long j4);

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void a(float f10) {
        _setVolume(this.f45774a, f10);
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int b() {
        return _stop(this.f45774a);
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void c() {
        _release(this.f45774a);
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public long d() {
        return this.f45774a;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int a() {
        return _start(this.f45774a);
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int a(ByteBuffer byteBuffer, int i4) {
        int _read = _read(this.f45774a, byteBuffer, i4);
        if (_read > 0) {
            byteBuffer.limit(_read);
            byteBuffer.rewind();
        }
        return _read;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void a(boolean z9) {
        _setEnableLatencyTest(this.f45774a, z9);
    }
}
