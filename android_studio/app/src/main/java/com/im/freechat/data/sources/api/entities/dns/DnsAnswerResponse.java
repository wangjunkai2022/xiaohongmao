package com.im.freechat.data.sources.api.entities.dns;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DnsAnswerResponse.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;", "", "name", "", "type", "", "data", "(Ljava/lang/String;ILjava/lang/String;)V", "getData", "()Ljava/lang/String;", "getName", "getType", "()I", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class DnsAnswerResponse {
    @g
    private final String data;
    @g
    private final String name;
    private final int type;

    public DnsAnswerResponse(@com.squareup.moshi.g(name = "name") @g String name, @com.squareup.moshi.g(name = "type") int i4, @com.squareup.moshi.g(name = "data") @g String data) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(data, "data");
        this.name = name;
        this.type = i4;
        this.data = data;
    }

    @g
    public final String getData() {
        return this.data;
    }

    @g
    public final String getName() {
        return this.name;
    }

    public final int getType() {
        return this.type;
    }
}
