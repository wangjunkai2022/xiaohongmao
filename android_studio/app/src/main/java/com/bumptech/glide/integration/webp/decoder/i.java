package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LruCache;
import com.bumptech.glide.gifdecoder.a;
import com.bumptech.glide.integration.webp.WebpFrame;
import com.bumptech.glide.integration.webp.WebpImage;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* compiled from: WebpDecoder.java */
/* loaded from: classes.dex */
public class i implements com.bumptech.glide.gifdecoder.a {

    /* renamed from: s  reason: collision with root package name */
    private static final String f8403s = "WebpDecoder";

    /* renamed from: t  reason: collision with root package name */
    private static final int f8404t = 5;

    /* renamed from: f  reason: collision with root package name */
    private ByteBuffer f8405f;

    /* renamed from: g  reason: collision with root package name */
    private WebpImage f8406g;

    /* renamed from: h  reason: collision with root package name */
    private final a.InterfaceC0042a f8407h;

    /* renamed from: i  reason: collision with root package name */
    private int f8408i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f8409j;

    /* renamed from: k  reason: collision with root package name */
    private final com.bumptech.glide.integration.webp.c[] f8410k;

    /* renamed from: l  reason: collision with root package name */
    private int f8411l;

    /* renamed from: m  reason: collision with root package name */
    private int f8412m;

    /* renamed from: n  reason: collision with root package name */
    private int f8413n;

    /* renamed from: o  reason: collision with root package name */
    private final Paint f8414o;

    /* renamed from: p  reason: collision with root package name */
    private WebpFrameCacheStrategy f8415p;

    /* renamed from: q  reason: collision with root package name */
    private Bitmap.Config f8416q;

    /* renamed from: r  reason: collision with root package name */
    private final LruCache<Integer, Bitmap> f8417r;

    /* compiled from: WebpDecoder.java */
    /* loaded from: classes.dex */
    class a extends LruCache<Integer, Bitmap> {
        a(int i4) {
            super(i4);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* renamed from: a */
        public void entryRemoved(boolean z9, Integer num, Bitmap bitmap, Bitmap bitmap2) {
            if (bitmap != null) {
                i.this.f8407h.a(bitmap);
            }
        }
    }

    public i(a.InterfaceC0042a interfaceC0042a, WebpImage webpImage, ByteBuffer byteBuffer, int i4) {
        this(interfaceC0042a, webpImage, byteBuffer, i4, WebpFrameCacheStrategy.f8378c);
    }

    private void s(int i4, Bitmap bitmap) {
        this.f8417r.remove(Integer.valueOf(i4));
        Bitmap c10 = this.f8407h.c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        c10.eraseColor(0);
        c10.setDensity(bitmap.getDensity());
        Canvas canvas = new Canvas(c10);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        this.f8417r.put(Integer.valueOf(i4), c10);
    }

    private void t(Canvas canvas, com.bumptech.glide.integration.webp.c cVar) {
        int i4 = cVar.f8371b;
        int i10 = this.f8411l;
        int i11 = cVar.f8372c;
        canvas.drawRect(i4 / i10, i11 / i10, (i4 + cVar.f8373d) / i10, (i11 + cVar.f8374e) / i10, this.f8414o);
    }

    private boolean v(com.bumptech.glide.integration.webp.c cVar) {
        return cVar.f8371b == 0 && cVar.f8372c == 0 && cVar.f8373d == this.f8406g.getWidth() && cVar.f8374e == this.f8406g.getHeight();
    }

    private boolean w(int i4) {
        if (i4 == 0) {
            return true;
        }
        com.bumptech.glide.integration.webp.c[] cVarArr = this.f8410k;
        com.bumptech.glide.integration.webp.c cVar = cVarArr[i4];
        com.bumptech.glide.integration.webp.c cVar2 = cVarArr[i4 - 1];
        if (cVar.f8376g || !v(cVar)) {
            return cVar2.f8377h && v(cVar2);
        }
        return true;
    }

    private int x(int i4, Canvas canvas) {
        while (i4 >= 0) {
            com.bumptech.glide.integration.webp.c cVar = this.f8410k[i4];
            if (cVar.f8377h && v(cVar)) {
                return i4 + 1;
            }
            Bitmap bitmap = this.f8417r.get(Integer.valueOf(i4));
            if (bitmap != null && !bitmap.isRecycled()) {
                bitmap.setDensity(canvas.getDensity());
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                if (cVar.f8377h) {
                    t(canvas, cVar);
                }
                return i4 + 1;
            } else if (w(i4)) {
                return i4;
            } else {
                i4--;
            }
        }
        return 0;
    }

    private void y(int i4, Canvas canvas) {
        com.bumptech.glide.integration.webp.c cVar = this.f8410k[i4];
        int i10 = cVar.f8373d;
        int i11 = this.f8411l;
        int i12 = i10 / i11;
        int i13 = cVar.f8374e / i11;
        int i14 = cVar.f8371b / i11;
        int i15 = cVar.f8372c / i11;
        WebpFrame frame = this.f8406g.getFrame(i4);
        try {
            try {
                Bitmap c10 = this.f8407h.c(i12, i13, this.f8416q);
                c10.eraseColor(0);
                c10.setDensity(canvas.getDensity());
                frame.renderFrame(i12, i13, c10);
                canvas.drawBitmap(c10, i14, i15, (Paint) null);
                this.f8407h.a(c10);
            } catch (IllegalStateException unused) {
                Log.e(f8403s, "Rendering of frame failed. Frame number: " + i4);
            }
        } finally {
            frame.dispose();
        }
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int a() {
        return this.f8406g.getFrameCount();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    @Deprecated
    public int c() {
        return this.f8406g.getLoopCount();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void clear() {
        this.f8406g.dispose();
        this.f8406g = null;
        this.f8417r.evictAll();
        this.f8405f = null;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int d(InputStream inputStream, int i4) {
        return 0;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public Bitmap e() {
        Bitmap bitmap;
        int o9 = o();
        Bitmap c10 = this.f8407h.c(this.f8413n, this.f8412m, Bitmap.Config.ARGB_8888);
        c10.eraseColor(0);
        if (Build.VERSION.SDK_INT >= 24) {
            c10.setDensity(DisplayMetrics.DENSITY_DEVICE_STABLE);
        }
        Canvas canvas = new Canvas(c10);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        if (!this.f8415p.e() && (bitmap = this.f8417r.get(Integer.valueOf(o9))) != null) {
            if (Log.isLoggable(f8403s, 3)) {
                Log.d(f8403s, "hit frame bitmap from memory cache, frameNumber=" + o9);
            }
            bitmap.setDensity(canvas.getDensity());
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            return c10;
        }
        int x9 = !w(o9) ? x(o9 - 1, canvas) : o9;
        if (Log.isLoggable(f8403s, 3)) {
            Log.d(f8403s, "frameNumber=" + o9 + ", nextIndex=" + x9);
        }
        while (x9 < o9) {
            com.bumptech.glide.integration.webp.c cVar = this.f8410k[x9];
            if (!cVar.f8376g) {
                t(canvas, cVar);
            }
            y(x9, canvas);
            if (Log.isLoggable(f8403s, 3)) {
                Log.d(f8403s, "renderFrame, index=" + x9 + ", blend=" + cVar.f8376g + ", dispose=" + cVar.f8377h);
            }
            if (cVar.f8377h) {
                t(canvas, cVar);
            }
            x9++;
        }
        com.bumptech.glide.integration.webp.c cVar2 = this.f8410k[o9];
        if (!cVar2.f8376g) {
            t(canvas, cVar2);
        }
        y(o9, canvas);
        if (Log.isLoggable(f8403s, 3)) {
            Log.d(f8403s, "renderFrame, index=" + o9 + ", blend=" + cVar2.f8376g + ", dispose=" + cVar2.f8377h);
        }
        s(o9, c10);
        return c10;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void f() {
        this.f8408i = (this.f8408i + 1) % this.f8406g.getFrameCount();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void g(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888) {
            this.f8416q = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int getHeight() {
        return this.f8406g.getHeight();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int getStatus() {
        return 0;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int getWidth() {
        return this.f8406g.getWidth();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int h(int i4) {
        if (i4 >= 0) {
            int[] iArr = this.f8409j;
            if (i4 < iArr.length) {
                return iArr[i4];
            }
        }
        return -1;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public ByteBuffer i() {
        return this.f8405f;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int j() {
        if (this.f8406g.getLoopCount() == 0) {
            return 0;
        }
        return this.f8406g.getLoopCount();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void k(com.bumptech.glide.gifdecoder.c cVar, byte[] bArr) {
        n(cVar, ByteBuffer.wrap(bArr));
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int l() {
        int i4;
        if (this.f8409j.length == 0 || (i4 = this.f8408i) < 0) {
            return 0;
        }
        return h(i4);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void m() {
        this.f8408i = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void n(com.bumptech.glide.gifdecoder.c cVar, ByteBuffer byteBuffer) {
        p(cVar, byteBuffer, 1);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int o() {
        return this.f8408i;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void p(com.bumptech.glide.gifdecoder.c cVar, ByteBuffer byteBuffer, int i4) {
        if (i4 > 0) {
            int highestOneBit = Integer.highestOneBit(i4);
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f8405f = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.f8411l = highestOneBit;
            this.f8413n = this.f8406g.getWidth() / highestOneBit;
            this.f8412m = this.f8406g.getHeight() / highestOneBit;
            return;
        }
        throw new IllegalArgumentException("Sample size must be >=0, not: " + i4);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int q() {
        return this.f8406g.getLoopCount();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int r() {
        return this.f8406g.getSizeInBytes();
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int read(byte[] bArr) {
        return 0;
    }

    public WebpFrameCacheStrategy u() {
        return this.f8415p;
    }

    public i(a.InterfaceC0042a interfaceC0042a, WebpImage webpImage, ByteBuffer byteBuffer, int i4, WebpFrameCacheStrategy webpFrameCacheStrategy) {
        int max;
        this.f8408i = -1;
        this.f8416q = Bitmap.Config.ARGB_8888;
        this.f8407h = interfaceC0042a;
        this.f8406g = webpImage;
        this.f8409j = webpImage.getFrameDurations();
        this.f8410k = new com.bumptech.glide.integration.webp.c[webpImage.getFrameCount()];
        for (int i10 = 0; i10 < this.f8406g.getFrameCount(); i10++) {
            this.f8410k[i10] = this.f8406g.getFrameInfo(i10);
            if (Log.isLoggable(f8403s, 3)) {
                Log.d(f8403s, "mFrameInfos: " + this.f8410k[i10].toString());
            }
        }
        this.f8415p = webpFrameCacheStrategy;
        Paint paint = new Paint();
        this.f8414o = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        if (this.f8415p.a()) {
            max = webpImage.getFrameCount();
        } else {
            max = Math.max(5, this.f8415p.d());
        }
        this.f8417r = new a(max);
        p(new com.bumptech.glide.gifdecoder.c(), byteBuffer, i4);
    }
}
