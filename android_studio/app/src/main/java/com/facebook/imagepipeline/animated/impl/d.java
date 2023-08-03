package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.f;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: AnimatedImageCompositor.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.imagepipeline.animated.base.a f11874a;

    /* renamed from: b  reason: collision with root package name */
    private final b f11875b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f11876c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AnimatedImageCompositor.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11877a;

        static {
            int[] iArr = new int[c.values().length];
            f11877a = iArr;
            try {
                iArr[c.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11877a[c.NOT_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11877a[c.ABORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11877a[c.SKIP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* compiled from: AnimatedImageCompositor.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(int frameNumber, Bitmap bitmap);

        @h
        com.facebook.common.references.a<Bitmap> b(int frameNumber);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnimatedImageCompositor.java */
    /* loaded from: classes.dex */
    public enum c {
        REQUIRED,
        NOT_REQUIRED,
        SKIP,
        ABORT
    }

    public d(com.facebook.imagepipeline.animated.base.a animatedDrawableBackend, b callback) {
        this.f11874a = animatedDrawableBackend;
        this.f11875b = callback;
        Paint paint = new Paint();
        this.f11876c = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
    }

    private void a(Canvas canvas, AnimatedDrawableFrameInfo frameInfo) {
        int i4 = frameInfo.f11818b;
        int i10 = frameInfo.f11819c;
        canvas.drawRect(i4, i10, i4 + frameInfo.f11820d, i10 + frameInfo.f11821e, this.f11876c);
    }

    private c b(int index) {
        AnimatedDrawableFrameInfo e4 = this.f11874a.e(index);
        AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = e4.f11823g;
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT) {
            return c.REQUIRED;
        }
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
            if (c(e4)) {
                return c.NOT_REQUIRED;
            }
            return c.REQUIRED;
        } else if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
            return c.SKIP;
        } else {
            return c.ABORT;
        }
    }

    private boolean c(AnimatedDrawableFrameInfo frameInfo) {
        return frameInfo.f11818b == 0 && frameInfo.f11819c == 0 && frameInfo.f11820d == this.f11874a.o() && frameInfo.f11821e == this.f11874a.n();
    }

    private boolean d(int index) {
        if (index == 0) {
            return true;
        }
        AnimatedDrawableFrameInfo e4 = this.f11874a.e(index);
        AnimatedDrawableFrameInfo e10 = this.f11874a.e(index - 1);
        if (e4.f11822f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND && c(e4)) {
            return true;
        }
        return e10.f11823g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND && c(e10);
    }

    private void e(Bitmap bitmap) {
        t1.a c10;
        f q9 = this.f11874a.q();
        if (q9 == null || (c10 = q9.c()) == null) {
            return;
        }
        c10.b(bitmap);
    }

    private int f(int previousFrameNumber, Canvas canvas) {
        while (previousFrameNumber >= 0) {
            int i4 = a.f11877a[b(previousFrameNumber).ordinal()];
            if (i4 == 1) {
                AnimatedDrawableFrameInfo e4 = this.f11874a.e(previousFrameNumber);
                com.facebook.common.references.a<Bitmap> b10 = this.f11875b.b(previousFrameNumber);
                if (b10 != null) {
                    try {
                        canvas.drawBitmap(b10.q(), 0.0f, 0.0f, (Paint) null);
                        if (e4.f11823g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                            a(canvas, e4);
                        }
                        return previousFrameNumber + 1;
                    } finally {
                        b10.close();
                    }
                } else if (d(previousFrameNumber)) {
                    return previousFrameNumber;
                }
            } else if (i4 == 2) {
                return previousFrameNumber + 1;
            } else {
                if (i4 == 3) {
                    return previousFrameNumber;
                }
            }
            previousFrameNumber--;
        }
        return 0;
    }

    public void g(int frameNumber, Bitmap bitmap) {
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        for (int f10 = !d(frameNumber) ? f(frameNumber - 1, canvas) : frameNumber; f10 < frameNumber; f10++) {
            AnimatedDrawableFrameInfo e4 = this.f11874a.e(f10);
            AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = e4.f11823g;
            if (disposalMethod != AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
                if (e4.f11822f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
                    a(canvas, e4);
                }
                this.f11874a.f(f10, canvas);
                this.f11875b.a(f10, bitmap);
                if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                    a(canvas, e4);
                }
            }
        }
        AnimatedDrawableFrameInfo e10 = this.f11874a.e(frameNumber);
        if (e10.f11822f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
            a(canvas, e10);
        }
        this.f11874a.f(frameNumber, canvas);
        e(bitmap);
    }
}
