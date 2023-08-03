package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes.dex */
public class MinimalPrettyPrinter implements com.fasterxml.jackson.core.i, Serializable {

    /* renamed from: c  reason: collision with root package name */
    private static final long f14248c = 1;

    /* renamed from: a  reason: collision with root package name */
    protected String f14249a;

    /* renamed from: b  reason: collision with root package name */
    protected Separators f14250b;

    public MinimalPrettyPrinter() {
        this(com.fasterxml.jackson.core.i.Z.toString());
    }

    @Override // com.fasterxml.jackson.core.i
    public void beforeArrayValues(JsonGenerator jsonGenerator) throws IOException {
    }

    @Override // com.fasterxml.jackson.core.i
    public void beforeObjectEntries(JsonGenerator jsonGenerator) throws IOException {
    }

    public void setRootValueSeparator(String str) {
        this.f14249a = str;
    }

    public MinimalPrettyPrinter setSeparators(Separators separators) {
        this.f14250b = separators;
        return this;
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeArrayValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1(this.f14250b.getArrayValueSeparator());
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeEndArray(JsonGenerator jsonGenerator, int i4) throws IOException {
        jsonGenerator.w1(']');
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeEndObject(JsonGenerator jsonGenerator, int i4) throws IOException {
        jsonGenerator.w1('}');
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeObjectEntrySeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1(this.f14250b.getObjectEntrySeparator());
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeObjectFieldValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1(this.f14250b.getObjectFieldValueSeparator());
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeRootValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        String str = this.f14249a;
        if (str != null) {
            jsonGenerator.y1(str);
        }
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeStartArray(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1('[');
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeStartObject(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1('{');
    }

    public MinimalPrettyPrinter(String str) {
        this.f14249a = str;
        this.f14250b = com.fasterxml.jackson.core.i.Y;
    }
}
