package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class AVFilterWrapper {

    /* renamed from: b  reason: collision with root package name */
    private static final String f46213b = "AVFilterWrapper";

    /* renamed from: d  reason: collision with root package name */
    private static final int f46214d = -1;

    /* renamed from: a  reason: collision with root package name */
    public SrcPin<AudioBufFrame> f46215a;

    /* renamed from: e  reason: collision with root package name */
    private long f46217e;

    /* renamed from: f  reason: collision with root package name */
    private AudioBufFormat f46218f;

    /* renamed from: g  reason: collision with root package name */
    private OutputStream f46219g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f46220h;

    /* renamed from: i  reason: collision with root package name */
    private float f46221i;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f46216c = false;

    /* renamed from: j  reason: collision with root package name */
    private long f46222j = 0;

    /* renamed from: k  reason: collision with root package name */
    private boolean f46223k = false;

    static {
        LibraryLoader.load();
    }

    public AVFilterWrapper() {
        this.f46217e = -1L;
        this.f46217e = create();
    }

    private native void config(long j4, AudioBufFormat audioBufFormat);

    private native long create();

    private synchronized void onAudioFrame(ByteBuffer byteBuffer, long j4) {
        AudioBufFrame audioBufFrame = new AudioBufFrame(this.f46218f, byteBuffer, j4);
        byteBuffer.order(ByteOrder.nativeOrder());
        if (this.f46215a.isConnected() && !this.f46223k) {
            this.f46215a.onFrameAvailable(audioBufFrame);
        }
    }

    private native boolean process(long j4, ByteBuffer byteBuffer, int i4, long j10);

    private native void release(long j4);

    private native boolean setSpeed(long j4, float f10);

    public void a(AudioBufFormat audioBufFormat) {
        this.f46222j = 0L;
        config(this.f46217e, audioBufFormat);
        this.f46218f = audioBufFormat;
        if (this.f46215a.isConnected()) {
            this.f46215a.onFormatChanged(audioBufFormat);
        }
    }

    public synchronized void b() {
        this.f46223k = true;
    }

    public void c() {
        long j4 = this.f46217e;
        if (j4 != -1) {
            release(j4);
            this.f46217e = -1L;
        }
    }

    public synchronized void a() {
        this.f46223k = false;
    }

    public void a(float f10) {
        setSpeed(this.f46217e, f10);
        this.f46221i = 1.0f / f10;
        this.f46222j = 0L;
    }

    public void a(ByteBuffer byteBuffer, long j4) {
        long j10 = this.f46222j;
        if (j10 == 0) {
            this.f46222j = j4;
        } else {
            j4 = (((float) (j4 - j10)) * this.f46221i) + j10;
        }
        process(this.f46217e, byteBuffer, byteBuffer.limit(), j4);
    }
}
