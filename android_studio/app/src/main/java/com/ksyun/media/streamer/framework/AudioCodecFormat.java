package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.encoder.AudioEncodeFormat;

/* loaded from: classes3.dex */
public class AudioCodecFormat {
    public long avCodecParPtr;
    public int bitrate;
    public int channels;
    public int codecId;
    public int profile;
    public int sampleFmt;
    public int sampleRate;

    public AudioCodecFormat(int i4, int i10, int i11, int i12, int i13) {
        this.codecId = i4;
        if (i4 == 256) {
            this.profile = 1;
        }
        this.sampleFmt = i10;
        this.sampleRate = i11;
        this.channels = i12;
        this.bitrate = i13;
        this.avCodecParPtr = 0L;
    }

    public AudioCodecFormat(AudioCodecFormat audioCodecFormat) {
        this.codecId = audioCodecFormat.codecId;
        this.profile = audioCodecFormat.profile;
        this.sampleFmt = audioCodecFormat.sampleFmt;
        this.sampleRate = audioCodecFormat.sampleRate;
        this.channels = audioCodecFormat.channels;
        this.bitrate = audioCodecFormat.bitrate;
        this.avCodecParPtr = audioCodecFormat.avCodecParPtr;
    }

    public AudioCodecFormat(AudioEncodeFormat audioEncodeFormat) {
        this.codecId = audioEncodeFormat.getCodecId();
        this.profile = audioEncodeFormat.getProfile();
        this.sampleFmt = audioEncodeFormat.getSampleFmt();
        this.sampleRate = audioEncodeFormat.getSampleRate();
        this.channels = audioEncodeFormat.getChannels();
        this.bitrate = audioEncodeFormat.getBitrate();
        this.avCodecParPtr = 0L;
    }
}
