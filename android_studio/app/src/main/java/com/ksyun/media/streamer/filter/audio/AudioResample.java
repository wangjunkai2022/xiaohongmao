package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioResample {

    /* renamed from: a  reason: collision with root package name */
    private long f46274a = _init();

    static {
        LibraryLoader.load();
    }

    public AudioResample() {
    }

    private native void _attachTo(long j4, int i4, long j10, boolean z9);

    private native int _config(long j4, int i4, int i10, int i11);

    private native long _init();

    private native int _read(long j4, ByteBuffer byteBuffer, int i4);

    private native void _release(long j4);

    private native ByteBuffer _resample(long j4, ByteBuffer byteBuffer, int i4);

    private native void _setOutputFormat(long j4, int i4, int i10);

    public long a() {
        return this.f46274a;
    }

    public void b() {
        _release(this.f46274a);
    }

    public void a(int i4, int i10) {
        _setOutputFormat(this.f46274a, i4, i10);
    }

    public AudioResample(AudioBufFormat audioBufFormat, AudioBufFormat audioBufFormat2) {
        a(audioBufFormat2.sampleRate, audioBufFormat2.channels);
        a(audioBufFormat.sampleFormat, audioBufFormat.sampleRate, audioBufFormat.channels);
    }

    public int a(int i4, int i10, int i11) {
        return _config(this.f46274a, i4, i10, i11);
    }

    public void a(int i4, long j4, boolean z9) {
        _attachTo(this.f46274a, i4, j4, z9);
    }

    public int a(ByteBuffer byteBuffer, int i4) {
        int _read = _read(this.f46274a, byteBuffer, i4);
        if (_read >= 0) {
            byteBuffer.rewind();
            byteBuffer.limit(_read);
        }
        return _read;
    }

    public ByteBuffer a(ByteBuffer byteBuffer) {
        if (byteBuffer == null || byteBuffer.limit() == 0) {
            return null;
        }
        return _resample(this.f46274a, byteBuffer, byteBuffer.limit());
    }
}
