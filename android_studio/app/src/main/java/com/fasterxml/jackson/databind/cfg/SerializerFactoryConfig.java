package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.ser.l;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class SerializerFactoryConfig implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f14539d = 1;

    /* renamed from: e  reason: collision with root package name */
    protected static final l[] f14540e = new l[0];

    /* renamed from: f  reason: collision with root package name */
    protected static final com.fasterxml.jackson.databind.ser.d[] f14541f = new com.fasterxml.jackson.databind.ser.d[0];

    /* renamed from: a  reason: collision with root package name */
    protected final l[] f14542a;

    /* renamed from: b  reason: collision with root package name */
    protected final l[] f14543b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.ser.d[] f14544c;

    public SerializerFactoryConfig() {
        this(null, null, null);
    }

    public boolean hasKeySerializers() {
        return this.f14543b.length > 0;
    }

    public boolean hasSerializerModifiers() {
        return this.f14544c.length > 0;
    }

    public boolean hasSerializers() {
        return this.f14542a.length > 0;
    }

    public Iterable<l> keySerializers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14543b);
    }

    public Iterable<com.fasterxml.jackson.databind.ser.d> serializerModifiers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14544c);
    }

    public Iterable<l> serializers() {
        return new com.fasterxml.jackson.databind.util.c(this.f14542a);
    }

    public SerializerFactoryConfig withAdditionalKeySerializers(l lVar) {
        if (lVar != null) {
            return new SerializerFactoryConfig(this.f14542a, (l[]) com.fasterxml.jackson.databind.util.b.j(this.f14543b, lVar), this.f14544c);
        }
        throw new IllegalArgumentException("Cannot pass null Serializers");
    }

    public SerializerFactoryConfig withAdditionalSerializers(l lVar) {
        if (lVar != null) {
            return new SerializerFactoryConfig((l[]) com.fasterxml.jackson.databind.util.b.j(this.f14542a, lVar), this.f14543b, this.f14544c);
        }
        throw new IllegalArgumentException("Cannot pass null Serializers");
    }

    public SerializerFactoryConfig withSerializerModifier(com.fasterxml.jackson.databind.ser.d dVar) {
        if (dVar != null) {
            return new SerializerFactoryConfig(this.f14542a, this.f14543b, (com.fasterxml.jackson.databind.ser.d[]) com.fasterxml.jackson.databind.util.b.j(this.f14544c, dVar));
        }
        throw new IllegalArgumentException("Cannot pass null modifier");
    }

    protected SerializerFactoryConfig(l[] lVarArr, l[] lVarArr2, com.fasterxml.jackson.databind.ser.d[] dVarArr) {
        this.f14542a = lVarArr == null ? f14540e : lVarArr;
        this.f14543b = lVarArr2 == null ? f14540e : lVarArr2;
        this.f14544c = dVarArr == null ? f14541f : dVarArr;
    }
}
