package com.google.android.datatransport.runtime;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.o;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: AutoValue_TransportContext.java */
/* loaded from: classes2.dex */
final class c extends o {

    /* renamed from: a  reason: collision with root package name */
    private final String f20400a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f20401b;

    /* renamed from: c  reason: collision with root package name */
    private final Priority f20402c;

    /* compiled from: AutoValue_TransportContext.java */
    /* loaded from: classes2.dex */
    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private String f20403a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f20404b;

        /* renamed from: c  reason: collision with root package name */
        private Priority f20405c;

        @Override // com.google.android.datatransport.runtime.o.a
        public o a() {
            String str = "";
            if (this.f20403a == null) {
                str = " backendName";
            }
            if (this.f20405c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new c(this.f20403a, this.f20404b, this.f20405c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f20403a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a c(@Nullable byte[] bArr) {
            this.f20404b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a d(Priority priority) {
            Objects.requireNonNull(priority, "Null priority");
            this.f20405c = priority;
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.o
    public String b() {
        return this.f20400a;
    }

    @Override // com.google.android.datatransport.runtime.o
    @Nullable
    public byte[] c() {
        return this.f20401b;
    }

    @Override // com.google.android.datatransport.runtime.o
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Priority d() {
        return this.f20402c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f20400a.equals(oVar.b())) {
                if (Arrays.equals(this.f20401b, oVar instanceof c ? ((c) oVar).f20401b : oVar.c()) && this.f20402c.equals(oVar.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f20400a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f20401b)) * 1000003) ^ this.f20402c.hashCode();
    }

    private c(String str, @Nullable byte[] bArr, Priority priority) {
        this.f20400a = str;
        this.f20401b = bArr;
        this.f20402c = priority;
    }
}
