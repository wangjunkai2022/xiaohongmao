package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.t;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: MediaCodecAdapter.java */
/* loaded from: classes2.dex */
public interface k {

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final l f24069a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaFormat f24070b;

        /* renamed from: c  reason: collision with root package name */
        public final Format f24071c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final Surface f24072d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final MediaCrypto f24073e;

        /* renamed from: f  reason: collision with root package name */
        public final int f24074f;

        public a(l lVar, MediaFormat mediaFormat, Format format, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i4) {
            this.f24069a = lVar;
            this.f24070b = mediaFormat;
            this.f24071c = format;
            this.f24072d = surface;
            this.f24073e = mediaCrypto;
            this.f24074f = i4;
        }
    }

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes2.dex */
    public interface b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f24075a = new t.b();

        k a(a aVar) throws IOException;
    }

    /* compiled from: MediaCodecAdapter.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(k kVar, long j4, long j10);
    }

    void a(int i4, int i10, com.google.android.exoplayer2.decoder.b bVar, long j4, int i11);

    MediaFormat b();

    @RequiresApi(23)
    void c(c cVar, Handler handler);

    @Nullable
    ByteBuffer d(int i4);

    @RequiresApi(23)
    void e(Surface surface);

    void f(int i4, int i10, int i11, long j4, int i12);

    void flush();

    @RequiresApi(19)
    void g(Bundle bundle);

    @RequiresApi(21)
    void h(int i4, long j4);

    int i();

    int j(MediaCodec.BufferInfo bufferInfo);

    void k(int i4, boolean z9);

    @Nullable
    ByteBuffer l(int i4);

    void p(int i4);

    void release();
}
