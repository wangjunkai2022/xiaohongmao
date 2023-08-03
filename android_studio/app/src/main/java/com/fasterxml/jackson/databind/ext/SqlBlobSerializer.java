package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.type.WritableTypeId;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.f;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StdScalarSerializer;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

@c2.a
/* loaded from: classes.dex */
public class SqlBlobSerializer extends StdScalarSerializer<Blob> {
    public SqlBlobSerializer() {
        super(Blob.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g, com.fasterxml.jackson.databind.jsonFormatVisitors.d
    public void acceptJsonFormatVisitor(f fVar, JavaType javaType) throws JsonMappingException {
        com.fasterxml.jackson.databind.jsonFormatVisitors.b o9 = fVar.o(javaType);
        if (o9 != null) {
            o9.d(JsonFormatTypes.INTEGER);
        }
    }

    @Override // com.fasterxml.jackson.databind.g
    public boolean isEmpty(l lVar, Blob blob) {
        return blob == null;
    }

    protected void v(Blob blob, JsonGenerator jsonGenerator, l lVar) throws IOException {
        InputStream inputStream;
        try {
            inputStream = blob.getBinaryStream();
        } catch (SQLException e4) {
            lVar.reportMappingProblem(e4, "Failed to access `java.sql.Blob` value to write as binary value", new Object[0]);
            inputStream = null;
        }
        jsonGenerator.I0(lVar.getConfig().getBase64Variant(), inputStream, -1);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Blob blob, JsonGenerator jsonGenerator, l lVar) throws IOException {
        v(blob, jsonGenerator, lVar);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.g
    public void serializeWithType(Blob blob, JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException {
        WritableTypeId o9 = fVar.o(jsonGenerator, fVar.f(blob, JsonToken.VALUE_EMBEDDED_OBJECT));
        v(blob, jsonGenerator, lVar);
        fVar.v(jsonGenerator, o9);
    }
}
