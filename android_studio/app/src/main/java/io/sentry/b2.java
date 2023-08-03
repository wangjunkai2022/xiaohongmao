package io.sentry;

import java.util.List;

/* compiled from: NoOpSpan.java */
/* loaded from: classes4.dex */
public final class b2 implements v0 {

    /* renamed from: a  reason: collision with root package name */
    private static final b2 f83037a = new b2();

    private b2() {
    }

    public static b2 K() {
        return f83037a;
    }

    @Override // io.sentry.v0
    @m8.h
    public Object A(@m8.g String str) {
        return null;
    }

    @Override // io.sentry.v0
    @m8.g
    public f5 E() {
        return new f5(io.sentry.protocol.n.f83769b, h5.f83292b, "op", null, null);
    }

    @Override // io.sentry.v0
    @m8.h
    public Throwable F() {
        return null;
    }

    @Override // io.sentry.v0
    public void G(@m8.h SpanStatus spanStatus, @m8.h j3 j3Var) {
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 H(@m8.g String str, @m8.h String str2) {
        return K();
    }

    @Override // io.sentry.v0
    public void J(@m8.g String str) {
    }

    @Override // io.sentry.v0
    public void a(@m8.g String str, @m8.g String str2) {
    }

    @Override // io.sentry.v0
    public boolean b() {
        return false;
    }

    @Override // io.sentry.v0
    public void c(@m8.h SpanStatus spanStatus) {
    }

    @Override // io.sentry.v0
    @m8.g
    public v4 d() {
        return new v4(io.sentry.protocol.n.f83769b, h5.f83292b, Boolean.FALSE);
    }

    @Override // io.sentry.v0
    public boolean e() {
        return true;
    }

    @Override // io.sentry.v0
    @m8.h
    public String getDescription() {
        return null;
    }

    @Override // io.sentry.v0
    @m8.h
    public SpanStatus getStatus() {
        return null;
    }

    @Override // io.sentry.v0
    public void h() {
    }

    @Override // io.sentry.v0
    @m8.h
    public String i(@m8.g String str) {
        return null;
    }

    @Override // io.sentry.v0
    public void k(@m8.h String str) {
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 n(@m8.g String str) {
        return K();
    }

    @Override // io.sentry.v0
    public void o(@m8.g String str, @m8.g Number number) {
    }

    @Override // io.sentry.v0
    @m8.g
    public m5 q() {
        return new m5(io.sentry.protocol.n.f83769b, "");
    }

    @Override // io.sentry.v0
    public void r(@m8.g String str, @m8.g Object obj) {
    }

    @Override // io.sentry.v0
    public void s(@m8.h Throwable th) {
    }

    @Override // io.sentry.v0
    public void t(@m8.h SpanStatus spanStatus) {
    }

    @Override // io.sentry.v0
    @m8.g
    public String u() {
        return "";
    }

    @Override // io.sentry.v0
    @m8.h
    public e v(@m8.h List<String> list) {
        return null;
    }

    @Override // io.sentry.v0
    @m8.g
    public v0 w(@m8.g String str, @m8.h String str2, @m8.h j3 j3Var, @m8.g Instrumenter instrumenter) {
        return K();
    }

    @Override // io.sentry.v0
    public void y(@m8.g String str, @m8.g Number number, @m8.g MeasurementUnit measurementUnit) {
    }
}
