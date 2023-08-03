package com.fasterxml.jackson.databind.json;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.json.JsonWriteFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.cfg.d;
import com.fasterxml.jackson.databind.cfg.e;

/* loaded from: classes.dex */
public class JsonMapper extends ObjectMapper {

    /* renamed from: r  reason: collision with root package name */
    private static final long f15380r = 1;

    /* loaded from: classes.dex */
    public static class a extends d<JsonMapper, a> {
        public a(JsonMapper jsonMapper) {
            super(jsonMapper);
        }

        public a A0(JsonReadFeature jsonReadFeature, boolean z9) {
            if (z9) {
                ((JsonMapper) this.f14554a).enable(jsonReadFeature.mappedFeature());
            } else {
                ((JsonMapper) this.f14554a).disable(jsonReadFeature.mappedFeature());
            }
            return this;
        }

        public a B0(JsonWriteFeature jsonWriteFeature, boolean z9) {
            if (z9) {
                ((JsonMapper) this.f14554a).enable(jsonWriteFeature.mappedFeature());
            } else {
                ((JsonMapper) this.f14554a).disable(jsonWriteFeature.mappedFeature());
            }
            return this;
        }

        public a C0(JsonReadFeature... jsonReadFeatureArr) {
            for (JsonReadFeature jsonReadFeature : jsonReadFeatureArr) {
                ((JsonMapper) this.f14554a).disable(jsonReadFeature.mappedFeature());
            }
            return this;
        }

        public a D0(JsonWriteFeature... jsonWriteFeatureArr) {
            for (JsonWriteFeature jsonWriteFeature : jsonWriteFeatureArr) {
                ((JsonMapper) this.f14554a).disable(jsonWriteFeature.mappedFeature());
            }
            return this;
        }

        public a E0(JsonReadFeature... jsonReadFeatureArr) {
            for (JsonReadFeature jsonReadFeature : jsonReadFeatureArr) {
                ((JsonMapper) this.f14554a).enable(jsonReadFeature.mappedFeature());
            }
            return this;
        }

        public a F0(JsonWriteFeature... jsonWriteFeatureArr) {
            for (JsonWriteFeature jsonWriteFeature : jsonWriteFeatureArr) {
                ((JsonMapper) this.f14554a).enable(jsonWriteFeature.mappedFeature());
            }
            return this;
        }
    }

    public JsonMapper() {
        this(new JsonFactory());
    }

    public static a builder() {
        return new a(new JsonMapper());
    }

    @Override // com.fasterxml.jackson.databind.ObjectMapper, com.fasterxml.jackson.core.h
    public JsonFactory getFactory() {
        return this.f14375a;
    }

    public boolean isEnabled(JsonReadFeature jsonReadFeature) {
        return isEnabled(jsonReadFeature.mappedFeature());
    }

    public a rebuild() {
        return new a(copy());
    }

    @Override // com.fasterxml.jackson.databind.ObjectMapper, com.fasterxml.jackson.core.h, com.fasterxml.jackson.core.n
    public Version version() {
        return e.f14557a;
    }

    public JsonMapper(JsonFactory jsonFactory) {
        super(jsonFactory);
    }

    public static a builder(JsonFactory jsonFactory) {
        return new a(new JsonMapper(jsonFactory));
    }

    @Override // com.fasterxml.jackson.databind.ObjectMapper
    public JsonMapper copy() {
        b(JsonMapper.class);
        return new JsonMapper(this);
    }

    public boolean isEnabled(JsonWriteFeature jsonWriteFeature) {
        return isEnabled(jsonWriteFeature.mappedFeature());
    }

    protected JsonMapper(JsonMapper jsonMapper) {
        super(jsonMapper);
    }
}
