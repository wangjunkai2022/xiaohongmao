package a2;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ReplacementSpan;
import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: BetterImageSpan.java */
/* loaded from: classes.dex */
public class a extends ReplacementSpan {

    /* renamed from: g  reason: collision with root package name */
    public static final int f38g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f39h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f40i = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f41a;

    /* renamed from: b  reason: collision with root package name */
    private int f42b;

    /* renamed from: c  reason: collision with root package name */
    private Rect f43c;

    /* renamed from: d  reason: collision with root package name */
    private final int f44d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint.FontMetricsInt f45e;

    /* renamed from: f  reason: collision with root package name */
    private final Drawable f46f;

    /* compiled from: BetterImageSpan.java */
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: a2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public @interface InterfaceC0000a {
    }

    public a(Drawable drawable) {
        this(drawable, 1);
    }

    private int b(Paint.FontMetricsInt fm) {
        int i4 = this.f44d;
        if (i4 != 0) {
            if (i4 != 2) {
                return -this.f42b;
            }
            int i10 = fm.descent;
            int i11 = fm.ascent;
            return i11 + (((i10 - i11) - this.f42b) / 2);
        }
        return fm.descent - this.f42b;
    }

    public static final int c(int alignment) {
        if (alignment != 0) {
            return alignment != 2 ? 1 : 2;
        }
        return 0;
    }

    public Drawable a() {
        return this.f46f;
    }

    public void d() {
        Rect bounds = this.f46f.getBounds();
        this.f43c = bounds;
        this.f41a = bounds.width();
        this.f42b = this.f43c.height();
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence text, int start, int end, float x9, int top, int y9, int bottom, Paint paint) {
        paint.getFontMetricsInt(this.f45e);
        int b10 = y9 + b(this.f45e);
        canvas.translate(x9, b10);
        this.f46f.draw(canvas);
        canvas.translate(-x9, -b10);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence text, int start, int end, @Nullable Paint.FontMetricsInt fontMetrics) {
        d();
        if (fontMetrics == null) {
            return this.f41a;
        }
        int b10 = b(fontMetrics);
        int i4 = this.f42b + b10;
        if (b10 < fontMetrics.ascent) {
            fontMetrics.ascent = b10;
        }
        if (b10 < fontMetrics.top) {
            fontMetrics.top = b10;
        }
        if (i4 > fontMetrics.descent) {
            fontMetrics.descent = i4;
        }
        if (i4 > fontMetrics.bottom) {
            fontMetrics.bottom = i4;
        }
        return this.f41a;
    }

    public a(Drawable drawable, int verticalAlignment) {
        this.f45e = new Paint.FontMetricsInt();
        this.f46f = drawable;
        this.f44d = verticalAlignment;
        d();
    }
}
