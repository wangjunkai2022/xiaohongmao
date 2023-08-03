package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.gifdecoder.a;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.util.o;
import io.sentry.protocol.y;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* compiled from: ByteBufferGifDecoder.java */
/* loaded from: classes.dex */
public class a implements com.bumptech.glide.load.g<ByteBuffer, c> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f9352f = "BufferGifDecoder";

    /* renamed from: g  reason: collision with root package name */
    private static final C0062a f9353g = new C0062a();

    /* renamed from: h  reason: collision with root package name */
    private static final b f9354h = new b();

    /* renamed from: a  reason: collision with root package name */
    private final Context f9355a;

    /* renamed from: b  reason: collision with root package name */
    private final List<ImageHeaderParser> f9356b;

    /* renamed from: c  reason: collision with root package name */
    private final b f9357c;

    /* renamed from: d  reason: collision with root package name */
    private final C0062a f9358d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.gif.b f9359e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0062a {
        C0062a() {
        }

        com.bumptech.glide.gifdecoder.a a(a.InterfaceC0042a interfaceC0042a, com.bumptech.glide.gifdecoder.c cVar, ByteBuffer byteBuffer, int i4) {
            return new com.bumptech.glide.gifdecoder.f(interfaceC0042a, cVar, byteBuffer, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ByteBufferGifDecoder.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<com.bumptech.glide.gifdecoder.d> f9360a = o.f(0);

        b() {
        }

        synchronized com.bumptech.glide.gifdecoder.d a(ByteBuffer byteBuffer) {
            com.bumptech.glide.gifdecoder.d poll;
            poll = this.f9360a.poll();
            if (poll == null) {
                poll = new com.bumptech.glide.gifdecoder.d();
            }
            return poll.q(byteBuffer);
        }

        synchronized void b(com.bumptech.glide.gifdecoder.d dVar) {
            dVar.a();
            this.f9360a.offer(dVar);
        }
    }

    public a(Context context) {
        this(context, com.bumptech.glide.c.e(context).n().g(), com.bumptech.glide.c.e(context).h(), com.bumptech.glide.c.e(context).g());
    }

    @Nullable
    private e c(ByteBuffer byteBuffer, int i4, int i10, com.bumptech.glide.gifdecoder.d dVar, com.bumptech.glide.load.f fVar) {
        Bitmap.Config config;
        long b10 = com.bumptech.glide.util.i.b();
        try {
            com.bumptech.glide.gifdecoder.c d4 = dVar.d();
            if (d4.b() > 0 && d4.c() == 0) {
                if (fVar.c(i.f9407a) == DecodeFormat.PREFER_RGB_565) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                com.bumptech.glide.gifdecoder.a a10 = this.f9358d.a(this.f9359e, d4, byteBuffer, e(d4, i4, i10));
                a10.g(config);
                a10.f();
                Bitmap e4 = a10.e();
                if (e4 == null) {
                    return null;
                }
                e eVar = new e(new c(this.f9355a, a10, com.bumptech.glide.load.resource.c.c(), i4, i10, e4));
                if (Log.isLoggable(f9352f, 2)) {
                    Log.v(f9352f, "Decoded GIF from stream in " + com.bumptech.glide.util.i.a(b10));
                }
                return eVar;
            }
            if (Log.isLoggable(f9352f, 2)) {
                Log.v(f9352f, "Decoded GIF from stream in " + com.bumptech.glide.util.i.a(b10));
            }
            return null;
        } finally {
            if (Log.isLoggable(f9352f, 2)) {
                Log.v(f9352f, "Decoded GIF from stream in " + com.bumptech.glide.util.i.a(b10));
            }
        }
    }

    private static int e(com.bumptech.glide.gifdecoder.c cVar, int i4, int i10) {
        int min = Math.min(cVar.a() / i10, cVar.d() / i4);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable(f9352f, 2) && max > 1) {
            Log.v(f9352f, "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i4 + y.b.f83919g + i10 + "], actual dimens: [" + cVar.d() + y.b.f83919g + cVar.a() + "]");
        }
        return max;
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: d */
    public e b(@NonNull ByteBuffer byteBuffer, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        com.bumptech.glide.gifdecoder.d a10 = this.f9357c.a(byteBuffer);
        try {
            return c(byteBuffer, i4, i10, a10, fVar);
        } finally {
            this.f9357c.b(a10);
        }
    }

    @Override // com.bumptech.glide.load.g
    /* renamed from: f */
    public boolean a(@NonNull ByteBuffer byteBuffer, @NonNull com.bumptech.glide.load.f fVar) throws IOException {
        return !((Boolean) fVar.c(i.f9408b)).booleanValue() && com.bumptech.glide.load.b.g(this.f9356b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public a(Context context, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this(context, list, eVar, bVar, f9354h, f9353g);
    }

    @VisibleForTesting
    a(Context context, List<ImageHeaderParser> list, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar, b bVar2, C0062a c0062a) {
        this.f9355a = context.getApplicationContext();
        this.f9356b = list;
        this.f9358d = c0062a;
        this.f9359e = new com.bumptech.glide.load.resource.gif.b(eVar, bVar);
        this.f9357c = bVar2;
    }
}
