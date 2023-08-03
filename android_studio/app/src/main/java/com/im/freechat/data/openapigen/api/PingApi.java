package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.Ping200Response;
import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import retrofit2.Response;
import retrofit2.http.GET;

/* compiled from: PingApi.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/data/openapigen/api/PingApi;", "", b.f47841v, "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/Ping200Response;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface PingApi {
    @h
    @GET(b.f47841v)
    Object ping(@g Continuation<? super Response<Ping200Response>> continuation);
}
