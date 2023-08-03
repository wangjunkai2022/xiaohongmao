package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.ClientInfo;

/* compiled from: AutoValue_ClientInfo.java */
/* loaded from: classes2.dex */
final class e extends ClientInfo {

    /* renamed from: a  reason: collision with root package name */
    private final ClientInfo.ClientType f20313a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.cct.internal.a f20314b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_ClientInfo.java */
    /* loaded from: classes2.dex */
    public static final class b extends ClientInfo.a {

        /* renamed from: a  reason: collision with root package name */
        private ClientInfo.ClientType f20315a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.datatransport.cct.internal.a f20316b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo a() {
            return new e(this.f20315a, this.f20316b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a b(@Nullable com.google.android.datatransport.cct.internal.a aVar) {
            this.f20316b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.a
        public ClientInfo.a c(@Nullable ClientInfo.ClientType clientType) {
            this.f20315a = clientType;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    @Nullable
    public com.google.android.datatransport.cct.internal.a b() {
        return this.f20314b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    @Nullable
    public ClientInfo.ClientType c() {
        return this.f20313a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ClientInfo) {
            ClientInfo clientInfo = (ClientInfo) obj;
            ClientInfo.ClientType clientType = this.f20313a;
            if (clientType != null ? clientType.equals(clientInfo.c()) : clientInfo.c() == null) {
                com.google.android.datatransport.cct.internal.a aVar = this.f20314b;
                if (aVar == null) {
                    if (clientInfo.b() == null) {
                        return true;
                    }
                } else if (aVar.equals(clientInfo.b())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        ClientInfo.ClientType clientType = this.f20313a;
        int hashCode = ((clientType == null ? 0 : clientType.hashCode()) ^ 1000003) * 1000003;
        com.google.android.datatransport.cct.internal.a aVar = this.f20314b;
        return hashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f20313a + ", androidClientInfo=" + this.f20314b + com.alipay.sdk.util.i.f6967d;
    }

    private e(@Nullable ClientInfo.ClientType clientType, @Nullable com.google.android.datatransport.cct.internal.a aVar) {
        this.f20313a = clientType;
        this.f20314b = aVar;
    }
}
