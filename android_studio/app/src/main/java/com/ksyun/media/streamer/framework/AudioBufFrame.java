package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioBufFrame extends AVBufFrame {
    public AudioBufFormat format;

    public AudioBufFrame(AudioBufFormat audioBufFormat, FrameBufferCache frameBufferCache, ByteBuffer byteBuffer, long j4) {
        super(frameBufferCache);
        this.format = audioBufFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.flags = 0;
    }

    public AudioBufFrame(AudioBufFormat audioBufFormat, ByteBuffer byteBuffer, long j4) {
        this.format = audioBufFormat;
        this.buf = byteBuffer;
        this.pts = j4;
        this.flags = 0;
    }

    public AudioBufFrame(AudioBufFrame audioBufFrame) {
        super(audioBufFrame);
        this.format = audioBufFrame.format;
        this.buf = audioBufFrame.buf;
        this.pts = audioBufFrame.pts;
        this.flags = audioBufFrame.flags;
    }
}
