package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.i;
import java.util.Map;
import java.util.Objects;

/* compiled from: AutoValue_EventInternal.java */
/* loaded from: classes2.dex */
final class a extends i {

    /* renamed from: a  reason: collision with root package name */
    private final String f20351a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f20352b;

    /* renamed from: c  reason: collision with root package name */
    private final h f20353c;

    /* renamed from: d  reason: collision with root package name */
    private final long f20354d;

    /* renamed from: e  reason: collision with root package name */
    private final long f20355e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f20356f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_EventInternal.java */
    /* loaded from: classes2.dex */
    public static final class b extends i.a {

        /* renamed from: a  reason: collision with root package name */
        private String f20357a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f20358b;

        /* renamed from: c  reason: collision with root package name */
        private h f20359c;

        /* renamed from: d  reason: collision with root package name */
        private Long f20360d;

        /* renamed from: e  reason: collision with root package name */
        private Long f20361e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f20362f;

        @Override // com.google.android.datatransport.runtime.i.a
        public i d() {
            String str = "";
            if (this.f20357a == null) {
                str = " transportName";
            }
            if (this.f20359c == null) {
                str = str + " encodedPayload";
            }
            if (this.f20360d == null) {
                str = str + " eventMillis";
            }
            if (this.f20361e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f20362f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new a(this.f20357a, this.f20358b, this.f20359c, this.f20360d.longValue(), this.f20361e.longValue(), this.f20362f);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.i.a
        protected Map<String, String> e() {
            Map<String, String> map = this.f20362f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.datatransport.runtime.i.a
        public i.a f(Map<String, String> map) {
            Objects.requireNonNull(map, "Null autoMetadata");
            this.f20362f = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a g(Integer num) {
            this.f20358b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a h(h hVar) {
            Objects.requireNonNull(hVar, "Null encodedPayload");
            this.f20359c = hVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a i(long j4) {
            this.f20360d = Long.valueOf(j4);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a j(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f20357a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a k(long j4) {
            this.f20361e = Long.valueOf(j4);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.datatransport.runtime.i
    public Map<String, String> c() {
        return this.f20356f;
    }

    @Override // com.google.android.datatransport.runtime.i
    @Nullable
    public Integer d() {
        return this.f20352b;
    }

    @Override // com.google.android.datatransport.runtime.i
    public h e() {
        return this.f20353c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return this.f20351a.equals(iVar.l()) && ((num = this.f20352b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f20353c.equals(iVar.e()) && this.f20354d == iVar.f() && this.f20355e == iVar.m() && this.f20356f.equals(iVar.c());
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.i
    public long f() {
        return this.f20354d;
    }

    public int hashCode() {
        int hashCode = (this.f20351a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f20352b;
        int hashCode2 = num == null ? 0 : num.hashCode();
        long j4 = this.f20354d;
        long j10 = this.f20355e;
        return ((((((((hashCode ^ hashCode2) * 1000003) ^ this.f20353c.hashCode()) * 1000003) ^ ((int) (j4 ^ (j4 >>> 32)))) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ this.f20356f.hashCode();
    }

    @Override // com.google.android.datatransport.runtime.i
    public String l() {
        return this.f20351a;
    }

    @Override // com.google.android.datatransport.runtime.i
    public long m() {
        return this.f20355e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f20351a + ", code=" + this.f20352b + ", encodedPayload=" + this.f20353c + ", eventMillis=" + this.f20354d + ", uptimeMillis=" + this.f20355e + ", autoMetadata=" + this.f20356f + com.alipay.sdk.util.i.f6967d;
    }

    private a(String str, @Nullable Integer num, h hVar, long j4, long j10, Map<String, String> map) {
        this.f20351a = str;
        this.f20352b = num;
        this.f20353c = hVar;
        this.f20354d = j4;
        this.f20355e = j10;
        this.f20356f = map;
    }
}
