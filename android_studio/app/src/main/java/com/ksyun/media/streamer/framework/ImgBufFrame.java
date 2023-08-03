package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class ImgBufFrame extends AVBufFrame {
    public ImgBufFormat format;

    public ImgBufFrame(ImgBufFormat imgBufFormat, FrameBufferCache frameBufferCache, ByteBuffer byteBuffer, long j4) {
        super(frameBufferCache);
        this.format = imgBufFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.flags = 0;
    }

    public ImgBufFrame(ImgBufFormat imgBufFormat, ByteBuffer byteBuffer, long j4) {
        this.format = imgBufFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.flags = 0;
    }

    public ImgBufFrame(ImgBufFrame imgBufFrame) {
        super(imgBufFrame);
        this.format = imgBufFrame.format;
        this.buf = imgBufFrame.buf;
        this.pts = imgBufFrame.pts;
        this.flags = imgBufFrame.flags;
    }

    private ImgBufFrame() {
        this.format = null;
        this.buf = null;
        this.pts = 0L;
        this.flags = 0;
    }
}
