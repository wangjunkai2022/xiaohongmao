package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.AcceptFriendRequestRequest;
import com.im.freechat.data.openapigen.models.CancelFriendRequestRequest;
import com.im.freechat.data.openapigen.models.DeleteFriendRequest;
import com.im.freechat.data.openapigen.models.EditMessageText200Response;
import com.im.freechat.data.openapigen.models.GetFriendRequest200Response;
import com.im.freechat.data.openapigen.models.GetFriendStatus200Response;
import com.im.freechat.data.openapigen.models.GetFriends200Response;
import com.im.freechat.data.openapigen.models.GetSentFriendRequests200Response;
import com.im.freechat.data.openapigen.models.SendFriendRequestRequest;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* compiled from: FriendApi.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\nH§@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ#\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u000eH§@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ!\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00032\b\b\u0001\u0010\u0012\u001a\u00020\u0013H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J!\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u00032\b\b\u0001\u0010\u0012\u001a\u00020\u0013H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0014J\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0017\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00160\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00160\u0003H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J#\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J#\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010 \u001a\u0004\u0018\u00010!H§@ø\u0001\u0000¢\u0006\u0002\u0010\"\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006#"}, d2 = {"Lcom/im/freechat/data/openapigen/api/FriendApi;", "", "acceptFriendRequest", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "acceptFriendRequestRequest", "Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;", "(Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelFriendRequest", "cancelFriendRequestRequest", "Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;", "(Lcom/im/freechat/data/openapigen/models/CancelFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteFriend", "deleteFriendRequest", "Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;", "(Lcom/im/freechat/data/openapigen/models/DeleteFriendRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFriendRequest", "Lcom/im/freechat/data/openapigen/models/GetFriendRequest200Response;", "friendId", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFriendRequests", "Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getFriendStatus", "Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response;", "getFriends", "Lcom/im/freechat/data/openapigen/models/GetFriends200Response;", "getReceivedFriendRequests", "getSentFriendRequests", "rejectFriendRequest", "sendFriendRequest", "sendFriendRequestRequest", "Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;", "(Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface FriendApi {

    /* compiled from: FriendApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object acceptFriendRequest$default(FriendApi friendApi, AcceptFriendRequestRequest acceptFriendRequestRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    acceptFriendRequestRequest = null;
                }
                return friendApi.acceptFriendRequest(acceptFriendRequestRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: acceptFriendRequest");
        }

        public static /* synthetic */ Object cancelFriendRequest$default(FriendApi friendApi, CancelFriendRequestRequest cancelFriendRequestRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    cancelFriendRequestRequest = null;
                }
                return friendApi.cancelFriendRequest(cancelFriendRequestRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancelFriendRequest");
        }

        public static /* synthetic */ Object deleteFriend$default(FriendApi friendApi, DeleteFriendRequest deleteFriendRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    deleteFriendRequest = null;
                }
                return friendApi.deleteFriend(deleteFriendRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteFriend");
        }

        public static /* synthetic */ Object rejectFriendRequest$default(FriendApi friendApi, AcceptFriendRequestRequest acceptFriendRequestRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    acceptFriendRequestRequest = null;
                }
                return friendApi.rejectFriendRequest(acceptFriendRequestRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rejectFriendRequest");
        }

        public static /* synthetic */ Object sendFriendRequest$default(FriendApi friendApi, SendFriendRequestRequest sendFriendRequestRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendFriendRequestRequest = null;
                }
                return friendApi.sendFriendRequest(sendFriendRequestRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendFriendRequest");
        }
    }

    @h
    @POST("acceptFriendRequest")
    Object acceptFriendRequest(@h @Body AcceptFriendRequestRequest acceptFriendRequestRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("cancelFriendRequest")
    Object cancelFriendRequest(@h @Body CancelFriendRequestRequest cancelFriendRequestRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("deleteFriend")
    Object deleteFriend(@h @Body DeleteFriendRequest deleteFriendRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @GET("getFriendRequest")
    Object getFriendRequest(@Query("friend_id") int i4, @g Continuation<? super Response<GetFriendRequest200Response>> continuation);

    @h
    @GET("getFriendRequests")
    Object getFriendRequests(@g Continuation<? super Response<GetSentFriendRequests200Response>> continuation);

    @h
    @GET("getFriendRequestStatus")
    Object getFriendStatus(@Query("friend_id") int i4, @g Continuation<? super Response<GetFriendStatus200Response>> continuation);

    @h
    @GET("getFriends")
    Object getFriends(@g Continuation<? super Response<GetFriends200Response>> continuation);

    @h
    @GET("getReceivedFriendRequests")
    Object getReceivedFriendRequests(@g Continuation<? super Response<GetSentFriendRequests200Response>> continuation);

    @h
    @GET("getSentFriendRequests")
    Object getSentFriendRequests(@g Continuation<? super Response<GetSentFriendRequests200Response>> continuation);

    @h
    @POST("rejectFriendRequest")
    Object rejectFriendRequest(@h @Body AcceptFriendRequestRequest acceptFriendRequestRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("sendFriendRequest")
    Object sendFriendRequest(@h @Body SendFriendRequestRequest sendFriendRequestRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);
}
