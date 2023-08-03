package com.ksyun.media.streamer.filter.audio;

import android.util.Log;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public abstract class AudioFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46239a = "AudioFilterBase";

    /* renamed from: b  reason: collision with root package name */
    private SinkPin<AudioBufFrame> f46240b = new a();

    /* renamed from: c  reason: collision with root package name */
    private SrcPin<AudioBufFrame> f46241c = new b();

    /* renamed from: d  reason: collision with root package name */
    private AudioBufFormat f46242d;

    /* renamed from: e  reason: collision with root package name */
    private AudioBufFormat f46243e;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f46244f;

    /* renamed from: g  reason: collision with root package name */
    private long f46245g;

    /* renamed from: h  reason: collision with root package name */
    private long f46246h;

    /* loaded from: classes3.dex */
    private class a extends SinkPin<AudioBufFrame> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(AudioBufFrame audioBufFrame) {
            AudioBufFormat audioBufFormat;
            AudioBufFrame audioBufFrame2;
            if (audioBufFrame == null || (audioBufFormat = audioBufFrame.format) == null) {
                return;
            }
            if (audioBufFormat.nativeModule != 0 && AudioFilterBase.this.getNativeInstance() != 0) {
                if (audioBufFrame.buf != null) {
                    AudioBufFormat audioBufFormat2 = audioBufFrame.format;
                    AudioFilterBase.this.f46245g += audioBufFrame.buf.limit();
                    int i4 = (int) (((((AudioFilterBase.this.f46245g / (audioBufFormat2.channels * 2)) * AudioFilterBase.this.f46243e.sampleRate) / audioBufFormat2.sampleRate) * (AudioFilterBase.this.f46243e.channels * 2)) - AudioFilterBase.this.f46246h);
                    AudioFilterBase.this.f46246h += i4;
                    ByteBuffer byteBuffer = audioBufFrame.buf;
                    if (byteBuffer.capacity() < i4) {
                        if (AudioFilterBase.this.f46244f == null || AudioFilterBase.this.f46244f.capacity() < i4) {
                            AudioFilterBase.this.f46244f = ByteBuffer.allocateDirect(i4);
                            AudioFilterBase.this.f46244f.order(ByteOrder.nativeOrder());
                        }
                        byteBuffer = AudioFilterBase.this.f46244f;
                    }
                    int readNative = AudioFilterBase.this.readNative(byteBuffer, i4);
                    if (readNative <= 0) {
                        Log.e(AudioFilterBase.f46239a, AudioFilterBase.this.getClass().getSimpleName() + " readNative failed ret=" + readNative);
                    }
                    audioBufFrame2 = new AudioBufFrame(audioBufFrame);
                    audioBufFrame2.format = AudioFilterBase.this.f46243e;
                    audioBufFrame2.buf = byteBuffer;
                } else {
                    audioBufFrame2 = audioBufFrame;
                }
                if ((audioBufFrame.flags & 65536) != 0) {
                    AudioFilterBase.this.attachTo(0, audioBufFrame.format.nativeModule, true);
                }
            } else {
                ByteBuffer byteBuffer2 = audioBufFrame.buf;
                if (byteBuffer2 != null) {
                    if (!byteBuffer2.isDirect()) {
                        Log.e(AudioFilterBase.f46239a, "input frame must use direct ByteBuffer");
                    }
                    audioBufFrame2 = AudioFilterBase.this.doFilter(audioBufFrame);
                } else {
                    audioBufFrame2 = audioBufFrame;
                }
            }
            if (audioBufFrame2 == null) {
                return;
            }
            if (audioBufFrame2 == audioBufFrame) {
                audioBufFrame2 = new AudioBufFrame(audioBufFrame);
                audioBufFrame2.format = AudioFilterBase.this.f46243e;
            }
            AudioFilterBase.this.f46241c.onFrameAvailable(audioBufFrame2);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            if (z9) {
                AudioFilterBase.this.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            if (obj == null) {
                return;
            }
            AudioFilterBase.this.f46242d = (AudioBufFormat) obj;
            Log.d(AudioFilterBase.f46239a, "doFormatChanged nativeModule=" + AudioFilterBase.this.f46242d.nativeModule);
            if (AudioFilterBase.this.f46242d.nativeModule != 0 && AudioFilterBase.this.getNativeInstance() != 0) {
                AudioFilterBase audioFilterBase = AudioFilterBase.this;
                audioFilterBase.attachTo(0, audioFilterBase.f46242d.nativeModule, false);
                AudioBufFormat outFormat = AudioFilterBase.this.getOutFormat();
                if (outFormat == null) {
                    AudioFilterBase audioFilterBase2 = AudioFilterBase.this;
                    audioFilterBase2.f46243e = new AudioBufFormat(audioFilterBase2.f46242d);
                } else {
                    AudioFilterBase.this.f46243e = new AudioBufFormat(outFormat);
                }
                AudioFilterBase.this.f46243e.nativeModule = AudioFilterBase.this.getNativeInstance();
                AudioFilterBase.this.f46245g = 0L;
                AudioFilterBase.this.f46246h = 0L;
            } else {
                AudioFilterBase audioFilterBase3 = AudioFilterBase.this;
                audioFilterBase3.f46243e = audioFilterBase3.doFormatChanged(audioFilterBase3.f46242d);
                if (AudioFilterBase.this.f46243e == null) {
                    return;
                }
                if (AudioFilterBase.this.f46243e == AudioFilterBase.this.f46242d) {
                    AudioFilterBase audioFilterBase4 = AudioFilterBase.this;
                    audioFilterBase4.f46243e = new AudioBufFormat(audioFilterBase4.f46242d);
                    AudioFilterBase.this.f46243e.nativeModule = 0L;
                }
            }
            AudioFilterBase.this.f46241c.onFormatChanged(AudioFilterBase.this.f46243e);
        }
    }

    protected void attachTo(int i4, long j4, boolean z9) {
    }

    protected abstract AudioBufFrame doFilter(AudioBufFrame audioBufFrame);

    protected abstract AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat);

    protected void doRelease() {
    }

    protected long getNativeInstance() {
        return 0L;
    }

    protected AudioBufFormat getOutFormat() {
        return null;
    }

    public SinkPin<AudioBufFrame> getSinkPin() {
        return this.f46240b;
    }

    public SrcPin<AudioBufFrame> getSrcPin() {
        return this.f46241c;
    }

    protected int readNative(ByteBuffer byteBuffer, int i4) {
        return 0;
    }

    public void release() {
        this.f46241c.disconnect(true);
        doRelease();
    }
}
