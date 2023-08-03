package com.fasterxml.jackson.core;

import java.io.IOException;

/* compiled from: TreeCodec.java */
/* loaded from: classes.dex */
public abstract class l {
    public abstract m createArrayNode();

    public abstract m createObjectNode();

    public m missingNode() {
        return null;
    }

    public m nullNode() {
        return null;
    }

    public abstract <T extends m> T readTree(JsonParser jsonParser) throws IOException, JsonProcessingException;

    public abstract JsonParser treeAsTokens(m mVar);

    public abstract void writeTree(JsonGenerator jsonGenerator, m mVar) throws IOException, JsonProcessingException;
}
