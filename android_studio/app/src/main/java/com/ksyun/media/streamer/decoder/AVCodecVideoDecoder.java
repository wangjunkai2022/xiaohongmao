package com.ksyun.media.streamer.decoder;

import com.ksyun.media.streamer.decoder.AVDecoderWrapper;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVCodecVideoDecoder extends Decoder<ImgPacket, ImgBufFrame> implements AVDecoderWrapper.a {

    /* renamed from: g  reason: collision with root package name */
    private static final String f45861g = "AVCodecVideoDecoder";

    /* renamed from: h  reason: collision with root package name */
    private AVDecoderWrapper f45862h;

    /* renamed from: i  reason: collision with root package name */
    private VideoCodecFormat f45863i;

    /* renamed from: j  reason: collision with root package name */
    private ImgBufFormat f45864j;

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void b() {
        this.f45862h.a();
        this.f45862h.b();
        this.f45862h = null;
        onDecoded(null, 0L, 0L, 4);
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void c() {
        this.f45862h.a(null, 0L, 0, 0L);
    }

    @Override // com.ksyun.media.streamer.decoder.AVDecoderWrapper.a
    public void onDecoded(ByteBuffer byteBuffer, long j4, long j10, int i4) {
        float f10 = this.f45880e;
        if (f10 != 1.0d) {
            long j11 = this.f45881f;
            if (j11 == 0) {
                this.f45881f = j10;
            } else {
                j10 = (((float) (j10 - j11)) * (1.0f / f10)) + ((float) j11);
            }
        }
        ImgBufFrame imgBufFrame = new ImgBufFrame(this.f45864j, byteBuffer, j10);
        imgBufFrame.flags = i4;
        this.mSrcPin.onFrameAvailable(imgBufFrame);
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void a(Object obj) {
        this.f45863i = (VideoCodecFormat) obj;
        AVDecoderWrapper aVDecoderWrapper = new AVDecoderWrapper();
        this.f45862h = aVDecoderWrapper;
        aVDecoderWrapper.a(this);
        VideoCodecFormat videoCodecFormat = this.f45863i;
        ImgBufFormat imgBufFormat = new ImgBufFormat(3, videoCodecFormat.width, videoCodecFormat.height, videoCodecFormat.orientation);
        this.f45864j = imgBufFormat;
        this.mSrcPin.onFormatChanged(imgBufFormat);
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected int a() {
        VideoCodecFormat videoCodecFormat = this.f45863i;
        if (videoCodecFormat != null) {
            long j4 = videoCodecFormat.avCodecParPtr;
            if (j4 != 0) {
                return this.f45862h.b(j4);
            }
            return -1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.decoder.Decoder
    public int a(ImgPacket imgPacket) {
        if (imgPacket.buf != null && imgPacket.getAvPacketOpaque() != 0) {
            return this.f45862h.a(imgPacket.buf, imgPacket.pts, imgPacket.flags, imgPacket.getAvPacketOpaque());
        }
        if ((imgPacket.flags & 4) != 0) {
            flush();
            stop();
            return 0;
        }
        return 0;
    }
}
