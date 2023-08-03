package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import m8.a;

/* compiled from: JsonObjectDeserializer.java */
@a.c
/* loaded from: classes4.dex */
public final class h1 {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<c> f83259a = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f83260a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f83260a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f83260a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f83260a[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f83260a[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f83260a[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f83260a[JsonToken.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f83260a[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f83260a[JsonToken.BOOLEAN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f83260a[JsonToken.NULL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f83260a[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public interface b {
        @m8.h
        Object a() throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public interface c {
        @m8.g
        Object getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public static final class f implements c {

        /* renamed from: a  reason: collision with root package name */
        final String f83263a;

        f(@m8.g String str) {
            this.f83263a = str;
        }

        @Override // io.sentry.h1.c
        @m8.g
        public Object getValue() {
            return this.f83263a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public static final class g implements c {

        /* renamed from: a  reason: collision with root package name */
        final Object f83264a;

        g(@m8.g Object obj) {
            this.f83264a = obj;
        }

        @Override // io.sentry.h1.c
        @m8.g
        public Object getValue() {
            return this.f83264a;
        }
    }

    @m8.h
    private c d() {
        if (this.f83259a.isEmpty()) {
            return null;
        }
        ArrayList<c> arrayList = this.f83259a;
        return arrayList.get(arrayList.size() - 1);
    }

    private boolean e() {
        if (g()) {
            return true;
        }
        c d4 = d();
        l();
        if (d() instanceof f) {
            f fVar = (f) d();
            l();
            e eVar = (e) d();
            if (fVar == null || d4 == null || eVar == null) {
                return false;
            }
            eVar.f83262a.put(fVar.f83263a, d4.getValue());
            return false;
        } else if (d() instanceof d) {
            d dVar = (d) d();
            if (d4 == null || dVar == null) {
                return false;
            }
            dVar.f83261a.add(d4.getValue());
            return false;
        } else {
            return false;
        }
    }

    private boolean f(b bVar) throws IOException {
        Object a10 = bVar.a();
        if (d() == null && a10 != null) {
            m(new g(a10));
            return true;
        } else if (d() instanceof f) {
            l();
            ((e) d()).f83262a.put(((f) d()).f83263a, a10);
            return false;
        } else if (d() instanceof d) {
            ((d) d()).f83261a.add(a10);
            return false;
        } else {
            return false;
        }
    }

    private boolean g() {
        return this.f83259a.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object i() throws IOException {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public Object h(i1 i1Var) throws IOException {
        try {
            try {
                return Integer.valueOf(i1Var.G());
            } catch (Exception unused) {
                return Long.valueOf(i1Var.H());
            }
        } catch (Exception unused2) {
            return Double.valueOf(i1Var.E());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void k(@m8.g final i1 i1Var) throws IOException {
        boolean z9;
        switch (a.f83260a[i1Var.X().ordinal()]) {
            case 1:
                i1Var.a();
                m(new d(null));
                z9 = false;
                break;
            case 2:
                i1Var.k();
                z9 = e();
                break;
            case 3:
                i1Var.b();
                m(new e(null));
                z9 = false;
                break;
            case 4:
                i1Var.p();
                z9 = e();
                break;
            case 5:
                m(new f(i1Var.I()));
                z9 = false;
                break;
            case 6:
                z9 = f(new b() { // from class: io.sentry.f1
                    @Override // io.sentry.h1.b
                    public final Object a() {
                        return i1.this.M();
                    }
                });
                break;
            case 7:
                z9 = f(new b() { // from class: io.sentry.d1
                    @Override // io.sentry.h1.b
                    public final Object a() {
                        Object h4;
                        h4 = h1.this.h(i1Var);
                        return h4;
                    }
                });
                break;
            case 8:
                z9 = f(new b() { // from class: io.sentry.e1
                    @Override // io.sentry.h1.b
                    public final Object a() {
                        return Boolean.valueOf(i1.this.D());
                    }
                });
                break;
            case 9:
                i1Var.K();
                z9 = f(g1.f83227a);
                break;
            case 10:
                z9 = true;
                break;
            default:
                z9 = false;
                break;
        }
        if (z9) {
            return;
        }
        k(i1Var);
    }

    private void l() {
        if (this.f83259a.isEmpty()) {
            return;
        }
        ArrayList<c> arrayList = this.f83259a;
        arrayList.remove(arrayList.size() - 1);
    }

    private void m(c cVar) {
        this.f83259a.add(cVar);
    }

    @m8.h
    public Object c(@m8.g i1 i1Var) throws IOException {
        k(i1Var);
        c d4 = d();
        if (d4 != null) {
            return d4.getValue();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<Object> f83261a;

        private d() {
            this.f83261a = new ArrayList<>();
        }

        @Override // io.sentry.h1.c
        @m8.g
        public Object getValue() {
            return this.f83261a;
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: JsonObjectDeserializer.java */
    /* loaded from: classes4.dex */
    public static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        final HashMap<String, Object> f83262a;

        private e() {
            this.f83262a = new HashMap<>();
        }

        @Override // io.sentry.h1.c
        @m8.g
        public Object getValue() {
            return this.f83262a;
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }
}
