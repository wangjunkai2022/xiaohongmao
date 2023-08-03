package com.tangxiaolv.telegramgallery.Actionbar;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.tangxiaolv.telegramgallery.r;
import java.util.ArrayList;

/* compiled from: ActionBar.java */
/* loaded from: classes3.dex */
public class a extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TextView f55917a;

    /* renamed from: b  reason: collision with root package name */
    private FrameLayout f55918b;

    /* renamed from: c  reason: collision with root package name */
    private ImageView f55919c;

    /* renamed from: d  reason: collision with root package name */
    private h f55920d;

    /* renamed from: e  reason: collision with root package name */
    private h f55921e;

    /* renamed from: f  reason: collision with root package name */
    private View f55922f;

    /* renamed from: g  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.c f55923g;

    /* renamed from: h  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.c f55924h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f55925i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55926j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f55927k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f55928l;

    /* renamed from: m  reason: collision with root package name */
    private int f55929m;

    /* renamed from: n  reason: collision with root package name */
    private AnimatorSet f55930n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f55931o;

    /* renamed from: p  reason: collision with root package name */
    private CharSequence f55932p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f55933q;

    /* renamed from: r  reason: collision with root package name */
    protected boolean f55934r;

    /* renamed from: s  reason: collision with root package name */
    protected int f55935s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f55936t;

    /* renamed from: u  reason: collision with root package name */
    protected f f55937u;

    /* renamed from: v  reason: collision with root package name */
    public e f55938v;

    /* renamed from: w  reason: collision with root package name */
    private Point f55939w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBar.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Actionbar.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class View$OnClickListenerC0477a implements View.OnClickListener {
        View$OnClickListenerC0477a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.f55934r) {
                aVar.i();
                return;
            }
            e eVar = aVar.f55938v;
            if (eVar != null) {
                eVar.b(-1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBar.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            a aVar = a.this;
            if (aVar.f55934r) {
                aVar.i();
                return;
            }
            e eVar = aVar.f55938v;
            if (eVar != null) {
                eVar.b(-1);
            }
        }
    }

    /* compiled from: ActionBar.java */
    /* loaded from: classes3.dex */
    class c extends com.tangxiaolv.telegramgallery.a {
        c() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (a.this.f55930n == null || !a.this.f55930n.equals(animator)) {
                return;
            }
            a.this.f55930n = null;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f55930n == null || !a.this.f55930n.equals(animator)) {
                return;
            }
            a.this.f55930n = null;
            if (a.this.f55920d != null) {
                a.this.f55920d.setVisibility(4);
            }
            if (a.this.f55921e != null) {
                a.this.f55921e.setVisibility(4);
            }
            if (a.this.f55923g != null) {
                a.this.f55923g.setVisibility(4);
            }
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.f55924h.setVisibility(0);
            if (!a.this.f55925i || a.this.f55922f == null) {
                return;
            }
            a.this.f55922f.setVisibility(0);
        }
    }

    /* compiled from: ActionBar.java */
    /* loaded from: classes3.dex */
    class d extends com.tangxiaolv.telegramgallery.a {
        d() {
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (a.this.f55930n == null || !a.this.f55930n.equals(animator)) {
                return;
            }
            a.this.f55930n = null;
        }

        @Override // com.tangxiaolv.telegramgallery.a, android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (a.this.f55930n == null || !a.this.f55930n.equals(animator)) {
                return;
            }
            a.this.f55930n = null;
            a.this.f55924h.setVisibility(4);
            if (!a.this.f55925i || a.this.f55922f == null) {
                return;
            }
            a.this.f55922f.setVisibility(4);
        }
    }

    /* compiled from: ActionBar.java */
    /* loaded from: classes3.dex */
    public static class e {
        public boolean a() {
            return true;
        }

        public void b(int i4) {
        }
    }

    public a(Context context) {
        super(context);
        this.f55925i = true;
        this.f55927k = true;
        this.f55928l = true;
        this.f55933q = true;
    }

    public static int getCurrentActionBarHeight() {
        if (com.tangxiaolv.telegramgallery.Utils.a.z()) {
            return com.tangxiaolv.telegramgallery.Utils.a.g(64.0f);
        }
        if (com.tangxiaolv.telegramgallery.e.f56717a.getResources().getConfiguration().orientation == 2) {
            return com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        }
        return com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
    }

    private void k() {
        if (this.f55919c != null) {
            return;
        }
        this.f55918b = new FrameLayout(getContext());
        ImageView imageView = new ImageView(getContext());
        this.f55919c = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        this.f55919c.setBackgroundDrawable(r.b(this.f55935s));
        FrameLayout.LayoutParams a10 = com.tangxiaolv.telegramgallery.Utils.f.a(28, 30.0f);
        a10.gravity = 16;
        a10.setMargins(com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), 0, 0, 0);
        this.f55918b.addView(this.f55919c, a10);
        addView(this.f55918b, com.tangxiaolv.telegramgallery.Utils.f.c(54, 54, 51));
        this.f55918b.setOnClickListener(new View$OnClickListenerC0477a());
    }

    private void l(String str) {
        if (this.f55917a != null) {
            return;
        }
        this.f55918b = new FrameLayout(getContext());
        TextView textView = new TextView(getContext());
        this.f55917a = textView;
        textView.setText(str);
        this.f55917a.setTextSize(18.0f);
        this.f55917a.setTextColor(r.e(getContext()));
        this.f55917a.setGravity(16);
        this.f55917a.setLayoutParams(com.tangxiaolv.telegramgallery.Utils.f.b(-2, -1.0f, 51, 8.0f, 0.0f, 0.0f, 0.0f));
        this.f55918b.addView(this.f55917a);
        this.f55918b.setLayoutParams(com.tangxiaolv.telegramgallery.Utils.f.a(-2, -1.0f));
        addView(this.f55918b);
        this.f55918b.setOnClickListener(new b());
    }

    private void n() {
        if (this.f55920d != null) {
            return;
        }
        h hVar = new h(getContext());
        this.f55920d = hVar;
        hVar.setGravity(19);
        this.f55920d.setTextColor(r.e(getContext()));
        this.f55920d.setTextSize(32);
        addView(this.f55920d, 0, com.tangxiaolv.telegramgallery.Utils.f.c(-2, -2, 51));
    }

    private void o() {
        if (this.f55921e != null) {
            return;
        }
        h hVar = new h(getContext());
        this.f55921e = hVar;
        hVar.setGravity(3);
        this.f55921e.setTextColor(r.d(getContext()));
        addView(this.f55921e, 0, com.tangxiaolv.telegramgallery.Utils.f.c(-2, -2, 51));
    }

    public boolean getAddToContainer() {
        return this.f55927k;
    }

    public boolean getCastShadows() {
        return this.f55933q;
    }

    public boolean getOccupyStatusBar() {
        return this.f55925i;
    }

    public h getSubtitleTextView() {
        return this.f55921e;
    }

    public String getTitle() {
        h hVar = this.f55920d;
        if (hVar == null) {
            return null;
        }
        return hVar.getText().toString();
    }

    public h getTitleTextView() {
        return this.f55920d;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void i() {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar;
        if (!this.f55934r || (cVar = this.f55923g) == null) {
            return;
        }
        cVar.i();
    }

    public com.tangxiaolv.telegramgallery.Actionbar.c j() {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55924h;
        if (cVar != null) {
            return cVar;
        }
        com.tangxiaolv.telegramgallery.Actionbar.c cVar2 = new com.tangxiaolv.telegramgallery.Actionbar.c(getContext(), this);
        this.f55924h = cVar2;
        cVar2.setBackgroundColor(-1);
        addView(this.f55924h, indexOfChild(this.f55918b));
        this.f55924h.setPadding(0, this.f55925i ? com.tangxiaolv.telegramgallery.Utils.a.f56373b : 0, 0, 0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f55924h.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        layoutParams.gravity = 5;
        this.f55924h.setLayoutParams(layoutParams);
        this.f55924h.setVisibility(4);
        if (this.f55925i && this.f55922f == null) {
            View view = new View(getContext());
            this.f55922f = view;
            view.setBackgroundColor(-1728053248);
            addView(this.f55922f);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f55922f.getLayoutParams();
            layoutParams2.height = com.tangxiaolv.telegramgallery.Utils.a.f56373b;
            layoutParams2.width = -1;
            layoutParams2.gravity = 51;
            this.f55922f.setLayoutParams(layoutParams2);
            this.f55922f.setVisibility(4);
        }
        return this.f55924h;
    }

    public com.tangxiaolv.telegramgallery.Actionbar.c m() {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55923g;
        if (cVar != null) {
            return cVar;
        }
        this.f55939w = com.tangxiaolv.telegramgallery.Utils.a.q();
        com.tangxiaolv.telegramgallery.Actionbar.c cVar2 = new com.tangxiaolv.telegramgallery.Actionbar.c(getContext(), this);
        this.f55923g = cVar2;
        addView(cVar2, 0, com.tangxiaolv.telegramgallery.Utils.f.c(-2, -1, 5));
        return this.f55923g;
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x018a  */
    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r16, int r17, int r18, int r19, int r20) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Actionbar.a.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i4, int i10) {
        int g4;
        h hVar;
        int makeMeasureSpec;
        int size = View.MeasureSpec.getSize(i4);
        View.MeasureSpec.getSize(i10);
        int currentActionBarHeight = getCurrentActionBarHeight();
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(currentActionBarHeight, 1073741824);
        setMeasuredDimension(size, currentActionBarHeight + this.f55929m);
        FrameLayout frameLayout = this.f55918b;
        if (frameLayout != null && frameLayout.getVisibility() != 8) {
            this.f55918b.measure(View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(72.0f), 1073741824), makeMeasureSpec2);
            g4 = com.tangxiaolv.telegramgallery.Utils.a.g(com.tangxiaolv.telegramgallery.Utils.a.z() ? 80.0f : 72.0f);
        } else {
            g4 = com.tangxiaolv.telegramgallery.Utils.a.g(com.tangxiaolv.telegramgallery.Utils.a.z() ? 26.0f : 18.0f);
        }
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55923g;
        if (cVar != null && cVar.getVisibility() != 8) {
            if (this.f55934r) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - com.tangxiaolv.telegramgallery.Utils.a.g(com.tangxiaolv.telegramgallery.Utils.a.z() ? 74.0f : 66.0f), 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            }
            this.f55923g.measure(makeMeasureSpec, makeMeasureSpec2);
        }
        h hVar2 = this.f55920d;
        if ((hVar2 != null && hVar2.getVisibility() != 8) || ((hVar = this.f55921e) != null && hVar.getVisibility() != 8)) {
            com.tangxiaolv.telegramgallery.Actionbar.c cVar2 = this.f55923g;
            int measuredWidth = ((size - (cVar2 != null ? cVar2.getMeasuredWidth() : 0)) - com.tangxiaolv.telegramgallery.Utils.a.g(16.0f)) - g4;
            h hVar3 = this.f55920d;
            if (hVar3 != null && hVar3.getVisibility() != 8) {
                this.f55920d.setTextSize((com.tangxiaolv.telegramgallery.Utils.a.z() || getResources().getConfiguration().orientation != 2) ? 20 : 18);
                this.f55920d.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(24.0f), Integer.MIN_VALUE));
            }
            h hVar4 = this.f55921e;
            if (hVar4 != null && hVar4.getVisibility() != 8) {
                this.f55921e.setTextSize((com.tangxiaolv.telegramgallery.Utils.a.z() || getResources().getConfiguration().orientation != 2) ? 16 : 14);
                this.f55921e.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(20.0f), Integer.MIN_VALUE));
            }
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8 && childAt != this.f55920d && childAt != this.f55921e && childAt != this.f55923g && childAt != this.f55918b) {
                measureChildWithMargins(childAt, i4, 0, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824), 0);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent) || this.f55928l;
    }

    public void p() {
        View view;
        if (this.f55924h == null || !this.f55926j) {
            return;
        }
        this.f55926j = false;
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f55924h, "alpha", 0.0f));
        if (this.f55925i && (view = this.f55922f) != null) {
            arrayList.add(ObjectAnimator.ofFloat(view, "alpha", 0.0f));
        }
        AnimatorSet animatorSet = this.f55930n;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f55930n = animatorSet2;
        animatorSet2.playTogether(arrayList);
        this.f55930n.setDuration(200L);
        this.f55930n.addListener(new d());
        this.f55930n.start();
        h hVar = this.f55920d;
        if (hVar != null) {
            hVar.setVisibility(0);
        }
        h hVar2 = this.f55921e;
        if (hVar2 != null) {
            hVar2.setVisibility(0);
        }
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55923g;
        if (cVar != null) {
            cVar.setVisibility(0);
        }
        ImageView imageView = this.f55919c;
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof com.tangxiaolv.telegramgallery.Actionbar.e) {
                ((com.tangxiaolv.telegramgallery.Actionbar.e) drawable).a(0.0f, true);
            }
            this.f55919c.setBackgroundDrawable(r.b(this.f55935s));
        }
    }

    public boolean q() {
        return this.f55924h != null && this.f55926j;
    }

    public boolean r() {
        return this.f55934r;
    }

    public void s() {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55923g;
        if (cVar != null) {
            cVar.m();
        }
    }

    public void setActionBarMenuOnItemClick(e eVar) {
        this.f55938v = eVar;
    }

    public void setAddToContainer(boolean z9) {
        this.f55927k = z9;
    }

    public void setAllowOverlayTitle(boolean z9) {
        this.f55931o = z9;
    }

    public void setBackButtonDrawable(Drawable drawable) {
        if (this.f55919c == null) {
            k();
        }
        this.f55919c.setVisibility(drawable == null ? 8 : 0);
        this.f55919c.setImageDrawable(drawable);
        if (drawable instanceof com.tangxiaolv.telegramgallery.Actionbar.e) {
            ((com.tangxiaolv.telegramgallery.Actionbar.e) drawable).a(q() ? 1.0f : 0.0f, false);
        }
    }

    public void setBackButtonImage(int i4) {
        if (this.f55919c == null) {
            k();
        }
        this.f55919c.setVisibility(i4 == 0 ? 8 : 0);
        this.f55919c.setBackgroundResource(i4);
        this.f55919c.setBackgroundTintList(ColorStateList.valueOf(r.e(getContext())));
    }

    public void setBackText(String str) {
        if (this.f55917a == null) {
            l(str);
        }
    }

    public void setCastShadows(boolean z9) {
        this.f55933q = z9;
    }

    public void setExtraHeight(int i4) {
        this.f55929m = i4;
    }

    public void setInterceptTouches(boolean z9) {
        this.f55928l = z9;
    }

    public void setItemsBackgroundColor(int i4) {
        this.f55935s = i4;
        ImageView imageView = this.f55919c;
        if (imageView != null) {
            imageView.setBackgroundDrawable(r.b(i4));
        }
    }

    public void setOccupyStatusBar(boolean z9) {
        this.f55925i = z9;
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55924h;
        if (cVar != null) {
            cVar.setPadding(0, z9 ? com.tangxiaolv.telegramgallery.Utils.a.f56373b : 0, 0, 0);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (charSequence != null && this.f55921e == null) {
            o();
        }
        h hVar = this.f55921e;
        if (hVar != null) {
            hVar.setVisibility((charSequence == null || this.f55934r) ? 4 : 0);
            this.f55921e.setText(charSequence);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null && this.f55920d == null) {
            n();
        }
        h hVar = this.f55920d;
        if (hVar != null) {
            this.f55932p = charSequence;
            hVar.setVisibility((charSequence == null || this.f55934r) ? 4 : 0);
            this.f55920d.setText(charSequence);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.CharSequence] */
    public void setTitleOverlayText(String str) {
        if (this.f55931o) {
            String str2 = str;
            if (this.f55937u.f56044d == null) {
                return;
            }
            if (str == null) {
                str2 = this.f55932p;
            }
            if (str2 != null && this.f55920d == null) {
                n();
            }
            h hVar = this.f55920d;
            if (hVar != null) {
                hVar.setVisibility((str2 == null || this.f55934r) ? 4 : 0);
                this.f55920d.setText(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void t() {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55923g;
        if (cVar != null) {
            cVar.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void u(boolean z9) {
        this.f55934r = z9;
        h hVar = this.f55920d;
        if (hVar != null) {
            hVar.setVisibility(z9 ? 4 : 0);
        }
        h hVar2 = this.f55921e;
        if (hVar2 != null) {
            hVar2.setVisibility(z9 ? 4 : 0);
        }
        Drawable drawable = this.f55919c.getDrawable();
        if (drawable == null || !(drawable instanceof g)) {
            return;
        }
        ((g) drawable).a(z9 ? 1.0f : 0.0f, true);
    }

    public void v(String str) {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f55923g;
        if (cVar == null || str == null) {
            return;
        }
        cVar.n(!this.f55934r, str);
    }

    public void w() {
        View view;
        if (this.f55924h == null || this.f55926j) {
            return;
        }
        this.f55926j = true;
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.f55924h, "alpha", 0.0f, 1.0f));
        if (this.f55925i && (view = this.f55922f) != null) {
            arrayList.add(ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f));
        }
        AnimatorSet animatorSet = this.f55930n;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f55930n = animatorSet2;
        animatorSet2.playTogether(arrayList);
        this.f55930n.setDuration(200L);
        this.f55930n.addListener(new c());
        this.f55930n.start();
        ImageView imageView = this.f55919c;
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof com.tangxiaolv.telegramgallery.Actionbar.e) {
                ((com.tangxiaolv.telegramgallery.Actionbar.e) drawable).a(1.0f, true);
            }
            this.f55919c.setBackgroundDrawable(r.b(r.e(getContext())));
        }
    }

    public void x() {
        if (this.f55925i && this.f55922f == null) {
            View view = new View(getContext());
            this.f55922f = view;
            view.setBackgroundColor(-1728053248);
            addView(this.f55922f);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f55922f.getLayoutParams();
            layoutParams.height = com.tangxiaolv.telegramgallery.Utils.a.f56373b;
            layoutParams.width = -1;
            layoutParams.gravity = 51;
            this.f55922f.setLayoutParams(layoutParams);
        }
    }
}
