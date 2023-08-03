package com.ksyun.media.streamer.framework;

/* loaded from: classes3.dex */
public class AudioBufFormat {
    public int channels;
    public long nativeModule;
    public int sampleFormat;
    public int sampleRate;

    public AudioBufFormat(int i4, int i10, int i11) {
        this.sampleFormat = i4;
        this.sampleRate = i10;
        this.channels = i11;
        this.nativeModule = 0L;
    }

    public boolean equals(AudioBufFormat audioBufFormat) {
        return audioBufFormat != null && this.sampleFormat == audioBufFormat.sampleFormat && this.sampleRate == audioBufFormat.sampleRate && this.channels == audioBufFormat.channels;
    }

    public AudioBufFormat(AudioBufFormat audioBufFormat) {
        this.sampleFormat = audioBufFormat.sampleFormat;
        this.sampleRate = audioBufFormat.sampleRate;
        this.channels = audioBufFormat.channels;
        this.nativeModule = audioBufFormat.nativeModule;
    }

    private AudioBufFormat() {
    }
}
