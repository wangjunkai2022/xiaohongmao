package io.sentry.transport;

import io.sentry.l3;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: NoOpEnvelopeCache.java */
/* loaded from: classes4.dex */
public final class s implements io.sentry.cache.f {

    /* renamed from: a  reason: collision with root package name */
    private static final s f84042a = new s();

    public static s a() {
        return f84042a;
    }

    @Override // io.sentry.cache.f
    public /* synthetic */ void A(l3 l3Var) {
        io.sentry.cache.e.a(this, l3Var);
    }

    @Override // io.sentry.cache.f
    public void i(@m8.g l3 l3Var) {
    }

    @Override // java.lang.Iterable
    @m8.g
    public Iterator<l3> iterator() {
        return new ArrayList(0).iterator();
    }

    @Override // io.sentry.cache.f
    public void y(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var) {
    }
}
