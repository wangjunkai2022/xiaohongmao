package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: Splitter.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.common.base.d f32201a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32202b;

    /* renamed from: c  reason: collision with root package name */
    private final h f32203c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32204d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    public static class a implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.d f32205a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Splitter.java */
        /* renamed from: com.google.common.base.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0205a extends g {
            C0205a(f0 f0Var, CharSequence charSequence) {
                super(f0Var, charSequence);
            }

            @Override // com.google.common.base.f0.g
            int e(int i4) {
                return i4 + 1;
            }

            @Override // com.google.common.base.f0.g
            int f(int i4) {
                return a.this.f32205a.o(this.f32219c, i4);
            }
        }

        a(com.google.common.base.d dVar) {
            this.f32205a = dVar;
        }

        @Override // com.google.common.base.f0.h
        /* renamed from: b */
        public g a(f0 f0Var, CharSequence charSequence) {
            return new C0205a(f0Var, charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    public static class b implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32207a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Splitter.java */
        /* loaded from: classes2.dex */
        public class a extends g {
            a(f0 f0Var, CharSequence charSequence) {
                super(f0Var, charSequence);
            }

            @Override // com.google.common.base.f0.g
            public int e(int i4) {
                return i4 + b.this.f32207a.length();
            }

            /* JADX WARN: Code restructure failed: missing block: B:8:0x0026, code lost:
                r6 = r6 + 1;
             */
            @Override // com.google.common.base.f0.g
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public int f(int r6) {
                /*
                    r5 = this;
                    com.google.common.base.f0$b r0 = com.google.common.base.f0.b.this
                    java.lang.String r0 = r0.f32207a
                    int r0 = r0.length()
                    java.lang.CharSequence r1 = r5.f32219c
                    int r1 = r1.length()
                    int r1 = r1 - r0
                Lf:
                    if (r6 > r1) goto L2d
                    r2 = 0
                L12:
                    if (r2 >= r0) goto L2c
                    java.lang.CharSequence r3 = r5.f32219c
                    int r4 = r2 + r6
                    char r3 = r3.charAt(r4)
                    com.google.common.base.f0$b r4 = com.google.common.base.f0.b.this
                    java.lang.String r4 = r4.f32207a
                    char r4 = r4.charAt(r2)
                    if (r3 == r4) goto L29
                    int r6 = r6 + 1
                    goto Lf
                L29:
                    int r2 = r2 + 1
                    goto L12
                L2c:
                    return r6
                L2d:
                    r6 = -1
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.common.base.f0.b.a.f(int):int");
            }
        }

        b(String str) {
            this.f32207a = str;
        }

        @Override // com.google.common.base.f0.h
        /* renamed from: b */
        public g a(f0 f0Var, CharSequence charSequence) {
            return new a(f0Var, charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    public static class c implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.google.common.base.g f32209a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Splitter.java */
        /* loaded from: classes2.dex */
        public class a extends g {

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ com.google.common.base.f f32210h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(f0 f0Var, CharSequence charSequence, com.google.common.base.f fVar) {
                super(f0Var, charSequence);
                this.f32210h = fVar;
            }

            @Override // com.google.common.base.f0.g
            public int e(int i4) {
                return this.f32210h.a();
            }

            @Override // com.google.common.base.f0.g
            public int f(int i4) {
                if (this.f32210h.c(i4)) {
                    return this.f32210h.f();
                }
                return -1;
            }
        }

        c(com.google.common.base.g gVar) {
            this.f32209a = gVar;
        }

        @Override // com.google.common.base.f0.h
        /* renamed from: b */
        public g a(f0 f0Var, CharSequence charSequence) {
            return new a(f0Var, charSequence, this.f32209a.d(charSequence));
        }
    }

    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    static class d implements h {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f32212a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Splitter.java */
        /* loaded from: classes2.dex */
        public class a extends g {
            a(f0 f0Var, CharSequence charSequence) {
                super(f0Var, charSequence);
            }

            @Override // com.google.common.base.f0.g
            public int e(int i4) {
                return i4;
            }

            @Override // com.google.common.base.f0.g
            public int f(int i4) {
                int i10 = i4 + d.this.f32212a;
                if (i10 < this.f32219c.length()) {
                    return i10;
                }
                return -1;
            }
        }

        d(int i4) {
            this.f32212a = i4;
        }

        @Override // com.google.common.base.f0.h
        /* renamed from: b */
        public g a(f0 f0Var, CharSequence charSequence) {
            return new a(f0Var, charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    public class e implements Iterable<String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f32214a;

        e(CharSequence charSequence) {
            this.f32214a = charSequence;
        }

        @Override // java.lang.Iterable
        public Iterator<String> iterator() {
            return f0.this.p(this.f32214a);
        }

        public String toString() {
            u p9 = u.p(", ");
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            StringBuilder f10 = p9.f(sb, this);
            f10.append(']');
            return f10.toString();
        }
    }

    /* compiled from: Splitter.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static final class f {

        /* renamed from: c  reason: collision with root package name */
        private static final String f32216c = "Chunk [%s] is not a valid entry";

        /* renamed from: a  reason: collision with root package name */
        private final f0 f32217a;

        /* renamed from: b  reason: collision with root package name */
        private final f0 f32218b;

        /* synthetic */ f(f0 f0Var, f0 f0Var2, a aVar) {
            this(f0Var, f0Var2);
        }

        public Map<String, String> a(CharSequence charSequence) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str : this.f32217a.n(charSequence)) {
                Iterator p9 = this.f32218b.p(str);
                a0.u(p9.hasNext(), f32216c, str);
                String str2 = (String) p9.next();
                a0.u(!linkedHashMap.containsKey(str2), "Duplicate key [%s] found.", str2);
                a0.u(p9.hasNext(), f32216c, str);
                linkedHashMap.put(str2, (String) p9.next());
                a0.u(!p9.hasNext(), f32216c, str);
            }
            return Collections.unmodifiableMap(linkedHashMap);
        }

        private f(f0 f0Var, f0 f0Var2) {
            this.f32217a = f0Var;
            this.f32218b = (f0) a0.E(f0Var2);
        }
    }

    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    private static abstract class g extends com.google.common.base.b<String> {

        /* renamed from: c  reason: collision with root package name */
        final CharSequence f32219c;

        /* renamed from: d  reason: collision with root package name */
        final com.google.common.base.d f32220d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f32221e;

        /* renamed from: f  reason: collision with root package name */
        int f32222f = 0;

        /* renamed from: g  reason: collision with root package name */
        int f32223g;

        protected g(f0 f0Var, CharSequence charSequence) {
            this.f32220d = f0Var.f32201a;
            this.f32221e = f0Var.f32202b;
            this.f32223g = f0Var.f32204d;
            this.f32219c = charSequence;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.base.b
        /* renamed from: d */
        public String a() {
            int f10;
            int i4 = this.f32222f;
            while (true) {
                int i10 = this.f32222f;
                if (i10 != -1) {
                    f10 = f(i10);
                    if (f10 == -1) {
                        f10 = this.f32219c.length();
                        this.f32222f = -1;
                    } else {
                        this.f32222f = e(f10);
                    }
                    int i11 = this.f32222f;
                    if (i11 == i4) {
                        int i12 = i11 + 1;
                        this.f32222f = i12;
                        if (i12 > this.f32219c.length()) {
                            this.f32222f = -1;
                        }
                    } else {
                        while (i4 < f10 && this.f32220d.B(this.f32219c.charAt(i4))) {
                            i4++;
                        }
                        while (f10 > i4 && this.f32220d.B(this.f32219c.charAt(f10 - 1))) {
                            f10--;
                        }
                        if (!this.f32221e || i4 != f10) {
                            break;
                        }
                        i4 = this.f32222f;
                    }
                } else {
                    return b();
                }
            }
            int i13 = this.f32223g;
            if (i13 == 1) {
                f10 = this.f32219c.length();
                this.f32222f = -1;
                while (f10 > i4 && this.f32220d.B(this.f32219c.charAt(f10 - 1))) {
                    f10--;
                }
            } else {
                this.f32223g = i13 - 1;
            }
            return this.f32219c.subSequence(i4, f10).toString();
        }

        abstract int e(int i4);

        abstract int f(int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Splitter.java */
    /* loaded from: classes2.dex */
    public interface h {
        Iterator<String> a(f0 f0Var, CharSequence charSequence);
    }

    private f0(h hVar) {
        this(hVar, false, com.google.common.base.d.G(), Integer.MAX_VALUE);
    }

    public static f0 e(int i4) {
        a0.e(i4 > 0, "The length may not be less than 1");
        return new f0(new d(i4));
    }

    public static f0 h(char c10) {
        return i(com.google.common.base.d.q(c10));
    }

    public static f0 i(com.google.common.base.d dVar) {
        a0.E(dVar);
        return new f0(new a(dVar));
    }

    private static f0 j(com.google.common.base.g gVar) {
        a0.u(!gVar.d("").d(), "The pattern may not match the empty string: %s", gVar);
        return new f0(new c(gVar));
    }

    public static f0 k(String str) {
        a0.e(str.length() != 0, "The separator may not be the empty string.");
        if (str.length() == 1) {
            return h(str.charAt(0));
        }
        return new f0(new b(str));
    }

    @h3.c
    public static f0 l(Pattern pattern) {
        return j(new t(pattern));
    }

    @h3.c
    public static f0 m(String str) {
        return j(z.a(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Iterator<String> p(CharSequence charSequence) {
        return this.f32203c.a(this, charSequence);
    }

    public f0 f(int i4) {
        a0.k(i4 > 0, "must be greater than zero: %s", i4);
        return new f0(this.f32203c, this.f32202b, this.f32201a, i4);
    }

    public f0 g() {
        return new f0(this.f32203c, true, this.f32201a, this.f32204d);
    }

    public Iterable<String> n(CharSequence charSequence) {
        a0.E(charSequence);
        return new e(charSequence);
    }

    public List<String> o(CharSequence charSequence) {
        a0.E(charSequence);
        Iterator<String> p9 = p(charSequence);
        ArrayList arrayList = new ArrayList();
        while (p9.hasNext()) {
            arrayList.add(p9.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public f0 q() {
        return r(com.google.common.base.d.X());
    }

    public f0 r(com.google.common.base.d dVar) {
        a0.E(dVar);
        return new f0(this.f32203c, this.f32202b, dVar, this.f32204d);
    }

    @h3.a
    public f s(char c10) {
        return t(h(c10));
    }

    @h3.a
    public f t(f0 f0Var) {
        return new f(this, f0Var, null);
    }

    @h3.a
    public f u(String str) {
        return t(k(str));
    }

    private f0(h hVar, boolean z9, com.google.common.base.d dVar, int i4) {
        this.f32203c = hVar;
        this.f32202b = z9;
        this.f32201a = dVar;
        this.f32204d = i4;
    }
}
