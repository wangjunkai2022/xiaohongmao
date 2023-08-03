package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioReverbWrap {

    /* renamed from: a  reason: collision with root package name */
    private long f46280a = create();

    static {
        LibraryLoader.load();
    }

    private native void attachTo(long j4, int i4, long j10, boolean z9);

    private native void config(long j4, int i4, int i10);

    private native long create();

    private native boolean delete(long j4);

    private native int process(long j4, ByteBuffer byteBuffer, int i4);

    private native int read(long j4, ByteBuffer byteBuffer, int i4);

    private native boolean setLevel(long j4, int i4);

    public long a() {
        return this.f46280a;
    }

    public void b() {
        delete(this.f46280a);
    }

    public void a(int i4, int i10) {
        config(this.f46280a, i4, i10);
    }

    public void a(int i4, long j4, boolean z9) {
        attachTo(this.f46280a, i4, j4, z9);
    }

    public void a(int i4) {
        setLevel(this.f46280a, i4);
    }

    public int a(ByteBuffer byteBuffer, int i4) {
        return read(this.f46280a, byteBuffer, i4);
    }

    public int a(ByteBuffer byteBuffer) {
        if (byteBuffer == null || byteBuffer.limit() <= 0) {
            return 0;
        }
        return process(this.f46280a, byteBuffer, byteBuffer.limit());
    }
}
