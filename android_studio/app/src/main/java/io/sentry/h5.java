package io.sentry;

import java.io.IOException;
import java.util.UUID;

/* compiled from: SpanId.java */
/* loaded from: classes4.dex */
public final class h5 implements m1 {

    /* renamed from: b  reason: collision with root package name */
    public static final h5 f83292b = new h5(new UUID(0, 0));
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83293a;

    /* compiled from: SpanId.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<h5> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public h5 a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            return new h5(i1Var.M());
        }
    }

    public h5(@m8.g String str) {
        this.f83293a = (String) io.sentry.util.l.c(str, "value is required");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h5.class != obj.getClass()) {
            return false;
        }
        return this.f83293a.equals(((h5) obj).f83293a);
    }

    public int hashCode() {
        return this.f83293a.hashCode();
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.l0(this.f83293a);
    }

    public String toString() {
        return this.f83293a;
    }

    public h5() {
        this(UUID.randomUUID());
    }

    private h5(@m8.g UUID uuid) {
        this(io.sentry.util.q.f(uuid.toString()).replace("-", "").substring(0, 16));
    }
}
