package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.appcompat.widget.AppCompatImageView;
import com.airbnb.lottie.r;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: q  reason: collision with root package name */
    private static final String f4031q = LottieAnimationView.class.getSimpleName();

    /* renamed from: r  reason: collision with root package name */
    private static final j<Throwable> f4032r = new a();

    /* renamed from: a  reason: collision with root package name */
    private final j<f> f4033a;

    /* renamed from: b  reason: collision with root package name */
    private final j<Throwable> f4034b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private j<Throwable> f4035c;
    @DrawableRes

    /* renamed from: d  reason: collision with root package name */
    private int f4036d;

    /* renamed from: e  reason: collision with root package name */
    private final h f4037e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4038f;

    /* renamed from: g  reason: collision with root package name */
    private String f4039g;
    @RawRes

    /* renamed from: h  reason: collision with root package name */
    private int f4040h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f4041i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f4042j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f4043k;

    /* renamed from: l  reason: collision with root package name */
    private RenderMode f4044l;

    /* renamed from: m  reason: collision with root package name */
    private Set<l> f4045m;

    /* renamed from: n  reason: collision with root package name */
    private int f4046n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private o<f> f4047o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private f f4048p;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        String animationName;
        int animationResId;
        String imageAssetsFolder;
        boolean isAnimating;
        float progress;
        int repeatCount;
        int repeatMode;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i4) {
                return new SavedState[i4];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeString(this.animationName);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.isAnimating ? 1 : 0);
            parcel.writeString(this.imageAssetsFolder);
            parcel.writeInt(this.repeatMode);
            parcel.writeInt(this.repeatCount);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.animationName = parcel.readString();
            this.progress = parcel.readFloat();
            this.isAnimating = parcel.readInt() == 1;
            this.imageAssetsFolder = parcel.readString();
            this.repeatMode = parcel.readInt();
            this.repeatCount = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j<Throwable> {
        a() {
        }

        @Override // com.airbnb.lottie.j
        /* renamed from: b */
        public void a(Throwable th) {
            if (com.airbnb.lottie.utils.h.k(th)) {
                com.airbnb.lottie.utils.d.e("Unable to load composition.", th);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", th);
        }
    }

    /* loaded from: classes.dex */
    class b implements j<f> {
        b() {
        }

        @Override // com.airbnb.lottie.j
        /* renamed from: b */
        public void a(f fVar) {
            LottieAnimationView.this.setComposition(fVar);
        }
    }

    /* loaded from: classes.dex */
    class c implements j<Throwable> {
        c() {
        }

        @Override // com.airbnb.lottie.j
        /* renamed from: b */
        public void a(Throwable th) {
            if (LottieAnimationView.this.f4036d != 0) {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.setImageResource(lottieAnimationView.f4036d);
            }
            (LottieAnimationView.this.f4035c == null ? LottieAnimationView.f4032r : LottieAnimationView.this.f4035c).a(th);
        }
    }

    /* loaded from: classes.dex */
    class d extends com.airbnb.lottie.value.j<T> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.airbnb.lottie.value.l f4051d;

        d(com.airbnb.lottie.value.l lVar) {
            this.f4051d = lVar;
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
        @Override // com.airbnb.lottie.value.j
        public T a(com.airbnb.lottie.value.b<T> bVar) {
            return this.f4051d.a(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4053a;

        static {
            int[] iArr = new int[RenderMode.values().length];
            f4053a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4053a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4053a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.f4033a = new b();
        this.f4034b = new c();
        this.f4036d = 0;
        this.f4037e = new h();
        this.f4041i = false;
        this.f4042j = false;
        this.f4043k = false;
        this.f4044l = RenderMode.AUTOMATIC;
        this.f4045m = new HashSet();
        this.f4046n = 0;
        p(null);
    }

    private void j() {
        o<f> oVar = this.f4047o;
        if (oVar != null) {
            oVar.k(this.f4033a);
            this.f4047o.j(this.f4034b);
        }
    }

    private void k() {
        this.f4048p = null;
        this.f4037e.i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
        if (r3 != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void m() {
        /*
            r5 = this;
            int[] r0 = com.airbnb.lottie.LottieAnimationView.e.f4053a
            com.airbnb.lottie.RenderMode r1 = r5.f4044l
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 2
            r2 = 1
            if (r0 == r2) goto L36
            if (r0 == r1) goto L13
            r3 = 3
            if (r0 == r3) goto L15
        L13:
            r1 = 1
            goto L36
        L15:
            com.airbnb.lottie.f r0 = r5.f4048p
            r3 = 0
            if (r0 == 0) goto L27
            boolean r0 = r0.r()
            if (r0 == 0) goto L27
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r0 >= r4) goto L27
            goto L34
        L27:
            com.airbnb.lottie.f r0 = r5.f4048p
            if (r0 == 0) goto L33
            int r0 = r0.m()
            r4 = 4
            if (r0 <= r4) goto L33
            goto L34
        L33:
            r3 = 1
        L34:
            if (r3 == 0) goto L13
        L36:
            int r0 = r5.getLayerType()
            if (r1 == r0) goto L40
            r0 = 0
            r5.setLayerType(r1, r0)
        L40:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.LottieAnimationView.m():void");
    }

    private void p(@Nullable AttributeSet attributeSet) {
        String string;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, r.l.f5486m5);
        if (!isInEditMode()) {
            int i4 = r.l.f5576v5;
            boolean hasValue = obtainStyledAttributes.hasValue(i4);
            int i10 = r.l.f5536r5;
            boolean hasValue2 = obtainStyledAttributes.hasValue(i10);
            int i11 = r.l.B5;
            boolean hasValue3 = obtainStyledAttributes.hasValue(i11);
            if (hasValue && hasValue2) {
                throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
            }
            if (hasValue) {
                int resourceId = obtainStyledAttributes.getResourceId(i4, 0);
                if (resourceId != 0) {
                    setAnimation(resourceId);
                }
            } else if (hasValue2) {
                String string2 = obtainStyledAttributes.getString(i10);
                if (string2 != null) {
                    setAnimation(string2);
                }
            } else if (hasValue3 && (string = obtainStyledAttributes.getString(i11)) != null) {
                setAnimationFromUrl(string);
            }
            setFallbackResource(obtainStyledAttributes.getResourceId(r.l.f5526q5, 0));
        }
        if (obtainStyledAttributes.getBoolean(r.l.f5496n5, false)) {
            this.f4042j = true;
            this.f4043k = true;
        }
        if (obtainStyledAttributes.getBoolean(r.l.f5556t5, false)) {
            this.f4037e.l0(-1);
        }
        int i12 = r.l.f5606y5;
        if (obtainStyledAttributes.hasValue(i12)) {
            setRepeatMode(obtainStyledAttributes.getInt(i12, 1));
        }
        int i13 = r.l.f5596x5;
        if (obtainStyledAttributes.hasValue(i13)) {
            setRepeatCount(obtainStyledAttributes.getInt(i13, -1));
        }
        int i14 = r.l.A5;
        if (obtainStyledAttributes.hasValue(i14)) {
            setSpeed(obtainStyledAttributes.getFloat(i14, 1.0f));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(r.l.f5546s5));
        setProgress(obtainStyledAttributes.getFloat(r.l.f5566u5, 0.0f));
        l(obtainStyledAttributes.getBoolean(r.l.f5516p5, false));
        int i15 = r.l.f5506o5;
        if (obtainStyledAttributes.hasValue(i15)) {
            g(new com.airbnb.lottie.model.d("**"), m.B, new com.airbnb.lottie.value.j(new s(obtainStyledAttributes.getColor(i15, 0))));
        }
        int i16 = r.l.f5616z5;
        if (obtainStyledAttributes.hasValue(i16)) {
            this.f4037e.n0(obtainStyledAttributes.getFloat(i16, 1.0f));
        }
        int i17 = r.l.f5586w5;
        if (obtainStyledAttributes.hasValue(i17)) {
            RenderMode renderMode = RenderMode.AUTOMATIC;
            int i18 = obtainStyledAttributes.getInt(i17, renderMode.ordinal());
            if (i18 >= RenderMode.values().length) {
                i18 = renderMode.ordinal();
            }
            setRenderMode(RenderMode.values()[i18]);
        }
        obtainStyledAttributes.recycle();
        this.f4037e.p0(Boolean.valueOf(com.airbnb.lottie.utils.h.f(getContext()) != 0.0f));
        m();
        this.f4038f = true;
    }

    private void setCompositionTask(o<f> oVar) {
        k();
        j();
        this.f4047o = oVar.f(this.f4033a).e(this.f4034b);
    }

    public void A(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4037e.Q(animatorUpdateListener);
    }

    public List<com.airbnb.lottie.model.d> B(com.airbnb.lottie.model.d dVar) {
        return this.f4037e.R(dVar);
    }

    @MainThread
    public void C() {
        if (isShown()) {
            this.f4037e.S();
            m();
            return;
        }
        this.f4041i = true;
    }

    public void D() {
        this.f4037e.T();
    }

    public void E(InputStream inputStream, @Nullable String str) {
        setCompositionTask(g.g(inputStream, str));
    }

    public void F(String str, @Nullable String str2) {
        E(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void G(int i4, int i10) {
        this.f4037e.d0(i4, i10);
    }

    public void H(@FloatRange(from = 0.0d, to = 1.0d) float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11) {
        this.f4037e.f0(f10, f11);
    }

    @Nullable
    public Bitmap I(String str, @Nullable Bitmap bitmap) {
        return this.f4037e.r0(str, bitmap);
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z9) {
        com.airbnb.lottie.e.a("buildDrawingCache");
        this.f4046n++;
        super.buildDrawingCache(z9);
        if (this.f4046n == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z9) == null) {
            setRenderMode(RenderMode.HARDWARE);
        }
        this.f4046n--;
        com.airbnb.lottie.e.b("buildDrawingCache");
    }

    public void d(Animator.AnimatorListener animatorListener) {
        this.f4037e.c(animatorListener);
    }

    public void e(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f4037e.d(animatorUpdateListener);
    }

    public boolean f(@NonNull l lVar) {
        f fVar = this.f4048p;
        if (fVar != null) {
            lVar.a(fVar);
        }
        return this.f4045m.add(lVar);
    }

    public <T> void g(com.airbnb.lottie.model.d dVar, T t9, com.airbnb.lottie.value.j<T> jVar) {
        this.f4037e.e(dVar, t9, jVar);
    }

    @Nullable
    public f getComposition() {
        return this.f4048p;
    }

    public long getDuration() {
        f fVar = this.f4048p;
        if (fVar != null) {
            return fVar.d();
        }
        return 0L;
    }

    public int getFrame() {
        return this.f4037e.p();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f4037e.s();
    }

    public float getMaxFrame() {
        return this.f4037e.t();
    }

    public float getMinFrame() {
        return this.f4037e.v();
    }

    @Nullable
    public q getPerformanceTracker() {
        return this.f4037e.w();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float getProgress() {
        return this.f4037e.x();
    }

    public int getRepeatCount() {
        return this.f4037e.y();
    }

    public int getRepeatMode() {
        return this.f4037e.z();
    }

    public float getScale() {
        return this.f4037e.A();
    }

    public float getSpeed() {
        return this.f4037e.B();
    }

    public <T> void h(com.airbnb.lottie.model.d dVar, T t9, com.airbnb.lottie.value.l<T> lVar) {
        this.f4037e.e(dVar, t9, new d(lVar));
    }

    @MainThread
    public void i() {
        this.f4041i = false;
        this.f4037e.h();
        m();
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        h hVar = this.f4037e;
        if (drawable2 == hVar) {
            super.invalidateDrawable(hVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    public void l(boolean z9) {
        this.f4037e.j(z9);
    }

    public boolean n() {
        return this.f4037e.E();
    }

    public boolean o() {
        return this.f4037e.F();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f4043k || this.f4042j) {
            u();
            this.f4043k = false;
            this.f4042j = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (q()) {
            i();
            this.f4042j = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.animationName;
        this.f4039g = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f4039g);
        }
        int i4 = savedState.animationResId;
        this.f4040h = i4;
        if (i4 != 0) {
            setAnimation(i4);
        }
        setProgress(savedState.progress);
        if (savedState.isAnimating) {
            u();
        }
        this.f4037e.Z(savedState.imageAssetsFolder);
        setRepeatMode(savedState.repeatMode);
        setRepeatCount(savedState.repeatCount);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.animationName = this.f4039g;
        savedState.animationResId = this.f4040h;
        savedState.progress = this.f4037e.x();
        savedState.isAnimating = this.f4037e.G();
        savedState.imageAssetsFolder = this.f4037e.s();
        savedState.repeatMode = this.f4037e.z();
        savedState.repeatCount = this.f4037e.y();
        return savedState;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i4) {
        if (this.f4038f) {
            if (isShown()) {
                if (this.f4041i) {
                    C();
                    this.f4041i = false;
                }
            } else if (q()) {
                t();
                this.f4041i = true;
            }
        }
    }

    public boolean q() {
        return this.f4037e.G();
    }

    public boolean r() {
        return this.f4037e.J();
    }

    @Deprecated
    public void s(boolean z9) {
        this.f4037e.l0(z9 ? -1 : 0);
    }

    public void setAnimation(@RawRes int i4) {
        this.f4040h = i4;
        this.f4039g = null;
        setCompositionTask(g.p(getContext(), i4));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        F(str, null);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(g.r(getContext(), str));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z9) {
        this.f4037e.U(z9);
    }

    public void setComposition(@NonNull f fVar) {
        if (com.airbnb.lottie.e.f4246a) {
            String str = f4031q;
            Log.v(str, "Set Composition \n" + fVar);
        }
        this.f4037e.setCallback(this);
        this.f4048p = fVar;
        boolean V = this.f4037e.V(fVar);
        m();
        if (getDrawable() != this.f4037e || V) {
            setImageDrawable(null);
            setImageDrawable(this.f4037e);
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            for (l lVar : this.f4045m) {
                lVar.a(fVar);
            }
        }
    }

    public void setFailureListener(@Nullable j<Throwable> jVar) {
        this.f4035c = jVar;
    }

    public void setFallbackResource(@DrawableRes int i4) {
        this.f4036d = i4;
    }

    public void setFontAssetDelegate(com.airbnb.lottie.c cVar) {
        this.f4037e.W(cVar);
    }

    public void setFrame(int i4) {
        this.f4037e.X(i4);
    }

    public void setImageAssetDelegate(com.airbnb.lottie.d dVar) {
        this.f4037e.Y(dVar);
    }

    public void setImageAssetsFolder(String str) {
        this.f4037e.Z(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        j();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        j();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i4) {
        j();
        super.setImageResource(i4);
    }

    public void setMaxFrame(int i4) {
        this.f4037e.a0(i4);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f4037e.c0(f10);
    }

    public void setMinAndMaxFrame(String str) {
        this.f4037e.e0(str);
    }

    public void setMinFrame(int i4) {
        this.f4037e.g0(i4);
    }

    public void setMinProgress(float f10) {
        this.f4037e.i0(f10);
    }

    public void setPerformanceTrackingEnabled(boolean z9) {
        this.f4037e.j0(z9);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f4037e.k0(f10);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f4044l = renderMode;
        m();
    }

    public void setRepeatCount(int i4) {
        this.f4037e.l0(i4);
    }

    public void setRepeatMode(int i4) {
        this.f4037e.m0(i4);
    }

    public void setScale(float f10) {
        this.f4037e.n0(f10);
        if (getDrawable() == this.f4037e) {
            setImageDrawable(null);
            setImageDrawable(this.f4037e);
        }
    }

    public void setSpeed(float f10) {
        this.f4037e.o0(f10);
    }

    public void setTextDelegate(t tVar) {
        this.f4037e.q0(tVar);
    }

    @MainThread
    public void t() {
        this.f4043k = false;
        this.f4042j = false;
        this.f4041i = false;
        this.f4037e.L();
        m();
    }

    @MainThread
    public void u() {
        if (isShown()) {
            this.f4037e.M();
            m();
            return;
        }
        this.f4041i = true;
    }

    public void v() {
        this.f4037e.N();
    }

    public void w() {
        this.f4045m.clear();
    }

    public void x() {
        this.f4037e.O();
    }

    public void y(Animator.AnimatorListener animatorListener) {
        this.f4037e.P(animatorListener);
    }

    public boolean z(@NonNull l lVar) {
        return this.f4045m.remove(lVar);
    }

    public void setMaxFrame(String str) {
        this.f4037e.b0(str);
    }

    public void setMinFrame(String str) {
        this.f4037e.h0(str);
    }

    public void setAnimation(String str) {
        this.f4039g = str;
        this.f4040h = 0;
        setCompositionTask(g.d(getContext(), str));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4033a = new b();
        this.f4034b = new c();
        this.f4036d = 0;
        this.f4037e = new h();
        this.f4041i = false;
        this.f4042j = false;
        this.f4043k = false;
        this.f4044l = RenderMode.AUTOMATIC;
        this.f4045m = new HashSet();
        this.f4046n = 0;
        p(attributeSet);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f4033a = new b();
        this.f4034b = new c();
        this.f4036d = 0;
        this.f4037e = new h();
        this.f4041i = false;
        this.f4042j = false;
        this.f4043k = false;
        this.f4044l = RenderMode.AUTOMATIC;
        this.f4045m = new HashSet();
        this.f4046n = 0;
        p(attributeSet);
    }
}
