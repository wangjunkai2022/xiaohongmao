package com.google.android.datatransport.runtime.backends;

import androidx.annotation.Nullable;
import com.google.android.datatransport.runtime.backends.g;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: AutoValue_BackendRequest.java */
/* loaded from: classes2.dex */
final class a extends g {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<com.google.android.datatransport.runtime.i> f20374a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f20375b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_BackendRequest.java */
    /* loaded from: classes2.dex */
    public static final class b extends g.a {

        /* renamed from: a  reason: collision with root package name */
        private Iterable<com.google.android.datatransport.runtime.i> f20376a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f20377b;

        @Override // com.google.android.datatransport.runtime.backends.g.a
        public g a() {
            String str = "";
            if (this.f20376a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f20376a, this.f20377b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.backends.g.a
        public g.a b(Iterable<com.google.android.datatransport.runtime.i> iterable) {
            Objects.requireNonNull(iterable, "Null events");
            this.f20376a = iterable;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.backends.g.a
        public g.a c(@Nullable byte[] bArr) {
            this.f20377b = bArr;
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    public Iterable<com.google.android.datatransport.runtime.i> c() {
        return this.f20374a;
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    @Nullable
    public byte[] d() {
        return this.f20375b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (this.f20374a.equals(gVar.c())) {
                if (Arrays.equals(this.f20375b, gVar instanceof a ? ((a) gVar).f20375b : gVar.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f20374a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f20375b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f20374a + ", extras=" + Arrays.toString(this.f20375b) + com.alipay.sdk.util.i.f6967d;
    }

    private a(Iterable<com.google.android.datatransport.runtime.i> iterable, @Nullable byte[] bArr) {
        this.f20374a = iterable;
        this.f20375b = bArr;
    }
}
