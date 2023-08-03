package com.zhy.view.flowlayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.zhy.view.flowlayout.b;
import com.zhy.view.flowlayout.c;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class TagFlowLayout extends FlowLayout implements c.a {

    /* renamed from: q  reason: collision with root package name */
    private static final String f61253q = "TagFlowLayout";

    /* renamed from: r  reason: collision with root package name */
    private static final String f61254r = "key_choose_pos";

    /* renamed from: s  reason: collision with root package name */
    private static final String f61255s = "key_default";

    /* renamed from: j  reason: collision with root package name */
    private c f61256j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f61257k;

    /* renamed from: l  reason: collision with root package name */
    private int f61258l;

    /* renamed from: m  reason: collision with root package name */
    private MotionEvent f61259m;

    /* renamed from: n  reason: collision with root package name */
    private Set<Integer> f61260n;

    /* renamed from: o  reason: collision with root package name */
    private a f61261o;

    /* renamed from: p  reason: collision with root package name */
    private b f61262p;

    /* loaded from: classes3.dex */
    public interface a {
        void a(Set<Integer> set);
    }

    /* loaded from: classes3.dex */
    public interface b {
        boolean a(View view, int i4, FlowLayout flowLayout);
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f61257k = true;
        this.f61258l = -1;
        this.f61260n = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, b.l.I2);
        this.f61257k = obtainStyledAttributes.getBoolean(b.l.J2, true);
        this.f61258l = obtainStyledAttributes.getInt(b.l.L2, -1);
        obtainStyledAttributes.recycle();
        if (this.f61257k) {
            setClickable(true);
        }
    }

    private void b() {
        removeAllViews();
        c cVar = this.f61256j;
        HashSet<Integer> c10 = cVar.c();
        for (int i4 = 0; i4 < cVar.a(); i4++) {
            View d4 = cVar.d(this, i4, cVar.b(i4));
            d dVar = new d(getContext());
            d4.setDuplicateParentStateEnabled(true);
            if (d4.getLayoutParams() != null) {
                dVar.setLayoutParams(d4.getLayoutParams());
            } else {
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
                marginLayoutParams.setMargins(c(getContext(), 5.0f), c(getContext(), 5.0f), c(getContext(), 5.0f), c(getContext(), 5.0f));
                dVar.setLayoutParams(marginLayoutParams);
            }
            dVar.addView(d4);
            addView(dVar);
            if (c10.contains(Integer.valueOf(i4))) {
                dVar.setChecked(true);
            }
            if (this.f61256j.g(i4, cVar.b(i4))) {
                this.f61260n.add(Integer.valueOf(i4));
                dVar.setChecked(true);
            }
        }
        this.f61260n.addAll(c10);
    }

    public static int c(Context context, float f10) {
        return (int) ((f10 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void d(d dVar, int i4) {
        if (this.f61257k) {
            if (!dVar.isChecked()) {
                if (this.f61258l == 1 && this.f61260n.size() == 1) {
                    Integer next = this.f61260n.iterator().next();
                    ((d) getChildAt(next.intValue())).setChecked(false);
                    dVar.setChecked(true);
                    this.f61260n.remove(next);
                    this.f61260n.add(Integer.valueOf(i4));
                } else if (this.f61258l > 0 && this.f61260n.size() >= this.f61258l) {
                    return;
                } else {
                    dVar.setChecked(true);
                    this.f61260n.add(Integer.valueOf(i4));
                }
            } else {
                dVar.setChecked(false);
                this.f61260n.remove(Integer.valueOf(i4));
            }
            a aVar = this.f61261o;
            if (aVar != null) {
                aVar.a(new HashSet(this.f61260n));
            }
        }
    }

    private d e(int i4, int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            d dVar = (d) getChildAt(i11);
            if (dVar.getVisibility() != 8) {
                Rect rect = new Rect();
                dVar.getHitRect(rect);
                if (rect.contains(i4, i10)) {
                    return dVar;
                }
            }
        }
        return null;
    }

    private int f(View view) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            if (getChildAt(i4) == view) {
                return i4;
            }
        }
        return -1;
    }

    @Override // com.zhy.view.flowlayout.c.a
    public void a() {
        this.f61260n.clear();
        b();
    }

    public c getAdapter() {
        return this.f61256j;
    }

    public Set<Integer> getSelectedList() {
        return new HashSet(this.f61260n);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zhy.view.flowlayout.FlowLayout, android.view.View
    public void onMeasure(int i4, int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            d dVar = (d) getChildAt(i11);
            if (dVar.getVisibility() != 8 && dVar.getTagView().getVisibility() == 8) {
                dVar.setVisibility(8);
            }
        }
        super.onMeasure(i4, i10);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            String string = bundle.getString(f61254r);
            if (!TextUtils.isEmpty(string)) {
                for (String str : string.split("\\|")) {
                    int parseInt = Integer.parseInt(str);
                    this.f61260n.add(Integer.valueOf(parseInt));
                    d dVar = (d) getChildAt(parseInt);
                    if (dVar != null) {
                        dVar.setChecked(true);
                    }
                }
            }
            super.onRestoreInstanceState(bundle.getParcelable(f61255s));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(f61255s, super.onSaveInstanceState());
        String str = "";
        if (this.f61260n.size() > 0) {
            for (Integer num : this.f61260n) {
                str = str + num.intValue() + "|";
            }
            str = str.substring(0, str.length() - 1);
        }
        bundle.putString(f61254r, str);
        return bundle;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.f61259m = MotionEvent.obtain(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean performClick() {
        MotionEvent motionEvent = this.f61259m;
        if (motionEvent == null) {
            return super.performClick();
        }
        this.f61259m = null;
        d e4 = e((int) motionEvent.getX(), (int) this.f61259m.getY());
        int f10 = f(e4);
        if (e4 != null) {
            d(e4, f10);
            b bVar = this.f61262p;
            if (bVar != null) {
                return bVar.a(e4.getTagView(), f10, this);
            }
            return true;
        }
        return true;
    }

    public void setAdapter(c cVar) {
        this.f61256j = cVar;
        cVar.f(this);
        this.f61260n.clear();
        b();
    }

    public void setMaxSelectCount(int i4) {
        if (this.f61260n.size() > i4) {
            Log.w(f61253q, "you has already select more than " + i4 + " views , so it will be clear .");
            this.f61260n.clear();
        }
        this.f61258l = i4;
    }

    public void setOnSelectListener(a aVar) {
        this.f61261o = aVar;
        if (aVar != null) {
            setClickable(true);
        }
    }

    public void setOnTagClickListener(b bVar) {
        this.f61262p = bVar;
        if (bVar != null) {
            setClickable(true);
        }
    }

    public TagFlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TagFlowLayout(Context context) {
        this(context, null);
    }
}
