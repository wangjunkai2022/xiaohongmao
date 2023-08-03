package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.ContentReference;

/* compiled from: JsonStreamContext.java */
/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: c  reason: collision with root package name */
    public static final int f13834c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13835d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13836e = 2;

    /* renamed from: a  reason: collision with root package name */
    protected int f13837a;

    /* renamed from: b  reason: collision with root package name */
    protected int f13838b;

    /* JADX INFO: Access modifiers changed from: protected */
    public f() {
    }

    public final int a() {
        int i4 = this.f13838b;
        if (i4 < 0) {
            return 0;
        }
        return i4;
    }

    public abstract String b();

    public Object c() {
        return null;
    }

    public final int d() {
        return this.f13838b + 1;
    }

    public abstract f e();

    @Deprecated
    public JsonLocation f(Object obj) {
        return JsonLocation.NA;
    }

    @Deprecated
    public final String g() {
        int i4 = this.f13837a;
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? "?" : "OBJECT" : "ARRAY" : "ROOT";
    }

    public boolean h() {
        return this.f13838b >= 0;
    }

    public boolean i() {
        return b() != null;
    }

    public boolean j() {
        int i4 = this.f13837a;
        if (i4 == 2) {
            return i();
        }
        if (i4 == 1) {
            return h();
        }
        return false;
    }

    public final boolean k() {
        return this.f13837a == 1;
    }

    public final boolean l() {
        return this.f13837a == 2;
    }

    public final boolean m() {
        return this.f13837a == 0;
    }

    public e n() {
        return e.l(this, false);
    }

    public e o(boolean z9) {
        return e.l(this, z9);
    }

    public void p(Object obj) {
    }

    public JsonLocation q(ContentReference contentReference) {
        return JsonLocation.NA;
    }

    public String r() {
        int i4 = this.f13837a;
        return i4 != 0 ? i4 != 1 ? i4 != 2 ? "?" : "Object" : "Array" : "root";
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i4 = this.f13837a;
        if (i4 == 0) {
            sb.append("/");
        } else if (i4 != 1) {
            sb.append('{');
            String b10 = b();
            if (b10 != null) {
                sb.append('\"');
                com.fasterxml.jackson.core.io.b.a(sb, b10);
                sb.append('\"');
            } else {
                sb.append('?');
            }
            sb.append('}');
        } else {
            sb.append('[');
            sb.append(a());
            sb.append(']');
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f(f fVar) {
        this.f13837a = fVar.f13837a;
        this.f13838b = fVar.f13838b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public f(int i4, int i10) {
        this.f13837a = i4;
        this.f13838b = i10;
    }
}
