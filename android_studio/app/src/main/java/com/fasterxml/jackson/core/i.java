package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.SerializedString;
import com.fasterxml.jackson.core.util.Separators;
import java.io.IOException;

/* compiled from: PrettyPrinter.java */
/* loaded from: classes.dex */
public interface i {
    public static final Separators Y = Separators.createDefaultInstance();
    public static final SerializedString Z = new SerializedString(" ");

    void beforeArrayValues(JsonGenerator jsonGenerator) throws IOException;

    void beforeObjectEntries(JsonGenerator jsonGenerator) throws IOException;

    void writeArrayValueSeparator(JsonGenerator jsonGenerator) throws IOException;

    void writeEndArray(JsonGenerator jsonGenerator, int i4) throws IOException;

    void writeEndObject(JsonGenerator jsonGenerator, int i4) throws IOException;

    void writeObjectEntrySeparator(JsonGenerator jsonGenerator) throws IOException;

    void writeObjectFieldValueSeparator(JsonGenerator jsonGenerator) throws IOException;

    void writeRootValueSeparator(JsonGenerator jsonGenerator) throws IOException;

    void writeStartArray(JsonGenerator jsonGenerator) throws IOException;

    void writeStartObject(JsonGenerator jsonGenerator) throws IOException;
}
