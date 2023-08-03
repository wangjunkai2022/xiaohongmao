package com.ksyun.media.streamer.encoder;

import com.ksyun.media.streamer.encoder.Encoder;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.logstats.StatsLogReport;

/* loaded from: classes3.dex */
public class AudioEncoderMgt {
    public static final int METHOD_HARDWARE = 2;
    public static final int METHOD_SOFTWARE = 3;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46056a = "AudioEncoderMgt";

    /* renamed from: d  reason: collision with root package name */
    private Encoder<AudioBufFrame, AudioPacket> f46059d;

    /* renamed from: f  reason: collision with root package name */
    private AudioCodecFormat f46061f;

    /* renamed from: g  reason: collision with root package name */
    private Encoder.EncoderListener f46062g;

    /* renamed from: b  reason: collision with root package name */
    private PinAdapter<AudioBufFrame> f46057b = new PinAdapter<>();

    /* renamed from: c  reason: collision with root package name */
    private PinAdapter<AudioPacket> f46058c = new PinAdapter<>();

    /* renamed from: e  reason: collision with root package name */
    private int f46060e = 3;

    /* JADX WARN: Multi-variable type inference failed */
    public AudioEncoderMgt() {
        AVCodecAudioEncoder aVCodecAudioEncoder = new AVCodecAudioEncoder();
        this.f46059d = aVCodecAudioEncoder;
        this.f46057b.mSrcPin.connect(aVCodecAudioEncoder.mSinkPin);
        this.f46059d.mSrcPin.connect(this.f46058c.mSinkPin);
    }

    private int a(int i4) {
        return i4 == 2 ? 2 : 3;
    }

    public synchronized int getEncodeMethod() {
        return this.f46060e;
    }

    public synchronized Encoder getEncoder() {
        return this.f46059d;
    }

    public SinkPin<AudioBufFrame> getSinkPin() {
        return this.f46057b.mSinkPin;
    }

    public SrcPin<AudioPacket> getSrcPin() {
        return this.f46058c.mSrcPin;
    }

    @Deprecated
    public synchronized void setEncodeFormat(AudioEncodeFormat audioEncodeFormat) {
        if (audioEncodeFormat != null) {
            setEncodeFormat(new AudioCodecFormat(audioEncodeFormat));
        }
    }

    public synchronized void setEncodeMethod(int i4) {
        int a10 = a(i4);
        if (a10 == this.f46060e) {
            return;
        }
        this.f46059d.mSrcPin.disconnect(false);
        this.f46057b.mSrcPin.disconnect(false);
        this.f46059d.release();
        this.f46060e = a10;
        if (a10 == 2) {
            this.f46059d = new MediaCodecAudioEncoder();
        } else {
            this.f46059d = new AVCodecAudioEncoder();
        }
        AudioCodecFormat audioCodecFormat = this.f46061f;
        if (audioCodecFormat != null) {
            this.f46059d.configure(audioCodecFormat);
        }
        Encoder.EncoderListener encoderListener = this.f46062g;
        if (encoderListener != null) {
            this.f46059d.setEncoderListener(encoderListener);
        }
        this.f46057b.mSrcPin.connect(this.f46059d.mSinkPin);
        this.f46059d.mSrcPin.connect(this.f46058c.mSinkPin);
    }

    public synchronized void setEncoderListener(Encoder.EncoderListener encoderListener) {
        this.f46062g = encoderListener;
        this.f46059d.setEncoderListener(encoderListener);
    }

    public synchronized void setEncodeFormat(AudioCodecFormat audioCodecFormat) {
        this.f46061f = audioCodecFormat;
        this.f46059d.configure(audioCodecFormat);
        StatsLogReport.getInstance().setAudioSampleRateInHz(this.f46061f.sampleRate);
        StatsLogReport.getInstance().setAudioEncodeProfile(this.f46061f.profile);
        StatsLogReport.getInstance().setAudioChannels(this.f46061f.channels);
    }
}
