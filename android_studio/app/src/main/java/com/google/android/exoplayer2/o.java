package com.google.android.exoplayer2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* compiled from: DefaultRenderersFactory.java */
/* loaded from: classes2.dex */
public class o implements i2 {

    /* renamed from: l  reason: collision with root package name */
    public static final long f24208l = 5000;

    /* renamed from: m  reason: collision with root package name */
    public static final int f24209m = 0;

    /* renamed from: n  reason: collision with root package name */
    public static final int f24210n = 1;

    /* renamed from: o  reason: collision with root package name */
    public static final int f24211o = 2;

    /* renamed from: p  reason: collision with root package name */
    public static final int f24212p = 50;

    /* renamed from: q  reason: collision with root package name */
    private static final String f24213q = "DefaultRenderersFactory";

    /* renamed from: a  reason: collision with root package name */
    private final Context f24214a;

    /* renamed from: b  reason: collision with root package name */
    private int f24215b;

    /* renamed from: c  reason: collision with root package name */
    private long f24216c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f24217d;

    /* renamed from: e  reason: collision with root package name */
    private com.google.android.exoplayer2.mediacodec.n f24218e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f24219f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f24220g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f24221h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f24222i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f24223j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f24224k;

    /* compiled from: DefaultRenderersFactory.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public o(Context context) {
        this.f24214a = context;
        this.f24215b = 0;
        this.f24216c = 5000L;
        this.f24218e = com.google.android.exoplayer2.mediacodec.n.f24090a;
    }

    @Override // com.google.android.exoplayer2.i2
    public e2[] a(Handler handler, com.google.android.exoplayer2.video.z zVar, com.google.android.exoplayer2.audio.u uVar, com.google.android.exoplayer2.text.j jVar, com.google.android.exoplayer2.metadata.e eVar) {
        ArrayList<e2> arrayList = new ArrayList<>();
        h(this.f24214a, this.f24215b, this.f24218e, this.f24217d, handler, zVar, this.f24216c, arrayList);
        AudioSink c10 = c(this.f24214a, this.f24222i, this.f24223j, this.f24224k);
        if (c10 != null) {
            b(this.f24214a, this.f24215b, this.f24218e, this.f24217d, c10, handler, uVar, arrayList);
        }
        g(this.f24214a, jVar, handler.getLooper(), this.f24215b, arrayList);
        e(this.f24214a, eVar, handler.getLooper(), this.f24215b, arrayList);
        d(this.f24214a, this.f24215b, arrayList);
        f(this.f24214a, handler, this.f24215b, arrayList);
        return (e2[]) arrayList.toArray(new e2[0]);
    }

    protected void b(Context context, int i4, com.google.android.exoplayer2.mediacodec.n nVar, boolean z9, AudioSink audioSink, Handler handler, com.google.android.exoplayer2.audio.u uVar, ArrayList<e2> arrayList) {
        int i10;
        int i11;
        com.google.android.exoplayer2.audio.f0 f0Var = new com.google.android.exoplayer2.audio.f0(context, nVar, z9, handler, uVar, audioSink);
        f0Var.h0(this.f24219f);
        f0Var.i0(this.f24220g);
        f0Var.k0(this.f24221h);
        arrayList.add(f0Var);
        if (i4 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i4 == 2) {
            size--;
        }
        try {
            try {
                i10 = size + 1;
                try {
                    arrayList.add(size, (e2) Class.forName("com.google.android.exoplayer2.ext.opus.LibopusAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.u.class, AudioSink.class).newInstance(handler, uVar, audioSink));
                    com.google.android.exoplayer2.util.w.i(f24213q, "Loaded LibopusAudioRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i10;
                    i10 = size;
                    try {
                        i11 = i10 + 1;
                        arrayList.add(i10, (e2) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.u.class, AudioSink.class).newInstance(handler, uVar, audioSink));
                        com.google.android.exoplayer2.util.w.i(f24213q, "Loaded LibflacAudioRenderer.");
                        arrayList.add(i11, (e2) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.u.class, AudioSink.class).newInstance(handler, uVar, audioSink));
                        com.google.android.exoplayer2.util.w.i(f24213q, "Loaded FfmpegAudioRenderer.");
                    } catch (Exception e4) {
                        throw new RuntimeException("Error instantiating FLAC extension", e4);
                    }
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                i11 = i10 + 1;
            } catch (ClassNotFoundException unused3) {
            }
            try {
                try {
                    arrayList.add(i10, (e2) Class.forName("com.google.android.exoplayer2.ext.flac.LibflacAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.u.class, AudioSink.class).newInstance(handler, uVar, audioSink));
                    com.google.android.exoplayer2.util.w.i(f24213q, "Loaded LibflacAudioRenderer.");
                } catch (ClassNotFoundException unused4) {
                    i10 = i11;
                    i11 = i10;
                    arrayList.add(i11, (e2) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.u.class, AudioSink.class).newInstance(handler, uVar, audioSink));
                    com.google.android.exoplayer2.util.w.i(f24213q, "Loaded FfmpegAudioRenderer.");
                }
                arrayList.add(i11, (e2) Class.forName("com.google.android.exoplayer2.ext.ffmpeg.FfmpegAudioRenderer").getConstructor(Handler.class, com.google.android.exoplayer2.audio.u.class, AudioSink.class).newInstance(handler, uVar, audioSink));
                com.google.android.exoplayer2.util.w.i(f24213q, "Loaded FfmpegAudioRenderer.");
            } catch (ClassNotFoundException unused5) {
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating FFmpeg extension", e10);
            }
        } catch (Exception e11) {
            throw new RuntimeException("Error instantiating Opus extension", e11);
        }
    }

    @Nullable
    protected AudioSink c(Context context, boolean z9, boolean z10, boolean z11) {
        return new DefaultAudioSink(com.google.android.exoplayer2.audio.f.c(context), new DefaultAudioSink.d(new AudioProcessor[0]), z9, z10, z11 ? 1 : 0);
    }

    protected void d(Context context, int i4, ArrayList<e2> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.video.spherical.b());
    }

    protected void e(Context context, com.google.android.exoplayer2.metadata.e eVar, Looper looper, int i4, ArrayList<e2> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.metadata.f(eVar, looper));
    }

    protected void f(Context context, Handler handler, int i4, ArrayList<e2> arrayList) {
    }

    protected void g(Context context, com.google.android.exoplayer2.text.j jVar, Looper looper, int i4, ArrayList<e2> arrayList) {
        arrayList.add(new com.google.android.exoplayer2.text.k(jVar, looper));
    }

    protected void h(Context context, int i4, com.google.android.exoplayer2.mediacodec.n nVar, boolean z9, Handler handler, com.google.android.exoplayer2.video.z zVar, long j4, ArrayList<e2> arrayList) {
        int i10;
        com.google.android.exoplayer2.video.f fVar = new com.google.android.exoplayer2.video.f(context, nVar, j4, z9, handler, zVar, 50);
        fVar.h0(this.f24219f);
        fVar.i0(this.f24220g);
        fVar.k0(this.f24221h);
        arrayList.add(fVar);
        if (i4 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i4 == 2) {
            size--;
        }
        try {
            try {
                i10 = size + 1;
                try {
                    arrayList.add(size, (e2) Class.forName("com.google.android.exoplayer2.ext.vp9.LibvpxVideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.z.class, Integer.TYPE).newInstance(Long.valueOf(j4), handler, zVar, 50));
                    com.google.android.exoplayer2.util.w.i(f24213q, "Loaded LibvpxVideoRenderer.");
                } catch (ClassNotFoundException unused) {
                    size = i10;
                    i10 = size;
                    arrayList.add(i10, (e2) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.z.class, Integer.TYPE).newInstance(Long.valueOf(j4), handler, zVar, 50));
                    com.google.android.exoplayer2.util.w.i(f24213q, "Loaded Libgav1VideoRenderer.");
                }
            } catch (ClassNotFoundException unused2) {
            }
            try {
                arrayList.add(i10, (e2) Class.forName("com.google.android.exoplayer2.ext.av1.Libgav1VideoRenderer").getConstructor(Long.TYPE, Handler.class, com.google.android.exoplayer2.video.z.class, Integer.TYPE).newInstance(Long.valueOf(j4), handler, zVar, 50));
                com.google.android.exoplayer2.util.w.i(f24213q, "Loaded Libgav1VideoRenderer.");
            } catch (ClassNotFoundException unused3) {
            } catch (Exception e4) {
                throw new RuntimeException("Error instantiating AV1 extension", e4);
            }
        } catch (Exception e10) {
            throw new RuntimeException("Error instantiating VP9 extension", e10);
        }
    }

    public o i(boolean z9) {
        this.f24219f = z9;
        return this;
    }

    public o j(boolean z9) {
        this.f24220g = z9;
        return this;
    }

    public o k(boolean z9) {
        this.f24221h = z9;
        return this;
    }

    public o l(long j4) {
        this.f24216c = j4;
        return this;
    }

    public o m(boolean z9) {
        this.f24222i = z9;
        return this;
    }

    public o n(boolean z9) {
        this.f24224k = z9;
        return this;
    }

    public o o(boolean z9) {
        this.f24223j = z9;
        return this;
    }

    public o p(boolean z9) {
        this.f24217d = z9;
        return this;
    }

    public o q(int i4) {
        this.f24215b = i4;
        return this;
    }

    public o r(com.google.android.exoplayer2.mediacodec.n nVar) {
        this.f24218e = nVar;
        return this;
    }

    @Deprecated
    public o(Context context, int i4) {
        this(context, i4, 5000L);
    }

    @Deprecated
    public o(Context context, int i4, long j4) {
        this.f24214a = context;
        this.f24215b = i4;
        this.f24216c = j4;
        this.f24218e = com.google.android.exoplayer2.mediacodec.n.f24090a;
    }
}
