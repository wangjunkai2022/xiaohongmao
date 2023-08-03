package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.jsontype.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StdScalarSerializer;
import java.io.IOException;
import java.nio.file.Path;

/* loaded from: classes.dex */
public class NioPathSerializer extends StdScalarSerializer<Path> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f15108d = 1;

    public NioPathSerializer() {
        super(Path.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Path path, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.P1(path.toUri().toString());
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
    public void serializeWithType(Path path, JsonGenerator jsonGenerator, l lVar, f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.h(path, Path.class, JsonToken.VALUE_STRING));
        serialize(path, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }
}
