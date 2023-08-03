package master.flame.danmaku.danmaku.model.android;

import android.graphics.Typeface;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import master.flame.danmaku.controller.b;
import master.flame.danmaku.danmaku.model.android.b;
import master.flame.danmaku.danmaku.model.m;

/* loaded from: classes4.dex */
public class DanmakuContext implements Cloneable {
    private m.a C;

    /* renamed from: m  reason: collision with root package name */
    public master.flame.danmaku.danmaku.model.a f87153m;

    /* renamed from: q  reason: collision with root package name */
    private List<WeakReference<a>> f87157q;

    /* renamed from: u  reason: collision with root package name */
    private b f87161u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f87162v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f87163w;

    /* renamed from: a  reason: collision with root package name */
    public Typeface f87141a = null;

    /* renamed from: b  reason: collision with root package name */
    public int f87142b = master.flame.danmaku.danmaku.model.c.f87276a;

    /* renamed from: c  reason: collision with root package name */
    public float f87143c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    public int f87144d = 0;

    /* renamed from: e  reason: collision with root package name */
    public boolean f87145e = true;

    /* renamed from: f  reason: collision with root package name */
    public boolean f87146f = true;

    /* renamed from: g  reason: collision with root package name */
    public boolean f87147g = true;

    /* renamed from: h  reason: collision with root package name */
    public boolean f87148h = true;

    /* renamed from: i  reason: collision with root package name */
    public boolean f87149i = true;

    /* renamed from: j  reason: collision with root package name */
    List<Integer> f87150j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    public int f87151k = -1;

    /* renamed from: l  reason: collision with root package name */
    public float f87152l = 1.0f;

    /* renamed from: n  reason: collision with root package name */
    List<Integer> f87154n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    List<Integer> f87155o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    List<String> f87156p = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    private boolean f87158r = false;

    /* renamed from: s  reason: collision with root package name */
    private boolean f87159s = false;

    /* renamed from: t  reason: collision with root package name */
    private boolean f87160t = false;

    /* renamed from: x  reason: collision with root package name */
    public master.flame.danmaku.danmaku.model.b f87164x = new master.flame.danmaku.danmaku.model.android.a();

    /* renamed from: y  reason: collision with root package name */
    public master.flame.danmaku.danmaku.model.j f87165y = new master.flame.danmaku.danmaku.model.j();

    /* renamed from: z  reason: collision with root package name */
    public master.flame.danmaku.controller.b f87166z = new master.flame.danmaku.controller.b();
    public d A = d.a();
    public c B = c.f87216n;
    public byte D = 0;

    /* loaded from: classes4.dex */
    public enum DanmakuConfigTag {
        FT_DANMAKU_VISIBILITY,
        FB_DANMAKU_VISIBILITY,
        L2R_DANMAKU_VISIBILITY,
        R2L_DANMAKU_VISIBILIY,
        SPECIAL_DANMAKU_VISIBILITY,
        TYPEFACE,
        TRANSPARENCY,
        SCALE_TEXTSIZE,
        MAXIMUM_NUMS_IN_SCREEN,
        DANMAKU_STYLE,
        DANMAKU_BOLD,
        COLOR_VALUE_WHITE_LIST,
        USER_ID_BLACK_LIST,
        USER_HASH_BLACK_LIST,
        SCROLL_SPEED_FACTOR,
        BLOCK_GUEST_DANMAKU,
        DUPLICATE_MERGING_ENABLED,
        MAXIMUN_LINES,
        OVERLAPPING_ENABLE,
        ALIGN_BOTTOM,
        DANMAKU_MARGIN,
        DANMAKU_SYNC;

        public boolean isVisibilityRelatedTag() {
            return equals(FT_DANMAKU_VISIBILITY) || equals(FB_DANMAKU_VISIBILITY) || equals(L2R_DANMAKU_VISIBILITY) || equals(R2L_DANMAKU_VISIBILIY) || equals(SPECIAL_DANMAKU_VISIBILITY) || equals(COLOR_VALUE_WHITE_LIST) || equals(USER_ID_BLACK_LIST);
        }
    }

    /* loaded from: classes4.dex */
    public interface a {
        boolean a(DanmakuContext danmakuContext, DanmakuConfigTag danmakuConfigTag, Object... objArr);
    }

    private void J(boolean z9, int i4) {
        if (z9) {
            this.f87150j.remove(Integer.valueOf(i4));
        } else if (this.f87150j.contains(Integer.valueOf(i4))) {
        } else {
            this.f87150j.add(Integer.valueOf(i4));
        }
    }

    private <T> void N(String str, T t9) {
        O(str, t9, true);
    }

    private <T> void O(String str, T t9, boolean z9) {
        this.f87166z.e(str, z9).a(t9);
    }

    public static DanmakuContext e() {
        return new DanmakuContext();
    }

    private void t(DanmakuConfigTag danmakuConfigTag, Object... objArr) {
        List<WeakReference<a>> list = this.f87157q;
        if (list != null) {
            for (WeakReference<a> weakReference : list) {
                a aVar = weakReference.get();
                if (aVar != null) {
                    aVar.a(this, danmakuConfigTag, objArr);
                }
            }
        }
    }

    public void A(m.a aVar) {
        this.C = aVar;
    }

    public DanmakuContext B(b bVar, b.a aVar) {
        this.f87161u = bVar;
        if (bVar != null) {
            bVar.h(aVar);
            this.f87164x.y(this.f87161u);
        }
        return this;
    }

    public DanmakuContext C(c cVar) {
        this.B = cVar;
        return this;
    }

    public DanmakuContext D(Integer... numArr) {
        this.f87154n.clear();
        if (numArr != null && numArr.length != 0) {
            Collections.addAll(this.f87154n, numArr);
            N(master.flame.danmaku.controller.b.f87034s, this.f87154n);
        } else {
            this.f87166z.l(master.flame.danmaku.controller.b.f87034s);
        }
        this.f87165y.c();
        t(DanmakuConfigTag.COLOR_VALUE_WHITE_LIST, this.f87154n);
        return this;
    }

    public DanmakuContext E(boolean z9) {
        this.f87164x.A(z9);
        t(DanmakuConfigTag.DANMAKU_BOLD, Boolean.valueOf(z9));
        return this;
    }

    public DanmakuContext F(int i4) {
        if (this.f87144d != i4) {
            this.f87144d = i4;
            this.f87164x.k(i4);
            this.f87165y.c();
            this.f87165y.h();
            t(DanmakuConfigTag.DANMAKU_MARGIN, Integer.valueOf(i4));
        }
        return this;
    }

    public DanmakuContext G(int i4, float... fArr) {
        this.f87164x.c(i4, fArr);
        t(DanmakuConfigTag.DANMAKU_STYLE, Integer.valueOf(i4), fArr);
        return this;
    }

    public DanmakuContext H(master.flame.danmaku.danmaku.model.a aVar) {
        this.f87153m = aVar;
        return this;
    }

    public DanmakuContext I(float f10) {
        int i4 = (int) (master.flame.danmaku.danmaku.model.c.f87276a * f10);
        if (i4 != this.f87142b) {
            this.f87142b = i4;
            this.f87164x.C(i4);
            t(DanmakuConfigTag.TRANSPARENCY, Float.valueOf(f10));
        }
        return this;
    }

    public DanmakuContext K(boolean z9) {
        if (this.f87159s != z9) {
            this.f87159s = z9;
            this.f87165y.c();
            t(DanmakuConfigTag.DUPLICATE_MERGING_ENABLED, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext L(boolean z9) {
        J(z9, 4);
        N(master.flame.danmaku.controller.b.f87031p, this.f87150j);
        this.f87165y.c();
        if (this.f87146f != z9) {
            this.f87146f = z9;
            t(DanmakuConfigTag.FB_DANMAKU_VISIBILITY, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext M(boolean z9) {
        J(z9, 5);
        N(master.flame.danmaku.controller.b.f87031p, this.f87150j);
        this.f87165y.c();
        if (this.f87145e != z9) {
            this.f87145e = z9;
            t(DanmakuConfigTag.FT_DANMAKU_VISIBILITY, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext P(boolean z9) {
        J(z9, 6);
        N(master.flame.danmaku.controller.b.f87031p, this.f87150j);
        this.f87165y.c();
        if (this.f87147g != z9) {
            this.f87147g = z9;
            t(DanmakuConfigTag.L2R_DANMAKU_VISIBILITY, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext Q(int i4) {
        this.f87164x.m(i4);
        return this;
    }

    public DanmakuContext R(Map<Integer, Integer> map) {
        this.f87162v = map != null;
        if (map == null) {
            this.f87166z.m(master.flame.danmaku.controller.b.f87039x, false);
        } else {
            O(master.flame.danmaku.controller.b.f87039x, map, false);
        }
        this.f87165y.c();
        t(DanmakuConfigTag.MAXIMUN_LINES, map);
        return this;
    }

    public DanmakuContext S(int i4) {
        this.f87151k = i4;
        if (i4 == 0) {
            this.f87166z.l(master.flame.danmaku.controller.b.f87032q);
            this.f87166z.l(master.flame.danmaku.controller.b.f87033r);
            t(DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN, Integer.valueOf(i4));
            return this;
        } else if (i4 == -1) {
            this.f87166z.l(master.flame.danmaku.controller.b.f87032q);
            this.f87166z.f(master.flame.danmaku.controller.b.f87033r);
            t(DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN, Integer.valueOf(i4));
            return this;
        } else {
            N(master.flame.danmaku.controller.b.f87032q, Integer.valueOf(i4));
            this.f87165y.c();
            t(DanmakuConfigTag.MAXIMUM_NUMS_IN_SCREEN, Integer.valueOf(i4));
            return this;
        }
    }

    @Deprecated
    public DanmakuContext T(Map<Integer, Boolean> map) {
        return u(map);
    }

    public DanmakuContext U(boolean z9) {
        J(z9, 1);
        N(master.flame.danmaku.controller.b.f87031p, this.f87150j);
        this.f87165y.c();
        if (this.f87148h != z9) {
            this.f87148h = z9;
            t(DanmakuConfigTag.R2L_DANMAKU_VISIBILIY, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext V(float f10) {
        if (this.f87143c != f10) {
            this.f87143c = f10;
            this.f87164x.u();
            this.f87164x.B(f10);
            this.f87165y.e();
            this.f87165y.h();
            t(DanmakuConfigTag.SCALE_TEXTSIZE, Float.valueOf(f10));
        }
        return this;
    }

    public DanmakuContext W(float f10) {
        if (this.f87152l != f10) {
            this.f87152l = f10;
            this.A.l(f10);
            this.f87165y.e();
            this.f87165y.h();
            t(DanmakuConfigTag.SCROLL_SPEED_FACTOR, Float.valueOf(f10));
        }
        return this;
    }

    public DanmakuContext X(boolean z9) {
        J(z9, 7);
        N(master.flame.danmaku.controller.b.f87031p, this.f87150j);
        this.f87165y.c();
        if (this.f87149i != z9) {
            this.f87149i = z9;
            t(DanmakuConfigTag.SPECIAL_DANMAKU_VISIBILITY, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext Y(Typeface typeface) {
        if (this.f87141a != typeface) {
            this.f87141a = typeface;
            this.f87164x.u();
            this.f87164x.D(typeface);
            t(DanmakuConfigTag.TYPEFACE, new Object[0]);
        }
        return this;
    }

    public DanmakuContext Z(String... strArr) {
        this.f87156p.clear();
        if (strArr != null && strArr.length != 0) {
            Collections.addAll(this.f87156p, strArr);
            N(master.flame.danmaku.controller.b.f87036u, this.f87156p);
        } else {
            this.f87166z.l(master.flame.danmaku.controller.b.f87036u);
        }
        this.f87165y.c();
        t(DanmakuConfigTag.USER_HASH_BLACK_LIST, this.f87156p);
        return this;
    }

    public DanmakuContext a(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            Collections.addAll(this.f87156p, strArr);
            N(master.flame.danmaku.controller.b.f87036u, this.f87156p);
            this.f87165y.c();
            t(DanmakuConfigTag.USER_HASH_BLACK_LIST, this.f87156p);
        }
        return this;
    }

    public DanmakuContext a0(Integer... numArr) {
        this.f87155o.clear();
        if (numArr != null && numArr.length != 0) {
            Collections.addAll(this.f87155o, numArr);
            N(master.flame.danmaku.controller.b.f87035t, this.f87155o);
        } else {
            this.f87166z.l(master.flame.danmaku.controller.b.f87035t);
        }
        this.f87165y.c();
        t(DanmakuConfigTag.USER_ID_BLACK_LIST, this.f87155o);
        return this;
    }

    public DanmakuContext b(Integer... numArr) {
        if (numArr != null && numArr.length != 0) {
            Collections.addAll(this.f87155o, numArr);
            N(master.flame.danmaku.controller.b.f87035t, this.f87155o);
            this.f87165y.c();
            t(DanmakuConfigTag.USER_ID_BLACK_LIST, this.f87155o);
        }
        return this;
    }

    public void b0() {
        List<WeakReference<a>> list = this.f87157q;
        if (list != null) {
            list.clear();
            this.f87157q = null;
        }
    }

    public DanmakuContext c(boolean z9) {
        if (this.f87160t != z9) {
            this.f87160t = z9;
            t(DanmakuConfigTag.ALIGN_BOTTOM, Boolean.valueOf(z9));
            this.f87165y.h();
        }
        return this;
    }

    public void c0(a aVar) {
        List<WeakReference<a>> list;
        if (aVar == null || (list = this.f87157q) == null) {
            return;
        }
        for (WeakReference<a> weakReference : list) {
            if (aVar.equals(weakReference.get())) {
                this.f87157q.remove(aVar);
                return;
            }
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public DanmakuContext d(boolean z9) {
        if (this.f87158r != z9) {
            this.f87158r = z9;
            if (z9) {
                N(master.flame.danmaku.controller.b.f87037v, Boolean.valueOf(z9));
            } else {
                this.f87166z.l(master.flame.danmaku.controller.b.f87037v);
            }
            this.f87165y.c();
            t(DanmakuConfigTag.BLOCK_GUEST_DANMAKU, Boolean.valueOf(z9));
        }
        return this;
    }

    public DanmakuContext d0(b.a aVar) {
        this.f87166z.n(aVar);
        this.f87165y.c();
        return this;
    }

    public m.a f() {
        return this.C;
    }

    public List<Integer> g() {
        return this.f87154n;
    }

    public master.flame.danmaku.danmaku.model.b h() {
        return this.f87164x;
    }

    public boolean i() {
        return this.f87146f;
    }

    public boolean j() {
        return this.f87145e;
    }

    public boolean k() {
        return this.f87147g;
    }

    public boolean l() {
        return this.f87148h;
    }

    public boolean m() {
        return this.f87149i;
    }

    public List<String> n() {
        return this.f87156p;
    }

    public List<Integer> o() {
        return this.f87155o;
    }

    public boolean p() {
        return this.f87160t;
    }

    public boolean q() {
        return this.f87159s;
    }

    public boolean r() {
        return this.f87162v;
    }

    public boolean s() {
        return this.f87163w;
    }

    public DanmakuContext u(Map<Integer, Boolean> map) {
        this.f87163w = map != null;
        if (map == null) {
            this.f87166z.m(master.flame.danmaku.controller.b.f87040y, false);
        } else {
            O(master.flame.danmaku.controller.b.f87040y, map, false);
        }
        this.f87165y.c();
        t(DanmakuConfigTag.OVERLAPPING_ENABLE, map);
        return this;
    }

    public void v(a aVar) {
        if (aVar == null || this.f87157q == null) {
            this.f87157q = Collections.synchronizedList(new ArrayList());
        }
        for (WeakReference<a> weakReference : this.f87157q) {
            if (aVar.equals(weakReference.get())) {
                return;
            }
        }
        this.f87157q.add(new WeakReference<>(aVar));
    }

    public DanmakuContext w(b.a aVar) {
        this.f87166z.h(aVar);
        this.f87165y.c();
        return this;
    }

    public DanmakuContext x(String... strArr) {
        if (strArr != null && strArr.length != 0) {
            for (String str : strArr) {
                this.f87156p.remove(str);
            }
            N(master.flame.danmaku.controller.b.f87036u, this.f87156p);
            this.f87165y.c();
            t(DanmakuConfigTag.USER_HASH_BLACK_LIST, this.f87156p);
        }
        return this;
    }

    public DanmakuContext y(Integer... numArr) {
        if (numArr != null && numArr.length != 0) {
            for (Integer num : numArr) {
                this.f87155o.remove(num);
            }
            N(master.flame.danmaku.controller.b.f87035t, this.f87155o);
            this.f87165y.c();
            t(DanmakuConfigTag.USER_ID_BLACK_LIST, this.f87155o);
        }
        return this;
    }

    public DanmakuContext z() {
        this.f87164x = new master.flame.danmaku.danmaku.model.android.a();
        this.f87165y = new master.flame.danmaku.danmaku.model.j();
        this.f87166z.a();
        this.A = d.a();
        return this;
    }
}
