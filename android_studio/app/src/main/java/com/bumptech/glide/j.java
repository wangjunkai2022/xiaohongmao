package com.bumptech.glide;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.target.p;
import com.bumptech.glide.request.target.r;
import com.bumptech.glide.util.m;
import com.bumptech.glide.util.o;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: RequestBuilder.java */
/* loaded from: classes.dex */
public class j<TranscodeType> extends com.bumptech.glide.request.a<j<TranscodeType>> implements Cloneable, h<j<TranscodeType>> {
    protected static final com.bumptech.glide.request.h E2 = new com.bumptech.glide.request.h().r(com.bumptech.glide.load.engine.j.f8862c).y0(Priority.LOW).G0(true);
    @Nullable
    private List<com.bumptech.glide.request.g<TranscodeType>> T1;
    private final Context V;
    @Nullable
    private j<TranscodeType> V1;
    private final k W;

    /* renamed from: b1  reason: collision with root package name */
    private final Class<TranscodeType> f8476b1;
    @Nullable

    /* renamed from: b2  reason: collision with root package name */
    private j<TranscodeType> f8477b2;

    /* renamed from: g1  reason: collision with root package name */
    private final c f8478g1;
    @Nullable

    /* renamed from: g2  reason: collision with root package name */
    private Float f8479g2;

    /* renamed from: p1  reason: collision with root package name */
    private final e f8480p1;

    /* renamed from: p2  reason: collision with root package name */
    private boolean f8481p2;
    @NonNull

    /* renamed from: x1  reason: collision with root package name */
    private l<?, ? super TranscodeType> f8482x1;

    /* renamed from: x2  reason: collision with root package name */
    private boolean f8483x2;
    @Nullable

    /* renamed from: y1  reason: collision with root package name */
    private Object f8484y1;

    /* renamed from: y2  reason: collision with root package name */
    private boolean f8485y2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestBuilder.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8486a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f8487b;

        static {
            int[] iArr = new int[Priority.values().length];
            f8487b = iArr;
            try {
                iArr[Priority.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8487b[Priority.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8487b[Priority.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8487b[Priority.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f8486a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8486a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f8486a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f8486a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f8486a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f8486a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f8486a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f8486a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"CheckResult"})
    public j(@NonNull c cVar, k kVar, Class<TranscodeType> cls, Context context) {
        this.f8481p2 = true;
        this.f8478g1 = cVar;
        this.W = kVar;
        this.f8476b1 = cls;
        this.V = context;
        this.f8482x1 = kVar.F(cls);
        this.f8480p1 = cVar.k();
        f1(kVar.D());
        a(kVar.E());
    }

    private com.bumptech.glide.request.e U0(p<TranscodeType> pVar, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        return V0(new Object(), pVar, gVar, null, this.f8482x1, aVar.P(), aVar.M(), aVar.L(), aVar, executor);
    }

    private com.bumptech.glide.request.e V0(Object obj, p<TranscodeType> pVar, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, @Nullable RequestCoordinator requestCoordinator, l<?, ? super TranscodeType> lVar, Priority priority, int i4, int i10, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        com.bumptech.glide.request.b bVar;
        com.bumptech.glide.request.b bVar2;
        if (this.f8477b2 != null) {
            bVar2 = new com.bumptech.glide.request.b(obj, requestCoordinator);
            bVar = bVar2;
        } else {
            bVar = null;
            bVar2 = requestCoordinator;
        }
        com.bumptech.glide.request.e W0 = W0(obj, pVar, gVar, bVar2, lVar, priority, i4, i10, aVar, executor);
        if (bVar == null) {
            return W0;
        }
        int M = this.f8477b2.M();
        int L = this.f8477b2.L();
        if (o.w(i4, i10) && !this.f8477b2.j0()) {
            M = aVar.M();
            L = aVar.L();
        }
        j<TranscodeType> jVar = this.f8477b2;
        com.bumptech.glide.request.b bVar3 = bVar;
        bVar3.o(W0, jVar.V0(obj, pVar, gVar, bVar3, jVar.f8482x1, jVar.P(), M, L, this.f8477b2, executor));
        return bVar3;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.bumptech.glide.request.a] */
    private com.bumptech.glide.request.e W0(Object obj, p<TranscodeType> pVar, com.bumptech.glide.request.g<TranscodeType> gVar, @Nullable RequestCoordinator requestCoordinator, l<?, ? super TranscodeType> lVar, Priority priority, int i4, int i10, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        Priority e12;
        j<TranscodeType> jVar = this.V1;
        if (jVar != null) {
            if (!this.f8485y2) {
                l<?, ? super TranscodeType> lVar2 = jVar.f8481p2 ? lVar : jVar.f8482x1;
                if (jVar.b0()) {
                    e12 = this.V1.P();
                } else {
                    e12 = e1(priority);
                }
                Priority priority2 = e12;
                int M = this.V1.M();
                int L = this.V1.L();
                if (o.w(i4, i10) && !this.V1.j0()) {
                    M = aVar.M();
                    L = aVar.L();
                }
                com.bumptech.glide.request.k kVar = new com.bumptech.glide.request.k(obj, requestCoordinator);
                com.bumptech.glide.request.e x12 = x1(obj, pVar, gVar, aVar, kVar, lVar, priority, i4, i10, executor);
                this.f8485y2 = true;
                j<TranscodeType> jVar2 = this.V1;
                com.bumptech.glide.request.e V0 = jVar2.V0(obj, pVar, gVar, kVar, lVar2, priority2, M, L, jVar2, executor);
                this.f8485y2 = false;
                kVar.n(x12, V0);
                return kVar;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else if (this.f8479g2 != null) {
            com.bumptech.glide.request.k kVar2 = new com.bumptech.glide.request.k(obj, requestCoordinator);
            kVar2.n(x1(obj, pVar, gVar, aVar, kVar2, lVar, priority, i4, i10, executor), x1(obj, pVar, gVar, aVar.clone().F0(this.f8479g2.floatValue()), kVar2, lVar, e1(priority), i4, i10, executor));
            return kVar2;
        } else {
            return x1(obj, pVar, gVar, aVar, requestCoordinator, lVar, priority, i4, i10, executor);
        }
    }

    private j<TranscodeType> Y0() {
        return o().b1(null).D1(null);
    }

    @NonNull
    private Priority e1(@NonNull Priority priority) {
        int i4 = a.f8487b[priority.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3 && i4 != 4) {
                    throw new IllegalArgumentException("unknown priority: " + P());
                }
                return Priority.IMMEDIATE;
            }
            return Priority.HIGH;
        }
        return Priority.NORMAL;
    }

    @SuppressLint({"CheckResult"})
    private void f1(List<com.bumptech.glide.request.g<Object>> list) {
        for (com.bumptech.glide.request.g<Object> gVar : list) {
            S0(gVar);
        }
    }

    private <Y extends p<TranscodeType>> Y i1(@NonNull Y y9, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, com.bumptech.glide.request.a<?> aVar, Executor executor) {
        m.d(y9);
        if (this.f8483x2) {
            com.bumptech.glide.request.e U0 = U0(y9, gVar, aVar, executor);
            com.bumptech.glide.request.e e4 = y9.e();
            if (U0.h(e4) && !l1(aVar, e4)) {
                if (!((com.bumptech.glide.request.e) m.d(e4)).isRunning()) {
                    e4.i();
                }
                return y9;
            }
            this.W.A(y9);
            y9.r(U0);
            this.W.Z(y9, U0);
            return y9;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    private boolean l1(com.bumptech.glide.request.a<?> aVar, com.bumptech.glide.request.e eVar) {
        return !aVar.a0() && eVar.g();
    }

    @NonNull
    private j<TranscodeType> w1(@Nullable Object obj) {
        if (X()) {
            return o().w1(obj);
        }
        this.f8484y1 = obj;
        this.f8483x2 = true;
        return C0();
    }

    private com.bumptech.glide.request.e x1(Object obj, p<TranscodeType> pVar, com.bumptech.glide.request.g<TranscodeType> gVar, com.bumptech.glide.request.a<?> aVar, RequestCoordinator requestCoordinator, l<?, ? super TranscodeType> lVar, Priority priority, int i4, int i10, Executor executor) {
        Context context = this.V;
        e eVar = this.f8480p1;
        return com.bumptech.glide.request.j.y(context, eVar, obj, this.f8484y1, this.f8476b1, aVar, i4, i10, priority, pVar, gVar, this.T1, requestCoordinator, eVar.f(), lVar.c(), executor);
    }

    @NonNull
    public com.bumptech.glide.request.d<TranscodeType> A1() {
        return B1(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public com.bumptech.glide.request.d<TranscodeType> B1(int i4, int i10) {
        com.bumptech.glide.request.f fVar = new com.bumptech.glide.request.f(i4, i10);
        return (com.bumptech.glide.request.d) j1(fVar, fVar, com.bumptech.glide.util.f.a());
    }

    @NonNull
    @CheckResult
    @Deprecated
    public j<TranscodeType> C1(float f10) {
        if (X()) {
            return o().C1(f10);
        }
        if (f10 >= 0.0f && f10 <= 1.0f) {
            this.f8479g2 = Float.valueOf(f10);
            return C0();
        }
        throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> D1(@Nullable j<TranscodeType> jVar) {
        if (X()) {
            return o().D1(jVar);
        }
        this.V1 = jVar;
        return C0();
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> E1(@Nullable List<j<TranscodeType>> list) {
        j<TranscodeType> jVar = null;
        if (list != null && !list.isEmpty()) {
            for (int size = list.size() - 1; size >= 0; size--) {
                j<TranscodeType> jVar2 = list.get(size);
                if (jVar2 != null) {
                    jVar = jVar == null ? jVar2 : jVar2.D1(jVar);
                }
            }
            return D1(jVar);
        }
        return D1(null);
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> F1(@Nullable j<TranscodeType>... jVarArr) {
        if (jVarArr != null && jVarArr.length != 0) {
            return E1(Arrays.asList(jVarArr));
        }
        return D1(null);
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> G1(@NonNull l<?, ? super TranscodeType> lVar) {
        if (X()) {
            return o().G1(lVar);
        }
        this.f8482x1 = (l) m.d(lVar);
        this.f8481p2 = false;
        return C0();
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> S0(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        if (X()) {
            return o().S0(gVar);
        }
        if (gVar != null) {
            if (this.T1 == null) {
                this.T1 = new ArrayList();
            }
            this.T1.add(gVar);
        }
        return C0();
    }

    @Override // com.bumptech.glide.request.a
    @NonNull
    @CheckResult
    /* renamed from: T0 */
    public j<TranscodeType> a(@NonNull com.bumptech.glide.request.a<?> aVar) {
        m.d(aVar);
        return (j) super.a(aVar);
    }

    @Override // com.bumptech.glide.request.a
    @CheckResult
    /* renamed from: X0 */
    public j<TranscodeType> o() {
        j<TranscodeType> jVar = (j) super.clone();
        jVar.f8482x1 = (l<?, ? super TranscodeType>) jVar.f8482x1.clone();
        if (jVar.T1 != null) {
            jVar.T1 = new ArrayList(jVar.T1);
        }
        j<TranscodeType> jVar2 = jVar.V1;
        if (jVar2 != null) {
            jVar.V1 = jVar2.o();
        }
        j<TranscodeType> jVar3 = jVar.f8477b2;
        if (jVar3 != null) {
            jVar.f8477b2 = jVar3.o();
        }
        return jVar;
    }

    @CheckResult
    @Deprecated
    public com.bumptech.glide.request.d<File> Z0(int i4, int i10) {
        return d1().B1(i4, i10);
    }

    @CheckResult
    @Deprecated
    public <Y extends p<File>> Y a1(@NonNull Y y9) {
        return (Y) d1().h1(y9);
    }

    @NonNull
    public j<TranscodeType> b1(@Nullable j<TranscodeType> jVar) {
        if (X()) {
            return o().b1(jVar);
        }
        this.f8477b2 = jVar;
        return C0();
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> c1(Object obj) {
        if (obj == null) {
            return b1(null);
        }
        return b1(Y0().m(obj));
    }

    @NonNull
    @CheckResult
    protected j<File> d1() {
        return new j(File.class, this).a(E2);
    }

    @Deprecated
    public com.bumptech.glide.request.d<TranscodeType> g1(int i4, int i10) {
        return B1(i4, i10);
    }

    @NonNull
    public <Y extends p<TranscodeType>> Y h1(@NonNull Y y9) {
        return (Y) j1(y9, null, com.bumptech.glide.util.f.b());
    }

    @NonNull
    <Y extends p<TranscodeType>> Y j1(@NonNull Y y9, @Nullable com.bumptech.glide.request.g<TranscodeType> gVar, Executor executor) {
        return (Y) i1(y9, gVar, this, executor);
    }

    @NonNull
    public r<ImageView, TranscodeType> k1(@NonNull ImageView imageView) {
        j<TranscodeType> jVar;
        o.b();
        m.d(imageView);
        if (!i0() && g0() && imageView.getScaleType() != null) {
            switch (a.f8486a[imageView.getScaleType().ordinal()]) {
                case 1:
                    jVar = clone().m0();
                    break;
                case 2:
                    jVar = clone().n0();
                    break;
                case 3:
                case 4:
                case 5:
                    jVar = clone().p0();
                    break;
                case 6:
                    jVar = clone().n0();
                    break;
            }
            return (r) i1(this.f8480p1.a(imageView, this.f8476b1), null, jVar, com.bumptech.glide.util.f.b());
        }
        jVar = this;
        return (r) i1(this.f8480p1.a(imageView, this.f8476b1), null, jVar, com.bumptech.glide.util.f.b());
    }

    @NonNull
    @CheckResult
    public j<TranscodeType> m1(@Nullable com.bumptech.glide.request.g<TranscodeType> gVar) {
        if (X()) {
            return o().m1(gVar);
        }
        this.T1 = null;
        return S0(gVar);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: n1 */
    public j<TranscodeType> l(@Nullable Bitmap bitmap) {
        return w1(bitmap).a(com.bumptech.glide.request.h.X0(com.bumptech.glide.load.engine.j.f8861b));
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: o1 */
    public j<TranscodeType> i(@Nullable Drawable drawable) {
        return w1(drawable).a(com.bumptech.glide.request.h.X0(com.bumptech.glide.load.engine.j.f8861b));
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: p1 */
    public j<TranscodeType> d(@Nullable Uri uri) {
        return w1(uri);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: q1 */
    public j<TranscodeType> h(@Nullable File file) {
        return w1(file);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: r1 */
    public j<TranscodeType> n(@Nullable @DrawableRes @RawRes Integer num) {
        return w1(num).a(com.bumptech.glide.request.h.o1(com.bumptech.glide.signature.a.c(this.V)));
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: s1 */
    public j<TranscodeType> m(@Nullable Object obj) {
        return w1(obj);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: t1 */
    public j<TranscodeType> b(@Nullable String str) {
        return w1(str);
    }

    @Override // com.bumptech.glide.h
    @CheckResult
    @Deprecated
    /* renamed from: u1 */
    public j<TranscodeType> c(@Nullable URL url) {
        return w1(url);
    }

    @Override // com.bumptech.glide.h
    @NonNull
    @CheckResult
    /* renamed from: v1 */
    public j<TranscodeType> g(@Nullable byte[] bArr) {
        j<TranscodeType> w12 = w1(bArr);
        if (!w12.Y()) {
            w12 = w12.a(com.bumptech.glide.request.h.X0(com.bumptech.glide.load.engine.j.f8861b));
        }
        return !w12.f0() ? w12.a(com.bumptech.glide.request.h.q1(true)) : w12;
    }

    @NonNull
    public p<TranscodeType> y1() {
        return z1(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @NonNull
    public p<TranscodeType> z1(int i4, int i10) {
        return h1(com.bumptech.glide.request.target.m.c(this.W, i4, i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"CheckResult"})
    public j(Class<TranscodeType> cls, j<?> jVar) {
        this(jVar.f8478g1, jVar.W, cls, jVar.V);
        this.f8484y1 = jVar.f8484y1;
        this.f8483x2 = jVar.f8483x2;
        a(jVar);
    }
}
