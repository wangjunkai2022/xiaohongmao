package io.sentry.clientreport;

import io.sentry.util.l;
import m8.a;

/* compiled from: ClientReportKey.java */
@a.c
/* loaded from: classes4.dex */
final class c {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f83071a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f83072b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(@m8.g String str, @m8.g String str2) {
        this.f83071a = str;
        this.f83072b = str2;
    }

    @m8.g
    public String a() {
        return this.f83072b;
    }

    @m8.g
    public String b() {
        return this.f83071a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            return l.a(b(), cVar.b()) && l.a(a(), cVar.a());
        }
        return false;
    }

    public int hashCode() {
        return l.b(b(), a());
    }
}
