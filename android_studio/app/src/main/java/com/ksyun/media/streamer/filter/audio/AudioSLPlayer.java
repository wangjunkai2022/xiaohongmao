package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioSLPlayer implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46281a = "AudioSLPlayer";

    /* renamed from: b  reason: collision with root package name */
    private long f46282b = _init();

    static {
        LibraryLoader.load();
    }

    private native void _attachTo(long j4, int i4, long j10, boolean z9);

    private native int _config(long j4, int i4, int i10, int i11, int i12);

    private native long _init();

    private native int _pause(long j4);

    private native int _read(long j4, ByteBuffer byteBuffer, int i4);

    private native void _release(long j4);

    private native int _resume(long j4);

    private native void _setMute(long j4, boolean z9);

    private native void _setTuneLatency(long j4, boolean z9);

    private native int _start(long j4);

    private native int _stop(long j4);

    private native int _write(long j4, ByteBuffer byteBuffer, int i4, boolean z9);

    @Override // com.ksyun.media.streamer.filter.audio.d
    public long a() {
        return this.f46282b;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public void b(boolean z9) {
        _setMute(this.f46282b, z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int c() {
        return _stop(this.f46282b);
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int d() {
        return _pause(this.f46282b);
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int e() {
        return _resume(this.f46282b);
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public void f() {
        _release(this.f46282b);
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int a(int i4, int i10, int i11, int i12) {
        return _config(this.f46282b, i4, i10, i11, i12);
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int b() {
        return _start(this.f46282b);
    }

    public void a(int i4, long j4, boolean z9) {
        _attachTo(this.f46282b, i4, j4, z9);
    }

    public void a(boolean z9) {
        _setTuneLatency(this.f46282b, z9);
    }

    public int a(ByteBuffer byteBuffer, int i4) {
        int _read = _read(this.f46282b, byteBuffer, i4);
        if (_read >= 0) {
            byteBuffer.rewind();
            byteBuffer.limit(_read);
        }
        return _read;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int a(ByteBuffer byteBuffer) {
        return a(byteBuffer, false);
    }

    public int a(ByteBuffer byteBuffer, boolean z9) {
        return _write(this.f46282b, byteBuffer, byteBuffer.limit(), z9);
    }
}
