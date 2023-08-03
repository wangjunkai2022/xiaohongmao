package com.qennnsad.aknkaksd.domain.base;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import io.sentry.protocol.j;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RequestException.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/TokenExpiredException;", "Lcom/qennnsad/aknkaksd/domain/base/RequestException;", j.f83728f, "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", "(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TokenExpiredException extends RequestException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenExpiredException(@m8.g BaseResponse<? extends Object> response) {
        super(response);
        Intrinsics.checkNotNullParameter(response, "response");
    }
}
