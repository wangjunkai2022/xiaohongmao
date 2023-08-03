package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.EditMessageText200Response;
import com.im.freechat.data.openapigen.models.GetUser200Response;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* compiled from: UserApi.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J!\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lcom/im/freechat/data/openapigen/api/UserApi;", "", "getUser", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/GetUser200Response;", "id", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "hideLastSeen", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showLastSeen", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface UserApi {
    @h
    @GET("getUser")
    Object getUser(@Query("id") int i4, @g Continuation<? super Response<GetUser200Response>> continuation);

    @h
    @POST("hideLastSeen")
    Object hideLastSeen(@g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("showLastSeen")
    Object showLastSeen(@g Continuation<? super Response<EditMessageText200Response>> continuation);
}
