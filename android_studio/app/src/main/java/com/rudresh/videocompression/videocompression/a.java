package com.rudresh.videocompression.videocompression;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.view.Surface;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: AudioRecoder.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private ByteBuffer[] f55137a;

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer[] f55138b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f55139c;

    /* renamed from: d  reason: collision with root package name */
    private ByteBuffer[] f55140d;

    /* renamed from: g  reason: collision with root package name */
    private final MediaCodec f55143g;

    /* renamed from: h  reason: collision with root package name */
    private final MediaCodec f55144h;

    /* renamed from: i  reason: collision with root package name */
    private final MediaExtractor f55145i;

    /* renamed from: n  reason: collision with root package name */
    private final int f55150n;

    /* renamed from: r  reason: collision with root package name */
    public final MediaFormat f55154r;

    /* renamed from: e  reason: collision with root package name */
    private final MediaCodec.BufferInfo f55141e = new MediaCodec.BufferInfo();

    /* renamed from: f  reason: collision with root package name */
    private final MediaCodec.BufferInfo f55142f = new MediaCodec.BufferInfo();

    /* renamed from: j  reason: collision with root package name */
    private boolean f55146j = false;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55147k = false;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55148l = false;

    /* renamed from: m  reason: collision with root package name */
    private int f55149m = -1;

    /* renamed from: o  reason: collision with root package name */
    private final int f55151o = 2500;

    /* renamed from: p  reason: collision with root package name */
    public long f55152p = 0;

    /* renamed from: q  reason: collision with root package name */
    public long f55153q = 0;

    public a(MediaFormat mediaFormat, MediaExtractor mediaExtractor, int i4) throws IOException {
        this.f55145i = mediaExtractor;
        this.f55150n = i4;
        MediaCodec createDecoderByType = MediaCodec.createDecoderByType(mediaFormat.getString(com.ksyun.media.player.misc.c.f45557a));
        this.f55143g = createDecoderByType;
        createDecoderByType.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 0);
        createDecoderByType.start();
        MediaCodec createEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
        this.f55144h = createEncoderByType;
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", mediaFormat.getInteger("sample-rate"), mediaFormat.getInteger("channel-count"));
        this.f55154r = createAudioFormat;
        createAudioFormat.setInteger(KSYMediaMeta.IJKM_KEY_BITRATE, 65536);
        createEncoderByType.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        createEncoderByType.start();
        this.f55137a = createDecoderByType.getInputBuffers();
        this.f55138b = createDecoderByType.getOutputBuffers();
        this.f55139c = createEncoderByType.getInputBuffers();
        this.f55140d = createEncoderByType.getOutputBuffers();
    }

    public void a() {
        try {
            this.f55144h.stop();
            this.f55143g.stop();
            this.f55145i.unselectTrack(this.f55150n);
            this.f55145i.release();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public boolean b(d dVar, int i4) throws Exception {
        int dequeueOutputBuffer;
        int dequeueInputBuffer;
        int dequeueOutputBuffer2;
        int dequeueInputBuffer2;
        if (!this.f55146j && (dequeueInputBuffer2 = this.f55143g.dequeueInputBuffer(2500L)) != -1) {
            int readSampleData = this.f55145i.readSampleData(this.f55143g.getInputBuffer(dequeueInputBuffer2), 0);
            long sampleTime = this.f55145i.getSampleTime();
            long j4 = this.f55153q;
            if (j4 > 0 && sampleTime >= j4) {
                this.f55148l = true;
                this.f55141e.flags |= 4;
            }
            if (readSampleData >= 0) {
                this.f55143g.queueInputBuffer(dequeueInputBuffer2, 0, readSampleData, this.f55145i.getSampleTime(), this.f55145i.getSampleFlags());
            }
            boolean z9 = !this.f55145i.advance();
            this.f55146j = z9;
            if (z9) {
                this.f55143g.queueInputBuffer(this.f55143g.dequeueInputBuffer(2500L), 0, 0, 0L, 4);
            }
        }
        if (!this.f55147k && this.f55149m == -1 && (dequeueOutputBuffer2 = this.f55143g.dequeueOutputBuffer(this.f55141e, 2500L)) != -1) {
            if (dequeueOutputBuffer2 == -3) {
                this.f55138b = this.f55143g.getOutputBuffers();
            } else if (dequeueOutputBuffer2 != -2) {
                if ((this.f55141e.flags & 2) != 0) {
                    this.f55143g.releaseOutputBuffer(dequeueOutputBuffer2, false);
                } else {
                    this.f55149m = dequeueOutputBuffer2;
                }
            }
        }
        if (this.f55149m != -1 && (dequeueInputBuffer = this.f55144h.dequeueInputBuffer(2500L)) != -1) {
            ByteBuffer byteBuffer = this.f55139c[dequeueInputBuffer];
            MediaCodec.BufferInfo bufferInfo = this.f55141e;
            int i10 = bufferInfo.size;
            long j10 = bufferInfo.presentationTimeUs;
            if (i10 >= 0) {
                ByteBuffer duplicate = this.f55138b[this.f55149m].duplicate();
                duplicate.position(this.f55141e.offset);
                duplicate.limit(this.f55141e.offset + i10);
                byteBuffer.position(0);
                byteBuffer.put(duplicate);
                this.f55144h.queueInputBuffer(dequeueInputBuffer, 0, i10, j10, this.f55141e.flags);
            }
            this.f55143g.releaseOutputBuffer(this.f55149m, false);
            this.f55149m = -1;
            if ((this.f55141e.flags & 4) != 0) {
                this.f55147k = true;
            }
        }
        if (!this.f55148l && (dequeueOutputBuffer = this.f55144h.dequeueOutputBuffer(this.f55142f, 2500L)) != -1) {
            if (dequeueOutputBuffer == -3) {
                this.f55140d = this.f55144h.getOutputBuffers();
            } else if (dequeueOutputBuffer != -2) {
                ByteBuffer byteBuffer2 = this.f55140d[dequeueOutputBuffer];
                MediaCodec.BufferInfo bufferInfo2 = this.f55142f;
                if ((bufferInfo2.flags & 2) != 0) {
                    this.f55144h.releaseOutputBuffer(dequeueOutputBuffer, false);
                } else {
                    if (bufferInfo2.size != 0) {
                        dVar.s(i4, byteBuffer2, bufferInfo2, false);
                    }
                    if ((this.f55142f.flags & 4) != 0) {
                        this.f55148l = true;
                    }
                    this.f55144h.releaseOutputBuffer(dequeueOutputBuffer, false);
                }
            }
        }
        return this.f55148l;
    }
}
