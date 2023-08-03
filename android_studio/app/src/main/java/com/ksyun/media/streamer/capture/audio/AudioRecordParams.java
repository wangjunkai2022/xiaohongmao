package com.ksyun.media.streamer.capture.audio;

import android.media.AudioRecord;

/* loaded from: classes3.dex */
public class AudioRecordParams {
    public static int AUDIO_CHANNEL_MONO = 16;
    public static int AUDIO_CHANNEL_STEREO = 12;
    public static int AUDIO_FORMAT_DEFAULT = 2;
    public static int AUDIO_RATE_DEFAULT = 44100;
    public static int AUDIO_SOURCE_DEFAULT = 1;
    public int bufferSize;
    public int channel;
    public int format;
    public int rate;
    public int source;

    public AudioRecordParams() {
        this.format = AUDIO_FORMAT_DEFAULT;
        this.source = AUDIO_SOURCE_DEFAULT;
        this.channel = AUDIO_CHANNEL_MONO;
        this.rate = AUDIO_RATE_DEFAULT;
        getAudioBufferSize();
    }

    private void getAudioBufferSize() {
        this.bufferSize = AudioRecord.getMinBufferSize(this.rate, this.channel, this.format);
    }

    public int getBufferSize() {
        return this.bufferSize;
    }

    public int getChannel() {
        return this.channel;
    }

    public int getFormat() {
        return this.format;
    }

    public int getRate() {
        return this.rate;
    }

    public int getSource() {
        return this.source;
    }

    public void setBufferSize(int i4) {
        this.bufferSize = i4;
    }

    public void setChannel(int i4) {
        this.channel = i4;
    }

    public void setFormat(int i4) {
        this.format = i4;
    }

    public void setRate(int i4) {
        this.rate = i4;
    }

    public void setSource(int i4) {
        this.source = i4;
    }

    public AudioRecordParams(int i4, int i10, int i11, int i12) {
        this.format = i4;
        this.source = i10;
        this.channel = i11;
        this.rate = i12;
        getAudioBufferSize();
    }

    public AudioRecordParams(int i4) {
        this.format = AUDIO_FORMAT_DEFAULT;
        this.source = AUDIO_SOURCE_DEFAULT;
        this.channel = AUDIO_CHANNEL_MONO;
        this.rate = i4;
        getAudioBufferSize();
    }
}
