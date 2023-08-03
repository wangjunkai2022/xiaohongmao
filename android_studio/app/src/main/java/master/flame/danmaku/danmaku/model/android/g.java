package master.flame.danmaku.danmaku.model.android;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import java.lang.reflect.Array;
import tv.cjump.jni.NativeBitmapFactory;

/* compiled from: DrawingCacheHolder.java */
/* loaded from: classes4.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public Canvas f87259a;

    /* renamed from: b  reason: collision with root package name */
    public Bitmap f87260b;

    /* renamed from: c  reason: collision with root package name */
    public Bitmap[][] f87261c;

    /* renamed from: d  reason: collision with root package name */
    public Object f87262d;

    /* renamed from: e  reason: collision with root package name */
    public int f87263e;

    /* renamed from: f  reason: collision with root package name */
    public int f87264f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f87265g;

    /* renamed from: h  reason: collision with root package name */
    private int f87266h;

    private void d(Bitmap bitmap) {
        if (bitmap != null) {
            bitmap.eraseColor(0);
        }
    }

    private void e() {
        if (this.f87261c != null) {
            for (int i4 = 0; i4 < this.f87261c.length; i4++) {
                int i10 = 0;
                while (true) {
                    Bitmap[][] bitmapArr = this.f87261c;
                    if (i10 < bitmapArr[i4].length) {
                        d(bitmapArr[i4][i10]);
                        i10++;
                    }
                }
            }
        }
    }

    private void g() {
        Bitmap[][] bitmapArr = this.f87261c;
        this.f87261c = null;
        if (bitmapArr != null) {
            for (int i4 = 0; i4 < bitmapArr.length; i4++) {
                for (int i10 = 0; i10 < bitmapArr[i4].length; i10++) {
                    if (bitmapArr[i4][i10] != null) {
                        bitmapArr[i4][i10].recycle();
                        bitmapArr[i4][i10] = null;
                    }
                }
            }
        }
    }

    public void a(int i4, int i10, int i11, boolean z9, int i12) {
        Bitmap bitmap;
        boolean z10 = true;
        if (!z9 ? i4 > this.f87263e || i10 > this.f87264f : i4 != this.f87263e || i10 != this.f87264f) {
            z10 = false;
        }
        if (z10 && (bitmap = this.f87260b) != null) {
            bitmap.eraseColor(0);
            this.f87259a.setBitmap(this.f87260b);
            g();
            return;
        }
        if (this.f87260b != null) {
            f();
        }
        this.f87263e = i4;
        this.f87264f = i10;
        Bitmap.Config config = Bitmap.Config.ARGB_4444;
        if (i12 == 32) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap a10 = NativeBitmapFactory.a(i4, i10, config);
        this.f87260b = a10;
        if (i11 > 0) {
            this.f87266h = i11;
            a10.setDensity(i11);
        }
        Canvas canvas = this.f87259a;
        if (canvas == null) {
            Canvas canvas2 = new Canvas(this.f87260b);
            this.f87259a = canvas2;
            canvas2.setDensity(i11);
            return;
        }
        canvas.setBitmap(this.f87260b);
    }

    public final synchronized boolean b(Canvas canvas, float f10, float f11, Paint paint) {
        if (this.f87261c != null) {
            for (int i4 = 0; i4 < this.f87261c.length; i4++) {
                int i10 = 0;
                while (true) {
                    Bitmap[][] bitmapArr = this.f87261c;
                    if (i10 < bitmapArr[i4].length) {
                        Bitmap bitmap = bitmapArr[i4][i10];
                        if (bitmap != null) {
                            float width = (bitmap.getWidth() * i10) + f10;
                            if (width <= canvas.getWidth() && bitmap.getWidth() + width >= 0.0f) {
                                float height = (bitmap.getHeight() * i4) + f11;
                                if (height <= canvas.getHeight() && bitmap.getHeight() + height >= 0.0f) {
                                    canvas.drawBitmap(bitmap, width, height, paint);
                                }
                            }
                        }
                        i10++;
                    }
                }
            }
            return true;
        }
        Bitmap bitmap2 = this.f87260b;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, f10, f11, paint);
            return true;
        }
        return false;
    }

    public void c() {
        d(this.f87260b);
        e();
    }

    public synchronized void f() {
        Bitmap bitmap = this.f87260b;
        this.f87260b = null;
        this.f87264f = 0;
        this.f87263e = 0;
        if (bitmap != null) {
            bitmap.recycle();
        }
        g();
        this.f87262d = null;
    }

    @SuppressLint({"NewApi"})
    public void h(int i4, int i10, int i11, int i12) {
        int i13;
        g();
        int i14 = this.f87263e;
        if (i14 <= 0 || (i13 = this.f87264f) <= 0 || this.f87260b == null) {
            return;
        }
        if (i14 > i11 || i13 > i12) {
            int min = Math.min(i11, i4);
            int min2 = Math.min(i12, i10);
            int i15 = this.f87263e;
            int i16 = (i15 / min) + (i15 % min == 0 ? 0 : 1);
            int i17 = this.f87264f;
            int i18 = (i17 / min2) + (i17 % min2 == 0 ? 0 : 1);
            int i19 = i15 / i16;
            int i20 = i17 / i18;
            Bitmap[][] bitmapArr = (Bitmap[][]) Array.newInstance(Bitmap.class, i18, i16);
            if (this.f87259a == null) {
                Canvas canvas = new Canvas();
                this.f87259a = canvas;
                int i21 = this.f87266h;
                if (i21 > 0) {
                    canvas.setDensity(i21);
                }
            }
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            for (int i22 = 0; i22 < i18; i22++) {
                for (int i23 = 0; i23 < i16; i23++) {
                    Bitmap[] bitmapArr2 = bitmapArr[i22];
                    Bitmap a10 = NativeBitmapFactory.a(i19, i20, Bitmap.Config.ARGB_8888);
                    bitmapArr2[i23] = a10;
                    int i24 = this.f87266h;
                    if (i24 > 0) {
                        a10.setDensity(i24);
                    }
                    this.f87259a.setBitmap(a10);
                    int i25 = i23 * i19;
                    int i26 = i22 * i20;
                    rect.set(i25, i26, i25 + i19, i26 + i20);
                    rect2.set(0, 0, a10.getWidth(), a10.getHeight());
                    this.f87259a.drawBitmap(this.f87260b, rect, rect2, (Paint) null);
                }
            }
            this.f87259a.setBitmap(this.f87260b);
            this.f87261c = bitmapArr;
        }
    }
}
