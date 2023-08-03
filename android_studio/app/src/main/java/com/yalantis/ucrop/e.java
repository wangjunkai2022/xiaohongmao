package com.yalantis.ucrop;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.transition.AutoTransition;
import androidx.transition.Transition;
import androidx.transition.TransitionManager;
import com.yalantis.ucrop.c;
import com.yalantis.ucrop.d;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: UCropFragment.java */
/* loaded from: classes3.dex */
public class e extends Fragment {
    public static final int A = 0;
    public static final int B = 1;
    public static final int C = 2;
    public static final int D = 3;
    public static final String E = "UCropFragment";
    private static final long F = 50;
    private static final int G = 3;
    private static final int H = 15000;
    private static final int I = 42;

    /* renamed from: y  reason: collision with root package name */
    public static final int f61026y = 90;

    /* renamed from: z  reason: collision with root package name */
    public static final Bitmap.CompressFormat f61027z = Bitmap.CompressFormat.JPEG;

    /* renamed from: a  reason: collision with root package name */
    private com.yalantis.ucrop.f f61028a;

    /* renamed from: b  reason: collision with root package name */
    private int f61029b;
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    private int f61030c;

    /* renamed from: d  reason: collision with root package name */
    private int f61031d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f61032e;

    /* renamed from: f  reason: collision with root package name */
    private Transition f61033f;

    /* renamed from: g  reason: collision with root package name */
    private UCropView f61034g;

    /* renamed from: h  reason: collision with root package name */
    private GestureCropImageView f61035h;

    /* renamed from: i  reason: collision with root package name */
    private OverlayView f61036i;

    /* renamed from: j  reason: collision with root package name */
    private ViewGroup f61037j;

    /* renamed from: k  reason: collision with root package name */
    private ViewGroup f61038k;

    /* renamed from: l  reason: collision with root package name */
    private ViewGroup f61039l;

    /* renamed from: m  reason: collision with root package name */
    private ViewGroup f61040m;

    /* renamed from: n  reason: collision with root package name */
    private ViewGroup f61041n;

    /* renamed from: o  reason: collision with root package name */
    private ViewGroup f61042o;

    /* renamed from: q  reason: collision with root package name */
    private TextView f61044q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f61045r;

    /* renamed from: s  reason: collision with root package name */
    private View f61046s;

    /* renamed from: p  reason: collision with root package name */
    private List<ViewGroup> f61043p = new ArrayList();

    /* renamed from: t  reason: collision with root package name */
    private Bitmap.CompressFormat f61047t = f61027z;

    /* renamed from: u  reason: collision with root package name */
    private int f61048u = 90;

    /* renamed from: v  reason: collision with root package name */
    private int[] f61049v = {1, 2, 3};

    /* renamed from: w  reason: collision with root package name */
    private TransformImageView.b f61050w = new a();

    /* renamed from: x  reason: collision with root package name */
    private final View.OnClickListener f61051x = new g();

    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    class a implements TransformImageView.b {
        a() {
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void a() {
            e.this.f61034g.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            e.this.f61046s.setClickable(false);
            e.this.f61028a.b(false);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void b(@NonNull Exception exc) {
            e.this.f61028a.a(e.this.h0(exc));
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void c(float f10) {
            e.this.u0(f10);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void d(float f10) {
            e.this.p0(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.f61035h.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).b(view.isSelected()));
            e.this.f61035h.A();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : e.this.f61043p) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    public class c implements HorizontalProgressWheelView.a {
        c() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            e.this.f61035h.A();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            e.this.f61035h.u();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            e.this.f61035h.y(f10 / 42.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.m0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UCropFragment.java */
    /* renamed from: com.yalantis.ucrop.e$e  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class View$OnClickListenerC0498e implements View.OnClickListener {
        View$OnClickListenerC0498e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.n0(90);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    public class f implements HorizontalProgressWheelView.a {
        f() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            e.this.f61035h.A();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            e.this.f61035h.u();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            if (f10 > 0.0f) {
                e.this.f61035h.D(e.this.f61035h.getCurrentScale() + (f10 * ((e.this.f61035h.getMaxScale() - e.this.f61035h.getMinScale()) / 15000.0f)));
            } else {
                e.this.f61035h.F(e.this.f61035h.getCurrentScale() + (f10 * ((e.this.f61035h.getMaxScale() - e.this.f61035h.getMinScale()) / 15000.0f)));
            }
        }
    }

    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            e.this.w0(view.getId());
        }
    }

    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    class h implements a6.a {
        h() {
        }

        @Override // a6.a
        public void a(@NonNull Uri uri, int i4, int i10, int i11, int i12) {
            com.yalantis.ucrop.f fVar = e.this.f61028a;
            e eVar = e.this;
            fVar.a(eVar.i0(uri, eVar.f61035h.getTargetAspectRatio(), i4, i10, i11, i12));
            e.this.f61028a.b(false);
        }

        @Override // a6.a
        public void b(@NonNull Throwable th) {
            e.this.f61028a.a(e.this.h0(th));
        }
    }

    /* compiled from: UCropFragment.java */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface i {
    }

    /* compiled from: UCropFragment.java */
    /* loaded from: classes3.dex */
    public class j {

        /* renamed from: a  reason: collision with root package name */
        public int f61060a;

        /* renamed from: b  reason: collision with root package name */
        public Intent f61061b;

        public j(int i4, Intent intent) {
            this.f61060a = i4;
            this.f61061b = intent;
        }
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    private void A0(View view) {
        ImageView imageView = (ImageView) view.findViewById(c.h.J0);
        ImageView imageView2 = (ImageView) view.findViewById(c.h.I0);
        ImageView imageView3 = (ImageView) view.findViewById(c.h.H0);
        imageView.setImageDrawable(new com.yalantis.ucrop.util.i(imageView.getDrawable(), this.f61029b));
        imageView2.setImageDrawable(new com.yalantis.ucrop.util.i(imageView2.getDrawable(), this.f61029b));
        imageView3.setImageDrawable(new com.yalantis.ucrop.util.i(imageView3.getDrawable(), this.f61029b));
    }

    private void e0(View view) {
        if (this.f61046s == null) {
            this.f61046s = new View(getContext());
            this.f61046s.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f61046s.setClickable(true);
        }
        ((RelativeLayout) view.findViewById(c.h.D2)).addView(this.f61046s);
    }

    private void f0(int i4) {
        if (getView() != null) {
            TransitionManager.beginDelayedTransition((ViewGroup) getView().findViewById(c.h.D2), this.f61033f);
        }
        this.f61039l.findViewById(c.h.f60437n2).setVisibility(i4 == c.h.Q1 ? 0 : 8);
        this.f61037j.findViewById(c.h.f60429l2).setVisibility(i4 == c.h.O1 ? 0 : 8);
        this.f61038k.findViewById(c.h.f60433m2).setVisibility(i4 != c.h.P1 ? 8 : 0);
    }

    private void j0(View view) {
        UCropView uCropView = (UCropView) view.findViewById(c.h.B2);
        this.f61034g = uCropView;
        this.f61035h = uCropView.getCropImageView();
        this.f61036i = this.f61034g.getOverlayView();
        this.f61035h.setTransformImageListener(this.f61050w);
        ((ImageView) view.findViewById(c.h.G0)).setColorFilter(this.f61031d, PorterDuff.Mode.SRC_ATOP);
        view.findViewById(c.h.C2).setBackgroundColor(this.f61030c);
    }

    public static e k0(Bundle bundle) {
        e eVar = new e();
        eVar.setArguments(bundle);
        return eVar;
    }

    private void l0(@NonNull Bundle bundle) {
        String string = bundle.getString(d.a.f61000b);
        Bitmap.CompressFormat valueOf = !TextUtils.isEmpty(string) ? Bitmap.CompressFormat.valueOf(string) : null;
        if (valueOf == null) {
            valueOf = f61027z;
        }
        this.f61047t = valueOf;
        this.f61048u = bundle.getInt(d.a.f61001c, 90);
        int[] intArray = bundle.getIntArray(d.a.f61002d);
        if (intArray != null && intArray.length == 3) {
            this.f61049v = intArray;
        }
        this.f61035h.setMaxBitmapSize(bundle.getInt(d.a.f61003e, 0));
        this.f61035h.setMaxScaleMultiplier(bundle.getFloat(d.a.f61004f, 10.0f));
        this.f61035h.setImageToWrapCropBoundsAnimDuration(bundle.getInt(d.a.f61005g, 500));
        this.f61036i.setFreestyleCropEnabled(bundle.getBoolean(d.a.A, false));
        this.f61036i.setDimmedColor(bundle.getInt(d.a.f61006h, getResources().getColor(c.e.Q0)));
        this.f61036i.setCircleDimmedLayer(bundle.getBoolean(d.a.f61007i, false));
        this.f61036i.setShowCropFrame(bundle.getBoolean(d.a.f61008j, true));
        this.f61036i.setCropFrameColor(bundle.getInt(d.a.f61009k, getResources().getColor(c.e.O0)));
        this.f61036i.setCropFrameStrokeWidth(bundle.getInt(d.a.f61010l, getResources().getDimensionPixelSize(c.f.f60286q1)));
        this.f61036i.setShowCropGrid(bundle.getBoolean(d.a.f61011m, true));
        this.f61036i.setCropGridRowCount(bundle.getInt(d.a.f61012n, 2));
        this.f61036i.setCropGridColumnCount(bundle.getInt(d.a.f61013o, 2));
        this.f61036i.setCropGridColor(bundle.getInt(d.a.f61014p, getResources().getColor(c.e.P0)));
        this.f61036i.setCropGridStrokeWidth(bundle.getInt(d.a.f61015q, getResources().getDimensionPixelSize(c.f.f60289r1)));
        float f10 = bundle.getFloat(com.yalantis.ucrop.d.f60994o, -1.0f);
        float f11 = bundle.getFloat(com.yalantis.ucrop.d.f60995p, -1.0f);
        int i4 = bundle.getInt(d.a.B, 0);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d.a.C);
        if (f10 >= 0.0f && f11 >= 0.0f) {
            ViewGroup viewGroup = this.f61037j;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            float f12 = f10 / f11;
            this.f61035h.setTargetAspectRatio(Float.isNaN(f12) ? 0.0f : f12);
        } else if (parcelableArrayList != null && i4 < parcelableArrayList.size()) {
            float aspectRatioX = ((AspectRatio) parcelableArrayList.get(i4)).getAspectRatioX() / ((AspectRatio) parcelableArrayList.get(i4)).getAspectRatioY();
            this.f61035h.setTargetAspectRatio(Float.isNaN(aspectRatioX) ? 0.0f : aspectRatioX);
        } else {
            this.f61035h.setTargetAspectRatio(0.0f);
        }
        int i10 = bundle.getInt(com.yalantis.ucrop.d.f60996q, 0);
        int i11 = bundle.getInt(com.yalantis.ucrop.d.f60997r, 0);
        if (i10 <= 0 || i11 <= 0) {
            return;
        }
        this.f61035h.setMaxResultImageSizeX(i10);
        this.f61035h.setMaxResultImageSizeY(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        GestureCropImageView gestureCropImageView = this.f61035h;
        gestureCropImageView.y(-gestureCropImageView.getCurrentAngle());
        this.f61035h.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0(int i4) {
        this.f61035h.y(i4);
        this.f61035h.A();
    }

    private void o0(int i4) {
        GestureCropImageView gestureCropImageView = this.f61035h;
        int[] iArr = this.f61049v;
        boolean z9 = false;
        gestureCropImageView.setScaleEnabled(iArr[i4] == 3 || iArr[i4] == 1);
        GestureCropImageView gestureCropImageView2 = this.f61035h;
        int[] iArr2 = this.f61049v;
        gestureCropImageView2.setRotateEnabled((iArr2[i4] == 3 || iArr2[i4] == 2) ? true : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(float f10) {
        TextView textView = this.f61044q;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f10)));
        }
    }

    private void q0(int i4) {
        TextView textView = this.f61044q;
        if (textView != null) {
            textView.setTextColor(i4);
        }
    }

    private void s0(@NonNull Bundle bundle) {
        Uri uri = (Uri) bundle.getParcelable(com.yalantis.ucrop.d.f60986g);
        Uri uri2 = (Uri) bundle.getParcelable(com.yalantis.ucrop.d.f60987h);
        l0(bundle);
        if (uri != null && uri2 != null) {
            try {
                this.f61035h.o(uri, uri2);
                return;
            } catch (Exception e4) {
                this.f61028a.a(h0(e4));
                return;
            }
        }
        this.f61028a.a(h0(new NullPointerException(getString(c.m.E))));
    }

    private void t0() {
        if (this.f61032e) {
            if (this.f61037j.getVisibility() == 0) {
                w0(c.h.O1);
                return;
            } else {
                w0(c.h.Q1);
                return;
            }
        }
        o0(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u0(float f10) {
        TextView textView = this.f61045r;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f10 * 100.0f))));
        }
    }

    private void v0(int i4) {
        TextView textView = this.f61045r;
        if (textView != null) {
            textView.setTextColor(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w0(@IdRes int i4) {
        if (this.f61032e) {
            ViewGroup viewGroup = this.f61037j;
            int i10 = c.h.O1;
            viewGroup.setSelected(i4 == i10);
            ViewGroup viewGroup2 = this.f61038k;
            int i11 = c.h.P1;
            viewGroup2.setSelected(i4 == i11);
            ViewGroup viewGroup3 = this.f61039l;
            int i12 = c.h.Q1;
            viewGroup3.setSelected(i4 == i12);
            this.f61040m.setVisibility(i4 == i10 ? 0 : 8);
            this.f61041n.setVisibility(i4 == i11 ? 0 : 8);
            this.f61042o.setVisibility(i4 == i12 ? 0 : 8);
            f0(i4);
            if (i4 == i12) {
                o0(0);
            } else if (i4 == i11) {
                o0(1);
            } else {
                o0(2);
            }
        }
    }

    private void x0(@NonNull Bundle bundle, View view) {
        int i4 = bundle.getInt(d.a.B, 0);
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d.a.C);
        if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
            i4 = 2;
            parcelableArrayList = new ArrayList();
            parcelableArrayList.add(new AspectRatio(null, 1.0f, 1.0f));
            parcelableArrayList.add(new AspectRatio(null, 3.0f, 4.0f));
            parcelableArrayList.add(new AspectRatio(getString(c.m.G).toUpperCase(), 0.0f, 0.0f));
            parcelableArrayList.add(new AspectRatio(null, 3.0f, 2.0f));
            parcelableArrayList.add(new AspectRatio(null, 16.0f, 9.0f));
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(c.h.M0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it = parcelableArrayList.iterator();
        while (it.hasNext()) {
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(c.k.O, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.f61029b);
            aspectRatioTextView.setAspectRatio((AspectRatio) it.next());
            linearLayout.addView(frameLayout);
            this.f61043p.add(frameLayout);
        }
        this.f61043p.get(i4).setSelected(true);
        for (ViewGroup viewGroup : this.f61043p) {
            viewGroup.setOnClickListener(new b());
        }
    }

    private void y0(View view) {
        this.f61044q = (TextView) view.findViewById(c.h.f60433m2);
        int i4 = c.h.f60436n1;
        ((HorizontalProgressWheelView) view.findViewById(i4)).setScrollingListener(new c());
        ((HorizontalProgressWheelView) view.findViewById(i4)).setMiddleLineColor(this.f61029b);
        view.findViewById(c.h.O2).setOnClickListener(new d());
        view.findViewById(c.h.P2).setOnClickListener(new View$OnClickListenerC0498e());
        q0(this.f61029b);
    }

    private void z0(View view) {
        this.f61045r = (TextView) view.findViewById(c.h.f60437n2);
        int i4 = c.h.f60448q1;
        ((HorizontalProgressWheelView) view.findViewById(i4)).setScrollingListener(new f());
        ((HorizontalProgressWheelView) view.findViewById(i4)).setMiddleLineColor(this.f61029b);
        v0(this.f61029b);
    }

    public void B0(View view, Bundle bundle) {
        this.f61029b = bundle.getInt(d.a.f61018t, ContextCompat.getColor(getContext(), c.e.f60184c1));
        this.f61031d = bundle.getInt(d.a.f61023y, ContextCompat.getColor(getContext(), c.e.R0));
        this.f61032e = !bundle.getBoolean(d.a.f61024z, false);
        this.f61030c = bundle.getInt(d.a.D, ContextCompat.getColor(getContext(), c.e.N0));
        j0(view);
        this.f61028a.b(true);
        if (this.f61032e) {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(c.h.f60431m0);
            viewGroup.setVisibility(0);
            LayoutInflater.from(getContext()).inflate(c.k.P, viewGroup, true);
            AutoTransition autoTransition = new AutoTransition();
            this.f61033f = autoTransition;
            autoTransition.setDuration(50L);
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(c.h.O1);
            this.f61037j = viewGroup2;
            viewGroup2.setOnClickListener(this.f61051x);
            ViewGroup viewGroup3 = (ViewGroup) view.findViewById(c.h.P1);
            this.f61038k = viewGroup3;
            viewGroup3.setOnClickListener(this.f61051x);
            ViewGroup viewGroup4 = (ViewGroup) view.findViewById(c.h.Q1);
            this.f61039l = viewGroup4;
            viewGroup4.setOnClickListener(this.f61051x);
            this.f61040m = (ViewGroup) view.findViewById(c.h.M0);
            this.f61041n = (ViewGroup) view.findViewById(c.h.N0);
            this.f61042o = (ViewGroup) view.findViewById(c.h.O0);
            x0(bundle, view);
            y0(view);
            z0(view);
            A0(view);
            return;
        }
        int i4 = c.h.C2;
        ((RelativeLayout.LayoutParams) view.findViewById(i4).getLayoutParams()).bottomMargin = 0;
        view.findViewById(i4).requestLayout();
    }

    public void g0() {
        this.f61046s.setClickable(true);
        this.f61028a.b(true);
        this.f61035h.v(this.f61047t, this.f61048u, new h());
    }

    protected j h0(Throwable th) {
        return new j(96, new Intent().putExtra(com.yalantis.ucrop.d.f60993n, th));
    }

    protected j i0(Uri uri, float f10, int i4, int i10, int i11, int i12) {
        return new j(-1, new Intent().putExtra(com.yalantis.ucrop.d.f60987h, uri).putExtra(com.yalantis.ucrop.d.f60988i, f10).putExtra(com.yalantis.ucrop.d.f60989j, i11).putExtra(com.yalantis.ucrop.d.f60990k, i12).putExtra(com.yalantis.ucrop.d.f60991l, i4).putExtra(com.yalantis.ucrop.d.f60992m, i10));
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof com.yalantis.ucrop.f) {
            this.f61028a = (com.yalantis.ucrop.f) getParentFragment();
        } else if (context instanceof com.yalantis.ucrop.f) {
            this.f61028a = (com.yalantis.ucrop.f) context;
        } else {
            throw new IllegalArgumentException(context.toString() + " must implement UCropFragmentCallback");
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(c.k.Q, viewGroup, false);
        Bundle arguments = getArguments();
        B0(inflate, arguments);
        s0(arguments);
        t0();
        e0(inflate);
        return inflate;
    }

    public void r0(com.yalantis.ucrop.f fVar) {
        this.f61028a = fVar;
    }
}
