package com.im.freechat.data.sources.api.entities.dns;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DnsResponse.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/dns/DnsResponse;", "", "answerList", "", "Lcom/im/freechat/data/sources/api/entities/dns/DnsAnswerResponse;", "(Ljava/util/List;)V", "getAnswerList", "()Ljava/util/List;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class DnsResponse {
    @g
    private final List<DnsAnswerResponse> answerList;

    public DnsResponse(@com.squareup.moshi.g(name = "Answer") @g List<DnsAnswerResponse> answerList) {
        Intrinsics.checkNotNullParameter(answerList, "answerList");
        this.answerList = answerList;
    }

    @g
    public final List<DnsAnswerResponse> getAnswerList() {
        return this.answerList;
    }
}
