package com.auth0.jwt.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;
import java.util.Date;
import java.util.Map;

/* loaded from: classes.dex */
public class PayloadSerializer extends StdSerializer<b> {
    public PayloadSerializer() {
        this(null);
    }

    private long v(Date date) {
        return date.getTime() / 1000;
    }

    private PayloadSerializer(Class<b> cls) {
        super(cls);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(b bVar, JsonGenerator jsonGenerator, l lVar) throws IOException {
        jsonGenerator.K1();
        for (Map.Entry<String, Object> entry : bVar.a().entrySet()) {
            String key = entry.getKey();
            key.hashCode();
            if (!key.equals(i.f7111k)) {
                jsonGenerator.V0(entry.getKey());
                if (entry.getValue() instanceof Date) {
                    jsonGenerator.b1(v((Date) entry.getValue()));
                } else {
                    jsonGenerator.o1(entry.getValue());
                }
            } else if (entry.getValue() instanceof String) {
                jsonGenerator.V0(entry.getKey());
                jsonGenerator.P1((String) entry.getValue());
            } else {
                String[] strArr = (String[]) entry.getValue();
                if (strArr.length == 1) {
                    jsonGenerator.V0(entry.getKey());
                    jsonGenerator.P1(strArr[0]);
                } else if (strArr.length > 1) {
                    jsonGenerator.V0(entry.getKey());
                    jsonGenerator.G1();
                    for (String str : strArr) {
                        jsonGenerator.P1(str);
                    }
                    jsonGenerator.R0();
                }
            }
        }
        jsonGenerator.S0();
    }
}
