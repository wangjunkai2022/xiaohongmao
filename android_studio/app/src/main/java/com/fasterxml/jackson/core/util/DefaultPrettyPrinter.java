package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.SerializedString;
import java.io.IOException;
import java.io.Serializable;

/* loaded from: classes.dex */
public class DefaultPrettyPrinter implements com.fasterxml.jackson.core.i, d<DefaultPrettyPrinter>, Serializable {
    public static final SerializedString DEFAULT_ROOT_VALUE_SEPARATOR = new SerializedString(" ");

    /* renamed from: h  reason: collision with root package name */
    private static final long f14237h = 1;

    /* renamed from: a  reason: collision with root package name */
    protected a f14238a;

    /* renamed from: b  reason: collision with root package name */
    protected a f14239b;

    /* renamed from: c  reason: collision with root package name */
    protected final com.fasterxml.jackson.core.j f14240c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f14241d;

    /* renamed from: e  reason: collision with root package name */
    protected transient int f14242e;

    /* renamed from: f  reason: collision with root package name */
    protected Separators f14243f;

    /* renamed from: g  reason: collision with root package name */
    protected String f14244g;

    /* loaded from: classes.dex */
    public static class FixedSpaceIndenter extends NopIndenter {
        public static final FixedSpaceIndenter instance = new FixedSpaceIndenter();

        @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter, com.fasterxml.jackson.core.util.DefaultPrettyPrinter.a
        public boolean isInline() {
            return true;
        }

        @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.NopIndenter, com.fasterxml.jackson.core.util.DefaultPrettyPrinter.a
        public void writeIndentation(JsonGenerator jsonGenerator, int i4) throws IOException {
            jsonGenerator.w1(' ');
        }
    }

    /* loaded from: classes.dex */
    public static class NopIndenter implements a, Serializable {
        public static final NopIndenter instance = new NopIndenter();

        @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.a
        public boolean isInline() {
            return true;
        }

        @Override // com.fasterxml.jackson.core.util.DefaultPrettyPrinter.a
        public void writeIndentation(JsonGenerator jsonGenerator, int i4) throws IOException {
        }
    }

    /* loaded from: classes.dex */
    public interface a {
        boolean isInline();

        void writeIndentation(JsonGenerator jsonGenerator, int i4) throws IOException;
    }

    public DefaultPrettyPrinter() {
        this(DEFAULT_ROOT_VALUE_SEPARATOR);
    }

    protected DefaultPrettyPrinter a(boolean z9) {
        if (this.f14241d == z9) {
            return this;
        }
        DefaultPrettyPrinter defaultPrettyPrinter = new DefaultPrettyPrinter(this);
        defaultPrettyPrinter.f14241d = z9;
        return defaultPrettyPrinter;
    }

    @Override // com.fasterxml.jackson.core.i
    public void beforeArrayValues(JsonGenerator jsonGenerator) throws IOException {
        this.f14238a.writeIndentation(jsonGenerator, this.f14242e);
    }

    @Override // com.fasterxml.jackson.core.i
    public void beforeObjectEntries(JsonGenerator jsonGenerator) throws IOException {
        this.f14239b.writeIndentation(jsonGenerator, this.f14242e);
    }

    public void indentArraysWith(a aVar) {
        if (aVar == null) {
            aVar = NopIndenter.instance;
        }
        this.f14238a = aVar;
    }

    public void indentObjectsWith(a aVar) {
        if (aVar == null) {
            aVar = NopIndenter.instance;
        }
        this.f14239b = aVar;
    }

    public DefaultPrettyPrinter withArrayIndenter(a aVar) {
        if (aVar == null) {
            aVar = NopIndenter.instance;
        }
        if (this.f14238a == aVar) {
            return this;
        }
        DefaultPrettyPrinter defaultPrettyPrinter = new DefaultPrettyPrinter(this);
        defaultPrettyPrinter.f14238a = aVar;
        return defaultPrettyPrinter;
    }

    public DefaultPrettyPrinter withObjectIndenter(a aVar) {
        if (aVar == null) {
            aVar = NopIndenter.instance;
        }
        if (this.f14239b == aVar) {
            return this;
        }
        DefaultPrettyPrinter defaultPrettyPrinter = new DefaultPrettyPrinter(this);
        defaultPrettyPrinter.f14239b = aVar;
        return defaultPrettyPrinter;
    }

    public DefaultPrettyPrinter withRootSeparator(com.fasterxml.jackson.core.j jVar) {
        com.fasterxml.jackson.core.j jVar2 = this.f14240c;
        return (jVar2 == jVar || (jVar != null && jVar.equals(jVar2))) ? this : new DefaultPrettyPrinter(this, jVar);
    }

    public DefaultPrettyPrinter withSeparators(Separators separators) {
        this.f14243f = separators;
        this.f14244g = " " + separators.getObjectFieldValueSeparator() + " ";
        return this;
    }

    public DefaultPrettyPrinter withSpacesInObjectEntries() {
        return a(true);
    }

    public DefaultPrettyPrinter withoutSpacesInObjectEntries() {
        return a(false);
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeArrayValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1(this.f14243f.getArrayValueSeparator());
        this.f14238a.writeIndentation(jsonGenerator, this.f14242e);
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeEndArray(JsonGenerator jsonGenerator, int i4) throws IOException {
        if (!this.f14238a.isInline()) {
            this.f14242e--;
        }
        if (i4 > 0) {
            this.f14238a.writeIndentation(jsonGenerator, this.f14242e);
        } else {
            jsonGenerator.w1(' ');
        }
        jsonGenerator.w1(']');
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeEndObject(JsonGenerator jsonGenerator, int i4) throws IOException {
        if (!this.f14239b.isInline()) {
            this.f14242e--;
        }
        if (i4 > 0) {
            this.f14239b.writeIndentation(jsonGenerator, this.f14242e);
        } else {
            jsonGenerator.w1(' ');
        }
        jsonGenerator.w1('}');
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeObjectEntrySeparator(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1(this.f14243f.getObjectEntrySeparator());
        this.f14239b.writeIndentation(jsonGenerator, this.f14242e);
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeObjectFieldValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        if (this.f14241d) {
            jsonGenerator.y1(this.f14244g);
        } else {
            jsonGenerator.w1(this.f14243f.getObjectFieldValueSeparator());
        }
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeRootValueSeparator(JsonGenerator jsonGenerator) throws IOException {
        com.fasterxml.jackson.core.j jVar = this.f14240c;
        if (jVar != null) {
            jsonGenerator.x1(jVar);
        }
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeStartArray(JsonGenerator jsonGenerator) throws IOException {
        if (!this.f14238a.isInline()) {
            this.f14242e++;
        }
        jsonGenerator.w1('[');
    }

    @Override // com.fasterxml.jackson.core.i
    public void writeStartObject(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.w1('{');
        if (this.f14239b.isInline()) {
            return;
        }
        this.f14242e++;
    }

    public DefaultPrettyPrinter(String str) {
        this(str == null ? null : new SerializedString(str));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.fasterxml.jackson.core.util.d
    public DefaultPrettyPrinter createInstance() {
        if (getClass() == DefaultPrettyPrinter.class) {
            return new DefaultPrettyPrinter(this);
        }
        throw new IllegalStateException("Failed `createInstance()`: " + getClass().getName() + " does not override method; it has to");
    }

    public DefaultPrettyPrinter(com.fasterxml.jackson.core.j jVar) {
        this.f14238a = FixedSpaceIndenter.instance;
        this.f14239b = DefaultIndenter.SYSTEM_LINEFEED_INSTANCE;
        this.f14241d = true;
        this.f14240c = jVar;
        withSeparators(com.fasterxml.jackson.core.i.Y);
    }

    public DefaultPrettyPrinter withRootSeparator(String str) {
        return withRootSeparator(str == null ? null : new SerializedString(str));
    }

    public DefaultPrettyPrinter(DefaultPrettyPrinter defaultPrettyPrinter) {
        this(defaultPrettyPrinter, defaultPrettyPrinter.f14240c);
    }

    public DefaultPrettyPrinter(DefaultPrettyPrinter defaultPrettyPrinter, com.fasterxml.jackson.core.j jVar) {
        this.f14238a = FixedSpaceIndenter.instance;
        this.f14239b = DefaultIndenter.SYSTEM_LINEFEED_INSTANCE;
        this.f14241d = true;
        this.f14238a = defaultPrettyPrinter.f14238a;
        this.f14239b = defaultPrettyPrinter.f14239b;
        this.f14241d = defaultPrettyPrinter.f14241d;
        this.f14242e = defaultPrettyPrinter.f14242e;
        this.f14243f = defaultPrettyPrinter.f14243f;
        this.f14244g = defaultPrettyPrinter.f14244g;
        this.f14240c = jVar;
    }
}
