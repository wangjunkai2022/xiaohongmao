package com.ksyun.media.streamer.decoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.util.a0;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import java.nio.ByteBuffer;

@TargetApi(16)
/* loaded from: classes3.dex */
public class MediaCodecAudioDecoder extends Decoder<AudioPacket, AudioBufFrame> {

    /* renamed from: g  reason: collision with root package name */
    private static final String f45892g = "MediaCodecAudioDecoder";

    /* renamed from: h  reason: collision with root package name */
    private static final int f45893h = 73729;

    /* renamed from: i  reason: collision with root package name */
    private static final int f45894i = 86017;

    /* renamed from: j  reason: collision with root package name */
    private static final int f45895j = 86018;

    /* renamed from: k  reason: collision with root package name */
    private static final int f45896k = 86019;

    /* renamed from: l  reason: collision with root package name */
    private static final int f45897l = 86028;

    /* renamed from: m  reason: collision with root package name */
    private static final int f45898m = 86076;

    /* renamed from: w  reason: collision with root package name */
    private static final long f45899w = 10000;

    /* renamed from: x  reason: collision with root package name */
    private static final int f45900x = 10;

    /* renamed from: n  reason: collision with root package name */
    private MediaCodec f45901n;

    /* renamed from: o  reason: collision with root package name */
    private AudioBufFormat f45902o;

    /* renamed from: r  reason: collision with root package name */
    private MediaCodec.BufferInfo f45905r;

    /* renamed from: p  reason: collision with root package name */
    private ByteBuffer[] f45903p = null;

    /* renamed from: q  reason: collision with root package name */
    private ByteBuffer[] f45904q = null;

    /* renamed from: s  reason: collision with root package name */
    private int f45906s = 0;

    /* renamed from: t  reason: collision with root package name */
    private int f45907t = 0;

    /* renamed from: u  reason: collision with root package name */
    private int f45908u = 0;

    /* renamed from: v  reason: collision with root package name */
    private int f45909v = 0;

    private void c(AudioPacket audioPacket) {
        int i4;
        MediaCodec mediaCodec = this.f45901n;
        if (mediaCodec == null) {
            return;
        }
        boolean z9 = true;
        this.f45907t++;
        int dequeueInputBuffer = mediaCodec.dequeueInputBuffer(f45899w);
        if (dequeueInputBuffer >= 0) {
            if ((audioPacket.flags & 4) != 0) {
                i4 = 4;
            } else {
                z9 = false;
                i4 = 0;
            }
            ByteBuffer byteBuffer = audioPacket.buf;
            int limit = byteBuffer != null ? byteBuffer.limit() : 0;
            this.f45903p[dequeueInputBuffer].clear();
            if (limit > 0) {
                this.f45903p[dequeueInputBuffer].put(audioPacket.buf);
            }
            this.f45901n.queueInputBuffer(dequeueInputBuffer, 0, limit, audioPacket.pts * 1000, i4);
            a(z9);
        }
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected int a() {
        return 0;
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void b() {
        this.f45901n.stop();
        this.f45901n.release();
        this.f45901n = null;
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    public void release() {
        super.release();
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void a(Object obj) {
        this.f45902o = (AudioBufFormat) obj;
        this.mSrcPin.onFormatChanged(obj);
    }

    private void b(AudioPacket audioPacket) {
        String str;
        this.f45901n = null;
        AudioCodecFormat audioCodecFormat = audioPacket.format;
        switch (audioCodecFormat.codecId) {
            case f45893h /* 73729 */:
                str = a0.X;
                break;
            case f45894i /* 86017 */:
                str = a0.D;
                break;
            case f45896k /* 86019 */:
                str = a0.L;
                break;
            case f45897l /* 86028 */:
                str = a0.Y;
                break;
            case f45898m /* 86076 */:
                str = a0.U;
                break;
            default:
                str = "audio/mp4a-latm";
                break;
        }
        try {
            this.f45901n = MediaCodec.createDecoderByType(str);
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat(str, audioCodecFormat.sampleRate, audioCodecFormat.channels);
            ByteBuffer byteBuffer = audioPacket.buf;
            if (byteBuffer != null) {
                createAudioFormat.setByteBuffer("csd-0", byteBuffer);
            } else if (audioCodecFormat.codecId == f45895j) {
                createAudioFormat.setInteger("is-adts", 1);
            }
            this.f45901n.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 0);
            this.f45901n.start();
            this.f45903p = this.f45901n.getInputBuffers();
            this.f45904q = this.f45901n.getOutputBuffers();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.decoder.Decoder
    public int a(AudioPacket audioPacket) {
        if ((audioPacket.flags & 2) != 0) {
            b(audioPacket);
            return 0;
        }
        c(audioPacket);
        return 0;
    }

    private void a(boolean z9) {
        if (this.f45905r == null) {
            this.f45905r = new MediaCodec.BufferInfo();
        }
        this.f45909v = 0;
        while (true) {
            int dequeueOutputBuffer = this.f45901n.dequeueOutputBuffer(this.f45905r, this.f45906s);
            MediaCodec.BufferInfo bufferInfo = this.f45905r;
            boolean z10 = (bufferInfo.flags & 4) != 0;
            if (dequeueOutputBuffer >= 0) {
                if (z10) {
                    AudioBufFrame audioBufFrame = new AudioBufFrame(this.f45902o, null, 0L);
                    audioBufFrame.flags |= 4;
                    this.mSrcPin.onFrameAvailable(audioBufFrame);
                    flush();
                    stop();
                    return;
                }
                this.f45908u++;
                this.mSrcPin.onFrameAvailable(new AudioBufFrame(this.f45902o, this.f45904q[dequeueOutputBuffer], bufferInfo.presentationTimeUs / 1000));
                this.f45901n.releaseOutputBuffer(dequeueOutputBuffer, false);
            } else if (dequeueOutputBuffer == -3) {
                this.f45904q = this.f45901n.getOutputBuffers();
                Log.d(f45892g, "decoder output buffers have changed.");
            } else if (dequeueOutputBuffer == -2) {
                MediaFormat outputFormat = this.f45901n.getOutputFormat();
                Log.d(f45892g, "decode output format changed: " + outputFormat);
                this.f45902o.channels = outputFormat.getInteger("channel-count");
                this.f45902o.sampleRate = outputFormat.getInteger("sample-rate");
                this.mSrcPin.onFormatChanged(this.f45902o);
            } else if (dequeueOutputBuffer != -1) {
                Log.w(f45892g, "unexpected result from encoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                return;
            } else if (!z9) {
                int i4 = this.f45907t;
                int i10 = this.f45908u;
                this.f45906s = ((i4 - i10) * 100) + (((i4 - i10) / 5) * 1000);
                return;
            } else {
                int i11 = this.f45909v + 1;
                this.f45909v = i11;
                if (i11 > 10) {
                    Log.i(f45892g, "Force shutting down decoder for MAX_EOS_SPINS reached");
                    AudioBufFrame audioBufFrame2 = new AudioBufFrame(this.f45902o, null, 0L);
                    audioBufFrame2.flags |= 4;
                    this.mSrcPin.onFrameAvailable(audioBufFrame2);
                    flush();
                    stop();
                    return;
                }
                Log.d(f45892g, "waiting decoder flushing...");
                this.f45906s = 10000;
            }
        }
    }
}
