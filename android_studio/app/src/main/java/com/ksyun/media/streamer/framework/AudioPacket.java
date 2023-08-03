package com.ksyun.media.streamer.framework;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioPacket extends AVPacketBase {
    public AudioCodecFormat format;

    public AudioPacket(AudioCodecFormat audioCodecFormat, ByteBuffer byteBuffer, long j4, long j10) {
        super(j10);
        this.format = audioCodecFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.dts = j4;
    }

    public AudioPacket(AudioCodecFormat audioCodecFormat, ByteBuffer byteBuffer, long j4) {
        this.format = audioCodecFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.dts = j4;
    }

    public AudioPacket(AudioPacket audioPacket) {
        super(audioPacket);
        this.format = audioPacket.format;
        this.buf = audioPacket.buf;
        this.pts = audioPacket.pts;
        this.dts = audioPacket.dts;
        this.flags = audioPacket.flags;
    }
}
