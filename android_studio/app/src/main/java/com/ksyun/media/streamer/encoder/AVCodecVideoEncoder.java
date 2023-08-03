package com.ksyun.media.streamer.encoder;

import android.util.Log;
import com.ksyun.media.streamer.encoder.AVEncoderWrapper;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVCodecVideoEncoder extends Encoder<ImgBufFrame, ImgPacket> implements AVEncoderWrapper.a {

    /* renamed from: k  reason: collision with root package name */
    private static final String f46029k = "AVCodecVideoEncoder";

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f46030l = false;

    /* renamed from: m  reason: collision with root package name */
    private static final int f46031m = 1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f46032n = 2097152;

    /* renamed from: o  reason: collision with root package name */
    private AVEncoderWrapper f46033o;

    /* renamed from: p  reason: collision with root package name */
    private VideoCodecFormat f46034p;

    /* renamed from: q  reason: collision with root package name */
    private FrameBufferCache f46035q = new FrameBufferCache(1, 2097152);

    @Override // com.ksyun.media.streamer.encoder.AVEncoderWrapper.a
    public void onEncoded(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4) {
        if ((i4 & 2) != 0) {
            VideoCodecFormat videoCodecFormat = new VideoCodecFormat((VideoCodecFormat) this.f46078b);
            this.f46034p = videoCodecFormat;
            videoCodecFormat.avCodecParPtr = this.f46033o.c();
            c(this.f46034p);
        }
        ImgPacket imgPacket = new ImgPacket(this.f46034p, byteBuffer, j11, j10, j4);
        imgPacket.flags = i4;
        a((AVCodecVideoEncoder) imgPacket);
        imgPacket.unref();
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected int a(Object obj) {
        if (obj instanceof VideoCodecFormat) {
            VideoCodecFormat videoCodecFormat = (VideoCodecFormat) obj;
            AVEncoderWrapper aVEncoderWrapper = new AVEncoderWrapper();
            this.f46033o = aVEncoderWrapper;
            aVEncoderWrapper.a(this);
            return this.f46033o.a(videoCodecFormat.codecId, videoCodecFormat.bitrate, videoCodecFormat.pixFmt, videoCodecFormat.width, videoCodecFormat.height, videoCodecFormat.frameRate, videoCodecFormat.iFrameInterval, videoCodecFormat.scene, videoCodecFormat.profile, videoCodecFormat.crf, videoCodecFormat.liveStreaming, videoCodecFormat.bitrateMode);
        }
        return -1002;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void b(Object obj) {
        ImgBufFormat imgBufFormat = (ImgBufFormat) obj;
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) this.f46078b;
        if (getState() == 2) {
            if (videoCodecFormat.width == imgBufFormat.width && videoCodecFormat.height == imgBufFormat.height) {
                return;
            }
            Log.d(f46029k, "restart encoder");
            b();
            a();
            videoCodecFormat.width = imgBufFormat.width;
            videoCodecFormat.height = imgBufFormat.height;
            a(this.f46078b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: c  reason: avoid collision after fix types in other method */
    public void a(ImgBufFrame imgBufFrame) {
        if (imgBufFrame == null || imgBufFrame.buf == null) {
            return;
        }
        if (imgBufFrame.isRefCounted()) {
            imgBufFrame.unref();
        } else {
            this.f46035q.offer(imgBufFrame.buf);
        }
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a() {
        this.f46033o.a();
        this.f46033o.b();
        this.f46033o = null;
        onEncoded(0L, null, 0L, 0L, 4);
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected boolean a(Object obj, Object obj2) {
        ImgBufFormat imgBufFormat = (ImgBufFormat) obj;
        VideoCodecFormat videoCodecFormat = (VideoCodecFormat) obj2;
        videoCodecFormat.width = imgBufFormat.width;
        videoCodecFormat.height = imgBufFormat.height;
        videoCodecFormat.pixFmt = imgBufFormat.pixFmt;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public void b() {
        this.f46033o.a(null, 0L, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public int b(ImgBufFrame imgBufFrame) {
        if (imgBufFrame == null) {
            return 0;
        }
        if (this.f46086j) {
            imgBufFrame.flags |= 1;
            this.f46086j = false;
        }
        int a10 = this.f46033o.a(imgBufFrame.buf, imgBufFrame.pts, imgBufFrame.flags);
        if (imgBufFrame.buf != null) {
            if (imgBufFrame.isRefCounted()) {
                imgBufFrame.unref();
            } else {
                this.f46035q.offer(imgBufFrame.buf);
            }
        }
        return a10;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a(int i4) {
        this.f46033o.a(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean c(ImgBufFrame imgBufFrame) {
        if (imgBufFrame != null && imgBufFrame.buf != null) {
            if (imgBufFrame.isRefCounted()) {
                imgBufFrame.ref();
            } else {
                ByteBuffer poll = this.f46035q.poll(imgBufFrame.buf.limit());
                if (poll == null) {
                    Log.w(f46029k, "Video frame dropped, size=" + imgBufFrame.buf.limit() + " pts=" + imgBufFrame.pts);
                    return true;
                }
                ByteBuffer byteBuffer = imgBufFrame.buf;
                if (poll != byteBuffer) {
                    poll.put(byteBuffer);
                    poll.flip();
                    imgBufFrame.buf.rewind();
                    imgBufFrame.buf = poll;
                }
            }
        }
        return false;
    }
}
