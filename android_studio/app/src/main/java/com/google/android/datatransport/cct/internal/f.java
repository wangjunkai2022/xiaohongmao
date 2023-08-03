package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.k;
import java.util.Arrays;

/* compiled from: AutoValue_LogEvent.java */
/* loaded from: classes2.dex */
final class f extends k {

    /* renamed from: a  reason: collision with root package name */
    private final long f20317a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f20318b;

    /* renamed from: c  reason: collision with root package name */
    private final long f20319c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f20320d;

    /* renamed from: e  reason: collision with root package name */
    private final String f20321e;

    /* renamed from: f  reason: collision with root package name */
    private final long f20322f;

    /* renamed from: g  reason: collision with root package name */
    private final NetworkConnectionInfo f20323g;

    /* compiled from: AutoValue_LogEvent.java */
    /* loaded from: classes2.dex */
    static final class b extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20324a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f20325b;

        /* renamed from: c  reason: collision with root package name */
        private Long f20326c;

        /* renamed from: d  reason: collision with root package name */
        private byte[] f20327d;

        /* renamed from: e  reason: collision with root package name */
        private String f20328e;

        /* renamed from: f  reason: collision with root package name */
        private Long f20329f;

        /* renamed from: g  reason: collision with root package name */
        private NetworkConnectionInfo f20330g;

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k a() {
            String str = "";
            if (this.f20324a == null) {
                str = " eventTimeMs";
            }
            if (this.f20326c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f20329f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new f(this.f20324a.longValue(), this.f20325b, this.f20326c.longValue(), this.f20327d, this.f20328e, this.f20329f.longValue(), this.f20330g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a b(@Nullable Integer num) {
            this.f20325b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a c(long j4) {
            this.f20324a = Long.valueOf(j4);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a d(long j4) {
            this.f20326c = Long.valueOf(j4);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a e(@Nullable NetworkConnectionInfo networkConnectionInfo) {
            this.f20330g = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        k.a f(@Nullable byte[] bArr) {
            this.f20327d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        k.a g(@Nullable String str) {
            this.f20328e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.k.a
        public k.a h(long j4) {
            this.f20329f = Long.valueOf(j4);
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public Integer b() {
        return this.f20318b;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    public long c() {
        return this.f20317a;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    public long d() {
        return this.f20319c;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public NetworkConnectionInfo e() {
        return this.f20323g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f20317a == kVar.c() && ((num = this.f20318b) != null ? num.equals(kVar.b()) : kVar.b() == null) && this.f20319c == kVar.d()) {
                if (Arrays.equals(this.f20320d, kVar instanceof f ? ((f) kVar).f20320d : kVar.f()) && ((str = this.f20321e) != null ? str.equals(kVar.g()) : kVar.g() == null) && this.f20322f == kVar.h()) {
                    NetworkConnectionInfo networkConnectionInfo = this.f20323g;
                    if (networkConnectionInfo == null) {
                        if (kVar.e() == null) {
                            return true;
                        }
                    } else if (networkConnectionInfo.equals(kVar.e())) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public byte[] f() {
        return this.f20320d;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    @Nullable
    public String g() {
        return this.f20321e;
    }

    @Override // com.google.android.datatransport.cct.internal.k
    public long h() {
        return this.f20322f;
    }

    public int hashCode() {
        long j4 = this.f20317a;
        int i4 = (((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f20318b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j10 = this.f20319c;
        int hashCode2 = (((((i4 ^ hashCode) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f20320d)) * 1000003;
        String str = this.f20321e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j11 = this.f20322f;
        int i10 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f20323g;
        return i10 ^ (networkConnectionInfo != null ? networkConnectionInfo.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f20317a + ", eventCode=" + this.f20318b + ", eventUptimeMs=" + this.f20319c + ", sourceExtension=" + Arrays.toString(this.f20320d) + ", sourceExtensionJsonProto3=" + this.f20321e + ", timezoneOffsetSeconds=" + this.f20322f + ", networkConnectionInfo=" + this.f20323g + com.alipay.sdk.util.i.f6967d;
    }

    private f(long j4, @Nullable Integer num, long j10, @Nullable byte[] bArr, @Nullable String str, long j11, @Nullable NetworkConnectionInfo networkConnectionInfo) {
        this.f20317a = j4;
        this.f20318b = num;
        this.f20319c = j10;
        this.f20320d = bArr;
        this.f20321e = str;
        this.f20322f = j11;
        this.f20323g = networkConnectionInfo;
    }
}
