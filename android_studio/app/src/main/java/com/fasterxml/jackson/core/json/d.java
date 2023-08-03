package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.io.ContentReference;

/* compiled from: JsonReadContext.java */
/* loaded from: classes.dex */
public final class d extends com.fasterxml.jackson.core.f {

    /* renamed from: f  reason: collision with root package name */
    protected final d f14062f;

    /* renamed from: g  reason: collision with root package name */
    protected b f14063g;

    /* renamed from: h  reason: collision with root package name */
    protected d f14064h;

    /* renamed from: i  reason: collision with root package name */
    protected String f14065i;

    /* renamed from: j  reason: collision with root package name */
    protected Object f14066j;

    /* renamed from: k  reason: collision with root package name */
    protected int f14067k;

    /* renamed from: l  reason: collision with root package name */
    protected int f14068l;

    public d(d dVar, b bVar, int i4, int i10, int i11) {
        this.f14062f = dVar;
        this.f14063g = bVar;
        this.f13837a = i4;
        this.f14067k = i10;
        this.f14068l = i11;
        this.f13838b = -1;
    }

    private void s(b bVar, String str) throws JsonProcessingException {
        if (bVar.d(str)) {
            Object c10 = bVar.c();
            JsonParser jsonParser = c10 instanceof JsonParser ? (JsonParser) c10 : null;
            throw new JsonParseException(jsonParser, "Duplicate field '" + str + "'");
        }
    }

    public static d w(int i4, int i10, b bVar) {
        return new d(null, bVar, 0, i4, i10);
    }

    public static d x(b bVar) {
        return new d(null, bVar, 0, 1, 0);
    }

    @Override // com.fasterxml.jackson.core.f
    /* renamed from: A */
    public d e() {
        return this.f14062f;
    }

    public void B(int i4, int i10, int i11) {
        this.f13837a = i4;
        this.f13838b = -1;
        this.f14067k = i10;
        this.f14068l = i11;
        this.f14065i = null;
        this.f14066j = null;
        b bVar = this.f14063g;
        if (bVar != null) {
            bVar.e();
        }
    }

    public void C(String str) throws JsonProcessingException {
        this.f14065i = str;
        b bVar = this.f14063g;
        if (bVar != null) {
            s(bVar, str);
        }
    }

    public d D(b bVar) {
        this.f14063g = bVar;
        return this;
    }

    @Override // com.fasterxml.jackson.core.f
    public String b() {
        return this.f14065i;
    }

    @Override // com.fasterxml.jackson.core.f
    public Object c() {
        return this.f14066j;
    }

    @Override // com.fasterxml.jackson.core.f
    @Deprecated
    public JsonLocation f(Object obj) {
        return q(ContentReference.rawReference(obj));
    }

    @Override // com.fasterxml.jackson.core.f
    public boolean i() {
        return this.f14065i != null;
    }

    @Override // com.fasterxml.jackson.core.f
    public void p(Object obj) {
        this.f14066j = obj;
    }

    @Override // com.fasterxml.jackson.core.f
    public JsonLocation q(ContentReference contentReference) {
        return new JsonLocation(contentReference, -1L, this.f14067k, this.f14068l);
    }

    public d t() {
        this.f14066j = null;
        return this.f14062f;
    }

    public d u(int i4, int i10) {
        d dVar = this.f14064h;
        if (dVar == null) {
            b bVar = this.f14063g;
            dVar = new d(this, bVar == null ? null : bVar.a(), 1, i4, i10);
            this.f14064h = dVar;
        } else {
            dVar.B(1, i4, i10);
        }
        return dVar;
    }

    public d v(int i4, int i10) {
        d dVar = this.f14064h;
        if (dVar == null) {
            b bVar = this.f14063g;
            d dVar2 = new d(this, bVar == null ? null : bVar.a(), 2, i4, i10);
            this.f14064h = dVar2;
            return dVar2;
        }
        dVar.B(2, i4, i10);
        return dVar;
    }

    public boolean y() {
        int i4 = this.f13838b + 1;
        this.f13838b = i4;
        return this.f13837a != 0 && i4 > 0;
    }

    public b z() {
        return this.f14063g;
    }
}
