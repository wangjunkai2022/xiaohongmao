package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;

/* compiled from: SeekMap.java */
/* loaded from: classes2.dex */
public interface b0 {

    /* compiled from: SeekMap.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final c0 f22114a;

        /* renamed from: b  reason: collision with root package name */
        public final c0 f22115b;

        public a(c0 c0Var) {
            this(c0Var, c0Var);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f22114a.equals(aVar.f22114a) && this.f22115b.equals(aVar.f22115b);
        }

        public int hashCode() {
            return (this.f22114a.hashCode() * 31) + this.f22115b.hashCode();
        }

        public String toString() {
            String sb;
            String valueOf = String.valueOf(this.f22114a);
            if (this.f22114a.equals(this.f22115b)) {
                sb = "";
            } else {
                String valueOf2 = String.valueOf(this.f22115b);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 2);
                sb2.append(", ");
                sb2.append(valueOf2);
                sb = sb2.toString();
            }
            StringBuilder sb3 = new StringBuilder(valueOf.length() + 2 + String.valueOf(sb).length());
            sb3.append("[");
            sb3.append(valueOf);
            sb3.append(sb);
            sb3.append("]");
            return sb3.toString();
        }

        public a(c0 c0Var, c0 c0Var2) {
            this.f22114a = (c0) com.google.android.exoplayer2.util.a.g(c0Var);
            this.f22115b = (c0) com.google.android.exoplayer2.util.a.g(c0Var2);
        }
    }

    /* compiled from: SeekMap.java */
    /* loaded from: classes2.dex */
    public static class b implements b0 {

        /* renamed from: d  reason: collision with root package name */
        private final long f22116d;

        /* renamed from: e  reason: collision with root package name */
        private final a f22117e;

        public b(long j4) {
            this(j4, 0L);
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public a e(long j4) {
            return this.f22117e;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean g() {
            return false;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public long i() {
            return this.f22116d;
        }

        public b(long j4, long j10) {
            this.f22116d = j4;
            this.f22117e = new a(j10 == 0 ? c0.f22123c : new c0(0L, j10));
        }
    }

    a e(long j4);

    boolean g();

    long i();
}
