package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.model.animatable.j;
import com.airbnb.lottie.model.animatable.k;
import com.airbnb.lottie.model.animatable.l;
import com.airbnb.lottie.model.content.Mask;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Layer {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.airbnb.lottie.model.content.b> f4546a;

    /* renamed from: b  reason: collision with root package name */
    private final com.airbnb.lottie.f f4547b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4548c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4549d;

    /* renamed from: e  reason: collision with root package name */
    private final LayerType f4550e;

    /* renamed from: f  reason: collision with root package name */
    private final long f4551f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f4552g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Mask> f4553h;

    /* renamed from: i  reason: collision with root package name */
    private final l f4554i;

    /* renamed from: j  reason: collision with root package name */
    private final int f4555j;

    /* renamed from: k  reason: collision with root package name */
    private final int f4556k;

    /* renamed from: l  reason: collision with root package name */
    private final int f4557l;

    /* renamed from: m  reason: collision with root package name */
    private final float f4558m;

    /* renamed from: n  reason: collision with root package name */
    private final float f4559n;

    /* renamed from: o  reason: collision with root package name */
    private final int f4560o;

    /* renamed from: p  reason: collision with root package name */
    private final int f4561p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final j f4562q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final k f4563r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4564s;

    /* renamed from: t  reason: collision with root package name */
    private final List<com.airbnb.lottie.value.a<Float>> f4565t;

    /* renamed from: u  reason: collision with root package name */
    private final MatteType f4566u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f4567v;

    /* loaded from: classes.dex */
    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* loaded from: classes.dex */
    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        UNKNOWN
    }

    public Layer(List<com.airbnb.lottie.model.content.b> list, com.airbnb.lottie.f fVar, String str, long j4, LayerType layerType, long j10, @Nullable String str2, List<Mask> list2, l lVar, int i4, int i10, int i11, float f10, float f11, int i12, int i13, @Nullable j jVar, @Nullable k kVar, List<com.airbnb.lottie.value.a<Float>> list3, MatteType matteType, @Nullable com.airbnb.lottie.model.animatable.b bVar, boolean z9) {
        this.f4546a = list;
        this.f4547b = fVar;
        this.f4548c = str;
        this.f4549d = j4;
        this.f4550e = layerType;
        this.f4551f = j10;
        this.f4552g = str2;
        this.f4553h = list2;
        this.f4554i = lVar;
        this.f4555j = i4;
        this.f4556k = i10;
        this.f4557l = i11;
        this.f4558m = f10;
        this.f4559n = f11;
        this.f4560o = i12;
        this.f4561p = i13;
        this.f4562q = jVar;
        this.f4563r = kVar;
        this.f4565t = list3;
        this.f4566u = matteType;
        this.f4564s = bVar;
        this.f4567v = z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.airbnb.lottie.f a() {
        return this.f4547b;
    }

    public long b() {
        return this.f4549d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.airbnb.lottie.value.a<Float>> c() {
        return this.f4565t;
    }

    public LayerType d() {
        return this.f4550e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Mask> e() {
        return this.f4553h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MatteType f() {
        return this.f4566u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        return this.f4548c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.f4551f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i() {
        return this.f4561p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        return this.f4560o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String k() {
        return this.f4552g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.airbnb.lottie.model.content.b> l() {
        return this.f4546a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        return this.f4557l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int n() {
        return this.f4556k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o() {
        return this.f4555j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float p() {
        return this.f4559n / this.f4547b.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public j q() {
        return this.f4562q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public k r() {
        return this.f4563r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public com.airbnb.lottie.model.animatable.b s() {
        return this.f4564s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float t() {
        return this.f4558m;
    }

    public String toString() {
        return w("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l u() {
        return this.f4554i;
    }

    public boolean v() {
        return this.f4567v;
    }

    public String w(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(g());
        sb.append("\n");
        Layer v9 = this.f4547b.v(h());
        if (v9 != null) {
            sb.append("\t\tParents: ");
            sb.append(v9.g());
            Layer v10 = this.f4547b.v(v9.h());
            while (v10 != null) {
                sb.append("->");
                sb.append(v10.g());
                v10 = this.f4547b.v(v10.h());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!e().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(e().size());
            sb.append("\n");
        }
        if (o() != 0 && n() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(o()), Integer.valueOf(n()), Integer.valueOf(m())));
        }
        if (!this.f4546a.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (com.airbnb.lottie.model.content.b bVar : this.f4546a) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(bVar);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
