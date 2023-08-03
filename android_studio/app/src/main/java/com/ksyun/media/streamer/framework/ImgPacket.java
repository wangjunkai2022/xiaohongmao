package com.ksyun.media.streamer.framework;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class ImgPacket extends AVPacketBase {
    public VideoCodecFormat format;

    public ImgPacket(VideoCodecFormat videoCodecFormat, ByteBuffer byteBuffer, long j4, long j10, long j11) {
        super(j11);
        this.format = videoCodecFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.dts = j10;
    }

    public ImgPacket(VideoCodecFormat videoCodecFormat, ByteBuffer byteBuffer, long j4, long j10) {
        this.format = videoCodecFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.dts = j10;
    }

    public ImgPacket(ImgPacket imgPacket) {
        super(imgPacket);
        this.format = imgPacket.format;
        this.buf = imgPacket.buf;
        this.pts = imgPacket.pts;
        this.dts = imgPacket.dts;
        this.flags = imgPacket.flags;
    }
}
