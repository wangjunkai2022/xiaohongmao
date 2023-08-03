package com.google.gson;

/* loaded from: classes2.dex */
public enum LongSerializationPolicy {
    DEFAULT { // from class: com.google.gson.LongSerializationPolicy.1
        @Override // com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long l10) {
            if (l10 == null) {
                return JsonNull.INSTANCE;
            }
            return new JsonPrimitive(l10);
        }
    },
    STRING { // from class: com.google.gson.LongSerializationPolicy.2
        @Override // com.google.gson.LongSerializationPolicy
        public JsonElement serialize(Long l10) {
            if (l10 == null) {
                return JsonNull.INSTANCE;
            }
            return new JsonPrimitive(l10.toString());
        }
    };

    public abstract JsonElement serialize(Long l10);
}
