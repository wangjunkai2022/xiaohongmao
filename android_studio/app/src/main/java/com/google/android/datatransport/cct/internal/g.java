package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.l;
import java.util.List;
import l3.a;

/* compiled from: AutoValue_LogRequest.java */
/* loaded from: classes2.dex */
final class g extends l {

    /* renamed from: a  reason: collision with root package name */
    private final long f20331a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20332b;

    /* renamed from: c  reason: collision with root package name */
    private final ClientInfo f20333c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f20334d;

    /* renamed from: e  reason: collision with root package name */
    private final String f20335e;

    /* renamed from: f  reason: collision with root package name */
    private final List<k> f20336f;

    /* renamed from: g  reason: collision with root package name */
    private final QosTier f20337g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_LogRequest.java */
    /* loaded from: classes2.dex */
    public static final class b extends l.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20338a;

        /* renamed from: b  reason: collision with root package name */
        private Long f20339b;

        /* renamed from: c  reason: collision with root package name */
        private ClientInfo f20340c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f20341d;

        /* renamed from: e  reason: collision with root package name */
        private String f20342e;

        /* renamed from: f  reason: collision with root package name */
        private List<k> f20343f;

        /* renamed from: g  reason: collision with root package name */
        private QosTier f20344g;

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l a() {
            String str = "";
            if (this.f20338a == null) {
                str = " requestTimeMs";
            }
            if (this.f20339b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.f20338a.longValue(), this.f20339b.longValue(), this.f20340c, this.f20341d, this.f20342e, this.f20343f, this.f20344g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a b(@Nullable ClientInfo clientInfo) {
            this.f20340c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a c(@Nullable List<k> list) {
            this.f20343f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        l.a d(@Nullable Integer num) {
            this.f20341d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        l.a e(@Nullable String str) {
            this.f20342e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a f(@Nullable QosTier qosTier) {
            this.f20344g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a g(long j4) {
            this.f20338a = Long.valueOf(j4);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.l.a
        public l.a h(long j4) {
            this.f20339b = Long.valueOf(j4);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public ClientInfo b() {
        return this.f20333c;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    @a.InterfaceC0771a(name = "logEvent")
    public List<k> c() {
        return this.f20336f;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public Integer d() {
        return this.f20334d;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public String e() {
        return this.f20335e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<k> list;
        if (obj == this) {
            return true;
        }
        if (obj instanceof l) {
            l lVar = (l) obj;
            if (this.f20331a == lVar.g() && this.f20332b == lVar.h() && ((clientInfo = this.f20333c) != null ? clientInfo.equals(lVar.b()) : lVar.b() == null) && ((num = this.f20334d) != null ? num.equals(lVar.d()) : lVar.d() == null) && ((str = this.f20335e) != null ? str.equals(lVar.e()) : lVar.e() == null) && ((list = this.f20336f) != null ? list.equals(lVar.c()) : lVar.c() == null)) {
                QosTier qosTier = this.f20337g;
                if (qosTier == null) {
                    if (lVar.f() == null) {
                        return true;
                    }
                } else if (qosTier.equals(lVar.f())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    @Nullable
    public QosTier f() {
        return this.f20337g;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    public long g() {
        return this.f20331a;
    }

    @Override // com.google.android.datatransport.cct.internal.l
    public long h() {
        return this.f20332b;
    }

    public int hashCode() {
        long j4 = this.f20331a;
        long j10 = this.f20332b;
        int i4 = (((((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003;
        ClientInfo clientInfo = this.f20333c;
        int hashCode = (i4 ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.f20334d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f20335e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<k> list = this.f20336f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f20337g;
        return hashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f20331a + ", requestUptimeMs=" + this.f20332b + ", clientInfo=" + this.f20333c + ", logSource=" + this.f20334d + ", logSourceName=" + this.f20335e + ", logEvents=" + this.f20336f + ", qosTier=" + this.f20337g + com.alipay.sdk.util.i.f6967d;
    }

    private g(long j4, long j10, @Nullable ClientInfo clientInfo, @Nullable Integer num, @Nullable String str, @Nullable List<k> list, @Nullable QosTier qosTier) {
        this.f20331a = j4;
        this.f20332b = j10;
        this.f20333c = clientInfo;
        this.f20334d = num;
        this.f20335e = str;
        this.f20336f = list;
        this.f20337g = qosTier;
    }
}
