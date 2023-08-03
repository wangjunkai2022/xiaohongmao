package com.facebook.drawee.debug;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.drawee.drawable.s;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import r7.h;
import y0.b;

/* compiled from: DebugControllerOverlayDrawable.java */
/* loaded from: classes.dex */
public class a extends Drawable implements b {
    @VisibleForTesting
    static final int A = -256;
    @VisibleForTesting
    static final int B = -65536;
    private static final float C = 0.1f;
    private static final float D = 0.5f;
    private static final int E = -26624;
    private static final int F = 1711276032;
    private static final int G = -1;
    private static final int H = 2;
    private static final int I = 40;
    private static final int J = 10;
    private static final int K = 8;
    private static final int L = 10;
    private static final int M = 9;
    private static final int N = 8;

    /* renamed from: y  reason: collision with root package name */
    private static final String f11388y = "none";
    @VisibleForTesting

    /* renamed from: z  reason: collision with root package name */
    static final int f11389z = -16711936;

    /* renamed from: a  reason: collision with root package name */
    private String f11390a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private String f11391b;

    /* renamed from: c  reason: collision with root package name */
    private int f11392c;

    /* renamed from: d  reason: collision with root package name */
    private int f11393d;

    /* renamed from: e  reason: collision with root package name */
    private int f11394e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private String f11395f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private s.c f11396g;

    /* renamed from: i  reason: collision with root package name */
    private int f11398i;

    /* renamed from: j  reason: collision with root package name */
    private int f11399j;

    /* renamed from: p  reason: collision with root package name */
    private int f11405p;

    /* renamed from: q  reason: collision with root package name */
    private int f11406q;

    /* renamed from: r  reason: collision with root package name */
    private int f11407r;

    /* renamed from: s  reason: collision with root package name */
    private int f11408s;

    /* renamed from: t  reason: collision with root package name */
    private int f11409t;

    /* renamed from: u  reason: collision with root package name */
    private long f11410u;
    @h

    /* renamed from: v  reason: collision with root package name */
    private String f11411v;

    /* renamed from: h  reason: collision with root package name */
    private HashMap<String, String> f11397h = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private int f11400k = 80;

    /* renamed from: l  reason: collision with root package name */
    private final Paint f11401l = new Paint(1);

    /* renamed from: m  reason: collision with root package name */
    private final Matrix f11402m = new Matrix();

    /* renamed from: n  reason: collision with root package name */
    private final Rect f11403n = new Rect();

    /* renamed from: o  reason: collision with root package name */
    private final RectF f11404o = new RectF();

    /* renamed from: w  reason: collision with root package name */
    private int f11412w = -1;

    /* renamed from: x  reason: collision with root package name */
    private int f11413x = 0;

    public a() {
        i();
    }

    private void c(Canvas canvas, String label, Object value) {
        e(canvas, label, String.valueOf(value), -1);
    }

    private void d(Canvas canvas, String label, String value) {
        e(canvas, label, value, -1);
    }

    private void e(Canvas canvas, String label, String value, int valueColor) {
        String str = label + ": ";
        float measureText = this.f11401l.measureText(str);
        float measureText2 = this.f11401l.measureText(value);
        this.f11401l.setColor(F);
        int i4 = this.f11408s;
        int i10 = this.f11409t;
        canvas.drawRect(i4 - 4, i10 + 8, i4 + measureText + measureText2 + 4.0f, i10 + this.f11407r + 8, this.f11401l);
        this.f11401l.setColor(-1);
        canvas.drawText(str, this.f11408s, this.f11409t, this.f11401l);
        this.f11401l.setColor(valueColor);
        canvas.drawText(value, this.f11408s + measureText, this.f11409t, this.f11401l);
        this.f11409t += this.f11407r;
    }

    private static String g(String text, @h Object... args) {
        return args == null ? text : String.format(Locale.US, text, args);
    }

    private void h(Rect bounds, int numberOfLines, int maxLineLengthEm) {
        int min = Math.min(40, Math.max(10, Math.min(bounds.width() / maxLineLengthEm, bounds.height() / numberOfLines)));
        this.f11401l.setTextSize(min);
        int i4 = min + 8;
        this.f11407r = i4;
        int i10 = this.f11400k;
        if (i10 == 80) {
            this.f11407r = i4 * (-1);
        }
        this.f11405p = bounds.left + 10;
        this.f11406q = i10 == 80 ? bounds.bottom - 10 : bounds.top + 10 + 10;
    }

    @Override // y0.b
    public void a(long finalImageTimeMs) {
        this.f11410u = finalImageTimeMs;
        invalidateSelf();
    }

    public void b(String key, String value) {
        this.f11397h.put(key, value);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.f11401l.setStyle(Paint.Style.STROKE);
        this.f11401l.setStrokeWidth(2.0f);
        this.f11401l.setColor(E);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f11401l);
        this.f11401l.setStyle(Paint.Style.FILL);
        this.f11401l.setColor(this.f11413x);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f11401l);
        this.f11401l.setStyle(Paint.Style.FILL);
        this.f11401l.setStrokeWidth(0.0f);
        this.f11401l.setColor(-1);
        this.f11408s = this.f11405p;
        this.f11409t = this.f11406q;
        String str = this.f11391b;
        if (str != null) {
            d(canvas, "IDs", g("%s, %s", this.f11390a, str));
        } else {
            d(canvas, "ID", this.f11390a);
        }
        d(canvas, "D", g("%dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height())));
        e(canvas, "I", g("%dx%d", Integer.valueOf(this.f11392c), Integer.valueOf(this.f11393d)), f(this.f11392c, this.f11393d, this.f11396g));
        d(canvas, "I", g("%d KiB", Integer.valueOf(this.f11394e / 1024)));
        String str2 = this.f11395f;
        if (str2 != null) {
            d(canvas, "i format", str2);
        }
        int i4 = this.f11398i;
        if (i4 > 0) {
            d(canvas, "anim", g("f %d, l %d", Integer.valueOf(i4), Integer.valueOf(this.f11399j)));
        }
        s.c cVar = this.f11396g;
        if (cVar != null) {
            c(canvas, "scale", cVar);
        }
        long j4 = this.f11410u;
        if (j4 >= 0) {
            d(canvas, "t", g("%d ms", Long.valueOf(j4)));
        }
        String str3 = this.f11411v;
        if (str3 != null) {
            e(canvas, "origin", str3, this.f11412w);
        }
        for (Map.Entry<String, String> entry : this.f11397h.entrySet()) {
            d(canvas, entry.getKey(), entry.getValue());
        }
    }

    @VisibleForTesting
    int f(int imageWidth, int imageHeight, @h s.c scaleType) {
        int width = getBounds().width();
        int height = getBounds().height();
        if (width > 0 && height > 0 && imageWidth > 0 && imageHeight > 0) {
            if (scaleType != null) {
                Rect rect = this.f11403n;
                rect.top = 0;
                rect.left = 0;
                rect.right = width;
                rect.bottom = height;
                this.f11402m.reset();
                scaleType.a(this.f11402m, this.f11403n, imageWidth, imageHeight, 0.0f, 0.0f);
                RectF rectF = this.f11404o;
                rectF.top = 0.0f;
                rectF.left = 0.0f;
                rectF.right = imageWidth;
                rectF.bottom = imageHeight;
                this.f11402m.mapRect(rectF);
                width = Math.min(width, (int) this.f11404o.width());
                height = Math.min(height, (int) this.f11404o.height());
            }
            float f10 = width;
            float f11 = f10 * 0.1f;
            float f12 = f10 * 0.5f;
            float f13 = height;
            float f14 = 0.1f * f13;
            float f15 = f13 * 0.5f;
            int abs = Math.abs(imageWidth - width);
            int abs2 = Math.abs(imageHeight - height);
            float f16 = abs;
            if (f16 < f11 && abs2 < f14) {
                return f11389z;
            }
            if (f16 < f12 && abs2 < f15) {
                return -256;
            }
        }
        return -65536;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void i() {
        this.f11392c = -1;
        this.f11393d = -1;
        this.f11394e = -1;
        this.f11397h = new HashMap<>();
        this.f11398i = -1;
        this.f11399j = -1;
        this.f11395f = null;
        k(null);
        this.f11410u = -1L;
        this.f11411v = null;
        this.f11412w = -1;
        invalidateSelf();
    }

    public void j(int frameCount, int loopCount) {
        this.f11398i = frameCount;
        this.f11399j = loopCount;
        invalidateSelf();
    }

    public void k(@h String controllerId) {
        if (controllerId == null) {
            controllerId = "none";
        }
        this.f11390a = controllerId;
        invalidateSelf();
    }

    public void l(int widthPx, int heightPx) {
        this.f11392c = widthPx;
        this.f11393d = heightPx;
        invalidateSelf();
    }

    public void m(long finalImageTimeMs) {
        this.f11410u = finalImageTimeMs;
    }

    public void n(@h String imageFormat) {
        this.f11395f = imageFormat;
    }

    public void o(@h String imageId) {
        this.f11391b = imageId;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        h(bounds, 9, 8);
    }

    public void p(int imageSizeBytes) {
        this.f11394e = imageSizeBytes;
    }

    public void q(String text, int color) {
        this.f11411v = text;
        this.f11412w = color;
        invalidateSelf();
    }

    public void r(int overlayColor) {
        this.f11413x = overlayColor;
    }

    public void s(s.c scaleType) {
        this.f11396g = scaleType;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
    }

    public void t(int textGravity) {
        this.f11400k = textGravity;
        invalidateSelf();
    }
}
