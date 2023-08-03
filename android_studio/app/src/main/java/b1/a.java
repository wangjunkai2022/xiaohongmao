package b1;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.fresco.animation.backend.c;
import com.facebook.fresco.animation.backend.d;
import com.facebook.imagepipeline.bitmaps.f;
import com.facebook.infer.annotation.Nullsafe;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import r7.h;

/* compiled from: BitmapAnimationBackend.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a implements com.facebook.fresco.animation.backend.a, c.b {

    /* renamed from: o  reason: collision with root package name */
    public static final int f661o = -1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f662p = 0;

    /* renamed from: q  reason: collision with root package name */
    public static final int f663q = 1;

    /* renamed from: r  reason: collision with root package name */
    public static final int f664r = 2;

    /* renamed from: s  reason: collision with root package name */
    public static final int f665s = 3;

    /* renamed from: t  reason: collision with root package name */
    private static final Class<?> f666t = a.class;

    /* renamed from: c  reason: collision with root package name */
    private final f f667c;

    /* renamed from: d  reason: collision with root package name */
    private final b1.b f668d;

    /* renamed from: e  reason: collision with root package name */
    private final d f669e;

    /* renamed from: f  reason: collision with root package name */
    private final c f670f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.preparation.a f671g;
    @h

    /* renamed from: h  reason: collision with root package name */
    private final com.facebook.fresco.animation.bitmap.preparation.b f672h;
    @h

    /* renamed from: j  reason: collision with root package name */
    private Rect f674j;

    /* renamed from: k  reason: collision with root package name */
    private int f675k;

    /* renamed from: l  reason: collision with root package name */
    private int f676l;
    @h

    /* renamed from: n  reason: collision with root package name */
    private InterfaceC0022a f678n;

    /* renamed from: m  reason: collision with root package name */
    private Bitmap.Config f677m = Bitmap.Config.ARGB_8888;

    /* renamed from: i  reason: collision with root package name */
    private final Paint f673i = new Paint(6);

    /* compiled from: BitmapAnimationBackend.java */
    /* renamed from: b1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0022a {
        void a(a backend, int frameNumber);

        void b(a backend, int frameNumber);

        void c(a backend, int frameNumber, int frameType);
    }

    /* compiled from: BitmapAnimationBackend.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface b {
    }

    public a(f platformBitmapFactory, b1.b bitmapFrameCache, d animationInformation, c bitmapFrameRenderer, @h com.facebook.fresco.animation.bitmap.preparation.a bitmapFramePreparationStrategy, @h com.facebook.fresco.animation.bitmap.preparation.b bitmapFramePreparer) {
        this.f667c = platformBitmapFactory;
        this.f668d = bitmapFrameCache;
        this.f669e = animationInformation;
        this.f670f = bitmapFrameRenderer;
        this.f671g = bitmapFramePreparationStrategy;
        this.f672h = bitmapFramePreparer;
        q();
    }

    private boolean l(int frameNumber, @h com.facebook.common.references.a<Bitmap> bitmapReference, Canvas canvas, int frameType) {
        if (com.facebook.common.references.a.A(bitmapReference)) {
            if (this.f674j == null) {
                canvas.drawBitmap(bitmapReference.q(), 0.0f, 0.0f, this.f673i);
            } else {
                canvas.drawBitmap(bitmapReference.q(), (Rect) null, this.f674j, this.f673i);
            }
            if (frameType != 3) {
                this.f668d.e(frameNumber, bitmapReference, frameType);
            }
            InterfaceC0022a interfaceC0022a = this.f678n;
            if (interfaceC0022a != null) {
                interfaceC0022a.c(this, frameNumber, frameType);
                return true;
            }
            return true;
        }
        return false;
    }

    private boolean m(Canvas canvas, int frameNumber, int frameType) {
        com.facebook.common.references.a<Bitmap> i4;
        boolean l10;
        int i10 = 3;
        boolean z9 = false;
        try {
            if (frameType == 0) {
                i4 = this.f668d.i(frameNumber);
                l10 = l(frameNumber, i4, canvas, 0);
                i10 = 1;
            } else if (frameType == 1) {
                i4 = this.f668d.g(frameNumber, this.f675k, this.f676l);
                if (n(frameNumber, i4) && l(frameNumber, i4, canvas, 1)) {
                    z9 = true;
                }
                l10 = z9;
                i10 = 2;
            } else if (frameType == 2) {
                i4 = this.f667c.e(this.f675k, this.f676l, this.f677m);
                if (n(frameNumber, i4) && l(frameNumber, i4, canvas, 2)) {
                    z9 = true;
                }
                l10 = z9;
            } else if (frameType != 3) {
                return false;
            } else {
                i4 = this.f668d.f(frameNumber);
                l10 = l(frameNumber, i4, canvas, 3);
                i10 = -1;
            }
            com.facebook.common.references.a.k(i4);
            return (l10 || i10 == -1) ? l10 : m(canvas, frameNumber, i10);
        } catch (RuntimeException e4) {
            p0.a.l0(f666t, "Failed to create frame bitmap", e4);
            return false;
        } finally {
            com.facebook.common.references.a.k(null);
        }
    }

    private boolean n(int frameNumber, @h com.facebook.common.references.a<Bitmap> targetBitmap) {
        if (com.facebook.common.references.a.A(targetBitmap)) {
            boolean g4 = this.f670f.g(frameNumber, targetBitmap.q());
            if (!g4) {
                com.facebook.common.references.a.k(targetBitmap);
            }
            return g4;
        }
        return false;
    }

    private void q() {
        int f10 = this.f670f.f();
        this.f675k = f10;
        if (f10 == -1) {
            Rect rect = this.f674j;
            this.f675k = rect == null ? -1 : rect.width();
        }
        int d4 = this.f670f.d();
        this.f676l = d4;
        if (d4 == -1) {
            Rect rect2 = this.f674j;
            this.f676l = rect2 != null ? rect2.height() : -1;
        }
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int a() {
        return this.f669e.a();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int b() {
        return this.f668d.b();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        return this.f669e.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        this.f668d.clear();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int d() {
        return this.f676l;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void e(@h Rect bounds) {
        this.f674j = bounds;
        this.f670f.e(bounds);
        q();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int f() {
        return this.f675k;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void g(@h ColorFilter colorFilter) {
        this.f673i.setColorFilter(colorFilter);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean h(Drawable parent, Canvas canvas, int frameNumber) {
        com.facebook.fresco.animation.bitmap.preparation.b bVar;
        InterfaceC0022a interfaceC0022a;
        InterfaceC0022a interfaceC0022a2 = this.f678n;
        if (interfaceC0022a2 != null) {
            interfaceC0022a2.b(this, frameNumber);
        }
        boolean m9 = m(canvas, frameNumber, 0);
        if (!m9 && (interfaceC0022a = this.f678n) != null) {
            interfaceC0022a.a(this, frameNumber);
        }
        com.facebook.fresco.animation.bitmap.preparation.a aVar = this.f671g;
        if (aVar != null && (bVar = this.f672h) != null) {
            aVar.a(bVar, this.f668d, this, frameNumber);
        }
        return m9;
    }

    @Override // com.facebook.fresco.animation.backend.c.b
    public void i() {
        clear();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int j(int frameNumber) {
        return this.f669e.j(frameNumber);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void k(@IntRange(from = 0, to = 255) int alpha) {
        this.f673i.setAlpha(alpha);
    }

    public void o(Bitmap.Config bitmapConfig) {
        this.f677m = bitmapConfig;
    }

    public void p(@h InterfaceC0022a frameListener) {
        this.f678n = frameListener;
    }
}
