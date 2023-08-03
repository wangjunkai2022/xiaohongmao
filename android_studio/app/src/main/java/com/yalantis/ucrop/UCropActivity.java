package com.yalantis.ucrop;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
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

/* loaded from: classes3.dex */
public class UCropActivity extends AppCompatActivity {
    public static final int E = 90;
    public static final Bitmap.CompressFormat F = Bitmap.CompressFormat.JPEG;
    public static final int G = 0;
    public static final int H = 1;
    public static final int I = 2;
    public static final int J = 3;
    private static final String K = "UCropActivity";
    private static final long L = 50;
    private static final int M = 3;
    private static final int N = 15000;
    private static final int O = 42;

    /* renamed from: a  reason: collision with root package name */
    private String f59949a;

    /* renamed from: b  reason: collision with root package name */
    private int f59950b;

    /* renamed from: c  reason: collision with root package name */
    private int f59951c;

    /* renamed from: d  reason: collision with root package name */
    private int f59952d;

    /* renamed from: e  reason: collision with root package name */
    private int f59953e;
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f59954f;
    @DrawableRes

    /* renamed from: g  reason: collision with root package name */
    private int f59955g;
    @DrawableRes

    /* renamed from: h  reason: collision with root package name */
    private int f59956h;

    /* renamed from: i  reason: collision with root package name */
    private int f59957i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f59958j;

    /* renamed from: l  reason: collision with root package name */
    private UCropView f59960l;

    /* renamed from: m  reason: collision with root package name */
    private GestureCropImageView f59961m;

    /* renamed from: n  reason: collision with root package name */
    private OverlayView f59962n;

    /* renamed from: o  reason: collision with root package name */
    private ViewGroup f59963o;

    /* renamed from: p  reason: collision with root package name */
    private ViewGroup f59964p;

    /* renamed from: q  reason: collision with root package name */
    private ViewGroup f59965q;

    /* renamed from: r  reason: collision with root package name */
    private ViewGroup f59966r;

    /* renamed from: s  reason: collision with root package name */
    private ViewGroup f59967s;

    /* renamed from: t  reason: collision with root package name */
    private ViewGroup f59968t;

    /* renamed from: v  reason: collision with root package name */
    private TextView f59970v;

    /* renamed from: w  reason: collision with root package name */
    private TextView f59971w;

    /* renamed from: x  reason: collision with root package name */
    private View f59972x;

    /* renamed from: y  reason: collision with root package name */
    private Transition f59973y;

    /* renamed from: k  reason: collision with root package name */
    private boolean f59959k = true;

    /* renamed from: u  reason: collision with root package name */
    private List<ViewGroup> f59969u = new ArrayList();

    /* renamed from: z  reason: collision with root package name */
    private Bitmap.CompressFormat f59974z = F;
    private int A = 90;
    private int[] B = {1, 2, 3};
    private TransformImageView.b C = new a();
    private final View.OnClickListener D = new g();

    /* loaded from: classes3.dex */
    class a implements TransformImageView.b {
        a() {
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void a() {
            UCropActivity.this.f59960l.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropActivity.this.f59972x.setClickable(false);
            UCropActivity.this.f59959k = false;
            UCropActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void b(@NonNull Exception exc) {
            UCropActivity.this.g0(exc);
            UCropActivity.this.finish();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void c(float f10) {
            UCropActivity.this.i0(f10);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.b
        public void d(float f10) {
            UCropActivity.this.c0(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.f59961m.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).b(view.isSelected()));
            UCropActivity.this.f59961m.A();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : UCropActivity.this.f59969u) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements HorizontalProgressWheelView.a {
        c() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            UCropActivity.this.f59961m.A();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropActivity.this.f59961m.u();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            UCropActivity.this.f59961m.y(f10 / 42.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.Z();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.a0(90);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class f implements HorizontalProgressWheelView.a {
        f() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void a() {
            UCropActivity.this.f59961m.A();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void b() {
            UCropActivity.this.f59961m.u();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.a
        public void c(float f10, float f11) {
            if (f10 > 0.0f) {
                UCropActivity.this.f59961m.D(UCropActivity.this.f59961m.getCurrentScale() + (f10 * ((UCropActivity.this.f59961m.getMaxScale() - UCropActivity.this.f59961m.getMinScale()) / 15000.0f)));
            } else {
                UCropActivity.this.f59961m.F(UCropActivity.this.f59961m.getCurrentScale() + (f10 * ((UCropActivity.this.f59961m.getMaxScale() - UCropActivity.this.f59961m.getMinScale()) / 15000.0f)));
            }
        }
    }

    /* loaded from: classes3.dex */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            UCropActivity.this.l0(view.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class h implements a6.a {
        h() {
        }

        @Override // a6.a
        public void a(@NonNull Uri uri, int i4, int i10, int i11, int i12) {
            UCropActivity uCropActivity = UCropActivity.this;
            uCropActivity.h0(uri, uCropActivity.f59961m.getTargetAspectRatio(), i4, i10, i11, i12);
            UCropActivity.this.finish();
        }

        @Override // a6.a
        public void b(@NonNull Throwable th) {
            UCropActivity.this.g0(th);
            UCropActivity.this.finish();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface i {
    }

    static {
        AppCompatDelegate.setCompatVectorFromResourcesEnabled(true);
    }

    private void U() {
        if (this.f59972x == null) {
            this.f59972x = new View(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(3, c.h.f60457s2);
            this.f59972x.setLayoutParams(layoutParams);
            this.f59972x.setClickable(true);
        }
        ((RelativeLayout) findViewById(c.h.D2)).addView(this.f59972x);
    }

    private void V(int i4) {
        TransitionManager.beginDelayedTransition((ViewGroup) findViewById(c.h.D2), this.f59973y);
        this.f59965q.findViewById(c.h.f60437n2).setVisibility(i4 == c.h.Q1 ? 0 : 8);
        this.f59963o.findViewById(c.h.f60429l2).setVisibility(i4 == c.h.O1 ? 0 : 8);
        this.f59964p.findViewById(c.h.f60433m2).setVisibility(i4 != c.h.P1 ? 8 : 0);
    }

    private void X() {
        UCropView uCropView = (UCropView) findViewById(c.h.B2);
        this.f59960l = uCropView;
        this.f59961m = uCropView.getCropImageView();
        this.f59962n = this.f59960l.getOverlayView();
        this.f59961m.setTransformImageListener(this.C);
        ((ImageView) findViewById(c.h.G0)).setColorFilter(this.f59957i, PorterDuff.Mode.SRC_ATOP);
        int i4 = c.h.C2;
        findViewById(i4).setBackgroundColor(this.f59954f);
        if (this.f59958j) {
            return;
        }
        ((RelativeLayout.LayoutParams) findViewById(i4).getLayoutParams()).bottomMargin = 0;
        findViewById(i4).requestLayout();
    }

    private void Y(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra(d.a.f61000b);
        Bitmap.CompressFormat valueOf = !TextUtils.isEmpty(stringExtra) ? Bitmap.CompressFormat.valueOf(stringExtra) : null;
        if (valueOf == null) {
            valueOf = F;
        }
        this.f59974z = valueOf;
        this.A = intent.getIntExtra(d.a.f61001c, 90);
        int[] intArrayExtra = intent.getIntArrayExtra(d.a.f61002d);
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.B = intArrayExtra;
        }
        this.f59961m.setMaxBitmapSize(intent.getIntExtra(d.a.f61003e, 0));
        this.f59961m.setMaxScaleMultiplier(intent.getFloatExtra(d.a.f61004f, 10.0f));
        this.f59961m.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra(d.a.f61005g, 500));
        this.f59962n.setFreestyleCropEnabled(intent.getBooleanExtra(d.a.A, false));
        this.f59962n.setDimmedColor(intent.getIntExtra(d.a.f61006h, getResources().getColor(c.e.Q0)));
        this.f59962n.setCircleDimmedLayer(intent.getBooleanExtra(d.a.f61007i, false));
        this.f59962n.setShowCropFrame(intent.getBooleanExtra(d.a.f61008j, true));
        this.f59962n.setCropFrameColor(intent.getIntExtra(d.a.f61009k, getResources().getColor(c.e.O0)));
        this.f59962n.setCropFrameStrokeWidth(intent.getIntExtra(d.a.f61010l, getResources().getDimensionPixelSize(c.f.f60286q1)));
        this.f59962n.setShowCropGrid(intent.getBooleanExtra(d.a.f61011m, true));
        this.f59962n.setCropGridRowCount(intent.getIntExtra(d.a.f61012n, 2));
        this.f59962n.setCropGridColumnCount(intent.getIntExtra(d.a.f61013o, 2));
        this.f59962n.setCropGridColor(intent.getIntExtra(d.a.f61014p, getResources().getColor(c.e.P0)));
        this.f59962n.setCropGridStrokeWidth(intent.getIntExtra(d.a.f61015q, getResources().getDimensionPixelSize(c.f.f60289r1)));
        float floatExtra = intent.getFloatExtra(com.yalantis.ucrop.d.f60994o, -1.0f);
        float floatExtra2 = intent.getFloatExtra(com.yalantis.ucrop.d.f60995p, -1.0f);
        int intExtra = intent.getIntExtra(d.a.B, 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(d.a.C);
        if (floatExtra >= 0.0f && floatExtra2 >= 0.0f) {
            ViewGroup viewGroup = this.f59963o;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            float f10 = floatExtra / floatExtra2;
            this.f59961m.setTargetAspectRatio(Float.isNaN(f10) ? 0.0f : f10);
        } else if (parcelableArrayListExtra != null && intExtra < parcelableArrayListExtra.size()) {
            float aspectRatioX = ((AspectRatio) parcelableArrayListExtra.get(intExtra)).getAspectRatioX() / ((AspectRatio) parcelableArrayListExtra.get(intExtra)).getAspectRatioY();
            this.f59961m.setTargetAspectRatio(Float.isNaN(aspectRatioX) ? 0.0f : aspectRatioX);
        } else {
            this.f59961m.setTargetAspectRatio(0.0f);
        }
        int intExtra2 = intent.getIntExtra(com.yalantis.ucrop.d.f60996q, 0);
        int intExtra3 = intent.getIntExtra(com.yalantis.ucrop.d.f60997r, 0);
        if (intExtra2 <= 0 || intExtra3 <= 0) {
            return;
        }
        this.f59961m.setMaxResultImageSizeX(intExtra2);
        this.f59961m.setMaxResultImageSizeY(intExtra3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z() {
        GestureCropImageView gestureCropImageView = this.f59961m;
        gestureCropImageView.y(-gestureCropImageView.getCurrentAngle());
        this.f59961m.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(int i4) {
        this.f59961m.y(i4);
        this.f59961m.A();
    }

    private void b0(int i4) {
        GestureCropImageView gestureCropImageView = this.f59961m;
        int[] iArr = this.B;
        boolean z9 = false;
        gestureCropImageView.setScaleEnabled(iArr[i4] == 3 || iArr[i4] == 1);
        GestureCropImageView gestureCropImageView2 = this.f59961m;
        int[] iArr2 = this.B;
        gestureCropImageView2.setRotateEnabled((iArr2[i4] == 3 || iArr2[i4] == 2) ? true : true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c0(float f10) {
        TextView textView = this.f59970v;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f10)));
        }
    }

    private void d0(int i4) {
        TextView textView = this.f59970v;
        if (textView != null) {
            textView.setTextColor(i4);
        }
    }

    private void e0(@NonNull Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra(com.yalantis.ucrop.d.f60986g);
        Uri uri2 = (Uri) intent.getParcelableExtra(com.yalantis.ucrop.d.f60987h);
        Y(intent);
        if (uri != null && uri2 != null) {
            try {
                this.f59961m.o(uri, uri2);
                return;
            } catch (Exception e4) {
                g0(e4);
                finish();
                return;
            }
        }
        g0(new NullPointerException(getString(c.m.E)));
        finish();
    }

    private void f0() {
        if (this.f59958j) {
            if (this.f59963o.getVisibility() == 0) {
                l0(c.h.O1);
                return;
            } else {
                l0(c.h.Q1);
                return;
            }
        }
        b0(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(float f10) {
        TextView textView = this.f59971w;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f10 * 100.0f))));
        }
    }

    private void j0(int i4) {
        TextView textView = this.f59971w;
        if (textView != null) {
            textView.setTextColor(i4);
        }
    }

    @TargetApi(21)
    private void k0(@ColorInt int i4) {
        Window window = getWindow();
        if (window != null) {
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0(@IdRes int i4) {
        if (this.f59958j) {
            ViewGroup viewGroup = this.f59963o;
            int i10 = c.h.O1;
            viewGroup.setSelected(i4 == i10);
            ViewGroup viewGroup2 = this.f59964p;
            int i11 = c.h.P1;
            viewGroup2.setSelected(i4 == i11);
            ViewGroup viewGroup3 = this.f59965q;
            int i12 = c.h.Q1;
            viewGroup3.setSelected(i4 == i12);
            this.f59966r.setVisibility(i4 == i10 ? 0 : 8);
            this.f59967s.setVisibility(i4 == i11 ? 0 : 8);
            this.f59968t.setVisibility(i4 == i12 ? 0 : 8);
            V(i4);
            if (i4 == i12) {
                b0(0);
            } else if (i4 == i11) {
                b0(1);
            } else {
                b0(2);
            }
        }
    }

    private void m0() {
        k0(this.f59951c);
        Toolbar toolbar = (Toolbar) findViewById(c.h.f60457s2);
        toolbar.setBackgroundColor(this.f59950b);
        toolbar.setTitleTextColor(this.f59953e);
        TextView textView = (TextView) toolbar.findViewById(c.h.f60461t2);
        textView.setTextColor(this.f59953e);
        textView.setText(this.f59949a);
        Drawable mutate = ContextCompat.getDrawable(this, this.f59955g).mutate();
        mutate.setColorFilter(this.f59953e, PorterDuff.Mode.SRC_ATOP);
        toolbar.setNavigationIcon(mutate);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    private void n0(@NonNull Intent intent) {
        int intExtra = intent.getIntExtra(d.a.B, 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(d.a.C);
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.isEmpty()) {
            intExtra = 2;
            parcelableArrayListExtra = new ArrayList();
            parcelableArrayListExtra.add(new AspectRatio(null, 1.0f, 1.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 4.0f));
            parcelableArrayListExtra.add(new AspectRatio(getString(c.m.G).toUpperCase(), 0.0f, 0.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 2.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 16.0f, 9.0f));
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(c.h.M0);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it = parcelableArrayListExtra.iterator();
        while (it.hasNext()) {
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(c.k.O, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.f59952d);
            aspectRatioTextView.setAspectRatio((AspectRatio) it.next());
            linearLayout.addView(frameLayout);
            this.f59969u.add(frameLayout);
        }
        this.f59969u.get(intExtra).setSelected(true);
        for (ViewGroup viewGroup : this.f59969u) {
            viewGroup.setOnClickListener(new b());
        }
    }

    private void o0() {
        this.f59970v = (TextView) findViewById(c.h.f60433m2);
        int i4 = c.h.f60436n1;
        ((HorizontalProgressWheelView) findViewById(i4)).setScrollingListener(new c());
        ((HorizontalProgressWheelView) findViewById(i4)).setMiddleLineColor(this.f59952d);
        findViewById(c.h.O2).setOnClickListener(new d());
        findViewById(c.h.P2).setOnClickListener(new e());
        d0(this.f59952d);
    }

    private void p0() {
        this.f59971w = (TextView) findViewById(c.h.f60437n2);
        int i4 = c.h.f60448q1;
        ((HorizontalProgressWheelView) findViewById(i4)).setScrollingListener(new f());
        ((HorizontalProgressWheelView) findViewById(i4)).setMiddleLineColor(this.f59952d);
        j0(this.f59952d);
    }

    private void q0() {
        ImageView imageView = (ImageView) findViewById(c.h.J0);
        ImageView imageView2 = (ImageView) findViewById(c.h.I0);
        ImageView imageView3 = (ImageView) findViewById(c.h.H0);
        imageView.setImageDrawable(new com.yalantis.ucrop.util.i(imageView.getDrawable(), this.f59952d));
        imageView2.setImageDrawable(new com.yalantis.ucrop.util.i(imageView2.getDrawable(), this.f59952d));
        imageView3.setImageDrawable(new com.yalantis.ucrop.util.i(imageView3.getDrawable(), this.f59952d));
    }

    private void r0(@NonNull Intent intent) {
        this.f59951c = intent.getIntExtra(d.a.f61017s, ContextCompat.getColor(this, c.e.X0));
        this.f59950b = intent.getIntExtra(d.a.f61016r, ContextCompat.getColor(this, c.e.Y0));
        this.f59952d = intent.getIntExtra(d.a.f61018t, ContextCompat.getColor(this, c.e.K0));
        this.f59953e = intent.getIntExtra(d.a.f61019u, ContextCompat.getColor(this, c.e.Z0));
        this.f59955g = intent.getIntExtra(d.a.f61021w, c.g.f60319b1);
        this.f59956h = intent.getIntExtra(d.a.f61022x, c.g.f60322c1);
        String stringExtra = intent.getStringExtra(d.a.f61020v);
        this.f59949a = stringExtra;
        if (stringExtra == null) {
            stringExtra = getResources().getString(c.m.F);
        }
        this.f59949a = stringExtra;
        this.f59957i = intent.getIntExtra(d.a.f61023y, ContextCompat.getColor(this, c.e.R0));
        this.f59958j = !intent.getBooleanExtra(d.a.f61024z, false);
        this.f59954f = intent.getIntExtra(d.a.D, ContextCompat.getColor(this, c.e.N0));
        m0();
        X();
        if (this.f59958j) {
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) findViewById(c.h.D2)).findViewById(c.h.f60431m0);
            viewGroup.setVisibility(0);
            LayoutInflater.from(this).inflate(c.k.P, viewGroup, true);
            AutoTransition autoTransition = new AutoTransition();
            this.f59973y = autoTransition;
            autoTransition.setDuration(50L);
            ViewGroup viewGroup2 = (ViewGroup) findViewById(c.h.O1);
            this.f59963o = viewGroup2;
            viewGroup2.setOnClickListener(this.D);
            ViewGroup viewGroup3 = (ViewGroup) findViewById(c.h.P1);
            this.f59964p = viewGroup3;
            viewGroup3.setOnClickListener(this.D);
            ViewGroup viewGroup4 = (ViewGroup) findViewById(c.h.Q1);
            this.f59965q = viewGroup4;
            viewGroup4.setOnClickListener(this.D);
            this.f59966r = (ViewGroup) findViewById(c.h.M0);
            this.f59967s = (ViewGroup) findViewById(c.h.N0);
            this.f59968t = (ViewGroup) findViewById(c.h.O0);
            n0(intent);
            o0();
            p0();
            q0();
        }
    }

    protected void W() {
        this.f59972x.setClickable(true);
        this.f59959k = true;
        supportInvalidateOptionsMenu();
        this.f59961m.v(this.f59974z, this.A, new h());
    }

    protected void g0(Throwable th) {
        setResult(96, new Intent().putExtra(com.yalantis.ucrop.d.f60993n, th));
    }

    protected void h0(Uri uri, float f10, int i4, int i10, int i11, int i12) {
        setResult(-1, new Intent().putExtra(com.yalantis.ucrop.d.f60987h, uri).putExtra(com.yalantis.ucrop.d.f60988i, f10).putExtra(com.yalantis.ucrop.d.f60989j, i11).putExtra(com.yalantis.ucrop.d.f60990k, i12).putExtra(com.yalantis.ucrop.d.f60991l, i4).putExtra(com.yalantis.ucrop.d.f60992m, i10));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(c.k.N);
        Intent intent = getIntent();
        r0(intent);
        e0(intent);
        f0();
        U();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(c.l.f60525a, menu);
        MenuItem findItem = menu.findItem(c.h.V0);
        Drawable icon = findItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f59953e, PorterDuff.Mode.SRC_ATOP);
                findItem.setIcon(icon);
            } catch (IllegalStateException e4) {
                Log.i(K, String.format("%s - %s", e4.getMessage(), getString(c.m.I)));
            }
            ((Animatable) findItem.getIcon()).start();
        }
        MenuItem findItem2 = menu.findItem(c.h.U0);
        Drawable drawable = ContextCompat.getDrawable(this, this.f59956h);
        if (drawable != null) {
            drawable.mutate();
            drawable.setColorFilter(this.f59953e, PorterDuff.Mode.SRC_ATOP);
            findItem2.setIcon(drawable);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == c.h.U0) {
            W();
            return true;
        } else if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        } else {
            return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(c.h.U0).setVisible(!this.f59959k);
        menu.findItem(c.h.V0).setVisible(this.f59959k);
        return super.onPrepareOptionsMenu(menu);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.f59961m;
        if (gestureCropImageView != null) {
            gestureCropImageView.u();
        }
    }
}
