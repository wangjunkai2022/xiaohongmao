package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.n;
import java.util.Objects;

/* compiled from: AutoValue_SendRequest.java */
/* loaded from: classes2.dex */
final class b extends n {

    /* renamed from: a  reason: collision with root package name */
    private final o f20363a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20364b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.d<?> f20365c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.f<?, byte[]> f20366d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.datatransport.c f20367e;

    /* compiled from: AutoValue_SendRequest.java */
    /* renamed from: com.google.android.datatransport.runtime.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0150b extends n.a {

        /* renamed from: a  reason: collision with root package name */
        private o f20368a;

        /* renamed from: b  reason: collision with root package name */
        private String f20369b;

        /* renamed from: c  reason: collision with root package name */
        private com.google.android.datatransport.d<?> f20370c;

        /* renamed from: d  reason: collision with root package name */
        private com.google.android.datatransport.f<?, byte[]> f20371d;

        /* renamed from: e  reason: collision with root package name */
        private com.google.android.datatransport.c f20372e;

        @Override // com.google.android.datatransport.runtime.n.a
        public n a() {
            String str = "";
            if (this.f20368a == null) {
                str = " transportContext";
            }
            if (this.f20369b == null) {
                str = str + " transportName";
            }
            if (this.f20370c == null) {
                str = str + " event";
            }
            if (this.f20371d == null) {
                str = str + " transformer";
            }
            if (this.f20372e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new b(this.f20368a, this.f20369b, this.f20370c, this.f20371d, this.f20372e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.n.a
        n.a b(com.google.android.datatransport.c cVar) {
            Objects.requireNonNull(cVar, "Null encoding");
            this.f20372e = cVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        n.a c(com.google.android.datatransport.d<?> dVar) {
            Objects.requireNonNull(dVar, "Null event");
            this.f20370c = dVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        n.a e(com.google.android.datatransport.f<?, byte[]> fVar) {
            Objects.requireNonNull(fVar, "Null transformer");
            this.f20371d = fVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        public n.a f(o oVar) {
            Objects.requireNonNull(oVar, "Null transportContext");
            this.f20368a = oVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        public n.a g(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f20369b = str;
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.n
    public com.google.android.datatransport.c b() {
        return this.f20367e;
    }

    @Override // com.google.android.datatransport.runtime.n
    com.google.android.datatransport.d<?> c() {
        return this.f20365c;
    }

    @Override // com.google.android.datatransport.runtime.n
    com.google.android.datatransport.f<?, byte[]> e() {
        return this.f20366d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            return this.f20363a.equals(nVar.f()) && this.f20364b.equals(nVar.g()) && this.f20365c.equals(nVar.c()) && this.f20366d.equals(nVar.e()) && this.f20367e.equals(nVar.b());
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.n
    public o f() {
        return this.f20363a;
    }

    @Override // com.google.android.datatransport.runtime.n
    public String g() {
        return this.f20364b;
    }

    public int hashCode() {
        return ((((((((this.f20363a.hashCode() ^ 1000003) * 1000003) ^ this.f20364b.hashCode()) * 1000003) ^ this.f20365c.hashCode()) * 1000003) ^ this.f20366d.hashCode()) * 1000003) ^ this.f20367e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f20363a + ", transportName=" + this.f20364b + ", event=" + this.f20365c + ", transformer=" + this.f20366d + ", encoding=" + this.f20367e + com.alipay.sdk.util.i.f6967d;
    }

    private b(o oVar, String str, com.google.android.datatransport.d<?> dVar, com.google.android.datatransport.f<?, byte[]> fVar, com.google.android.datatransport.c cVar) {
        this.f20363a = oVar;
        this.f20364b = str;
        this.f20365c = dVar;
        this.f20366d = fVar;
        this.f20367e = cVar;
    }
}
