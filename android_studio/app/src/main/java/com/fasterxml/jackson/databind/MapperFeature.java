package com.fasterxml.jackson.databind;

/* loaded from: classes.dex */
public enum MapperFeature implements com.fasterxml.jackson.databind.cfg.a {
    USE_ANNOTATIONS(true),
    USE_GETTERS_AS_SETTERS(true),
    PROPAGATE_TRANSIENT_MARKER(false),
    AUTO_DETECT_CREATORS(true),
    AUTO_DETECT_FIELDS(true),
    AUTO_DETECT_GETTERS(true),
    AUTO_DETECT_IS_GETTERS(true),
    AUTO_DETECT_SETTERS(true),
    REQUIRE_SETTERS_FOR_GETTERS(false),
    ALLOW_FINAL_FIELDS_AS_MUTATORS(true),
    INFER_PROPERTY_MUTATORS(true),
    INFER_CREATOR_FROM_CONSTRUCTOR_PROPERTIES(true),
    ALLOW_VOID_VALUED_PROPERTIES(false),
    CAN_OVERRIDE_ACCESS_MODIFIERS(true),
    OVERRIDE_PUBLIC_ACCESS_MODIFIERS(true),
    USE_STATIC_TYPING(false),
    USE_BASE_TYPE_AS_DEFAULT_IMPL(false),
    INFER_BUILDER_TYPE_BINDINGS(true),
    DEFAULT_VIEW_INCLUSION(true),
    SORT_PROPERTIES_ALPHABETICALLY(false),
    SORT_CREATOR_PROPERTIES_FIRST(true),
    ACCEPT_CASE_INSENSITIVE_PROPERTIES(false),
    ACCEPT_CASE_INSENSITIVE_ENUMS(false),
    ACCEPT_CASE_INSENSITIVE_VALUES(false),
    USE_WRAPPER_NAME_AS_PROPERTY_NAME(false),
    USE_STD_BEAN_NAMING(false),
    ALLOW_EXPLICIT_PROPERTY_RENAMING(false),
    ALLOW_COERCION_OF_SCALARS(true),
    IGNORE_DUPLICATE_MODULE_REGISTRATIONS(true),
    IGNORE_MERGE_FOR_UNMERGEABLE(true),
    BLOCK_UNSAFE_POLYMORPHIC_BASE_TYPES(false),
    APPLY_DEFAULT_VALUES(true);
    

    /* renamed from: a  reason: collision with root package name */
    private final boolean f14369a;

    /* renamed from: b  reason: collision with root package name */
    private final long f14370b = 1 << ordinal();

    MapperFeature(boolean z9) {
        this.f14369a = z9;
    }

    public static long collectLongDefaults() {
        MapperFeature[] values;
        long j4 = 0;
        for (MapperFeature mapperFeature : values()) {
            if (mapperFeature.enabledByDefault()) {
                j4 |= mapperFeature.getLongMask();
            }
        }
        return j4;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    public boolean enabledByDefault() {
        return this.f14369a;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    @Deprecated
    public boolean enabledIn(int i4) {
        return (((long) i4) & this.f14370b) != 0;
    }

    public long getLongMask() {
        return this.f14370b;
    }

    @Override // com.fasterxml.jackson.databind.cfg.a
    @Deprecated
    public int getMask() {
        return (int) this.f14370b;
    }

    public boolean enabledIn(long j4) {
        return (j4 & this.f14370b) != 0;
    }
}
