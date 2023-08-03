package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.io.ContentReference;

/* compiled from: TokenBufferReadContext.java */
/* loaded from: classes2.dex */
public class u extends com.fasterxml.jackson.core.f {

    /* renamed from: f  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.f f16083f;

    /* renamed from: g  reason: collision with root package name */
    protected final JsonLocation f16084g;

    /* renamed from: h  reason: collision with root package name */
    protected String f16085h;

    /* renamed from: i  reason: collision with root package name */
    protected Object f16086i;

    protected u(com.fasterxml.jackson.core.f fVar, ContentReference contentReference) {
        super(fVar);
        this.f16083f = fVar.e();
        this.f16085h = fVar.b();
        this.f16086i = fVar.c();
        if (fVar instanceof com.fasterxml.jackson.core.json.d) {
            this.f16084g = ((com.fasterxml.jackson.core.json.d) fVar).q(contentReference);
        } else {
            this.f16084g = JsonLocation.NA;
        }
    }

    public static u u(com.fasterxml.jackson.core.f fVar) {
        if (fVar == null) {
            return new u();
        }
        return new u(fVar, ContentReference.unknown());
    }

    @Override // com.fasterxml.jackson.core.f
    public String b() {
        return this.f16085h;
    }

    @Override // com.fasterxml.jackson.core.f
    public Object c() {
        return this.f16086i;
    }

    @Override // com.fasterxml.jackson.core.f
    public com.fasterxml.jackson.core.f e() {
        return this.f16083f;
    }

    @Override // com.fasterxml.jackson.core.f
    public boolean i() {
        return this.f16085h != null;
    }

    @Override // com.fasterxml.jackson.core.f
    public void p(Object obj) {
        this.f16086i = obj;
    }

    public u s() {
        this.f13838b++;
        return new u(this, 1, -1);
    }

    public u t() {
        this.f13838b++;
        return new u(this, 2, -1);
    }

    public u v() {
        com.fasterxml.jackson.core.f fVar = this.f16083f;
        if (fVar instanceof u) {
            return (u) fVar;
        }
        if (fVar == null) {
            return new u();
        }
        return new u(fVar, this.f16084g);
    }

    public void w(String str) throws JsonProcessingException {
        this.f16085h = str;
    }

    public void x() {
        this.f13838b++;
    }

    @Deprecated
    protected u(com.fasterxml.jackson.core.f fVar, Object obj) {
        this(fVar, obj instanceof ContentReference ? (ContentReference) obj : ContentReference.rawReference(obj));
    }

    protected u(com.fasterxml.jackson.core.f fVar, JsonLocation jsonLocation) {
        super(fVar);
        this.f16083f = fVar.e();
        this.f16085h = fVar.b();
        this.f16086i = fVar.c();
        this.f16084g = jsonLocation;
    }

    protected u() {
        super(0, -1);
        this.f16083f = null;
        this.f16084g = JsonLocation.NA;
    }

    protected u(u uVar, int i4, int i10) {
        super(i4, i10);
        this.f16083f = uVar;
        this.f16084g = uVar.f16084g;
    }
}
