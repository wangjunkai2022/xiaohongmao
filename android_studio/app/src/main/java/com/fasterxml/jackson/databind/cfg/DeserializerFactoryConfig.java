package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.deser.i;
import com.fasterxml.jackson.databind.deser.j;
import com.fasterxml.jackson.databind.deser.o;
import com.fasterxml.jackson.databind.deser.std.StdKeyDeserializers;
import java.io.Serializable;

/* loaded from: classes.dex */
public class DeserializerFactoryConfig implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private static final long f14511f = 1;

    /* renamed from: g  reason: collision with root package name */
    protected static final i[] f14512g = new i[0];

    /* renamed from: h  reason: collision with root package name */
    protected static final com.fasterxml.jackson.databind.deser.b[] f14513h = new com.fasterxml.jackson.databind.deser.b[0];

    /* renamed from: i  reason: collision with root package name */
    protected static final com.fasterxml.jackson.databind.a[] f14514i = new com.fasterxml.jackson.databind.a[0];

    /* renamed from: j  reason: collision with root package name */
    protected static final o[] f14515j = new o[0];

    /* renamed from: k  reason: collision with root package name */
    protected static final j[] f14516k = {new StdKeyDeserializers()};

    /* renamed from: a  reason: collision with root package name */
    protected final i[] f14517a;

    /* renamed from: b  reason: collision with root package name */
    protected final j[] f14518b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.deser.b[] f14519c;

    /* renamed from: d  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.a[] f14520d;

    /* renamed from: e  reason: collision with root package name */
    protected final o[] f14521e;

    public DeserializerFactoryConfig() {
        this(null, null, null, null, null);
    }

    public Iterable<com.fasterxml.jackson.databind.a> abstractTypeResolvers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14520d);
    }

    public Iterable<com.fasterxml.jackson.databind.deser.b> deserializerModifiers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14519c);
    }

    public Iterable<i> deserializers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14517a);
    }

    public boolean hasAbstractTypeResolvers() {
        return this.f14520d.length > 0;
    }

    public boolean hasDeserializerModifiers() {
        return this.f14519c.length > 0;
    }

    public boolean hasDeserializers() {
        return this.f14517a.length > 0;
    }

    public boolean hasKeyDeserializers() {
        return this.f14518b.length > 0;
    }

    public boolean hasValueInstantiators() {
        return this.f14521e.length > 0;
    }

    public Iterable<j> keyDeserializers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14518b);
    }

    public Iterable<o> valueInstantiators() {
        return new com.fasterxml.jackson.databind.util.c(this.f14521e);
    }

    public DeserializerFactoryConfig withAbstractTypeResolver(com.fasterxml.jackson.databind.a aVar) {
        if (aVar != null) {
            return new DeserializerFactoryConfig(this.f14517a, this.f14518b, this.f14519c, (com.fasterxml.jackson.databind.a[]) com.fasterxml.jackson.databind.util.b.j(this.f14520d, aVar), this.f14521e);
        }
        throw new IllegalArgumentException("Cannot pass null resolver");
    }

    public DeserializerFactoryConfig withAdditionalDeserializers(i iVar) {
        if (iVar != null) {
            return new DeserializerFactoryConfig((i[]) com.fasterxml.jackson.databind.util.b.j(this.f14517a, iVar), this.f14518b, this.f14519c, this.f14520d, this.f14521e);
        }
        throw new IllegalArgumentException("Cannot pass null Deserializers");
    }

    public DeserializerFactoryConfig withAdditionalKeyDeserializers(j jVar) {
        if (jVar != null) {
            return new DeserializerFactoryConfig(this.f14517a, (j[]) com.fasterxml.jackson.databind.util.b.j(this.f14518b, jVar), this.f14519c, this.f14520d, this.f14521e);
        }
        throw new IllegalArgumentException("Cannot pass null KeyDeserializers");
    }

    public DeserializerFactoryConfig withDeserializerModifier(com.fasterxml.jackson.databind.deser.b bVar) {
        if (bVar != null) {
            return new DeserializerFactoryConfig(this.f14517a, this.f14518b, (com.fasterxml.jackson.databind.deser.b[]) com.fasterxml.jackson.databind.util.b.j(this.f14519c, bVar), this.f14520d, this.f14521e);
        }
        throw new IllegalArgumentException("Cannot pass null modifier");
    }

    public DeserializerFactoryConfig withValueInstantiators(o oVar) {
        if (oVar != null) {
            return new DeserializerFactoryConfig(this.f14517a, this.f14518b, this.f14519c, this.f14520d, (o[]) com.fasterxml.jackson.databind.util.b.j(this.f14521e, oVar));
        }
        throw new IllegalArgumentException("Cannot pass null resolver");
    }

    protected DeserializerFactoryConfig(i[] iVarArr, j[] jVarArr, com.fasterxml.jackson.databind.deser.b[] bVarArr, com.fasterxml.jackson.databind.a[] aVarArr, o[] oVarArr) {
        this.f14517a = iVarArr == null ? f14512g : iVarArr;
        this.f14518b = jVarArr == null ? f14516k : jVarArr;
        this.f14519c = bVarArr == null ? f14513h : bVarArr;
        this.f14520d = aVarArr == null ? f14514i : aVarArr;
        this.f14521e = oVarArr == null ? f14515j : oVarArr;
    }
}
