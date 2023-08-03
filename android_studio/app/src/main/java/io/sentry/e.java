package io.sentry;

import java.util.List;
import m8.a;

/* compiled from: BaggageHeader.java */
@a.b
/* loaded from: classes4.dex */
public final class e {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final String f83116b = "baggage";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83117a;

    public e(@m8.g String str) {
        this.f83117a = str;
    }

    @m8.h
    public static e a(@m8.g d dVar, @m8.h List<String> list) {
        String J = dVar.J(d.i(list, true, dVar.f83099d).q());
        if (J.isEmpty()) {
            return null;
        }
        return new e(J);
    }

    @m8.g
    public String b() {
        return f83116b;
    }

    @m8.g
    public String c() {
        return this.f83117a;
    }
}
