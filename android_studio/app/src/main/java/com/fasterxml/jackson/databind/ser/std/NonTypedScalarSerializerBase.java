package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

@Deprecated
/* loaded from: classes2.dex */
public abstract class NonTypedScalarSerializerBase<T> extends StdScalarSerializer<T> {
    protected NonTypedScalarSerializerBase(Class<T> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
    public final void serializeWithType(T t9, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        serialize(t9, jsonGenerator, lVar);
    }

    protected NonTypedScalarSerializerBase(Class<?> cls, boolean z9) {
        super(cls, z9);
    }
}
