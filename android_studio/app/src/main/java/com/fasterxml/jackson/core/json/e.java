package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;

/* compiled from: JsonWriteContext.java */
/* loaded from: classes.dex */
public class e extends com.fasterxml.jackson.core.f {

    /* renamed from: l  reason: collision with root package name */
    public static final int f14069l = 0;

    /* renamed from: m  reason: collision with root package name */
    public static final int f14070m = 1;

    /* renamed from: n  reason: collision with root package name */
    public static final int f14071n = 2;

    /* renamed from: o  reason: collision with root package name */
    public static final int f14072o = 3;

    /* renamed from: p  reason: collision with root package name */
    public static final int f14073p = 4;

    /* renamed from: q  reason: collision with root package name */
    public static final int f14074q = 5;

    /* renamed from: f  reason: collision with root package name */
    protected final e f14075f;

    /* renamed from: g  reason: collision with root package name */
    protected b f14076g;

    /* renamed from: h  reason: collision with root package name */
    protected e f14077h;

    /* renamed from: i  reason: collision with root package name */
    protected String f14078i;

    /* renamed from: j  reason: collision with root package name */
    protected Object f14079j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f14080k;

    protected e(int i4, e eVar, b bVar) {
        this.f13837a = i4;
        this.f14075f = eVar;
        this.f14076g = bVar;
        this.f13838b = -1;
    }

    private final void s(b bVar, String str) throws JsonProcessingException {
        if (bVar.d(str)) {
            Object c10 = bVar.c();
            throw new JsonGenerationException("Duplicate field '" + str + "'", c10 instanceof JsonGenerator ? (JsonGenerator) c10 : null);
        }
    }

    @Deprecated
    public static e y() {
        return z(null);
    }

    public static e z(b bVar) {
        return new e(0, null, bVar);
    }

    public b A() {
        return this.f14076g;
    }

    @Override // com.fasterxml.jackson.core.f
    /* renamed from: B */
    public final e e() {
        return this.f14075f;
    }

    public e C(int i4) {
        this.f13837a = i4;
        this.f13838b = -1;
        this.f14078i = null;
        this.f14080k = false;
        this.f14079j = null;
        b bVar = this.f14076g;
        if (bVar != null) {
            bVar.e();
        }
        return this;
    }

    public e D(int i4, Object obj) {
        this.f13837a = i4;
        this.f13838b = -1;
        this.f14078i = null;
        this.f14080k = false;
        this.f14079j = obj;
        b bVar = this.f14076g;
        if (bVar != null) {
            bVar.e();
        }
        return this;
    }

    public e E(b bVar) {
        this.f14076g = bVar;
        return this;
    }

    public int F(String str) throws JsonProcessingException {
        if (this.f13837a != 2 || this.f14080k) {
            return 4;
        }
        this.f14080k = true;
        this.f14078i = str;
        b bVar = this.f14076g;
        if (bVar != null) {
            s(bVar, str);
        }
        return this.f13838b < 0 ? 0 : 1;
    }

    public int G() {
        int i4 = this.f13837a;
        if (i4 == 2) {
            if (this.f14080k) {
                this.f14080k = false;
                this.f13838b++;
                return 2;
            }
            return 5;
        } else if (i4 == 1) {
            int i10 = this.f13838b;
            this.f13838b = i10 + 1;
            return i10 < 0 ? 0 : 1;
        } else {
            int i11 = this.f13838b + 1;
            this.f13838b = i11;
            return i11 == 0 ? 0 : 3;
        }
    }

    @Override // com.fasterxml.jackson.core.f
    public final String b() {
        return this.f14078i;
    }

    @Override // com.fasterxml.jackson.core.f
    public Object c() {
        return this.f14079j;
    }

    @Override // com.fasterxml.jackson.core.f
    public boolean i() {
        return this.f14078i != null;
    }

    @Override // com.fasterxml.jackson.core.f
    public void p(Object obj) {
        this.f14079j = obj;
    }

    public e t() {
        this.f14079j = null;
        return this.f14075f;
    }

    public e u() {
        e eVar = this.f14077h;
        if (eVar == null) {
            b bVar = this.f14076g;
            e eVar2 = new e(1, this, bVar == null ? null : bVar.a());
            this.f14077h = eVar2;
            return eVar2;
        }
        return eVar.C(1);
    }

    public e v(Object obj) {
        e eVar = this.f14077h;
        if (eVar == null) {
            b bVar = this.f14076g;
            e eVar2 = new e(1, this, bVar == null ? null : bVar.a(), obj);
            this.f14077h = eVar2;
            return eVar2;
        }
        return eVar.D(1, obj);
    }

    public e w() {
        e eVar = this.f14077h;
        if (eVar == null) {
            b bVar = this.f14076g;
            e eVar2 = new e(2, this, bVar == null ? null : bVar.a());
            this.f14077h = eVar2;
            return eVar2;
        }
        return eVar.C(2);
    }

    public e x(Object obj) {
        e eVar = this.f14077h;
        if (eVar == null) {
            b bVar = this.f14076g;
            e eVar2 = new e(2, this, bVar == null ? null : bVar.a(), obj);
            this.f14077h = eVar2;
            return eVar2;
        }
        return eVar.D(2, obj);
    }

    protected e(int i4, e eVar, b bVar, Object obj) {
        this.f13837a = i4;
        this.f14075f = eVar;
        this.f14076g = bVar;
        this.f13838b = -1;
        this.f14079j = obj;
    }
}
