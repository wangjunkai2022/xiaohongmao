package com.tangxiaolv.telegramgallery.Actionbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.tangxiaolv.telegramgallery.Actionbar.a;
import com.tangxiaolv.telegramgallery.r;

/* compiled from: ActionBarMenu.java */
/* loaded from: classes3.dex */
public class c extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    protected com.tangxiaolv.telegramgallery.Actionbar.a f55998a;

    /* compiled from: ActionBarMenu.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.l(((Integer) view.getTag()).intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarMenu.java */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d dVar = (d) view;
            if (dVar.m()) {
                if (c.this.f55998a.f55938v.a()) {
                    dVar.u();
                }
            } else if (dVar.n()) {
                c.this.f55998a.u(dVar.t(true));
            } else {
                c.this.l(((Integer) view.getTag()).intValue());
            }
        }
    }

    /* compiled from: ActionBarMenu.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Actionbar.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0479c implements View.OnClickListener {
        View$OnClickListenerC0479c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            c.this.l(((Integer) view.getTag()).intValue());
        }
    }

    public c(Context context, com.tangxiaolv.telegramgallery.Actionbar.a aVar) {
        super(context);
        setOrientation(0);
        this.f55998a = aVar;
    }

    public View a(int i4, View view) {
        view.setTag(Integer.valueOf(i4));
        addView(view);
        view.setOnClickListener(new View$OnClickListenerC0479c());
        return view;
    }

    public d b(int i4, int i10) {
        return c(i4, i10, this.f55998a.f55935s);
    }

    public d c(int i4, int i10, int i11) {
        return d(i4, i10, i11, null, com.tangxiaolv.telegramgallery.Utils.a.g(48.0f));
    }

    public d d(int i4, int i10, int i11, Drawable drawable, int i12) {
        d dVar = new d(getContext(), this, i11);
        dVar.setTag(Integer.valueOf(i4));
        if (drawable != null) {
            dVar.f56007f.setImageDrawable(drawable);
        } else {
            dVar.f56007f.setImageResource(i10);
        }
        dVar.f56007f.setImageTintList(ColorStateList.valueOf(r.e(getContext())));
        addView(dVar);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) dVar.getLayoutParams();
        layoutParams.height = -1;
        layoutParams.width = i12;
        dVar.setLayoutParams(layoutParams);
        dVar.setOnClickListener(new b());
        return dVar;
    }

    public d e(int i4, Drawable drawable) {
        return d(i4, 0, this.f55998a.f55935s, drawable, com.tangxiaolv.telegramgallery.Utils.a.g(48.0f));
    }

    public View f(int i4, int i10) {
        View inflate = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(i10, (ViewGroup) null);
        inflate.setTag(Integer.valueOf(i4));
        addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.height = -1;
        inflate.setBackgroundDrawable(r.b(this.f55998a.f55935s));
        inflate.setLayoutParams(layoutParams);
        inflate.setOnClickListener(new a());
        return inflate;
    }

    public d g(int i4, int i10, int i11) {
        return d(i4, i10, this.f55998a.f55935s, null, i11);
    }

    public void h() {
        removeAllViews();
    }

    public void i() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof d) {
                d dVar = (d) childAt;
                if (dVar.n()) {
                    this.f55998a.u(dVar.t(false));
                    return;
                }
            }
        }
    }

    public d j(int i4) {
        View findViewWithTag = findViewWithTag(Integer.valueOf(i4));
        if (findViewWithTag instanceof d) {
            return (d) findViewWithTag;
        }
        return null;
    }

    public void k() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof d) {
                ((d) childAt).l();
            }
        }
    }

    public void l(int i4) {
        a.e eVar = this.f55998a.f55938v;
        if (eVar != null) {
            eVar.b(i4);
        }
    }

    public void m() {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof d) {
                d dVar = (d) childAt;
                if (dVar.getVisibility() != 0) {
                    continue;
                } else if (dVar.m()) {
                    dVar.u();
                    return;
                } else if (dVar.f56020s) {
                    l(((Integer) dVar.getTag()).intValue());
                    return;
                }
            }
        }
    }

    public void n(boolean z9, String str) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt instanceof d) {
                d dVar = (d) childAt;
                if (dVar.n()) {
                    if (z9) {
                        this.f55998a.u(dVar.t(true));
                    }
                    dVar.getSearchField().setText(str);
                    dVar.getSearchField().setSelection(str.length());
                    return;
                }
            }
        }
    }

    public c(Context context) {
        super(context);
    }
}
