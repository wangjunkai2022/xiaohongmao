package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.annotation.a0;

/* loaded from: classes.dex */
public enum JsonValueFormat {
    COLOR("color"),
    DATE("date"),
    DATE_TIME("date-time"),
    EMAIL("email"),
    HOST_NAME("host-name"),
    IP_ADDRESS("ip-address"),
    IPV6("ipv6"),
    PHONE("phone"),
    REGEX("regex"),
    STYLE(com.google.android.exoplayer2.text.ttml.d.f25736u),
    TIME(com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a),
    URI("uri"),
    UTC_MILLISEC("utc-millisec"),
    UUID("uuid");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f15384a;

    JsonValueFormat(String str) {
        this.f15384a = str;
    }

    @Override // java.lang.Enum
    @a0
    public String toString() {
        return this.f15384a;
    }
}
