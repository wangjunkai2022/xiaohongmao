package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;

/* loaded from: classes.dex */
public enum StreamWriteFeature implements com.fasterxml.jackson.core.util.e {
    AUTO_CLOSE_TARGET(JsonGenerator.Feature.AUTO_CLOSE_TARGET),
    AUTO_CLOSE_CONTENT(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT),
    FLUSH_PASSED_TO_STREAM(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM),
    WRITE_BIGDECIMAL_AS_PLAIN(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN),
    STRICT_DUPLICATE_DETECTION(JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION),
    IGNORE_UNKNOWN(JsonGenerator.Feature.IGNORE_UNKNOWN);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13750a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13751b;

    /* renamed from: c  reason: collision with root package name */
    private final JsonGenerator.Feature f13752c;

    StreamWriteFeature(JsonGenerator.Feature feature) {
        this.f13752c = feature;
        this.f13751b = feature.getMask();
        this.f13750a = feature.enabledByDefault();
    }

    public static int collectDefaults() {
        StreamWriteFeature[] values;
        int i4 = 0;
        for (StreamWriteFeature streamWriteFeature : values()) {
            if (streamWriteFeature.enabledByDefault()) {
                i4 |= streamWriteFeature.getMask();
            }
        }
        return i4;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledByDefault() {
        return this.f13750a;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledIn(int i4) {
        return (i4 & this.f13751b) != 0;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public int getMask() {
        return this.f13751b;
    }

    public JsonGenerator.Feature mappedFeature() {
        return this.f13752c;
    }
}
