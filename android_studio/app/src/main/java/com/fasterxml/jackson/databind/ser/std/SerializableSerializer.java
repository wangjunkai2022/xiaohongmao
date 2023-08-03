package com.fasterxml.jackson.databind.ser.std;

import c2.a;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.f;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

@a
/* loaded from: classes2.dex */
public class SerializableSerializer extends StdSerializer<f> {
    public static final SerializableSerializer instance = new SerializableSerializer();

    protected SerializableSerializer() {
        super(f.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(com.fasterxml.jackson.databind.jsonFormatVisitors.f fVar, JavaType javaType) throws JsonMappingException {
        fVar.j(javaType);
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, f fVar) {
        if (fVar instanceof f.a) {
            return ((f.a) fVar).isEmpty(lVar);
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(f fVar, JsonGenerator jsonGenerator, l lVar) throws IOException {
        fVar.serialize(jsonGenerator, lVar);
    }

    @Override // com.fasterxml.jackson.databind.g
    public final void serializeWithType(f fVar, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar2) throws IOException {
        fVar.serializeWithType(jsonGenerator, lVar, fVar2);
    }
}
