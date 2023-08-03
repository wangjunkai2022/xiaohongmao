package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.l;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import java.io.IOException;

/* loaded from: classes.dex */
public class FailingSerializer extends StdSerializer<Object> {

    /* renamed from: d  reason: collision with root package name */
    protected final String f15649d;

    public FailingSerializer(String str) {
        super(Object.class);
        this.f15649d = str;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.g
    public void serialize(Object obj, JsonGenerator jsonGenerator, l lVar) throws IOException {
        lVar.reportMappingProblem(this.f15649d, new Object[0]);
    }
}
