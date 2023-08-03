package io.sentry;

import io.sentry.exception.SentryEnvelopeException;
import java.io.IOException;
import java.util.ArrayList;
import m8.a;

/* compiled from: SentryEnvelope.java */
@a.c
/* loaded from: classes4.dex */
public final class l3 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m3 f83379a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<f4> f83380b;

    public l3(@m8.g m3 m3Var, @m8.g Iterable<f4> iterable) {
        this.f83379a = (m3) io.sentry.util.l.c(m3Var, "SentryEnvelopeHeader is required.");
        this.f83380b = (Iterable) io.sentry.util.l.c(iterable, "SentryEnvelope items are required.");
    }

    @m8.g
    public static l3 a(@m8.g u0 u0Var, @m8.g m2 m2Var, long j4, @m8.h io.sentry.protocol.l lVar) throws SentryEnvelopeException {
        io.sentry.util.l.c(u0Var, "Serializer is required.");
        io.sentry.util.l.c(m2Var, "Profiling trace data is required.");
        return new l3(new io.sentry.protocol.n(m2Var.P()), lVar, f4.w(m2Var, j4, u0Var));
    }

    @m8.g
    public static l3 b(@m8.g u0 u0Var, @m8.g e3 e3Var, @m8.h io.sentry.protocol.l lVar) throws IOException {
        io.sentry.util.l.c(u0Var, "Serializer is required.");
        io.sentry.util.l.c(e3Var, "item is required.");
        return new l3(e3Var.I(), lVar, f4.v(u0Var, e3Var));
    }

    @m8.g
    public static l3 c(@m8.g u0 u0Var, @m8.g Session session, @m8.h io.sentry.protocol.l lVar) throws IOException {
        io.sentry.util.l.c(u0Var, "Serializer is required.");
        io.sentry.util.l.c(session, "session is required.");
        return new l3((io.sentry.protocol.n) null, lVar, f4.x(u0Var, session));
    }

    @m8.g
    public m3 d() {
        return this.f83379a;
    }

    @m8.g
    public Iterable<f4> e() {
        return this.f83380b;
    }

    public l3(@m8.h io.sentry.protocol.n nVar, @m8.h io.sentry.protocol.l lVar, @m8.g Iterable<f4> iterable) {
        this.f83379a = new m3(nVar, lVar);
        this.f83380b = (Iterable) io.sentry.util.l.c(iterable, "SentryEnvelope items are required.");
    }

    public l3(@m8.h io.sentry.protocol.n nVar, @m8.h io.sentry.protocol.l lVar, @m8.g f4 f4Var) {
        io.sentry.util.l.c(f4Var, "SentryEnvelopeItem is required.");
        this.f83379a = new m3(nVar, lVar);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(f4Var);
        this.f83380b = arrayList;
    }
}
