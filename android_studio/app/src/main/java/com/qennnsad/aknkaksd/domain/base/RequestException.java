package com.qennnsad.aknkaksd.domain.base;

import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import io.sentry.protocol.j;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RequestException.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\b\u0016\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0019\u0012\u0010\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0004\b\n\u0010\u000bR!\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/base/RequestException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", "a", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "getResponse", "()Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", j.f83728f, "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class RequestException extends Exception {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final BaseResponse<? extends Object> f47925a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestException(@m8.g BaseResponse<? extends Object> response) {
        super(response.getMsg());
        Intrinsics.checkNotNullParameter(response, "response");
        this.f47925a = response;
    }

    @m8.g
    public final BaseResponse<? extends Object> getResponse() {
        return this.f47925a;
    }
}
