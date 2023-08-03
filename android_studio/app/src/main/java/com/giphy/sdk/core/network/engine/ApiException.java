package com.giphy.sdk.core.network.engine;

import com.giphy.sdk.core.network.response.ErrorResponse;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ApiException.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\nB\u0019\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0004\b\t\u0010\rR\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/giphy/sdk/core/network/engine/ApiException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lcom/giphy/sdk/core/network/response/ErrorResponse;", "a", "Lcom/giphy/sdk/core/network/response/ErrorResponse;", "getErrorResponse", "()Lcom/giphy/sdk/core/network/response/ErrorResponse;", "errorResponse", "<init>", "(Lcom/giphy/sdk/core/network/response/ErrorResponse;)V", "", "detailMessage", "(Ljava/lang/String;Lcom/giphy/sdk/core/network/response/ErrorResponse;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class ApiException extends Exception {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final ErrorResponse f16954a;

    public ApiException(@g ErrorResponse errorResponse) {
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        this.f16954a = errorResponse;
    }

    @g
    public final ErrorResponse getErrorResponse() {
        return this.f16954a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ApiException(@g String detailMessage, @g ErrorResponse errorResponse) {
        super(detailMessage);
        Intrinsics.checkNotNullParameter(detailMessage, "detailMessage");
        Intrinsics.checkNotNullParameter(errorResponse, "errorResponse");
        this.f16954a = errorResponse;
    }
}
