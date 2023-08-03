package com.facebook.drawee.drawable;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ScalingUtils.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class s {

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public static abstract class a implements c {
        @Override // com.facebook.drawee.drawable.s.c
        public Matrix a(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY) {
            b(outTransform, parentRect, childWidth, childHeight, focusX, focusY, parentRect.width() / childWidth, parentRect.height() / childHeight);
            return outTransform;
        }

        public abstract void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY);
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public interface c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f11558a = l.f11577l;

        /* renamed from: b  reason: collision with root package name */
        public static final c f11559b = k.f11576l;

        /* renamed from: c  reason: collision with root package name */
        public static final c f11560c = m.f11578l;

        /* renamed from: d  reason: collision with root package name */
        public static final c f11561d = j.f11575l;

        /* renamed from: e  reason: collision with root package name */
        public static final c f11562e = h.f11573l;

        /* renamed from: f  reason: collision with root package name */
        public static final c f11563f = i.f11574l;

        /* renamed from: g  reason: collision with root package name */
        public static final c f11564g = d.f11569l;

        /* renamed from: h  reason: collision with root package name */
        public static final c f11565h = f.f11571l;

        /* renamed from: i  reason: collision with root package name */
        public static final c f11566i = e.f11570l;

        /* renamed from: j  reason: collision with root package name */
        public static final c f11567j = n.f11579l;

        /* renamed from: k  reason: collision with root package name */
        public static final c f11568k = g.f11572l;

        Matrix a(Matrix outTransform, Rect parentBounds, int childWidth, int childHeight, float focusX, float focusY);
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class d extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11569l = new d();

        private d() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            outTransform.setTranslate((int) (parentRect.left + ((parentRect.width() - childWidth) * 0.5f) + 0.5f), (int) (parentRect.top + ((parentRect.height() - childHeight) * 0.5f) + 0.5f));
        }

        public String toString() {
            return com.google.android.exoplayer2.text.ttml.d.f25721m0;
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class e extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11570l = new e();

        private e() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float height;
            float f10;
            if (scaleY > scaleX) {
                f10 = parentRect.left + ((parentRect.width() - (childWidth * scaleY)) * 0.5f);
                height = parentRect.top;
                scaleX = scaleY;
            } else {
                height = ((parentRect.height() - (childHeight * scaleX)) * 0.5f) + parentRect.top;
                f10 = parentRect.left;
            }
            outTransform.setScale(scaleX, scaleX);
            outTransform.postTranslate((int) (f10 + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "center_crop";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class f extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11571l = new f();

        private f() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float min = Math.min(Math.min(scaleX, scaleY), 1.0f);
            float width = parentRect.left + ((parentRect.width() - (childWidth * min)) * 0.5f);
            float height = parentRect.top + ((parentRect.height() - (childHeight * min)) * 0.5f);
            outTransform.setScale(min, min);
            outTransform.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "center_inside";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class g extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11572l = new g();

        private g() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float min = Math.min(scaleX, scaleY);
            outTransform.setScale(min, min);
            outTransform.postTranslate((int) (parentRect.left + 0.5f), (int) (parentRect.top + (parentRect.height() - (childHeight * min)) + 0.5f));
        }

        public String toString() {
            return "fit_bottom_start";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class h extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11573l = new h();

        private h() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float min = Math.min(scaleX, scaleY);
            float width = parentRect.left + ((parentRect.width() - (childWidth * min)) * 0.5f);
            float height = parentRect.top + ((parentRect.height() - (childHeight * min)) * 0.5f);
            outTransform.setScale(min, min);
            outTransform.postTranslate((int) (width + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "fit_center";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class i extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11574l = new i();

        private i() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float min = Math.min(scaleX, scaleY);
            outTransform.setScale(min, min);
            outTransform.postTranslate((int) (parentRect.left + (parentRect.width() - (childWidth * min)) + 0.5f), (int) (parentRect.top + (parentRect.height() - (childHeight * min)) + 0.5f));
        }

        public String toString() {
            return "fit_end";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class j extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11575l = new j();

        private j() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float min = Math.min(scaleX, scaleY);
            outTransform.setScale(min, min);
            outTransform.postTranslate((int) (parentRect.left + 0.5f), (int) (parentRect.top + 0.5f));
        }

        public String toString() {
            return "fit_start";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class k extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11576l = new k();

        private k() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float height = parentRect.top + ((parentRect.height() - (childHeight * scaleX)) * 0.5f);
            outTransform.setScale(scaleX, scaleX);
            outTransform.postTranslate((int) (parentRect.left + 0.5f), (int) (height + 0.5f));
        }

        public String toString() {
            return "fit_x";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class l extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11577l = new l();

        private l() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            outTransform.setScale(scaleX, scaleY);
            outTransform.postTranslate((int) (parentRect.left + 0.5f), (int) (parentRect.top + 0.5f));
        }

        public String toString() {
            return "fit_xy";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class m extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11578l = new m();

        private m() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            outTransform.setScale(scaleY, scaleY);
            outTransform.postTranslate((int) (parentRect.left + ((parentRect.width() - (childWidth * scaleY)) * 0.5f) + 0.5f), (int) (parentRect.top + 0.5f));
        }

        public String toString() {
            return "fit_y";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    private static class n extends a {

        /* renamed from: l  reason: collision with root package name */
        public static final c f11579l = new n();

        private n() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float f10;
            float max;
            if (scaleY > scaleX) {
                float f11 = childWidth * scaleY;
                f10 = parentRect.left + Math.max(Math.min((parentRect.width() * 0.5f) - (focusX * f11), 0.0f), parentRect.width() - f11);
                max = parentRect.top;
                scaleX = scaleY;
            } else {
                f10 = parentRect.left;
                float f12 = childHeight * scaleX;
                max = Math.max(Math.min((parentRect.height() * 0.5f) - (focusY * f12), 0.0f), parentRect.height() - f12) + parentRect.top;
            }
            outTransform.setScale(scaleX, scaleX);
            outTransform.postTranslate((int) (f10 + 0.5f), (int) (max + 0.5f));
        }

        public String toString() {
            return "focus_crop";
        }
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public interface o {
        Object getState();
    }

    @r7.h
    public static r a(@r7.h Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof r) {
            return (r) drawable;
        }
        if (drawable instanceof com.facebook.drawee.drawable.d) {
            return a(((com.facebook.drawee.drawable.d) drawable).s());
        }
        if (drawable instanceof com.facebook.drawee.drawable.a) {
            com.facebook.drawee.drawable.a aVar = (com.facebook.drawee.drawable.a) drawable;
            int d4 = aVar.d();
            for (int i4 = 0; i4 < d4; i4++) {
                r a10 = a(aVar.b(i4));
                if (a10 != null) {
                    return a10;
                }
            }
        }
        return null;
    }

    /* compiled from: ScalingUtils.java */
    /* loaded from: classes.dex */
    public static class b implements c, o {

        /* renamed from: l  reason: collision with root package name */
        private final c f11548l;

        /* renamed from: m  reason: collision with root package name */
        private final c f11549m;
        @r7.h

        /* renamed from: n  reason: collision with root package name */
        private final Rect f11550n;
        @r7.h

        /* renamed from: o  reason: collision with root package name */
        private final Rect f11551o;
        @r7.h

        /* renamed from: p  reason: collision with root package name */
        private final PointF f11552p;
        @r7.h

        /* renamed from: q  reason: collision with root package name */
        private final PointF f11553q;

        /* renamed from: r  reason: collision with root package name */
        private final float[] f11554r;

        /* renamed from: s  reason: collision with root package name */
        private final float[] f11555s;

        /* renamed from: t  reason: collision with root package name */
        private final float[] f11556t;

        /* renamed from: u  reason: collision with root package name */
        private float f11557u;

        public b(c scaleTypeFrom, c scaleTypeTo, @r7.h Rect boundsFrom, @r7.h Rect boundsTo, @r7.h PointF focusPointFrom, @r7.h PointF focusPointTo) {
            this.f11554r = new float[9];
            this.f11555s = new float[9];
            this.f11556t = new float[9];
            this.f11548l = scaleTypeFrom;
            this.f11549m = scaleTypeTo;
            this.f11550n = boundsFrom;
            this.f11551o = boundsTo;
            this.f11552p = focusPointFrom;
            this.f11553q = focusPointTo;
        }

        @Override // com.facebook.drawee.drawable.s.c
        public Matrix a(Matrix transform, Rect parentBounds, int childWidth, int childHeight, float focusX, float focusY) {
            Rect rect = this.f11550n;
            Rect rect2 = rect != null ? rect : parentBounds;
            Rect rect3 = this.f11551o;
            Rect rect4 = rect3 != null ? rect3 : parentBounds;
            c cVar = this.f11548l;
            PointF pointF = this.f11552p;
            cVar.a(transform, rect2, childWidth, childHeight, pointF == null ? focusX : pointF.x, pointF == null ? focusY : pointF.y);
            transform.getValues(this.f11554r);
            c cVar2 = this.f11549m;
            PointF pointF2 = this.f11553q;
            cVar2.a(transform, rect4, childWidth, childHeight, pointF2 == null ? focusX : pointF2.x, pointF2 == null ? focusY : pointF2.y);
            transform.getValues(this.f11555s);
            for (int i4 = 0; i4 < 9; i4++) {
                float[] fArr = this.f11556t;
                float f10 = this.f11554r[i4];
                float f11 = this.f11557u;
                fArr[i4] = (f10 * (1.0f - f11)) + (this.f11555s[i4] * f11);
            }
            transform.setValues(this.f11556t);
            return transform;
        }

        @r7.h
        public Rect b() {
            return this.f11550n;
        }

        @r7.h
        public Rect c() {
            return this.f11551o;
        }

        @r7.h
        public PointF d() {
            return this.f11552p;
        }

        @r7.h
        public PointF e() {
            return this.f11553q;
        }

        public c f() {
            return this.f11548l;
        }

        public c g() {
            return this.f11549m;
        }

        @Override // com.facebook.drawee.drawable.s.o
        public Object getState() {
            return Float.valueOf(this.f11557u);
        }

        public float h() {
            return this.f11557u;
        }

        public void i(float value) {
            this.f11557u = value;
        }

        public String toString() {
            return String.format("InterpolatingScaleType(%s (%s) -> %s (%s))", String.valueOf(this.f11548l), String.valueOf(this.f11552p), String.valueOf(this.f11549m), String.valueOf(this.f11553q));
        }

        public b(c scaleTypeFrom, c scaleTypeTo, @r7.h Rect boundsFrom, @r7.h Rect boundsTo) {
            this(scaleTypeFrom, scaleTypeTo, boundsFrom, boundsTo, null, null);
        }

        public b(c scaleTypeFrom, c scaleTypeTo) {
            this(scaleTypeFrom, scaleTypeTo, null, null);
        }
    }
}
