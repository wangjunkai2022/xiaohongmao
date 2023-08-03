package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;

/* loaded from: classes3.dex */
public class AudioAPMFilterMgt {
    public static final int AUDIO_NS_LEVEL_0 = 0;
    public static final int AUDIO_NS_LEVEL_1 = 1;
    public static final int AUDIO_NS_LEVEL_2 = 2;
    public static final int AUDIO_NS_LEVEL_3 = 3;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46224a = "AudioAPMFilterMgt";

    /* renamed from: b  reason: collision with root package name */
    private static final int f46225b = 8000;

    /* renamed from: c  reason: collision with root package name */
    private static final int f46226c = 16000;

    /* renamed from: d  reason: collision with root package name */
    private static final int f46227d = 32000;

    /* renamed from: e  reason: collision with root package name */
    private static final int f46228e = 44100;

    /* renamed from: f  reason: collision with root package name */
    private static final int f46229f = 48000;

    /* renamed from: k  reason: collision with root package name */
    private APMFilter f46234k;

    /* renamed from: l  reason: collision with root package name */
    private AudioBufFormat f46235l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f46236m = false;

    /* renamed from: n  reason: collision with root package name */
    private int f46237n = 1;

    /* renamed from: g  reason: collision with root package name */
    private SinkPin<AudioBufFrame> f46230g = new a();

    /* renamed from: h  reason: collision with root package name */
    private SrcPin<AudioBufFrame> f46231h = new b();

    /* renamed from: i  reason: collision with root package name */
    private PinAdapter<AudioBufFrame> f46232i = new com.ksyun.media.streamer.filter.audio.a();

    /* renamed from: j  reason: collision with root package name */
    private AudioResampleFilter f46233j = new AudioResampleFilter();

    /* loaded from: classes3.dex */
    private class a extends SinkPin<AudioBufFrame> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(AudioBufFrame audioBufFrame) {
            AudioAPMFilterMgt.this.f46231h.onFrameAvailable(audioBufFrame);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            if (z9) {
                AudioAPMFilterMgt.this.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            if (obj == null) {
                return;
            }
            AudioBufFormat audioBufFormat = (AudioBufFormat) obj;
            int i4 = audioBufFormat.sampleRate;
            if (i4 != 8000 && i4 != 16000 && i4 != AudioAPMFilterMgt.f46227d && i4 != 48000) {
                AudioAPMFilterMgt.this.f46235l = new AudioBufFormat(1, 48000, audioBufFormat.channels);
            } else {
                AudioAPMFilterMgt.this.f46235l = new AudioBufFormat(1, i4, audioBufFormat.channels);
            }
            AudioAPMFilterMgt.this.f46233j.setOutFormat(AudioAPMFilterMgt.this.f46235l);
            AudioAPMFilterMgt.this.f46231h.onFormatChanged(obj);
        }
    }

    public AudioAPMFilterMgt() {
        APMFilter aPMFilter = new APMFilter();
        this.f46234k = aPMFilter;
        aPMFilter.enableNs(this.f46236m);
        this.f46234k.setNsLevel(this.f46237n);
        this.f46231h.connect(this.f46233j.getSinkPin());
        this.f46233j.getSrcPin().connect(this.f46234k.getSinkPin());
        this.f46234k.getSrcPin().connect(this.f46232i.mSinkPin);
    }

    protected void a() {
    }

    public boolean getNSState() {
        return this.f46236m;
    }

    public SinkPin<AudioBufFrame> getSinkPin() {
        return this.f46230g;
    }

    public SrcPin<AudioBufFrame> getSrcPin() {
        return this.f46232i.mSrcPin;
    }

    public void release() {
        this.f46231h.disconnect(true);
        a();
    }

    public void setAudioNSLevel(int i4) {
        this.f46237n = i4;
        this.f46234k.setNsLevel(i4);
    }

    public void setEnableAudioNS(boolean z9) {
        if (this.f46236m == z9) {
            return;
        }
        this.f46236m = z9;
        this.f46234k.enableNs(z9);
    }
}
