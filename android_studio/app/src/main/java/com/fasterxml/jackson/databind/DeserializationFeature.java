package com.fasterxml.jackson.databind;

/* loaded from: classes.dex */
public enum DeserializationFeature implements com.fasterxml.jackson.databind.cfg.a {
    USE_BIG_DECIMAL_FOR_FLOATS(false),
    USE_BIG_INTEGER_FOR_INTS(false),
    USE_LONG_FOR_INTS(false),
    USE_JAVA_ARRAY_FOR_JSON_ARRAY(false),
    FAIL_ON_UNKNOWN_PROPERTIES(true),
    FAIL_ON_NULL_FOR_PRIMITIVES(false),
    FAIL_ON_NUMBERS_FOR_ENUMS(false),
    FAIL_ON_INVALID_SUBTYPE(true),
    FAIL_ON_READING_DUP_TREE_KEY(false),
    FAIL_ON_IGNORED_PROPERTIES(false),
    FAIL_ON_UNRESOLVED_OBJECT_IDS(true),
    FAIL_ON_MISSING_CREATOR_PROPERTIES(false),
    FAIL_ON_NULL_CREATOR_PROPERTIES(false),
    FAIL_ON_MISSING_EXTERNAL_TYPE_ID_PROPERTY(true),
    FAIL_ON_TRAILING_TOKENS(false),
    WRAP_EXCEPTIONS(true),
    ACCEPT_SINGLE_VALUE_AS_ARRAY(false),
    UNWRAP_SINGLE_VALUE_ARRAYS(false),
    UNWRAP_ROOT_VALUE(false),
    ACCEPT_EMPTY_STRING_AS_NULL_OBJECT(false),
    ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT(false),
    ACCEPT_FLOAT_AS_INT(true),
    READ_ENUMS_USING_TO_STRING(false),
    READ_UNKNOWN_ENUM_VALUES_AS_NULL(false),
    READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE(false),
    READ_DATE_TIMESTAMPS_AS_NANOSECONDS(true),
    ADJUST_DATES_TO_CONTEXT_TIME_ZONE(true),
    EAGER_DESERIALIZER_FETCH(true);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f14349a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14350b = 1 << ordinal();

    DeserializationFeature(boolean z9) {
        this.f14349a = z9;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public boolean enabledByDefault() {
        return this.f14349a;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public boolean enabledIn(int i4) {
        return (i4 & this.f14350b) != 0;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public int getMask() {
        return this.f14350b;
    }
}
