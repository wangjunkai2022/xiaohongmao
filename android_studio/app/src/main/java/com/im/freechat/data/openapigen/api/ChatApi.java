package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.DeleteChatsRequest;
import com.im.freechat.data.openapigen.models.EditMessageText200Response;
import com.im.freechat.data.openapigen.models.GetChat200Response;
import com.im.freechat.data.openapigen.models.GetChats200Response;
import com.qennnsad.aknkaksd.data.repository.f;
import k4.b;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* compiled from: ChatApi.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J!\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0001\u0010\u000b\u001a\u00020\fH§@ø\u0001\u0000¢\u0006\u0002\u0010\rJ+\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\b\b\u0001\u0010\u0010\u001a\u00020\f2\b\b\u0001\u0010\u0011\u001a\u00020\fH§@ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/openapigen/api/ChatApi;", "", "clearChatsHistory", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "deleteChatsRequest", "Lcom/im/freechat/data/openapigen/models/DeleteChatsRequest;", "(Lcom/im/freechat/data/openapigen/models/DeleteChatsRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteChats", "getChat", "Lcom/im/freechat/data/openapigen/models/GetChat200Response;", b.f84734a, "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChats", "Lcom/im/freechat/data/openapigen/models/GetChats200Response;", f.f47744a, "limit", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface ChatApi {

    /* compiled from: ChatApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object clearChatsHistory$default(ChatApi chatApi, DeleteChatsRequest deleteChatsRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    deleteChatsRequest = null;
                }
                return chatApi.clearChatsHistory(deleteChatsRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clearChatsHistory");
        }

        public static /* synthetic */ Object deleteChats$default(ChatApi chatApi, DeleteChatsRequest deleteChatsRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    deleteChatsRequest = null;
                }
                return chatApi.deleteChats(deleteChatsRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteChats");
        }
    }

    @h
    @POST("clearChatsHistory")
    Object clearChatsHistory(@h @Body DeleteChatsRequest deleteChatsRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("deleteChats")
    Object deleteChats(@h @Body DeleteChatsRequest deleteChatsRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @GET("getChat")
    Object getChat(@Query("chat_id") int i4, @g Continuation<? super Response<GetChat200Response>> continuation);

    @h
    @GET("getChats")
    Object getChats(@Query("page") int i4, @Query("limit") int i10, @g Continuation<? super Response<GetChats200Response>> continuation);
}
