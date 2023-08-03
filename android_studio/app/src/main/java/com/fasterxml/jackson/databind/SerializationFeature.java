package com.fasterxml.jackson.databind;

/* loaded from: classes.dex */
public enum SerializationFeature implements com.fasterxml.jackson.databind.cfg.a {
    WRAP_ROOT_VALUE(false),
    INDENT_OUTPUT(false),
    FAIL_ON_EMPTY_BEANS(true),
    FAIL_ON_SELF_REFERENCES(true),
    WRAP_EXCEPTIONS(true),
    FAIL_ON_UNWRAPPED_TYPE_IDENTIFIERS(true),
    WRITE_SELF_REFERENCES_AS_NULL(false),
    CLOSE_CLOSEABLE(false),
    FLUSH_AFTER_WRITE_VALUE(true),
    WRITE_DATES_AS_TIMESTAMPS(true),
    WRITE_DATE_KEYS_AS_TIMESTAMPS(false),
    WRITE_DATES_WITH_ZONE_ID(false),
    WRITE_DATES_WITH_CONTEXT_TIME_ZONE(true),
    WRITE_DURATIONS_AS_TIMESTAMPS(true),
    WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS(false),
    WRITE_ENUMS_USING_TO_STRING(false),
    WRITE_ENUMS_USING_INDEX(false),
    WRITE_ENUM_KEYS_USING_INDEX(false),
    WRITE_NULL_MAP_VALUES(true),
    WRITE_EMPTY_JSON_ARRAYS(true),
    WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED(false),
    WRITE_BIGDECIMAL_AS_PLAIN(false),
    WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS(true),
    ORDER_MAP_ENTRIES_BY_KEYS(false),
    EAGER_SERIALIZER_FETCH(true),
    USE_EQUALITY_FOR_OBJECT_ID(false);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f14461a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14462b = 1 << ordinal();

    SerializationFeature(boolean z9) {
        this.f14461a = z9;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public boolean enabledByDefault() {
        return this.f14461a;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public boolean enabledIn(int i4) {
        return (i4 & this.f14462b) != 0;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public int getMask() {
        return this.f14462b;
    }
}
