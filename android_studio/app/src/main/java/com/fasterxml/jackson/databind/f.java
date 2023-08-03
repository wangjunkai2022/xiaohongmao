package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;

/* compiled from: JsonSerializable.java */
/* loaded from: classes.dex */
public interface f {

    /* compiled from: JsonSerializable.java */
    /* loaded from: classes.dex */
    public static abstract class a implements f {
        public boolean isEmpty(l lVar) {
            return false;
        }
    }

    void serialize(JsonGenerator jsonGenerator, l lVar) throws IOException;

    void serializeWithType(JsonGenerator jsonGenerator, l lVar, com.fasterxml.jackson.databind.jsontype.f fVar) throws IOException;
}
