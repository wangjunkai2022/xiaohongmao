package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;

/* loaded from: classes.dex */
public enum StreamReadFeature implements com.fasterxml.jackson.core.util.e {
    AUTO_CLOSE_SOURCE(JsonParser.Feature.AUTO_CLOSE_SOURCE),
    STRICT_DUPLICATE_DETECTION(JsonParser.Feature.STRICT_DUPLICATE_DETECTION),
    IGNORE_UNDEFINED(JsonParser.Feature.IGNORE_UNDEFINED),
    INCLUDE_SOURCE_IN_LOCATION(JsonParser.Feature.INCLUDE_SOURCE_IN_LOCATION);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13743a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13744b;

    /* renamed from: c  reason: collision with root package name */
    private final JsonParser.Feature f13745c;

    StreamReadFeature(JsonParser.Feature feature) {
        this.f13745c = feature;
        this.f13744b = feature.getMask();
        this.f13743a = feature.enabledByDefault();
    }

    public static int collectDefaults() {
        StreamReadFeature[] values;
        int i4 = 0;
        for (StreamReadFeature streamReadFeature : values()) {
            if (streamReadFeature.enabledByDefault()) {
                i4 |= streamReadFeature.getMask();
            }
        }
        return i4;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledByDefault() {
        return this.f13743a;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public boolean enabledIn(int i4) {
        return (i4 & this.f13744b) != 0;
    }

    @Override // com.fasterxml.jackson.core.util.e
    public int getMask() {
        return this.f13744b;
    }

    public JsonParser.Feature mappedFeature() {
        return this.f13745c;
    }
}
