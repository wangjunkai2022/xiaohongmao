package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.format.MatchStrength;
import java.io.IOException;

/* loaded from: classes.dex */
public class MappingJsonFactory extends JsonFactory {

    /* renamed from: r  reason: collision with root package name */
    private static final long f14371r = -1;

    public MappingJsonFactory() {
        this(null);
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public JsonFactory copy() {
        c(MappingJsonFactory.class);
        return new MappingJsonFactory(this, null);
    }

    @Override // com.fasterxml.jackson.core.JsonFactory, com.fasterxml.jackson.core.TokenStreamFactory
    public String getFormatName() {
        return JsonFactory.FORMAT_NAME_JSON;
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public MatchStrength hasFormat(com.fasterxml.jackson.core.format.c cVar) throws IOException {
        if (getClass() == MappingJsonFactory.class) {
            return z(cVar);
        }
        return null;
    }

    public MappingJsonFactory(ObjectMapper objectMapper) {
        super(objectMapper);
        if (objectMapper == null) {
            setCodec(new ObjectMapper(this));
        }
    }

    @Override // com.fasterxml.jackson.core.JsonFactory
    public final ObjectMapper getCodec() {
        return (ObjectMapper) this.f13685g;
    }

    public MappingJsonFactory(JsonFactory jsonFactory, ObjectMapper objectMapper) {
        super(jsonFactory, objectMapper);
        if (objectMapper == null) {
            setCodec(new ObjectMapper(this));
        }
    }
}
