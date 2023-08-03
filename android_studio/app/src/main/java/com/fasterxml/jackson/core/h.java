package com.fasterxml.jackson.core;

import java.io.IOException;
import java.util.Iterator;

/* compiled from: ObjectCodec.java */
/* loaded from: classes.dex */
public abstract class h extends l implements n {
    @Override // com.fasterxml.jackson.core.l
    public abstract m createArrayNode();

    @Override // com.fasterxml.jackson.core.l
    public abstract m createObjectNode();

    public JsonFactory getFactory() {
        return getJsonFactory();
    }

    @Deprecated
    public JsonFactory getJsonFactory() {
        return getFactory();
    }

    @Override // com.fasterxml.jackson.core.l
    public abstract <T extends m> T readTree(JsonParser jsonParser) throws IOException;

    public abstract <T> T readValue(JsonParser jsonParser, com.fasterxml.jackson.core.type.a aVar) throws IOException;

    public abstract <T> T readValue(JsonParser jsonParser, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException;

    public abstract <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException;

    public abstract <T> Iterator<T> readValues(JsonParser jsonParser, com.fasterxml.jackson.core.type.a aVar) throws IOException;

    public abstract <T> Iterator<T> readValues(JsonParser jsonParser, com.fasterxml.jackson.core.type.b<T> bVar) throws IOException;

    public abstract <T> Iterator<T> readValues(JsonParser jsonParser, Class<T> cls) throws IOException;

    @Override // com.fasterxml.jackson.core.l
    public abstract JsonParser treeAsTokens(m mVar);

    public abstract <T> T treeToValue(m mVar, Class<T> cls) throws JsonProcessingException;

    @Override // com.fasterxml.jackson.core.n
    public abstract Version version();

    @Override // com.fasterxml.jackson.core.l
    public abstract void writeTree(JsonGenerator jsonGenerator, m mVar) throws IOException;

    public abstract void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException;
}
