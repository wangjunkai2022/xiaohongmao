package io.sentry.protocol;

import io.sentry.c1;
import io.sentry.i1;
import io.sentry.k1;
import io.sentry.m1;
import io.sentry.o0;
import java.io.IOException;
import java.util.UUID;

/* compiled from: SentryId.java */
/* loaded from: classes4.dex */
public final class n implements m1 {

    /* renamed from: b  reason: collision with root package name */
    public static final n f83769b = new n(new UUID(0, 0));
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final UUID f83770a;

    /* compiled from: SentryId.java */
    /* loaded from: classes4.dex */
    public static final class a implements c1<n> {
        @Override // io.sentry.c1
        @m8.g
        /* renamed from: b */
        public n a(@m8.g i1 i1Var, @m8.g o0 o0Var) throws Exception {
            return new n(i1Var.M());
        }
    }

    public n() {
        this((UUID) null);
    }

    @m8.g
    private UUID a(@m8.g String str) {
        if (str.length() == 32) {
            str = new StringBuilder(str).insert(8, "-").insert(13, "-").insert(18, "-").insert(23, "-").toString();
        }
        if (str.length() == 36) {
            return UUID.fromString(str);
        }
        throw new IllegalArgumentException("String representation of SentryId has either 32 (UUID no dashes) or 36 characters long (completed UUID). Received: " + str);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && n.class == obj.getClass() && this.f83770a.compareTo(((n) obj).f83770a) == 0;
    }

    public int hashCode() {
        return this.f83770a.hashCode();
    }

    @Override // io.sentry.m1
    public void serialize(@m8.g k1 k1Var, @m8.g o0 o0Var) throws IOException {
        k1Var.l0(toString());
    }

    public String toString() {
        return io.sentry.util.q.f(this.f83770a.toString()).replace("-", "");
    }

    public n(@m8.h UUID uuid) {
        this.f83770a = uuid == null ? UUID.randomUUID() : uuid;
    }

    public n(@m8.g String str) {
        this.f83770a = a(io.sentry.util.q.f(str));
    }
}
