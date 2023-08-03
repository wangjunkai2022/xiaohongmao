package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.content.res.ColorStateList;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.timepicker.TimeModel;
import com.tangxiaolv.telegramgallery.m;
import com.tangxiaolv.telegramgallery.q;
import com.tangxiaolv.telegramgallery.r;

/* compiled from: PickerBottomLayout.java */
/* loaded from: classes3.dex */
public class h extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public LinearLayout f56219a;

    /* renamed from: b  reason: collision with root package name */
    public TextView f56220b;

    /* renamed from: c  reason: collision with root package name */
    public TextView f56221c;

    /* renamed from: d  reason: collision with root package name */
    public TextView f56222d;

    /* renamed from: e  reason: collision with root package name */
    public int f56223e;

    public h(Context context) {
        super(context);
        this.f56223e = 0;
        setBackgroundColor(r.f(context));
        TextView textView = new TextView(context);
        this.f56220b = textView;
        textView.setTextSize(2, 18.0f);
        this.f56220b.setTextColor(r.e(context));
        this.f56220b.setGravity(17);
        this.f56220b.setBackgroundDrawable(r.b(r.f(context)));
        this.f56220b.setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(29.0f), 0, com.tangxiaolv.telegramgallery.Utils.a.g(29.0f), 0);
        this.f56220b.setText(q.o.f58238r);
        addView(this.f56220b, com.tangxiaolv.telegramgallery.Utils.f.c(-2, -1, 51));
        LinearLayout linearLayout = new LinearLayout(context);
        this.f56219a = linearLayout;
        linearLayout.setOrientation(0);
        this.f56219a.setBackgroundDrawable(r.b(r.f(context)));
        this.f56219a.setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(29.0f), 0, com.tangxiaolv.telegramgallery.Utils.a.g(29.0f), 0);
        addView(this.f56219a, com.tangxiaolv.telegramgallery.Utils.f.c(-2, -1, 53));
        TextView textView2 = new TextView(context);
        this.f56222d = textView2;
        textView2.setTextSize(2, 12.0f);
        this.f56222d.setTextColor(-1);
        this.f56222d.setGravity(17);
        this.f56222d.setBackgroundResource(q.h.M2);
        this.f56222d.setBackgroundTintList(ColorStateList.valueOf(r.d(context)));
        this.f56222d.setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), 0, com.tangxiaolv.telegramgallery.Utils.a.g(8.0f), com.tangxiaolv.telegramgallery.Utils.a.g(1.0f));
        this.f56219a.addView(this.f56222d, com.tangxiaolv.telegramgallery.Utils.f.k(24, 24, 16, 0, 0, 8, 0));
        TextView textView3 = new TextView(context);
        this.f56221c = textView3;
        textView3.setTextSize(2, 18.0f);
        TextView textView4 = this.f56221c;
        int i4 = this.f56223e;
        textView4.setTextColor(i4 == 0 ? r.e(context) : i4);
        this.f56221c.setGravity(17);
        this.f56221c.setCompoundDrawablePadding(com.tangxiaolv.telegramgallery.Utils.a.g(8.0f));
        this.f56221c.setText(q.o.f58262x);
        this.f56219a.addView(this.f56221c, com.tangxiaolv.telegramgallery.Utils.f.j(-2, -2, 16));
    }

    public void a(int i4, boolean z9) {
        if (i4 == 0) {
            this.f56222d.setVisibility(8);
            int i10 = -6710887;
            if (z9) {
                this.f56221c.setTextColor(-6710887);
                this.f56220b.setTextColor(-6710887);
                this.f56219a.setEnabled(false);
                this.f56220b.setEnabled(false);
                return;
            }
            TextView textView = this.f56221c;
            if (m.F == 1 && (i10 = this.f56223e) == 0) {
                i10 = r.e(getContext());
            }
            textView.setTextColor(i10);
            return;
        }
        this.f56221c.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        this.f56222d.setVisibility(0);
        this.f56222d.setText(String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(i4)));
        TextView textView2 = this.f56221c;
        int i11 = this.f56223e;
        if (i11 == 0) {
            i11 = r.e(getContext());
        }
        textView2.setTextColor(i11);
        this.f56220b.setTextColor(r.e(getContext()));
        if (z9) {
            this.f56219a.setEnabled(true);
            this.f56220b.setEnabled(true);
        }
    }

    public void setActiveTextColor(int i4) {
        this.f56223e = i4;
    }
}
