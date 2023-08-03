package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonGenerator;

/* loaded from: classes.dex */
public enum JsonWriteFeature implements com.fasterxml.jackson.core.b {
    QUOTE_FIELD_NAMES(true, JsonGenerator.Feature.QUOTE_FIELD_NAMES),
    WRITE_NAN_AS_STRINGS(true, JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS),
    WRITE_NUMBERS_AS_STRINGS(false, JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS),
    ESCAPE_NON_ASCII(false, JsonGenerator.Feature.ESCAPE_NON_ASCII);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13995a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13996b = 1 << ordinal();

    /* renamed from: c  reason: collision with root package name */
    private final JsonGenerator.Feature f13997c;

    JsonWriteFeature(boolean z9, JsonGenerator.Feature feature) {
        this.f13995a = z9;
        this.f13997c = feature;
    }

    public static int collectDefaults() {
        JsonWriteFeature[] values;
        int i4 = 0;
        for (JsonWriteFeature jsonWriteFeature : values()) {
            if (jsonWriteFeature.enabledByDefault()) {
                i4 |= jsonWriteFeature.getMask();
            }
        }
        return i4;
    }

    @Override // com.fasterxml.jackson.core.b, com.fasterxml.jackson.core.util.e
    public boolean enabledByDefault() {
        return this.f13995a;
    }

    @Override // com.fasterxml.jackson.core.b, com.fasterxml.jackson.core.util.e
    public boolean enabledIn(int i4) {
        return (i4 & this.f13996b) != 0;
    }

    @Override // com.fasterxml.jackson.core.b, com.fasterxml.jackson.core.util.e
    public int getMask() {
        return this.f13996b;
    }

    public JsonGenerator.Feature mappedFeature() {
        return this.f13997c;
    }
}
