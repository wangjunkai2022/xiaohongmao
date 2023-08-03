package j0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.animated.webp.WebPFrame;
import com.facebook.animated.webp.WebPImage;
import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import r7.h;

/* compiled from: WebpAnimationBackend.java */
/* loaded from: classes.dex */
public class a implements com.facebook.fresco.animation.backend.a {

    /* renamed from: c  reason: collision with root package name */
    private final Rect f84212c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    private final Rect f84213d = new Rect();

    /* renamed from: e  reason: collision with root package name */
    private final WebPImage f84214e;

    /* renamed from: f  reason: collision with root package name */
    private Rect f84215f;
    @h
    @s7.a("this")

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f84216g;

    private a(WebPImage webPImage) {
        this.f84214e = webPImage;
    }

    private synchronized void i() {
        Bitmap bitmap = this.f84216g;
        if (bitmap != null) {
            bitmap.recycle();
            this.f84216g = null;
        }
    }

    private static void l(@h Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static a m(String filePath) throws IOException {
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(h.b.d(new FileInputStream(filePath), filePath));
            try {
                bufferedInputStream2.mark(Integer.MAX_VALUE);
                byte[] bArr = new byte[bufferedInputStream2.available()];
                bufferedInputStream2.read(bArr);
                WebPImage k10 = WebPImage.k(bArr, null);
                bufferedInputStream2.reset();
                a aVar = new a(k10);
                l(bufferedInputStream2);
                return aVar;
            } catch (Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                l(bufferedInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private synchronized void n(int width, int height) {
        Bitmap bitmap = this.f84216g;
        if (bitmap != null && (bitmap.getWidth() < width || this.f84216g.getHeight() < height)) {
            i();
        }
        if (this.f84216g == null) {
            this.f84216g = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        }
        this.f84216g.eraseColor(0);
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int a() {
        return this.f84214e.a();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int b() {
        return 0;
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        return this.f84214e.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        this.f84214e.dispose();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int d() {
        return this.f84214e.getHeight();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public synchronized void e(Rect bounds) {
        this.f84215f = bounds;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int f() {
        return this.f84214e.getWidth();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void g(@r7.h ColorFilter colorFilter) {
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean h(Drawable parent, Canvas canvas, int frameNumber) {
        WebPFrame i4 = this.f84214e.i(frameNumber);
        double width = this.f84215f.width() / parent.getIntrinsicWidth();
        double height = this.f84215f.height() / parent.getIntrinsicHeight();
        int round = (int) Math.round(i4.getWidth() * width);
        int round2 = (int) Math.round(i4.getHeight() * height);
        int c10 = (int) (i4.c() * width);
        int d4 = (int) (i4.d() * height);
        synchronized (this) {
            int width2 = this.f84215f.width();
            int height2 = this.f84215f.height();
            n(width2, height2);
            Bitmap bitmap = this.f84216g;
            if (bitmap == null) {
                return false;
            }
            i4.a(round, round2, bitmap);
            this.f84213d.set(0, 0, width2, height2);
            this.f84212c.set(c10, d4, width2 + c10, height2 + d4);
            canvas.drawBitmap(this.f84216g, this.f84213d, this.f84212c, (Paint) null);
            return true;
        }
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int frameNumber) {
        return this.f84214e.j()[frameNumber];
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void k(int alpha) {
    }
}
