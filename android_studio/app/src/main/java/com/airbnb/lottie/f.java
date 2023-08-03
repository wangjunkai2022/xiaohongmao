package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: LottieComposition.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    private Map<String, List<Layer>> f4256c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, i> f4257d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, com.airbnb.lottie.model.b> f4258e;

    /* renamed from: f  reason: collision with root package name */
    private List<com.airbnb.lottie.model.g> f4259f;

    /* renamed from: g  reason: collision with root package name */
    private SparseArrayCompat<com.airbnb.lottie.model.c> f4260g;

    /* renamed from: h  reason: collision with root package name */
    private LongSparseArray<Layer> f4261h;

    /* renamed from: i  reason: collision with root package name */
    private List<Layer> f4262i;

    /* renamed from: j  reason: collision with root package name */
    private Rect f4263j;

    /* renamed from: k  reason: collision with root package name */
    private float f4264k;

    /* renamed from: l  reason: collision with root package name */
    private float f4265l;

    /* renamed from: m  reason: collision with root package name */
    private float f4266m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f4267n;

    /* renamed from: a  reason: collision with root package name */
    private final q f4254a = new q();

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<String> f4255b = new HashSet<>();

    /* renamed from: o  reason: collision with root package name */
    private int f4268o = 0;

    /* compiled from: LottieComposition.java */
    @Deprecated
    /* loaded from: classes.dex */
    public static class b {

        /* compiled from: LottieComposition.java */
        /* loaded from: classes.dex */
        private static final class a implements j<f>, com.airbnb.lottie.b {

            /* renamed from: a  reason: collision with root package name */
            private final p f4269a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f4270b;

            @Override // com.airbnb.lottie.j
            /* renamed from: b */
            public void a(f fVar) {
                if (this.f4270b) {
                    return;
                }
                this.f4269a.a(fVar);
            }

            @Override // com.airbnb.lottie.b
            public void cancel() {
                this.f4270b = true;
            }

            private a(p pVar) {
                this.f4270b = false;
                this.f4269a = pVar;
            }
        }

        private b() {
        }

        @Deprecated
        public static com.airbnb.lottie.b a(Context context, String str, p pVar) {
            a aVar = new a(pVar);
            g.d(context, str).f(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static f b(Context context, String str) {
            return g.e(context, str).b();
        }

        @Deprecated
        public static com.airbnb.lottie.b c(InputStream inputStream, p pVar) {
            a aVar = new a(pVar);
            g.g(inputStream, null).f(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static f d(InputStream inputStream) {
            return g.h(inputStream, null).b();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static f e(InputStream inputStream, boolean z9) {
            if (z9) {
                com.airbnb.lottie.utils.d.d("Lottie now auto-closes input stream!");
            }
            return g.h(inputStream, null).b();
        }

        @Deprecated
        public static com.airbnb.lottie.b f(JsonReader jsonReader, p pVar) {
            a aVar = new a(pVar);
            g.j(jsonReader, null).f(aVar);
            return aVar;
        }

        @Deprecated
        public static com.airbnb.lottie.b g(String str, p pVar) {
            a aVar = new a(pVar);
            g.m(str, null).f(aVar);
            return aVar;
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static f h(Resources resources, JSONObject jSONObject) {
            return g.o(jSONObject, null).b();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static f i(JsonReader jsonReader) throws IOException {
            return g.k(jsonReader, null).b();
        }

        @Nullable
        @WorkerThread
        @Deprecated
        public static f j(String str) {
            return g.n(str, null).b();
        }

        @Deprecated
        public static com.airbnb.lottie.b k(Context context, @RawRes int i4, p pVar) {
            a aVar = new a(pVar);
            g.p(context, i4).f(aVar);
            return aVar;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void a(String str) {
        com.airbnb.lottie.utils.d.d(str);
        this.f4255b.add(str);
    }

    public Rect b() {
        return this.f4263j;
    }

    public SparseArrayCompat<com.airbnb.lottie.model.c> c() {
        return this.f4260g;
    }

    public float d() {
        return (e() / this.f4266m) * 1000.0f;
    }

    public float e() {
        return this.f4265l - this.f4264k;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float f() {
        return this.f4265l;
    }

    public Map<String, com.airbnb.lottie.model.b> g() {
        return this.f4258e;
    }

    public float h() {
        return this.f4266m;
    }

    public Map<String, i> i() {
        return this.f4257d;
    }

    public List<Layer> j() {
        return this.f4262i;
    }

    @Nullable
    public com.airbnb.lottie.model.g k(String str) {
        this.f4259f.size();
        for (int i4 = 0; i4 < this.f4259f.size(); i4++) {
            com.airbnb.lottie.model.g gVar = this.f4259f.get(i4);
            if (gVar.a(str)) {
                return gVar;
            }
        }
        return null;
    }

    public List<com.airbnb.lottie.model.g> l() {
        return this.f4259f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int m() {
        return this.f4268o;
    }

    public q n() {
        return this.f4254a;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public List<Layer> o(String str) {
        return this.f4256c.get(str);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public float p() {
        return this.f4264k;
    }

    public ArrayList<String> q() {
        HashSet<String> hashSet = this.f4255b;
        return new ArrayList<>(Arrays.asList(hashSet.toArray(new String[hashSet.size()])));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean r() {
        return this.f4267n;
    }

    public boolean s() {
        return !this.f4257d.isEmpty();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void t(int i4) {
        this.f4268o += i4;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (Layer layer : this.f4262i) {
            sb.append(layer.w("\t"));
        }
        return sb.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void u(Rect rect, float f10, float f11, float f12, List<Layer> list, LongSparseArray<Layer> longSparseArray, Map<String, List<Layer>> map, Map<String, i> map2, SparseArrayCompat<com.airbnb.lottie.model.c> sparseArrayCompat, Map<String, com.airbnb.lottie.model.b> map3, List<com.airbnb.lottie.model.g> list2) {
        this.f4263j = rect;
        this.f4264k = f10;
        this.f4265l = f11;
        this.f4266m = f12;
        this.f4262i = list;
        this.f4261h = longSparseArray;
        this.f4256c = map;
        this.f4257d = map2;
        this.f4260g = sparseArrayCompat;
        this.f4258e = map3;
        this.f4259f = list2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Layer v(long j4) {
        return this.f4261h.get(j4);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void w(boolean z9) {
        this.f4267n = z9;
    }

    public void x(boolean z9) {
        this.f4254a.g(z9);
    }
}
