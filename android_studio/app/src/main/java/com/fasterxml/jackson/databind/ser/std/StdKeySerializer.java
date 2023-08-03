package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.l;
import java.io.IOException;

@Deprecated
/* loaded from: classes2.dex */
public class StdKeySerializer extends StdSerializer<Object> {
    public StdKeySerializer() {
        super(Object.class);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.V0(obj.toString());
    }
}
