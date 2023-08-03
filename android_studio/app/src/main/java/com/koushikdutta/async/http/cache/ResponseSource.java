package com.koushikdutta.async.http.cache;

/* loaded from: classes3.dex */
enum ResponseSource {
    CACHE,
    CONDITIONAL_CACHE,
    NETWORK;

    public boolean a() {
        return this == CONDITIONAL_CACHE || this == NETWORK;
    }
}
