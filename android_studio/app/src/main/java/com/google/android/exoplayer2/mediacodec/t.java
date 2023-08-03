package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.mediacodec.k;
import com.google.android.exoplayer2.util.v0;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: SynchronousMediaCodecAdapter.java */
/* loaded from: classes2.dex */
public class t implements k {

    /* renamed from: a  reason: collision with root package name */
    private final MediaCodec f24097a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private ByteBuffer[] f24098b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer[] f24099c;

    /* compiled from: SynchronousMediaCodecAdapter.java */
    /* loaded from: classes2.dex */
    public static class b implements k.b {
        @Override // com.google.android.exoplayer2.mediacodec.k.b
        public k a(k.a aVar) throws IOException {
            MediaCodec mediaCodec = null;
            try {
                MediaCodec b10 = b(aVar);
                try {
                    v0.a("configureCodec");
                    b10.configure(aVar.f24070b, aVar.f24072d, aVar.f24073e, aVar.f24074f);
                    v0.c();
                    v0.a("startCodec");
                    b10.start();
                    v0.c();
                    return new t(b10);
                } catch (IOException | RuntimeException e4) {
                    e = e4;
                    mediaCodec = b10;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e10) {
                e = e10;
            } catch (RuntimeException e11) {
                e = e11;
            }
        }

        protected MediaCodec b(k.a aVar) throws IOException {
            com.google.android.exoplayer2.util.a.g(aVar.f24069a);
            String str = aVar.f24069a.f24078a;
            String valueOf = String.valueOf(str);
            v0.a(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            MediaCodec createByCodecName = MediaCodec.createByCodecName(str);
            v0.c();
            return createByCodecName;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(k.c cVar, MediaCodec mediaCodec, long j4, long j10) {
        cVar.a(this, j4, j10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void a(int i4, int i10, com.google.android.exoplayer2.decoder.b bVar, long j4, int i11) {
        this.f24097a.queueSecureInputBuffer(i4, i10, bVar.a(), j4, i11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public MediaFormat b() {
        return this.f24097a.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @RequiresApi(23)
    public void c(final k.c cVar, Handler handler) {
        this.f24097a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.s
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j4, long j10) {
                t.this.n(cVar, mediaCodec, j4, j10);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @Nullable
    public ByteBuffer d(int i4) {
        if (z0.f27743a >= 21) {
            return this.f24097a.getInputBuffer(i4);
        }
        return ((ByteBuffer[]) z0.k(this.f24098b))[i4];
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @RequiresApi(23)
    public void e(Surface surface) {
        this.f24097a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void f(int i4, int i10, int i11, long j4, int i12) {
        this.f24097a.queueInputBuffer(i4, i10, i11, j4, i12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void flush() {
        this.f24097a.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @RequiresApi(19)
    public void g(Bundle bundle) {
        this.f24097a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @RequiresApi(21)
    public void h(int i4, long j4) {
        this.f24097a.releaseOutputBuffer(i4, j4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public int i() {
        return this.f24097a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public int j(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f24097a.dequeueOutputBuffer(bufferInfo, 0L);
            if (dequeueOutputBuffer == -3 && z0.f27743a < 21) {
                this.f24099c = this.f24097a.getOutputBuffers();
                continue;
            }
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void k(int i4, boolean z9) {
        this.f24097a.releaseOutputBuffer(i4, z9);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    @Nullable
    public ByteBuffer l(int i4) {
        if (z0.f27743a >= 21) {
            return this.f24097a.getOutputBuffer(i4);
        }
        return ((ByteBuffer[]) z0.k(this.f24099c))[i4];
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void p(int i4) {
        this.f24097a.setVideoScalingMode(i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.k
    public void release() {
        this.f24098b = null;
        this.f24099c = null;
        this.f24097a.release();
    }

    private t(MediaCodec mediaCodec) {
        this.f24097a = mediaCodec;
        if (z0.f27743a < 21) {
            this.f24098b = mediaCodec.getInputBuffers();
            this.f24099c = mediaCodec.getOutputBuffers();
        }
    }
}
