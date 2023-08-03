package com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* compiled from: AbstractWheelTextAdapter.java */
/* loaded from: classes3.dex */
public abstract class b extends a {

    /* renamed from: i  reason: collision with root package name */
    public static final int f53094i = -1;

    /* renamed from: j  reason: collision with root package name */
    protected static final int f53095j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f53096k = -13487566;

    /* renamed from: l  reason: collision with root package name */
    public static final int f53097l = -9437072;

    /* renamed from: m  reason: collision with root package name */
    public static final int f53098m = 19;

    /* renamed from: b  reason: collision with root package name */
    private int f53099b;

    /* renamed from: c  reason: collision with root package name */
    private int f53100c;

    /* renamed from: d  reason: collision with root package name */
    protected Context f53101d;

    /* renamed from: e  reason: collision with root package name */
    protected LayoutInflater f53102e;

    /* renamed from: f  reason: collision with root package name */
    protected int f53103f;

    /* renamed from: g  reason: collision with root package name */
    protected int f53104g;

    /* renamed from: h  reason: collision with root package name */
    protected int f53105h;

    /* JADX INFO: Access modifiers changed from: protected */
    public b(Context context) {
        this(context, -1);
    }

    private TextView j(View view, int i4) {
        if (i4 == 0) {
            try {
                if (view instanceof TextView) {
                    return (TextView) view;
                }
            } catch (ClassCastException e4) {
                Log.e("AbstractWheelAdapter", "You must supply a resource ID for a TextView");
                throw new IllegalStateException("AbstractWheelAdapter requires the resource ID to be a TextView", e4);
            }
        }
        if (i4 != 0) {
            return (TextView) view.findViewById(i4);
        }
        return null;
    }

    private View k(int i4, ViewGroup viewGroup) {
        if (i4 != -1) {
            if (i4 != 0) {
                return this.f53102e.inflate(i4, viewGroup, false);
            }
            return null;
        }
        return new TextView(this.f53101d);
    }

    protected void c(TextView textView) {
        textView.setTextColor(this.f53099b);
        textView.setGravity(17);
        textView.setTextSize(this.f53100c);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setLines(1);
        textView.setPadding(0, 24, 0, 24);
        textView.setTypeface(Typeface.SANS_SERIF);
    }

    public int d() {
        return this.f53105h;
    }

    public int e() {
        return this.f53103f;
    }

    protected abstract CharSequence f(int i4);

    public int g() {
        return this.f53104g;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.a, com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public View getEmptyItem(View view, ViewGroup viewGroup) {
        if (view == null) {
            view = k(this.f53105h, viewGroup);
        }
        if (this.f53105h == -1 && (view instanceof TextView)) {
            c((TextView) view);
        }
        return view;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.popup.time.adapter.m
    public View getItem(int i4, View view, ViewGroup viewGroup) {
        if (i4 < 0 || i4 >= getItemsCount()) {
            return null;
        }
        if (view == null) {
            view = k(this.f53103f, viewGroup);
        }
        TextView j4 = j(view, this.f53104g);
        if (j4 != null) {
            CharSequence f10 = f(i4);
            if (f10 == null) {
                f10 = "";
            }
            j4.setText(f10);
            if (this.f53103f == -1) {
                c(j4);
            }
        }
        return view;
    }

    public int h() {
        return this.f53099b;
    }

    public int i() {
        return this.f53100c;
    }

    public void l(int i4) {
        this.f53105h = i4;
    }

    public void m(int i4) {
        this.f53103f = i4;
    }

    public void n(int i4) {
        this.f53104g = i4;
    }

    public void o(int i4) {
        this.f53099b = i4;
    }

    public void p(int i4) {
        this.f53100c = i4;
    }

    protected b(Context context, int i4) {
        this(context, i4, 0);
    }

    protected b(Context context, int i4, int i10) {
        this.f53099b = f53096k;
        this.f53100c = 19;
        this.f53101d = context;
        this.f53103f = i4;
        this.f53104g = i10;
        this.f53102e = (LayoutInflater) context.getSystemService("layout_inflater");
    }
}
