package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonParser;

/* loaded from: classes.dex */
public enum JsonReadFeature implements com.fasterxml.jackson.core.b {
    ALLOW_JAVA_COMMENTS(false, JsonParser.Feature.ALLOW_COMMENTS),
    ALLOW_YAML_COMMENTS(false, JsonParser.Feature.ALLOW_YAML_COMMENTS),
    ALLOW_SINGLE_QUOTES(false, JsonParser.Feature.ALLOW_SINGLE_QUOTES),
    ALLOW_UNQUOTED_FIELD_NAMES(false, JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES),
    ALLOW_UNESCAPED_CONTROL_CHARS(false, JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS),
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false, JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER),
    ALLOW_LEADING_ZEROS_FOR_NUMBERS(false, JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS),
    ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false, JsonParser.Feature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS),
    ALLOW_NON_NUMERIC_NUMBERS(false, JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS),
    ALLOW_MISSING_VALUES(false, JsonParser.Feature.ALLOW_MISSING_VALUES),
    ALLOW_TRAILING_COMMA(false, JsonParser.Feature.ALLOW_TRAILING_COMMA);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13991a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13992b = 1 << ordinal();

    /* renamed from: c  reason: collision with root package name */
    private final JsonParser.Feature f13993c;

    JsonReadFeature(boolean z9, JsonParser.Feature feature) {
        this.f13991a = z9;
        this.f13993c = feature;
    }

    public static int collectDefaults() {
        JsonReadFeature[] values;
        int i4 = 0;
        for (JsonReadFeature jsonReadFeature : values()) {
            if (jsonReadFeature.enabledByDefault()) {
                i4 |= jsonReadFeature.getMask();
            }
        }
        return i4;
    }

    @Override // com.fasterxml.jackson.core.b, com.fasterxml.jackson.core.util.e
    public boolean enabledByDefault() {
        return this.f13991a;
    }

    @Override // com.fasterxml.jackson.core.b, com.fasterxml.jackson.core.util.e
    public boolean enabledIn(int i4) {
        return (i4 & this.f13992b) != 0;
    }

    @Override // com.fasterxml.jackson.core.b, com.fasterxml.jackson.core.util.e
    public int getMask() {
        return this.f13992b;
    }

    public JsonParser.Feature mappedFeature() {
        return this.f13993c;
    }
}
