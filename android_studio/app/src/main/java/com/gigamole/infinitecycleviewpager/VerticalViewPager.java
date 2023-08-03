package com.gigamole.infinitecycleviewpager;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import androidx.core.os.ParcelableCompat;
import androidx.core.os.ParcelableCompatCreatorCallbacks;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.KeyEventCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.VelocityTrackerCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public class VerticalViewPager extends ViewGroup {
    private static final int E2 = 600;
    private static final int F2 = 25;
    private static final int G2 = 16;
    private static final int H2 = 400;
    private static final int L2 = -1;
    private static final int M2 = 2;
    private static final int N2 = 0;
    private static final int O2 = 1;
    private static final int P2 = 2;
    public static final int R2 = 0;
    public static final int S2 = 1;
    public static final int T2 = 2;

    /* renamed from: g2  reason: collision with root package name */
    private static final String f16132g2 = "VerticalViewPager";

    /* renamed from: p2  reason: collision with root package name */
    private static final boolean f16133p2 = false;

    /* renamed from: x2  reason: collision with root package name */
    private static final boolean f16134x2 = false;

    /* renamed from: y2  reason: collision with root package name */
    private static final int f16135y2 = 1;
    private int A;
    private int B;
    private int C;
    private float D;
    private float E;
    private float F;
    private float G;
    private int H;
    private VelocityTracker I;
    private int J;
    private int K;
    private int L;
    private int M;
    private boolean N;
    private long O;
    private EdgeEffectCompat P;
    private EdgeEffectCompat Q;
    private boolean R;
    private boolean S;
    private boolean T;
    private ArrayList<View> T1;
    private int U;
    private List<ViewPager.OnPageChangeListener> V;
    private final Runnable V1;
    private ViewPager.OnPageChangeListener W;

    /* renamed from: a  reason: collision with root package name */
    private int f16136a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<e> f16137b;

    /* renamed from: b1  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f16138b1;

    /* renamed from: b2  reason: collision with root package name */
    private int f16139b2;

    /* renamed from: c  reason: collision with root package name */
    private final e f16140c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f16141d;

    /* renamed from: e  reason: collision with root package name */
    private PagerAdapter f16142e;

    /* renamed from: f  reason: collision with root package name */
    private int f16143f;

    /* renamed from: g  reason: collision with root package name */
    private int f16144g;

    /* renamed from: g1  reason: collision with root package name */
    private g f16145g1;

    /* renamed from: h  reason: collision with root package name */
    private Parcelable f16146h;

    /* renamed from: i  reason: collision with root package name */
    private ClassLoader f16147i;

    /* renamed from: j  reason: collision with root package name */
    private Scroller f16148j;

    /* renamed from: k  reason: collision with root package name */
    private h f16149k;

    /* renamed from: l  reason: collision with root package name */
    private int f16150l;

    /* renamed from: m  reason: collision with root package name */
    private Drawable f16151m;

    /* renamed from: n  reason: collision with root package name */
    private int f16152n;

    /* renamed from: o  reason: collision with root package name */
    private int f16153o;

    /* renamed from: p  reason: collision with root package name */
    private float f16154p;

    /* renamed from: p1  reason: collision with root package name */
    private ViewPager.PageTransformer f16155p1;

    /* renamed from: q  reason: collision with root package name */
    private float f16156q;

    /* renamed from: r  reason: collision with root package name */
    private int f16157r;

    /* renamed from: s  reason: collision with root package name */
    private int f16158s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f16159t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f16160u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f16161v;

    /* renamed from: w  reason: collision with root package name */
    private int f16162w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f16163x;

    /* renamed from: x1  reason: collision with root package name */
    private Method f16164x1;

    /* renamed from: y  reason: collision with root package name */
    private boolean f16165y;

    /* renamed from: y1  reason: collision with root package name */
    private int f16166y1;

    /* renamed from: z  reason: collision with root package name */
    private boolean f16167z;
    private static final int[] I2 = {16842931};
    private static final Comparator<e> J2 = new a();
    private static final Interpolator K2 = new b();
    private static final i Q2 = new i();

    /* loaded from: classes2.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new a());
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        /* loaded from: classes2.dex */
        static class a implements ParcelableCompatCreatorCallbacks<SavedState> {
            a() {
            }

            @Override // androidx.core.os.ParcelableCompatCreatorCallbacks
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // androidx.core.os.ParcelableCompatCreatorCallbacks
            /* renamed from: b */
            public SavedState[] newArray(int i4) {
                return new SavedState[i4];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + com.alipay.sdk.util.i.f6967d;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i4);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
            this.loader = classLoader;
        }
    }

    /* loaded from: classes2.dex */
    static class a implements Comparator<e> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(e eVar, e eVar2) {
            return eVar.f16176b - eVar2.f16176b;
        }
    }

    /* loaded from: classes2.dex */
    static class b implements Interpolator {
        b() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            VerticalViewPager.this.setScrollState(0);
            VerticalViewPager.this.H();
        }
    }

    /* loaded from: classes2.dex */
    interface d {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        Object f16175a;

        /* renamed from: b  reason: collision with root package name */
        int f16176b;

        /* renamed from: c  reason: collision with root package name */
        boolean f16177c;

        /* renamed from: d  reason: collision with root package name */
        float f16178d;

        /* renamed from: e  reason: collision with root package name */
        float f16179e;

        e() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends AccessibilityDelegateCompat {
        f() {
        }

        private boolean canScroll() {
            return VerticalViewPager.this.f16142e != null && VerticalViewPager.this.f16142e.getCount() > 1;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            AccessibilityRecordCompat obtain = AccessibilityRecordCompat.obtain();
            obtain.setScrollable(canScroll());
            if (accessibilityEvent.getEventType() != 4096 || VerticalViewPager.this.f16142e == null) {
                return;
            }
            obtain.setItemCount(VerticalViewPager.this.f16142e.getCount());
            obtain.setFromIndex(VerticalViewPager.this.f16143f);
            obtain.setToIndex(VerticalViewPager.this.f16143f);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(canScroll());
            if (VerticalViewPager.this.z(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (VerticalViewPager.this.z(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
            if (super.performAccessibilityAction(view, i4, bundle)) {
                return true;
            }
            if (i4 != 4096) {
                if (i4 == 8192 && VerticalViewPager.this.z(-1)) {
                    VerticalViewPager verticalViewPager = VerticalViewPager.this;
                    verticalViewPager.setCurrentItem(verticalViewPager.f16143f - 1);
                    return true;
                }
                return false;
            } else if (VerticalViewPager.this.z(1)) {
                VerticalViewPager verticalViewPager2 = VerticalViewPager.this;
                verticalViewPager2.setCurrentItem(verticalViewPager2.f16143f + 1);
                return true;
            } else {
                return false;
            }
        }
    }

    /* loaded from: classes2.dex */
    interface g {
        void a(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2);
    }

    /* loaded from: classes2.dex */
    private class h extends DataSetObserver {
        private h() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            VerticalViewPager.this.k();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            VerticalViewPager.this.k();
        }

        /* synthetic */ h(VerticalViewPager verticalViewPager, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class i implements Comparator<View> {
        i() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z9 = layoutParams.f16168a;
            if (z9 != layoutParams2.f16168a) {
                return z9 ? 1 : -1;
            }
            return layoutParams.f16172e - layoutParams2.f16172e;
        }
    }

    public VerticalViewPager(Context context) {
        super(context);
        this.f16137b = new ArrayList<>();
        this.f16140c = new e();
        this.f16141d = new Rect();
        this.f16144g = -1;
        this.f16146h = null;
        this.f16147i = null;
        this.f16154p = -3.4028235E38f;
        this.f16156q = Float.MAX_VALUE;
        this.f16162w = 1;
        this.H = -1;
        this.R = true;
        this.S = false;
        this.V1 = new c();
        this.f16139b2 = 0;
        y();
    }

    private boolean A(float f10, float f11) {
        return (f10 < ((float) this.B) && f11 > 0.0f) || (f10 > ((float) (getHeight() - this.B)) && f11 < 0.0f);
    }

    private void C(MotionEvent motionEvent) {
        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, actionIndex) == this.H) {
            int i4 = actionIndex == 0 ? 1 : 0;
            this.E = MotionEventCompat.getY(motionEvent, i4);
            this.H = MotionEventCompat.getPointerId(motionEvent, i4);
            VelocityTracker velocityTracker = this.I;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private boolean E(int i4) {
        if (this.f16137b.size() == 0) {
            this.T = false;
            B(0, 0.0f, 0);
            if (this.T) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        e w9 = w();
        int clientHeight = getClientHeight();
        int i10 = this.f16150l;
        int i11 = clientHeight + i10;
        float f10 = clientHeight;
        int i12 = w9.f16176b;
        float f11 = ((i4 / f10) - w9.f16179e) / (w9.f16178d + (i10 / f10));
        this.T = false;
        B(i12, f11, (int) (i11 * f11));
        if (this.T) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private boolean G(float f10) {
        boolean z9;
        float f11 = this.E - f10;
        this.E = f10;
        float scrollY = getScrollY() + f11;
        float clientHeight = getClientHeight();
        float f12 = this.f16154p * clientHeight;
        float f13 = this.f16156q * clientHeight;
        e eVar = this.f16137b.get(0);
        ArrayList<e> arrayList = this.f16137b;
        boolean z10 = true;
        e eVar2 = arrayList.get(arrayList.size() - 1);
        if (eVar.f16176b != 0) {
            f12 = eVar.f16179e * clientHeight;
            z9 = false;
        } else {
            z9 = true;
        }
        if (eVar2.f16176b != this.f16142e.getCount() - 1) {
            f13 = eVar2.f16179e * clientHeight;
            z10 = false;
        }
        if (scrollY < f12) {
            r4 = z9 ? this.P.onPull(Math.abs(f12 - scrollY) / clientHeight) : false;
            scrollY = f12;
        } else if (scrollY > f13) {
            r4 = z10 ? this.Q.onPull(Math.abs(scrollY - f13) / clientHeight) : false;
            scrollY = f13;
        }
        int i4 = (int) scrollY;
        this.D += scrollY - i4;
        scrollTo(getScrollX(), i4);
        E(i4);
        return r4;
    }

    private void J(int i4, int i10, int i11, int i12) {
        if (i10 > 0 && !this.f16137b.isEmpty()) {
            int scrollY = (int) ((getScrollY() / (((i10 - getPaddingTop()) - getPaddingBottom()) + i12)) * (((i4 - getPaddingTop()) - getPaddingBottom()) + i11));
            scrollTo(getScrollX(), scrollY);
            if (this.f16148j.isFinished()) {
                return;
            }
            this.f16148j.startScroll(0, scrollY, 0, (int) (x(this.f16143f).f16179e * i4), this.f16148j.getDuration() - this.f16148j.timePassed());
            return;
        }
        e x9 = x(this.f16143f);
        int min = (int) ((x9 != null ? Math.min(x9.f16179e, this.f16156q) : 0.0f) * ((i4 - getPaddingTop()) - getPaddingBottom()));
        if (min != getScrollY()) {
            j(false);
            scrollTo(getScrollX(), min);
        }
    }

    private void K() {
        int i4 = 0;
        while (i4 < getChildCount()) {
            if (!((LayoutParams) getChildAt(i4).getLayoutParams()).f16168a) {
                removeViewAt(i4);
                i4--;
            }
            i4++;
        }
    }

    private void M(boolean z9) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z9);
        }
    }

    private void N(int i4, boolean z9, int i10, boolean z10) {
        e x9 = x(i4);
        int clientHeight = x9 != null ? (int) (getClientHeight() * Math.max(this.f16154p, Math.min(x9.f16179e, this.f16156q))) : 0;
        if (z9) {
            T(0, clientHeight, i10);
            if (z10) {
                n(i4);
                return;
            }
            return;
        }
        if (z10) {
            n(i4);
        }
        j(false);
        scrollTo(0, clientHeight);
        E(clientHeight);
    }

    private void U() {
        if (this.f16166y1 != 0) {
            ArrayList<View> arrayList = this.T1;
            if (arrayList == null) {
                this.T1 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                this.T1.add(getChildAt(i4));
            }
            Collections.sort(this.T1, Q2);
        }
    }

    private void g(e eVar, int i4, e eVar2) {
        int i10;
        int i11;
        e eVar3;
        e eVar4;
        int count = this.f16142e.getCount();
        int clientHeight = getClientHeight();
        float f10 = clientHeight > 0 ? this.f16150l / clientHeight : 0.0f;
        if (eVar2 != null) {
            int i12 = eVar2.f16176b;
            int i13 = eVar.f16176b;
            if (i12 < i13) {
                float f11 = eVar2.f16179e + eVar2.f16178d + f10;
                int i14 = i12 + 1;
                int i15 = 0;
                while (i14 <= eVar.f16176b && i15 < this.f16137b.size()) {
                    e eVar5 = this.f16137b.get(i15);
                    while (true) {
                        eVar4 = eVar5;
                        if (i14 <= eVar4.f16176b || i15 >= this.f16137b.size() - 1) {
                            break;
                        }
                        i15++;
                        eVar5 = this.f16137b.get(i15);
                    }
                    while (i14 < eVar4.f16176b) {
                        f11 += this.f16142e.getPageWidth(i14) + f10;
                        i14++;
                    }
                    eVar4.f16179e = f11;
                    f11 += eVar4.f16178d + f10;
                    i14++;
                }
            } else if (i12 > i13) {
                int size = this.f16137b.size() - 1;
                float f12 = eVar2.f16179e;
                while (true) {
                    i12--;
                    if (i12 < eVar.f16176b || size < 0) {
                        break;
                    }
                    e eVar6 = this.f16137b.get(size);
                    while (true) {
                        eVar3 = eVar6;
                        if (i12 >= eVar3.f16176b || size <= 0) {
                            break;
                        }
                        size--;
                        eVar6 = this.f16137b.get(size);
                    }
                    while (i12 > eVar3.f16176b) {
                        f12 -= this.f16142e.getPageWidth(i12) + f10;
                        i12--;
                    }
                    f12 -= eVar3.f16178d + f10;
                    eVar3.f16179e = f12;
                }
            }
        }
        int size2 = this.f16137b.size();
        float f13 = eVar.f16179e;
        int i16 = eVar.f16176b;
        int i17 = i16 - 1;
        this.f16154p = i16 == 0 ? f13 : -3.4028235E38f;
        int i18 = count - 1;
        this.f16156q = i16 == i18 ? (eVar.f16178d + f13) - 1.0f : Float.MAX_VALUE;
        int i19 = i4 - 1;
        while (i19 >= 0) {
            e eVar7 = this.f16137b.get(i19);
            while (true) {
                i11 = eVar7.f16176b;
                if (i17 <= i11) {
                    break;
                }
                f13 -= this.f16142e.getPageWidth(i17) + f10;
                i17--;
            }
            f13 -= eVar7.f16178d + f10;
            eVar7.f16179e = f13;
            if (i11 == 0) {
                this.f16154p = f13;
            }
            i19--;
            i17--;
        }
        float f14 = eVar.f16179e + eVar.f16178d + f10;
        int i20 = eVar.f16176b + 1;
        int i21 = i4 + 1;
        while (i21 < size2) {
            e eVar8 = this.f16137b.get(i21);
            while (true) {
                i10 = eVar8.f16176b;
                if (i20 >= i10) {
                    break;
                }
                f14 += this.f16142e.getPageWidth(i20) + f10;
                i20++;
            }
            if (i10 == i18) {
                this.f16156q = (eVar8.f16178d + f14) - 1.0f;
            }
            eVar8.f16179e = f14;
            f14 += eVar8.f16178d + f10;
            i21++;
            i20++;
        }
        this.S = false;
    }

    private int getClientHeight() {
        return (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
    }

    private void j(boolean z9) {
        boolean z10 = this.f16139b2 == 2;
        if (z10) {
            setScrollingCacheEnabled(false);
            this.f16148j.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f16148j.getCurrX();
            int currY = this.f16148j.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
            }
        }
        this.f16161v = false;
        for (int i4 = 0; i4 < this.f16137b.size(); i4++) {
            e eVar = this.f16137b.get(i4);
            if (eVar.f16177c) {
                eVar.f16177c = false;
                z10 = true;
            }
        }
        if (z10) {
            if (z9) {
                ViewCompat.postOnAnimation(this, this.V1);
            } else {
                this.V1.run();
            }
        }
    }

    private int l(int i4, float f10, int i10, int i11) {
        if (Math.abs(i11) <= this.L || Math.abs(i10) <= this.J) {
            i4 = (int) (i4 + f10 + (i4 >= this.f16143f ? 0.4f : 0.6f));
        } else if (i10 <= 0) {
            i4++;
        }
        if (this.f16137b.size() > 0) {
            ArrayList<e> arrayList = this.f16137b;
            return Math.max(this.f16137b.get(0).f16176b, Math.min(i4, arrayList.get(arrayList.size() - 1).f16176b));
        }
        return i4;
    }

    private void m(int i4, float f10, int i10) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.W;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i4, f10, i10);
        }
        List<ViewPager.OnPageChangeListener> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ViewPager.OnPageChangeListener onPageChangeListener2 = this.V.get(i11);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrolled(i4, f10, i10);
                }
            }
        }
        ViewPager.OnPageChangeListener onPageChangeListener3 = this.f16138b1;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrolled(i4, f10, i10);
        }
    }

    private void n(int i4) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.W;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i4);
        }
        List<ViewPager.OnPageChangeListener> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ViewPager.OnPageChangeListener onPageChangeListener2 = this.V.get(i10);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageSelected(i4);
                }
            }
        }
        ViewPager.OnPageChangeListener onPageChangeListener3 = this.f16138b1;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageSelected(i4);
        }
    }

    private void o(int i4) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.W;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i4);
        }
        List<ViewPager.OnPageChangeListener> list = this.V;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ViewPager.OnPageChangeListener onPageChangeListener2 = this.V.get(i10);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrollStateChanged(i4);
                }
            }
        }
        ViewPager.OnPageChangeListener onPageChangeListener3 = this.f16138b1;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrollStateChanged(i4);
        }
    }

    private void q(boolean z9) {
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ViewCompat.setLayerType(getChildAt(i4), z9 ? 2 : 0, null);
        }
    }

    private void r() {
        this.f16163x = false;
        this.f16165y = false;
        VelocityTracker velocityTracker = this.I;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.I = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollState(int i4) {
        if (this.f16139b2 == i4) {
            return;
        }
        this.f16139b2 = i4;
        if (this.f16155p1 != null) {
            q(i4 != 0);
        }
        o(i4);
    }

    private void setScrollingCacheEnabled(boolean z9) {
        if (this.f16160u != z9) {
            this.f16160u = z9;
        }
    }

    private Rect t(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private e w() {
        int i4;
        int clientHeight = getClientHeight();
        float f10 = 0.0f;
        float scrollY = clientHeight > 0 ? getScrollY() / clientHeight : 0.0f;
        float f11 = clientHeight > 0 ? this.f16150l / clientHeight : 0.0f;
        e eVar = null;
        float f12 = 0.0f;
        int i10 = -1;
        int i11 = 0;
        boolean z9 = true;
        while (i11 < this.f16137b.size()) {
            e eVar2 = this.f16137b.get(i11);
            if (!z9 && eVar2.f16176b != (i4 = i10 + 1)) {
                eVar2 = this.f16140c;
                eVar2.f16179e = f10 + f12 + f11;
                eVar2.f16176b = i4;
                eVar2.f16178d = this.f16142e.getPageWidth(i4);
                i11--;
            }
            f10 = eVar2.f16179e;
            float f13 = eVar2.f16178d + f10 + f11;
            if (!z9 && scrollY < f10) {
                return eVar;
            }
            if (scrollY < f13 || i11 == this.f16137b.size() - 1) {
                return eVar2;
            }
            i10 = eVar2.f16176b;
            f12 = eVar2.f16178d;
            i11++;
            eVar = eVar2;
            z9 = false;
        }
        return eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void B(int r12, float r13, int r14) {
        /*
            r11 = this;
            int r0 = r11.U
            r1 = 0
            if (r0 <= 0) goto L6e
            int r0 = r11.getScrollY()
            int r2 = r11.getPaddingTop()
            int r3 = r11.getPaddingBottom()
            int r4 = r11.getHeight()
            int r5 = r11.getChildCount()
            r6 = 0
        L1a:
            if (r6 >= r5) goto L6e
            android.view.View r7 = r11.getChildAt(r6)
            android.view.ViewGroup$LayoutParams r8 = r7.getLayoutParams()
            com.gigamole.infinitecycleviewpager.VerticalViewPager$LayoutParams r8 = (com.gigamole.infinitecycleviewpager.VerticalViewPager.LayoutParams) r8
            boolean r9 = r8.f16168a
            if (r9 != 0) goto L2b
            goto L6b
        L2b:
            int r8 = r8.f16169b
            r8 = r8 & 112(0x70, float:1.57E-43)
            r9 = 16
            if (r8 == r9) goto L50
            r9 = 48
            if (r8 == r9) goto L4a
            r9 = 80
            if (r8 == r9) goto L3d
            r8 = r2
            goto L5f
        L3d:
            int r8 = r4 - r3
            int r9 = r7.getMeasuredHeight()
            int r8 = r8 - r9
            int r9 = r7.getMeasuredHeight()
            int r3 = r3 + r9
            goto L5c
        L4a:
            int r8 = r7.getHeight()
            int r8 = r8 + r2
            goto L5f
        L50:
            int r8 = r7.getMeasuredHeight()
            int r8 = r4 - r8
            int r8 = r8 / 2
            int r8 = java.lang.Math.max(r8, r2)
        L5c:
            r10 = r8
            r8 = r2
            r2 = r10
        L5f:
            int r2 = r2 + r0
            int r9 = r7.getTop()
            int r2 = r2 - r9
            if (r2 == 0) goto L6a
            r7.offsetTopAndBottom(r2)
        L6a:
            r2 = r8
        L6b:
            int r6 = r6 + 1
            goto L1a
        L6e:
            r11.m(r12, r13, r14)
            androidx.viewpager.widget.ViewPager$PageTransformer r12 = r11.f16155p1
            if (r12 == 0) goto La2
            int r12 = r11.getScrollY()
            int r13 = r11.getChildCount()
        L7d:
            if (r1 >= r13) goto La2
            android.view.View r14 = r11.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r14.getLayoutParams()
            com.gigamole.infinitecycleviewpager.VerticalViewPager$LayoutParams r0 = (com.gigamole.infinitecycleviewpager.VerticalViewPager.LayoutParams) r0
            boolean r0 = r0.f16168a
            if (r0 == 0) goto L8e
            goto L9f
        L8e:
            int r0 = r14.getTop()
            int r0 = r0 - r12
            float r0 = (float) r0
            int r2 = r11.getClientHeight()
            float r2 = (float) r2
            float r0 = r0 / r2
            androidx.viewpager.widget.ViewPager$PageTransformer r2 = r11.f16155p1
            r2.transformPage(r14, r0)
        L9f:
            int r1 = r1 + 1
            goto L7d
        La2:
            r12 = 1
            r11.T = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gigamole.infinitecycleviewpager.VerticalViewPager.B(int, float, int):void");
    }

    boolean D() {
        PagerAdapter pagerAdapter = this.f16142e;
        if (pagerAdapter == null || this.f16143f >= pagerAdapter.getCount() - 1) {
            return false;
        }
        O(this.f16143f + 1, true);
        return true;
    }

    boolean F() {
        int i4 = this.f16143f;
        if (i4 > 0) {
            O(i4 - 1, true);
            return true;
        }
        return false;
    }

    void H() {
        I(this.f16143f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
        if (r10 == r11) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void I(int r18) {
        /*
            Method dump skipped, instructions count: 626
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gigamole.infinitecycleviewpager.VerticalViewPager.I(int):void");
    }

    public void L(ViewPager.OnPageChangeListener onPageChangeListener) {
        List<ViewPager.OnPageChangeListener> list = this.V;
        if (list != null) {
            list.remove(onPageChangeListener);
        }
    }

    public void O(int i4, boolean z9) {
        this.f16161v = false;
        P(i4, z9, false);
    }

    void P(int i4, boolean z9, boolean z10) {
        Q(i4, z9, z10, 0);
    }

    void Q(int i4, boolean z9, boolean z10, int i10) {
        PagerAdapter pagerAdapter = this.f16142e;
        if (pagerAdapter != null && pagerAdapter.getCount() > 0) {
            if (!z10 && this.f16143f == i4 && this.f16137b.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i4 < 0) {
                i4 = 0;
            } else if (i4 >= this.f16142e.getCount()) {
                i4 = this.f16142e.getCount() - 1;
            }
            int i11 = this.f16162w;
            int i12 = this.f16143f;
            if (i4 > i12 + i11 || i4 < i12 - i11) {
                for (int i13 = 0; i13 < this.f16137b.size(); i13++) {
                    this.f16137b.get(i13).f16177c = true;
                }
            }
            boolean z11 = this.f16143f != i4;
            if (this.R) {
                this.f16143f = i4;
                if (z11) {
                    n(i4);
                }
                requestLayout();
                return;
            }
            I(i4);
            N(i4, z9, i10, z11);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    ViewPager.OnPageChangeListener R(ViewPager.OnPageChangeListener onPageChangeListener) {
        ViewPager.OnPageChangeListener onPageChangeListener2 = this.f16138b1;
        this.f16138b1 = onPageChangeListener;
        return onPageChangeListener2;
    }

    void S(int i4, int i10) {
        T(i4, i10, 0);
    }

    void T(int i4, int i10, int i11) {
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i12 = i4 - scrollX;
        int i13 = i10 - scrollY;
        if (i12 == 0 && i13 == 0) {
            j(false);
            H();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientHeight = getClientHeight();
        int i14 = clientHeight / 2;
        float f10 = clientHeight;
        float f11 = i14;
        float p9 = f11 + (p(Math.min(1.0f, (Math.abs(i12) * 1.0f) / f10)) * f11);
        int abs2 = Math.abs(i11);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(p9 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i12) / ((f10 * this.f16142e.getPageWidth(this.f16143f)) + this.f16150l)) + 1.0f) * 100.0f);
        }
        this.f16148j.startScroll(scrollX, scrollY, i12, i13, Math.min(abs, 600));
        ViewCompat.postInvalidateOnAnimation(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i4, int i10) {
        e v9;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i11 = 0; i11 < getChildCount(); i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() == 0 && (v9 = v(childAt)) != null && v9.f16176b == this.f16143f) {
                    childAt.addFocusables(arrayList, i4, i10);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i10 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    public void addOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        if (this.V == null) {
            this.V = new ArrayList();
        }
        this.V.add(onPageChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        e v9;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 0 && (v9 = v(childAt)) != null && v9.f16176b == this.f16143f) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z9 = layoutParams2.f16168a | (view instanceof d);
        layoutParams2.f16168a = z9;
        if (!this.f16159t) {
            super.addView(view, i4, layoutParams);
        } else if (!z9) {
            layoutParams2.f16171d = true;
            addViewInLayout(view, i4, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public boolean beginFakeDrag() {
        if (this.f16163x) {
            return false;
        }
        this.N = true;
        setScrollState(1);
        this.E = 0.0f;
        this.G = 0.0f;
        VelocityTracker velocityTracker = this.I;
        if (velocityTracker == null) {
            this.I = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.I.addMovement(obtain);
        obtain.recycle();
        this.O = uptimeMillis;
        return true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (!this.f16148j.isFinished() && this.f16148j.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f16148j.getCurrX();
            int currY = this.f16148j.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!E(currY)) {
                    this.f16148j.abortAnimation();
                    scrollTo(currX, 0);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        j(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || s(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        e v9;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() == 0 && (v9 = v(childAt)) != null && v9.f16176b == this.f16143f && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = ViewCompat.getOverScrollMode(this);
        boolean z9 = false;
        if (overScrollMode != 0 && (overScrollMode != 1 || (pagerAdapter = this.f16142e) == null || pagerAdapter.getCount() <= 1)) {
            this.P.finish();
            this.Q.finish();
        } else {
            if (!this.P.isFinished()) {
                int save = canvas.save();
                int height = getHeight();
                int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.translate(getPaddingLeft(), this.f16154p * height);
                this.P.setSize(width, height);
                z9 = false | this.P.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.Q.isFinished()) {
                int save2 = canvas.save();
                int height2 = getHeight();
                int width2 = (getWidth() - getPaddingLeft()) - getPaddingRight();
                canvas.rotate(180.0f);
                canvas.translate((-width2) - getPaddingLeft(), (-(this.f16156q + 1.0f)) * height2);
                this.Q.setSize(width2, height2);
                z9 |= this.Q.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z9) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f16151m;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    e e(int i4, int i10) {
        e eVar = new e();
        eVar.f16176b = i4;
        eVar.f16175a = this.f16142e.instantiateItem((ViewGroup) this, i4);
        eVar.f16178d = this.f16142e.getPageWidth(i4);
        if (i10 >= 0 && i10 < this.f16137b.size()) {
            this.f16137b.add(i10, eVar);
        } else {
            this.f16137b.add(eVar);
        }
        return eVar;
    }

    public void endFakeDrag() {
        if (this.N) {
            VelocityTracker velocityTracker = this.I;
            velocityTracker.computeCurrentVelocity(1000, this.K);
            int yVelocity = (int) VelocityTrackerCompat.getYVelocity(velocityTracker, this.H);
            this.f16161v = true;
            int clientHeight = getClientHeight();
            int scrollY = getScrollY();
            e w9 = w();
            Q(l(w9.f16176b, ((scrollY / clientHeight) - w9.f16179e) / w9.f16178d, yVelocity, (int) (this.E - this.G)), true, true, yVelocity);
            r();
            this.N = false;
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean f(int r7) {
        /*
            r6 = this;
            android.view.View r0 = r6.findFocus()
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != r6) goto Lb
        L9:
            r0 = r3
            goto L69
        Lb:
            if (r0 == 0) goto L69
            android.view.ViewParent r4 = r0.getParent()
        L11:
            boolean r5 = r4 instanceof android.view.ViewGroup
            if (r5 == 0) goto L1e
            if (r4 != r6) goto L19
            r4 = 1
            goto L1f
        L19:
            android.view.ViewParent r4 = r4.getParent()
            goto L11
        L1e:
            r4 = 0
        L1f:
            if (r4 != 0) goto L69
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
        L35:
            boolean r5 = r0 instanceof android.view.ViewGroup
            if (r5 == 0) goto L4e
            java.lang.String r5 = " => "
            r4.append(r5)
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
            goto L35
        L4e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.append(r5)
            java.lang.String r4 = r4.toString()
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            java.lang.String r4 = "VerticalViewPager"
            android.util.Log.e(r4, r0)
            goto L9
        L69:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            r4 = 130(0x82, float:1.82E-43)
            r5 = 33
            if (r3 == 0) goto Lba
            if (r3 == r0) goto Lba
            if (r7 != r5) goto L9a
            android.graphics.Rect r1 = r6.f16141d
            android.graphics.Rect r1 = r6.t(r1, r3)
            int r1 = r1.top
            android.graphics.Rect r2 = r6.f16141d
            android.graphics.Rect r2 = r6.t(r2, r0)
            int r2 = r2.top
            if (r0 == 0) goto L94
            if (r1 < r2) goto L94
            boolean r0 = r6.F()
            goto L98
        L94:
            boolean r0 = r3.requestFocus()
        L98:
            r2 = r0
            goto Lcd
        L9a:
            if (r7 != r4) goto Lcd
            android.graphics.Rect r1 = r6.f16141d
            android.graphics.Rect r1 = r6.t(r1, r3)
            int r1 = r1.bottom
            android.graphics.Rect r2 = r6.f16141d
            android.graphics.Rect r2 = r6.t(r2, r0)
            int r2 = r2.bottom
            if (r0 == 0) goto Lb5
            if (r1 > r2) goto Lb5
            boolean r0 = r6.D()
            goto L98
        Lb5:
            boolean r0 = r3.requestFocus()
            goto L98
        Lba:
            if (r7 == r5) goto Lc9
            if (r7 != r1) goto Lbf
            goto Lc9
        Lbf:
            if (r7 == r4) goto Lc4
            r0 = 2
            if (r7 != r0) goto Lcd
        Lc4:
            boolean r2 = r6.D()
            goto Lcd
        Lc9:
            boolean r2 = r6.F()
        Lcd:
            if (r2 == 0) goto Ld6
            int r7 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r7)
        Ld6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gigamole.infinitecycleviewpager.VerticalViewPager.f(int):boolean");
    }

    public void fakeDragBy(float f10) {
        ArrayList<e> arrayList;
        if (this.N) {
            this.E += f10;
            float scrollY = getScrollY() - f10;
            float clientHeight = getClientHeight();
            float f11 = this.f16154p * clientHeight;
            float f12 = this.f16156q * clientHeight;
            e eVar = this.f16137b.get(0);
            e eVar2 = this.f16137b.get(arrayList.size() - 1);
            if (eVar.f16176b != 0) {
                f11 = eVar.f16179e * clientHeight;
            }
            if (eVar2.f16176b != this.f16142e.getCount() - 1) {
                f12 = eVar2.f16179e * clientHeight;
            }
            if (scrollY < f11) {
                scrollY = f11;
            } else if (scrollY > f12) {
                scrollY = f12;
            }
            int i4 = (int) scrollY;
            this.E += scrollY - i4;
            scrollTo(getScrollX(), i4);
            E(i4);
            MotionEvent obtain = MotionEvent.obtain(this.O, SystemClock.uptimeMillis(), 2, 0.0f, this.E, 0);
            this.I.addMovement(obtain);
            obtain.recycle();
            return;
        }
        throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public PagerAdapter getAdapter() {
        return this.f16142e;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i4, int i10) {
        if (this.f16166y1 == 2) {
            i10 = (i4 - 1) - i10;
        }
        return ((LayoutParams) this.T1.get(i10).getLayoutParams()).f16173f;
    }

    public int getCurrentItem() {
        return this.f16143f;
    }

    public int getOffscreenPageLimit() {
        return this.f16162w;
    }

    public int getPageMargin() {
        return this.f16150l;
    }

    protected boolean h(View view, boolean z9, int i4, int i10, int i11) {
        int i12;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i13 = i11 + scrollY;
                if (i13 >= childAt.getTop() && i13 < childAt.getBottom() && (i12 = i10 + scrollX) >= childAt.getLeft() && i12 < childAt.getRight() && h(childAt, true, i4, i12 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z9 && ViewCompat.canScrollVertically(view, -i4);
    }

    public void i() {
        List<ViewPager.OnPageChangeListener> list = this.V;
        if (list != null) {
            list.clear();
        }
    }

    public boolean isFakeDragging() {
        return this.N;
    }

    void k() {
        int count = this.f16142e.getCount();
        this.f16136a = count;
        boolean z9 = this.f16137b.size() < (this.f16162w * 2) + 1 && this.f16137b.size() < count;
        int i4 = this.f16143f;
        int i10 = 0;
        boolean z10 = false;
        while (i10 < this.f16137b.size()) {
            e eVar = this.f16137b.get(i10);
            int itemPosition = this.f16142e.getItemPosition(eVar.f16175a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.f16137b.remove(i10);
                    i10--;
                    if (!z10) {
                        this.f16142e.startUpdate((ViewGroup) this);
                        z10 = true;
                    }
                    this.f16142e.destroyItem((ViewGroup) this, eVar.f16176b, eVar.f16175a);
                    int i11 = this.f16143f;
                    if (i11 == eVar.f16176b) {
                        i4 = Math.max(0, Math.min(i11, count - 1));
                    }
                } else {
                    int i12 = eVar.f16176b;
                    if (i12 != itemPosition) {
                        if (i12 == this.f16143f) {
                            i4 = itemPosition;
                        }
                        eVar.f16176b = itemPosition;
                    }
                }
                z9 = true;
            }
            i10++;
        }
        if (z10) {
            this.f16142e.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f16137b, J2);
        if (z9) {
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i13).getLayoutParams();
                if (!layoutParams.f16168a) {
                    layoutParams.f16170c = 0.0f;
                }
            }
            P(i4, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.R = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.V1);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int height;
        int i4;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.f16150l <= 0 || this.f16151m == null || this.f16137b.size() <= 0 || this.f16142e == null) {
            return;
        }
        int scrollY = getScrollY();
        float height2 = getHeight();
        float f12 = this.f16150l / height2;
        int i10 = 0;
        e eVar = this.f16137b.get(0);
        float f13 = eVar.f16179e;
        int size = this.f16137b.size();
        int i11 = eVar.f16176b;
        int i12 = this.f16137b.get(size - 1).f16176b;
        while (i11 < i12) {
            while (true) {
                i4 = eVar.f16176b;
                if (i11 <= i4 || i10 >= size) {
                    break;
                }
                i10++;
                eVar = this.f16137b.get(i10);
            }
            if (i11 == i4) {
                float f14 = eVar.f16179e;
                float f15 = eVar.f16178d;
                f10 = (f14 + f15) * height2;
                f13 = f14 + f15 + f12;
            } else {
                float pageWidth = this.f16142e.getPageWidth(i11);
                f10 = (f13 + pageWidth) * height2;
                f13 += pageWidth + f12;
            }
            int i13 = this.f16150l;
            if (i13 + f10 > scrollY) {
                f11 = f12;
                this.f16151m.setBounds(this.f16152n, (int) f10, this.f16153o, (int) (i13 + f10 + 0.5f));
                this.f16151m.draw(canvas);
            } else {
                f11 = f12;
            }
            if (f10 > scrollY + height) {
                return;
            }
            i11++;
            f12 = f11;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 3 && action != 1) {
            if (action != 0) {
                if (this.f16163x) {
                    return true;
                }
                if (this.f16165y) {
                    return false;
                }
            }
            if (action == 0) {
                float x9 = motionEvent.getX();
                this.F = x9;
                this.D = x9;
                float y9 = motionEvent.getY();
                this.G = y9;
                this.E = y9;
                this.H = MotionEventCompat.getPointerId(motionEvent, 0);
                this.f16165y = false;
                this.f16148j.computeScrollOffset();
                if (this.f16139b2 == 2 && Math.abs(this.f16148j.getFinalY() - this.f16148j.getCurrY()) > this.M) {
                    this.f16148j.abortAnimation();
                    this.f16161v = false;
                    H();
                    this.f16163x = true;
                    M(true);
                    setScrollState(1);
                } else {
                    j(false);
                    this.f16163x = false;
                }
            } else if (action == 2) {
                int i4 = this.H;
                if (i4 != -1) {
                    int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, i4);
                    float y10 = MotionEventCompat.getY(motionEvent, findPointerIndex);
                    float f10 = y10 - this.E;
                    float abs = Math.abs(f10);
                    float x10 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                    float abs2 = Math.abs(x10 - this.F);
                    int i10 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
                    if (i10 != 0 && !A(this.E, f10) && h(this, false, (int) f10, (int) x10, (int) y10)) {
                        this.D = x10;
                        this.E = y10;
                        this.f16165y = true;
                        return false;
                    }
                    int i11 = this.C;
                    if (abs > i11 && abs * 0.5f > abs2) {
                        this.f16163x = true;
                        M(true);
                        setScrollState(1);
                        float f11 = this.G;
                        float f12 = this.C;
                        this.E = i10 > 0 ? f11 + f12 : f11 - f12;
                        this.D = x10;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > i11) {
                        this.f16165y = true;
                    }
                    if (this.f16163x && G(y10)) {
                        ViewCompat.postInvalidateOnAnimation(this);
                    }
                }
            } else if (action == 6) {
                C(motionEvent);
            }
            if (this.I == null) {
                this.I = VelocityTracker.obtain();
            }
            this.I.addMovement(motionEvent);
            return this.f16163x;
        }
        this.f16163x = false;
        this.f16165y = false;
        this.H = -1;
        VelocityTracker velocityTracker = this.I;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.I = null;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gigamole.infinitecycleviewpager.VerticalViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gigamole.infinitecycleviewpager.VerticalViewPager.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i4, Rect rect) {
        int i10;
        int i11;
        e v9;
        int childCount = getChildCount();
        int i12 = -1;
        if ((i4 & 2) != 0) {
            i12 = childCount;
            i10 = 0;
            i11 = 1;
        } else {
            i10 = childCount - 1;
            i11 = -1;
        }
        while (i10 != i12) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (v9 = v(childAt)) != null && v9.f16176b == this.f16143f && childAt.requestFocus(i4, rect)) {
                return true;
            }
            i10 += i11;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        PagerAdapter pagerAdapter = this.f16142e;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(savedState.adapterState, savedState.loader);
            P(savedState.position, false, true);
            return;
        }
        this.f16144g = savedState.position;
        this.f16146h = savedState.adapterState;
        this.f16147i = savedState.loader;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.f16143f;
        PagerAdapter pagerAdapter = this.f16142e;
        if (pagerAdapter != null) {
            savedState.adapterState = pagerAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i4, int i10, int i11, int i12) {
        super.onSizeChanged(i4, i10, i11, i12);
        if (i10 != i12) {
            int i13 = this.f16150l;
            J(i10, i12, i13, i13);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        boolean onRelease;
        boolean onRelease2;
        if (this.N) {
            return true;
        }
        boolean z9 = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.f16142e) == null || pagerAdapter.getCount() == 0) {
            return false;
        }
        if (this.I == null) {
            this.I = VelocityTracker.obtain();
        }
        this.I.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f16148j.abortAnimation();
            this.f16161v = false;
            H();
            float x9 = motionEvent.getX();
            this.F = x9;
            this.D = x9;
            float y9 = motionEvent.getY();
            this.G = y9;
            this.E = y9;
            this.H = MotionEventCompat.getPointerId(motionEvent, 0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f16163x) {
                    int findPointerIndex = MotionEventCompat.findPointerIndex(motionEvent, this.H);
                    float y10 = MotionEventCompat.getY(motionEvent, findPointerIndex);
                    float abs = Math.abs(y10 - this.E);
                    float x10 = MotionEventCompat.getX(motionEvent, findPointerIndex);
                    float abs2 = Math.abs(x10 - this.D);
                    if (abs > this.C && abs > abs2) {
                        this.f16163x = true;
                        M(true);
                        float f10 = this.G;
                        this.E = y10 - f10 > 0.0f ? f10 + this.C : f10 - this.C;
                        this.D = x10;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                if (this.f16163x) {
                    z9 = false | G(MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.H)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                    this.E = MotionEventCompat.getY(motionEvent, actionIndex);
                    this.H = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                } else if (action == 6) {
                    C(motionEvent);
                    this.E = MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.H));
                }
            } else if (this.f16163x) {
                N(this.f16143f, true, 0, false);
                this.H = -1;
                r();
                onRelease = this.P.onRelease();
                onRelease2 = this.Q.onRelease();
                z9 = onRelease | onRelease2;
            }
        } else if (this.f16163x) {
            VelocityTracker velocityTracker = this.I;
            velocityTracker.computeCurrentVelocity(1000, this.K);
            int yVelocity = (int) VelocityTrackerCompat.getYVelocity(velocityTracker, this.H);
            this.f16161v = true;
            int clientHeight = getClientHeight();
            int scrollY = getScrollY();
            e w9 = w();
            Q(l(w9.f16176b, ((scrollY / clientHeight) - w9.f16179e) / w9.f16178d, yVelocity, (int) (MotionEventCompat.getY(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.H)) - this.G)), true, true, yVelocity);
            this.H = -1;
            r();
            onRelease = this.P.onRelease();
            onRelease2 = this.Q.onRelease();
            z9 = onRelease | onRelease2;
        }
        if (z9) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    float p(float f10) {
        return (float) Math.sin((float) ((f10 - 0.5f) * 0.4712389167638204d));
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f16159t) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public boolean s(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return f(17);
            }
            if (keyCode == 22) {
                return f(66);
            }
            if (keyCode == 61) {
                if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                    return f(2);
                }
                if (KeyEventCompat.hasModifiers(keyEvent, 1)) {
                    return f(1);
                }
            }
        }
        return false;
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        PagerAdapter pagerAdapter2 = this.f16142e;
        if (pagerAdapter2 != null) {
            pagerAdapter2.unregisterDataSetObserver(this.f16149k);
            this.f16142e.startUpdate((ViewGroup) this);
            for (int i4 = 0; i4 < this.f16137b.size(); i4++) {
                e eVar = this.f16137b.get(i4);
                this.f16142e.destroyItem((ViewGroup) this, eVar.f16176b, eVar.f16175a);
            }
            this.f16142e.finishUpdate((ViewGroup) this);
            this.f16137b.clear();
            K();
            this.f16143f = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.f16142e;
        this.f16142e = pagerAdapter;
        this.f16136a = 0;
        if (pagerAdapter != null) {
            if (this.f16149k == null) {
                this.f16149k = new h(this, null);
            }
            this.f16142e.registerDataSetObserver(this.f16149k);
            this.f16161v = false;
            boolean z9 = this.R;
            this.R = true;
            this.f16136a = this.f16142e.getCount();
            if (this.f16144g >= 0) {
                this.f16142e.restoreState(this.f16146h, this.f16147i);
                P(this.f16144g, false, true);
                this.f16144g = -1;
                this.f16146h = null;
                this.f16147i = null;
            } else if (!z9) {
                H();
            } else {
                requestLayout();
            }
        }
        g gVar = this.f16145g1;
        if (gVar == null || pagerAdapter3 == pagerAdapter) {
            return;
        }
        gVar.a(pagerAdapter3, pagerAdapter);
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z9) {
        if (this.f16164x1 == null) {
            try {
                this.f16164x1 = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException e4) {
                Log.e(f16132g2, "Can't find setChildrenDrawingOrderEnabled", e4);
            }
        }
        try {
            this.f16164x1.invoke(this, Boolean.valueOf(z9));
        } catch (Exception e10) {
            Log.e(f16132g2, "Error changing children drawing order", e10);
        }
    }

    public void setCurrentItem(int i4) {
        this.f16161v = false;
        P(i4, !this.R, false);
    }

    public void setOffscreenPageLimit(int i4) {
        if (i4 < 1) {
            Log.w(f16132g2, "Requested offscreen page limit " + i4 + " too small; defaulting to 1");
            i4 = 1;
        }
        if (i4 != this.f16162w) {
            this.f16162w = i4;
            H();
        }
    }

    void setOnAdapterChangeListener(g gVar) {
        this.f16145g1 = gVar;
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.W = onPageChangeListener;
    }

    public void setPageMargin(int i4) {
        int i10 = this.f16150l;
        this.f16150l = i4;
        int height = getHeight();
        J(height, height, i4, i10);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f16151m = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z9, ViewPager.PageTransformer pageTransformer) {
        boolean z10 = pageTransformer != null;
        boolean z11 = z10 != (this.f16155p1 != null);
        this.f16155p1 = pageTransformer;
        setChildrenDrawingOrderEnabledCompat(z10);
        if (z10) {
            this.f16166y1 = z9 ? 2 : 1;
        } else {
            this.f16166y1 = 0;
        }
        if (z11) {
            H();
        }
    }

    e u(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return v(view);
            }
        }
    }

    e v(View view) {
        for (int i4 = 0; i4 < this.f16137b.size(); i4++) {
            e eVar = this.f16137b.get(i4);
            if (this.f16142e.isViewFromObject(view, eVar.f16175a)) {
                return eVar;
            }
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f16151m;
    }

    e x(int i4) {
        for (int i10 = 0; i10 < this.f16137b.size(); i10++) {
            e eVar = this.f16137b.get(i10);
            if (eVar.f16176b == i4) {
                return eVar;
            }
        }
        return null;
    }

    void y() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f16148j = new Scroller(context, K2);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.C = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.J = (int) (400.0f * f10);
        this.K = viewConfiguration.getScaledMaximumFlingVelocity();
        this.P = new EdgeEffectCompat(context);
        this.Q = new EdgeEffectCompat(context);
        this.L = (int) (25.0f * f10);
        this.M = (int) (2.0f * f10);
        this.A = (int) (f10 * 16.0f);
        ViewCompat.setAccessibilityDelegate(this, new f());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    public boolean z(int i4) {
        if (this.f16142e == null) {
            return false;
        }
        int clientHeight = getClientHeight();
        int scrollY = getScrollY();
        return i4 < 0 ? scrollY > ((int) (((float) clientHeight) * this.f16154p)) : i4 > 0 && scrollY < ((int) (((float) clientHeight) * this.f16156q));
    }

    /* loaded from: classes2.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public boolean f16168a;

        /* renamed from: b  reason: collision with root package name */
        public int f16169b;

        /* renamed from: c  reason: collision with root package name */
        float f16170c;

        /* renamed from: d  reason: collision with root package name */
        boolean f16171d;

        /* renamed from: e  reason: collision with root package name */
        int f16172e;

        /* renamed from: f  reason: collision with root package name */
        int f16173f;

        public LayoutParams() {
            super(-1, -1);
            this.f16170c = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f16170c = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, VerticalViewPager.I2);
            this.f16169b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i4) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i4));
    }

    public VerticalViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16137b = new ArrayList<>();
        this.f16140c = new e();
        this.f16141d = new Rect();
        this.f16144g = -1;
        this.f16146h = null;
        this.f16147i = null;
        this.f16154p = -3.4028235E38f;
        this.f16156q = Float.MAX_VALUE;
        this.f16162w = 1;
        this.H = -1;
        this.R = true;
        this.S = false;
        this.V1 = new c();
        this.f16139b2 = 0;
        y();
    }
}
