package com.ksyun.media.streamer.filter.audio;

import android.util.Log;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class AudioMixer {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46253a = "AudioMixer";

    /* renamed from: b  reason: collision with root package name */
    private static final int f46254b = 8;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f46255c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final int f46256d = 0;

    /* renamed from: g  reason: collision with root package name */
    private long f46259g;

    /* renamed from: l  reason: collision with root package name */
    private boolean f46264l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46265m;

    /* renamed from: n  reason: collision with root package name */
    private AudioBufFormat[] f46266n;

    /* renamed from: o  reason: collision with root package name */
    private AudioBufFormat f46267o;

    /* renamed from: h  reason: collision with root package name */
    private int f46260h = 0;

    /* renamed from: e  reason: collision with root package name */
    private List<SinkPin<AudioBufFrame>> f46257e = new LinkedList();

    /* renamed from: f  reason: collision with root package name */
    private SrcPin<AudioBufFrame> f46258f = new b();

    /* renamed from: j  reason: collision with root package name */
    private float f46262j = 1.0f;

    /* renamed from: k  reason: collision with root package name */
    private float f46263k = 1.0f;

    /* renamed from: i  reason: collision with root package name */
    private float[][] f46261i = (float[][]) Array.newInstance(float.class, getSinkPinNum(), 2);

    /* loaded from: classes3.dex */
    private class a extends SinkPin<AudioBufFrame> {

        /* renamed from: b  reason: collision with root package name */
        private int f46269b;

        public a(int i4) {
            this.f46269b = i4;
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(AudioBufFrame audioBufFrame) {
            AudioMixer.this.a(this.f46269b, audioBufFrame);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            super.onDisconnect(z9);
            AudioMixer.this.a(this.f46269b, z9);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            AudioMixer.this.a(this.f46269b, (AudioBufFormat) obj);
        }
    }

    static {
        LibraryLoader.load();
    }

    public AudioMixer() {
        this.f46259g = 0L;
        for (int i4 = 0; i4 < getSinkPinNum(); i4++) {
            this.f46257e.add(new a(i4));
            float[][] fArr = this.f46261i;
            fArr[i4][0] = 1.0f;
            fArr[i4][1] = 1.0f;
        }
        this.f46266n = new AudioBufFormat[getSinkPinNum()];
        this.f46259g = _init();
    }

    private native void _attachTo(long j4, int i4, long j10, boolean z9);

    private native int _config(long j4, int i4, int i10, int i11, int i12, int i13);

    private native void _destroy(long j4, int i4);

    private native long _init();

    private native int _process(long j4, int i4, ByteBuffer byteBuffer, int i10);

    private native int _read(long j4, ByteBuffer byteBuffer, int i4);

    private native void _release(long j4);

    private native void _setBlockingMode(long j4, boolean z9);

    private native void _setInputVolume(long j4, int i4, float f10);

    private native void _setInputVolume(long j4, int i4, float f10, float f11);

    private native void _setMainIdx(long j4, int i4);

    private native void _setMute(long j4, boolean z9);

    private native void _setOutputVolume(long j4, float f10);

    private native void _setOutputVolume(long j4, float f10, float f11);

    private void a() {
        this.f46258f.disconnect(true);
        this.f46257e.clear();
        long j4 = this.f46259g;
        if (j4 != 0) {
            _release(j4);
            this.f46259g = 0L;
        }
    }

    public void clearBuffer() {
    }

    public void clearBuffer(int i4) {
    }

    public boolean getBlockingMode() {
        return this.f46265m;
    }

    public int getEmptySinkPin() {
        for (int i4 = 0; i4 < getSinkPinNum(); i4++) {
            if (!this.f46257e.get(i4).isConnected()) {
                return i4;
            }
        }
        return -1;
    }

    public float getInputVolume(int i4) {
        float[][] fArr = this.f46261i;
        if (i4 < fArr.length) {
            return fArr[i4][0];
        }
        return 0.0f;
    }

    public boolean getMute() {
        return this.f46264l;
    }

    public float getOutputVolume() {
        return this.f46262j;
    }

    public SinkPin<AudioBufFrame> getSinkPin(int i4) {
        if (this.f46257e.size() > i4) {
            return this.f46257e.get(i4);
        }
        return null;
    }

    public int getSinkPinNum() {
        return 8;
    }

    public SrcPin<AudioBufFrame> getSrcPin() {
        return this.f46258f;
    }

    public synchronized void release() {
        a();
    }

    public void setBlockingMode(boolean z9) {
        this.f46265m = z9;
        _setBlockingMode(this.f46259g, z9);
    }

    public void setInputVolume(int i4, float f10) {
        setInputVolume(i4, f10, f10);
    }

    public final void setMainSinkPinIndex(int i4) {
        this.f46260h = i4;
        _setMainIdx(this.f46259g, i4);
    }

    public void setMute(boolean z9) {
        this.f46264l = z9;
        _setMute(this.f46259g, z9);
    }

    public void setOutputVolume(float f10) {
        setOutputVolume(f10, f10);
    }

    public float getOutputVolume(boolean z9) {
        if (z9) {
            return this.f46262j;
        }
        return this.f46263k;
    }

    public void setInputVolume(int i4, float f10, float f11) {
        float[][] fArr = this.f46261i;
        if (i4 < fArr.length) {
            fArr[i4][0] = f10;
            fArr[i4][1] = f11;
            _setInputVolume(this.f46259g, i4, f10, f11);
        }
    }

    public void setOutputVolume(float f10, float f11) {
        this.f46262j = f10;
        this.f46263k = f11;
        _setOutputVolume(this.f46259g, f10, f11);
    }

    public float getInputVolume(int i4, boolean z9) {
        float[][] fArr = this.f46261i;
        if (i4 < fArr.length) {
            if (z9) {
                return fArr[i4][0];
            }
            return fArr[i4][1];
        }
        return 0.0f;
    }

    protected synchronized void a(int i4, boolean z9) {
        long j4 = this.f46259g;
        if (j4 != 0) {
            _destroy(j4, i4);
        }
        if (i4 == this.f46260h && z9) {
            a();
        }
    }

    protected synchronized void a(int i4, AudioBufFormat audioBufFormat) {
        if (audioBufFormat == null) {
            return;
        }
        this.f46266n[i4] = audioBufFormat;
        Log.d(f46253a, "doFormatChanged " + i4 + " nativeModule=" + audioBufFormat.nativeModule);
        long j4 = audioBufFormat.nativeModule;
        if (j4 != 0) {
            _attachTo(this.f46259g, i4, j4, false);
        } else {
            _config(this.f46259g, i4, audioBufFormat.sampleRate, audioBufFormat.channels, 1024, 300);
        }
        if (i4 == this.f46260h) {
            AudioBufFormat audioBufFormat2 = new AudioBufFormat(audioBufFormat.sampleFormat, audioBufFormat.sampleRate, audioBufFormat.channels);
            this.f46267o = audioBufFormat2;
            if (audioBufFormat.nativeModule != 0) {
                audioBufFormat2.nativeModule = this.f46259g;
            }
            this.f46258f.onFormatChanged(audioBufFormat2);
        }
    }

    protected void a(int i4, AudioBufFrame audioBufFrame) {
        int _read;
        if ((audioBufFrame.flags & 65536) != 0) {
            long j4 = audioBufFrame.format.nativeModule;
            if (j4 != 0) {
                _attachTo(this.f46259g, i4, j4, true);
            }
            long j10 = this.f46259g;
            if (j10 != 0) {
                _destroy(j10, i4);
            }
        }
        if ((audioBufFrame.flags & 4) != 0) {
            long j11 = this.f46259g;
            if (j11 != 0) {
                _destroy(j11, i4);
            }
        }
        ByteBuffer byteBuffer = audioBufFrame.buf;
        if (byteBuffer != null && audioBufFrame.format.nativeModule == 0) {
            long j12 = this.f46259g;
            if (j12 != 0) {
                _process(j12, i4, byteBuffer, byteBuffer.limit());
            }
        }
        if (i4 == this.f46260h) {
            ByteBuffer byteBuffer2 = audioBufFrame.buf;
            if (byteBuffer2 != null && audioBufFrame.format.nativeModule != 0 && (_read = _read(this.f46259g, byteBuffer2, byteBuffer2.limit())) <= 0) {
                Log.e(f46253a, "readNative failed ret=" + _read);
            }
            AudioBufFrame audioBufFrame2 = new AudioBufFrame(audioBufFrame);
            audioBufFrame2.format = this.f46267o;
            this.f46258f.onFrameAvailable(audioBufFrame2);
        }
    }
}
