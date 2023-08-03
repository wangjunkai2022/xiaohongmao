package com.ksyun.media.streamer.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.os.Bundle;
import android.util.Log;
import com.ksyun.media.streamer.framework.AVFrameBase;
import com.ksyun.media.streamer.framework.AVPacketBase;
import java.nio.ByteBuffer;

@TargetApi(16)
/* loaded from: classes3.dex */
public abstract class MediaCodecEncoderBase<I extends AVFrameBase, O extends AVPacketBase> extends Encoder<I, O> {

    /* renamed from: n  reason: collision with root package name */
    private static final String f46134n = "MediaCodecEncoderBase";

    /* renamed from: o  reason: collision with root package name */
    private static final boolean f46135o = false;

    /* renamed from: p  reason: collision with root package name */
    private static final long f46136p = 10000;

    /* renamed from: q  reason: collision with root package name */
    private static final int f46137q = 10;

    /* renamed from: k  reason: collision with root package name */
    protected MediaCodec f46138k;

    /* renamed from: l  reason: collision with root package name */
    protected MediaCodec.BufferInfo f46139l;

    /* renamed from: m  reason: collision with root package name */
    protected boolean f46140m = false;

    /* renamed from: r  reason: collision with root package name */
    private int f46141r = 0;

    @Override // com.ksyun.media.streamer.encoder.Encoder
    @TargetApi(19)
    protected void a(int i4) {
        if (this.f46138k == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("video-bitrate", i4);
        this.f46138k.setParameters(bundle);
    }

    protected abstract O b(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo);

    public void signalEndOfStream() {
        this.f46140m = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(ByteBuffer byteBuffer, long j4) {
        ByteBuffer[] inputBuffers = this.f46138k.getInputBuffers();
        int dequeueInputBuffer = this.f46138k.dequeueInputBuffer(0L);
        if (dequeueInputBuffer >= 0) {
            ByteBuffer byteBuffer2 = inputBuffers[dequeueInputBuffer];
            byteBuffer2.clear();
            if (byteBuffer != null) {
                byteBuffer2.put(byteBuffer);
                byteBuffer.rewind();
                this.f46138k.queueInputBuffer(dequeueInputBuffer, 0, byteBuffer.limit(), j4, 0);
                return;
            }
            this.f46138k.queueInputBuffer(dequeueInputBuffer, 0, 0, j4, 4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z9) {
        a(0L, z9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(long j4, boolean z9) {
        if (this.f46139l == null) {
            this.f46139l = new MediaCodec.BufferInfo();
        }
        ByteBuffer[] outputBuffers = this.f46138k.getOutputBuffers();
        while (true) {
            try {
                int dequeueOutputBuffer = this.f46138k.dequeueOutputBuffer(this.f46139l, j4);
                if (dequeueOutputBuffer == -1) {
                    if (!z9) {
                        return;
                    }
                    j4 = f46136p;
                    int i4 = this.f46141r + 1;
                    this.f46141r = i4;
                    if (i4 > 10) {
                        MediaCodec.BufferInfo bufferInfo = this.f46139l;
                        bufferInfo.flags |= 4;
                        a((MediaCodecEncoderBase<I, O>) b(null, bufferInfo));
                        return;
                    }
                } else if (dequeueOutputBuffer == -3) {
                    outputBuffers = this.f46138k.getOutputBuffers();
                } else if (dequeueOutputBuffer == -2) {
                    this.f46138k.getOutputFormat();
                } else if (dequeueOutputBuffer < 0) {
                    Log.w(f46134n, "unexpected result from encoder.dequeueOutputBuffer: " + dequeueOutputBuffer);
                } else {
                    ByteBuffer byteBuffer = outputBuffers[dequeueOutputBuffer];
                    if (byteBuffer != null) {
                        MediaCodec.BufferInfo bufferInfo2 = this.f46139l;
                        if (bufferInfo2.size >= 0) {
                            byteBuffer.position(bufferInfo2.offset);
                            MediaCodec.BufferInfo bufferInfo3 = this.f46139l;
                            byteBuffer.limit(bufferInfo3.offset + bufferInfo3.size);
                            if (this.f46140m) {
                                this.f46139l.flags |= 4;
                                Log.i(f46134n, "Forcing EOS");
                            }
                            a((MediaCodecEncoderBase<I, O>) b(byteBuffer, this.f46139l));
                            this.f46138k.releaseOutputBuffer(dequeueOutputBuffer, false);
                        }
                        if ((this.f46139l.flags & 4) != 0) {
                            if (z9) {
                                return;
                            }
                            Log.w(f46134n, "reached end of stream unexpectedly");
                            return;
                        }
                    } else {
                        throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer + " was null");
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
    }
}
