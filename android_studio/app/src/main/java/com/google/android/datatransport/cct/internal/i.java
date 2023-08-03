package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;

/* compiled from: AutoValue_NetworkConnectionInfo.java */
/* loaded from: classes2.dex */
final class i extends NetworkConnectionInfo {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkConnectionInfo.NetworkType f20346a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkConnectionInfo.MobileSubtype f20347b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_NetworkConnectionInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends NetworkConnectionInfo.a {

        /* renamed from: a  reason: collision with root package name */
        private NetworkConnectionInfo.NetworkType f20348a;

        /* renamed from: b  reason: collision with root package name */
        private NetworkConnectionInfo.MobileSubtype f20349b;

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo a() {
            return new i(this.f20348a, this.f20349b);
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a b(@Nullable NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f20349b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a c(@Nullable NetworkConnectionInfo.NetworkType networkType) {
            this.f20348a = networkType;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    @Nullable
    public NetworkConnectionInfo.MobileSubtype b() {
        return this.f20347b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    @Nullable
    public NetworkConnectionInfo.NetworkType c() {
        return this.f20346a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NetworkConnectionInfo) {
            NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
            NetworkConnectionInfo.NetworkType networkType = this.f20346a;
            if (networkType != null ? networkType.equals(networkConnectionInfo.c()) : networkConnectionInfo.c() == null) {
                NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f20347b;
                if (mobileSubtype == null) {
                    if (networkConnectionInfo.b() == null) {
                        return true;
                    }
                } else if (mobileSubtype.equals(networkConnectionInfo.b())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        NetworkConnectionInfo.NetworkType networkType = this.f20346a;
        int hashCode = ((networkType == null ? 0 : networkType.hashCode()) ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f20347b;
        return hashCode ^ (mobileSubtype != null ? mobileSubtype.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f20346a + ", mobileSubtype=" + this.f20347b + com.alipay.sdk.util.i.f6967d;
    }

    private i(@Nullable NetworkConnectionInfo.NetworkType networkType, @Nullable NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f20346a = networkType;
        this.f20347b = mobileSubtype;
    }
}
