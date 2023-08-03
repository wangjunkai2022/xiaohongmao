package com.ksyun.media.streamer.filter.audio;

import android.util.Log;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class APMWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final int f46201a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f46202b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f46203c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f46204d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f46205e = 48000;

    /* renamed from: f  reason: collision with root package name */
    public static final int f46206f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f46207g = 1;

    /* renamed from: h  reason: collision with root package name */
    public static boolean f46208h = true;

    /* renamed from: i  reason: collision with root package name */
    private static final String f46209i = "APMWrapper";

    /* renamed from: j  reason: collision with root package name */
    private static final int f46210j = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f46211k;

    /* renamed from: l  reason: collision with root package name */
    private AudioBufFormat f46212l;

    static {
        LibraryLoader.load();
        try {
            System.loadLibrary("ksyapm");
        } catch (UnsatisfiedLinkError unused) {
            f46208h = false;
            Log.e(f46209i, "No libksyapm.so! Please check ");
        }
    }

    public APMWrapper() {
        this.f46211k = 0L;
        if (!f46208h) {
            Log.e(f46209i, "native library not loaded!");
            return;
        }
        this.f46211k = create();
        this.f46212l = new AudioBufFormat(1, 48000, 2);
        if (this.f46211k == 0) {
            Log.e(f46209i, "apm create failed ，ret " + this.f46211k);
        }
    }

    private native void attachTo(long j4, int i4, long j10, boolean z9);

    private int c(boolean z9) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return -1;
        }
        return enableVAD(j4, z9);
    }

    private native int config(long j4, int i4, int i10);

    private native long create();

    private native int enableHighPassFilter(long j4, boolean z9);

    private native int enableNs(long j4, boolean z9);

    private native int enableVAD(long j4, boolean z9);

    private native ByteBuffer processStream(long j4, ByteBuffer byteBuffer, int i4);

    private native int read(long j4, ByteBuffer byteBuffer, int i4);

    private native void release(long j4);

    private native int setNsLevel(long j4, int i4);

    private native int setVADLikelihood(long j4, int i4);

    public long a() {
        return this.f46211k;
    }

    public AudioBufFormat b() {
        return this.f46212l;
    }

    private int b(boolean z9) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return -1;
        }
        return enableHighPassFilter(j4, z9);
    }

    public ByteBuffer a(ByteBuffer byteBuffer) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return null;
        }
        return processStream(j4, byteBuffer, byteBuffer.limit());
    }

    public void c() {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return;
        }
        release(j4);
    }

    private int b(int i4) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return -1;
        }
        return setVADLikelihood(j4, i4);
    }

    public int a(boolean z9) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return -1;
        }
        return enableNs(j4, z9);
    }

    public int a(int i4) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return -1;
        }
        return setNsLevel(j4, i4);
    }

    public int a(int i4, int i10) {
        long j4 = this.f46211k;
        if (j4 == 0) {
            return -1;
        }
        AudioBufFormat audioBufFormat = this.f46212l;
        audioBufFormat.sampleRate = i4;
        audioBufFormat.channels = i10;
        return config(j4, i4, i10);
    }

    public void a(int i4, long j4, boolean z9) {
        attachTo(this.f46211k, i4, j4, z9);
    }

    public int a(ByteBuffer byteBuffer, int i4) {
        int read = read(this.f46211k, byteBuffer, i4);
        if (read >= 0) {
            byteBuffer.rewind();
            byteBuffer.limit(read);
        }
        return read;
    }
}
