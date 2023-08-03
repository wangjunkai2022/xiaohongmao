package com.giphy.sdk.analytics.network.response;

import com.giphy.sdk.analytics.models.RandomId;
import com.giphy.sdk.core.network.response.GenericResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.h;

/* compiled from: RandomIdResponse.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/giphy/sdk/analytics/network/response/RandomIdResponse;", "Lcom/giphy/sdk/core/network/response/GenericResponse;", "data", "Lcom/giphy/sdk/analytics/models/RandomId;", "(Lcom/giphy/sdk/analytics/models/RandomId;)V", "getData", "()Lcom/giphy/sdk/analytics/models/RandomId;", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class RandomIdResponse implements GenericResponse {
    @h
    private final RandomId data;

    public RandomIdResponse() {
        this(null, 1, null);
    }

    public RandomIdResponse(@h RandomId randomId) {
        this.data = randomId;
    }

    @h
    public final RandomId getData() {
        return this.data;
    }

    public /* synthetic */ RandomIdResponse(RandomId randomId, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : randomId);
    }
}
