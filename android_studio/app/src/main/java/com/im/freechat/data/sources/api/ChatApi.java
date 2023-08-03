package com.im.freechat.data.sources.api;

import com.alipay.sdk.packet.d;
import com.im.freechat.data.sources.api.entities.PagedListResponse;
import com.im.freechat.data.sources.api.entities.Response;
import com.im.freechat.data.sources.api.entities.chat.ChatCreationResponse;
import com.im.freechat.data.sources.api.entities.chat.ChatMemberResponse;
import com.im.freechat.data.sources.api.entities.chat.ChatResponse;
import com.im.freechat.data.sources.api.entities.chat.CreateChatRequest;
import com.im.freechat.data.sources.api.entities.chat.EditUserExpansionRequest;
import com.im.freechat.data.sources.api.entities.chat.JoinChatResponse;
import com.im.freechat.data.sources.api.entities.chat.MessageResponse;
import com.im.freechat.data.sources.api.entities.chat.PinMessageRequest;
import com.im.freechat.data.sources.api.entities.chat.SendMediaMessageRequest;
import com.im.freechat.data.sources.api.entities.chat.SendMediaMessageResponse;
import com.im.freechat.data.sources.api.entities.chat.SendMessageRequest;
import com.im.freechat.data.sources.api.entities.chat.UpdateChatRequest;
import com.im.freechat.ui.create.choosemember.h;
import com.koushikdutta.async.http.AsyncHttpDelete;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.List;
import k4.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import m8.g;
import okhttp3.RequestBody;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.Header;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* compiled from: ChatApi.kt */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J5\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\tJE\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\u000e\b\u0001\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\rH§@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ5\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u0010\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\tJ+\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u0012\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J+\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00032\b\b\u0001\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\u0016\u001a\u00020\u0017H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J5\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u001a\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0002\u0010\u001bJ5\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u001d\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\tJE\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00042\u000e\b\u0001\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\r2\b\b\u0001\u0010 \u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010!J5\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010#\u001a\u00020\u00042\b\b\u0001\u0010$\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0002\u0010\u001bJ!\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0001\u0010&\u001a\u00020'H§@ø\u0001\u0000¢\u0006\u0002\u0010(J+\u0010)\u001a\b\u0012\u0004\u0012\u00020*0\u00032\b\b\u0001\u0010+\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0002\u0010,JE\u0010-\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020/0.0\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u00100\u001a\u00020\u00062\b\b\u0003\u00101\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u00102JG\u00103\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020*0.0\u00032\b\b\u0001\u0010+\u001a\u00020\u00062\b\b\u0001\u00100\u001a\u00020\u00062\b\b\u0003\u00101\u001a\u00020\u00062\n\b\u0003\u00104\u001a\u0004\u0018\u00010\u0004H§@ø\u0001\u0000¢\u0006\u0002\u00105J;\u00106\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u00107\u001a\u00020\u00042\u000e\b\u0001\u00108\u001a\b\u0012\u0004\u0012\u00020\u00060\rH§@ø\u0001\u0000¢\u0006\u0002\u00109JQ\u0010:\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020;0.0\u00032\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u00100\u001a\u00020\u00062\b\b\u0003\u00101\u001a\u00020\u00062\n\b\u0003\u0010#\u001a\u0004\u0018\u00010\u0004H§@ø\u0001\u0000¢\u0006\u0002\u0010<JI\u0010=\u001a\b\u0012\u0004\u0012\u00020>0\u00032\b\b\u0001\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010?\u001a\u00020\u00042\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\b\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010@J!\u0010A\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010B\u001a\u00020CH§@ø\u0001\u0000¢\u0006\u0002\u0010DJ5\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\tJ?\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u000b\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010GJ!\u0010H\u001a\b\u0012\u0004\u0012\u00020I0\u00032\b\b\u0001\u0010J\u001a\u00020KH§@ø\u0001\u0000¢\u0006\u0002\u0010LJ!\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010N\u001a\u00020OH§@ø\u0001\u0000¢\u0006\u0002\u0010PJ5\u0010Q\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00042\b\b\u0001\u0010\b\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\tJ!\u0010R\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010S\u001a\u00020TH§@ø\u0001\u0000¢\u0006\u0002\u0010UJ%\u0010V\u001a\u00020W2\b\b\u0001\u0010X\u001a\u00020\u00042\b\b\u0001\u0010Y\u001a\u00020ZH§@ø\u0001\u0000¢\u0006\u0002\u0010[\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\\"}, d2 = {"Lcom/im/freechat/data/sources/api/ChatApi;", "", "addChatManager", "Lcom/im/freechat/data/sources/api/entities/Response;", "", "userId", "", b.f84734a, "targetUserId", "(ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "addChatMember", "devToken", "targetUserIds", "", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "banChatMember", "targetUserid", "clearChatHistory", "forEveryone", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createChat", "Lcom/im/freechat/data/sources/api/entities/chat/ChatCreationResponse;", "createCreateChatRequest", "Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;", "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createFileUploadUrl", "fileName", "(ILjava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteChat", "isQuit", "deleteMessage", "messageIds", "delMsgForEveryone", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editMessage", "messageId", "content", "editUserExpansion", "editUserExpansionRequest", "Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;", "(Lcom/im/freechat/data/sources/api/entities/chat/EditUserExpansionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChat", "Lcom/im/freechat/data/sources/api/entities/chat/ChatResponse;", "id", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChatMembers", "Lcom/im/freechat/data/sources/api/entities/PagedListResponse;", "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", f.f47744a, f.f47745b, "(ILjava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChats", "type", "(IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDevToken", d.f6907q, h.f43540d, "(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLastMessages", "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;", "(Ljava/lang/String;IIILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "joinChatByInvitation", "Lcom/im/freechat/data/sources/api/entities/chat/JoinChatResponse;", "pathId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pinMessage", "pinMessageRequest", "Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;", "(Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeChatManager", "removeChatMember", "(Ljava/lang/String;ILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendMediaGroupMessage", "Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageResponse;", "sendMediaMessageRequest", "Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;", "(Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendMessage", "sendMessageRequest", "Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;", "(Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unbanChatMember", "updateChat", "updateChatRequest", "Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;", "(Lcom/im/freechat/data/sources/api/entities/chat/UpdateChatRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "uploadFile", "", "url", "fileBody", "Lokhttp3/RequestBody;", "(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface ChatApi {

    /* compiled from: ChatApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object getChatMembers$default(ChatApi chatApi, int i4, String str, int i10, int i11, Continuation continuation, int i12, Object obj) {
            if (obj == null) {
                return chatApi.getChatMembers(i4, str, i10, (i12 & 8) != 0 ? 20 : i11, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getChatMembers");
        }

        public static /* synthetic */ Object getChats$default(ChatApi chatApi, int i4, int i10, int i11, String str, Continuation continuation, int i12, Object obj) {
            if (obj == null) {
                int i13 = (i12 & 4) != 0 ? 20 : i11;
                if ((i12 & 8) != 0) {
                    str = null;
                }
                return chatApi.getChats(i4, i10, i13, str, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getChats");
        }

        public static /* synthetic */ Object getLastMessages$default(ChatApi chatApi, String str, int i4, int i10, int i11, String str2, Continuation continuation, int i12, Object obj) {
            if (obj == null) {
                int i13 = (i12 & 8) != 0 ? 20 : i11;
                if ((i12 & 16) != 0) {
                    str2 = null;
                }
                return chatApi.getLastMessages(str, i4, i10, i13, str2, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getLastMessages");
        }
    }

    @m8.h
    @FormUrlEncoded
    @POST("/im/conversations/managers")
    Object addChatManager(@Field("unique_name") int i4, @g @Field("conv_id") String str, @Field("to_unique_name") int i10, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @POST("/im/conversations/member")
    Object addChatMember(@Header("Authorization") @g String str, @Field("unique_name") int i4, @g @Field("conv_id") String str2, @g @Field("to_unique_name[]") List<String> list, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @POST("/im/conversations/ban")
    Object banChatMember(@Field("unique_name") int i4, @g @Field("conv_id") String str, @Field("to_unique_name") int i10, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @PUT("/im/conversations/clear")
    Object clearChatHistory(@g @Field("conv_id") String str, @Field("del_msg_for_everyone") int i4, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @POST("/im/conversations")
    Object createChat(@Header("Authorization") @g String str, @Body @g CreateChatRequest createChatRequest, @g Continuation<? super Response<ChatCreationResponse>> continuation);

    @m8.h
    @FormUrlEncoded
    @POST("/im/createPresignedURL")
    Object createFileUploadUrl(@Field("unique_name") int i4, @g @Field("conv_id") String str, @g @Field("file_name") String str2, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @HTTP(hasBody = true, method = AsyncHttpDelete.f44553o, path = "/im/conversations")
    Object deleteChat(@Field("unique_name") int i4, @g @Field("conv_id") String str, @Field("is_quit") int i10, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @DELETE("/im/conversations/msg")
    Object deleteMessage(@g @Query("unique_name") String str, @g @Query("conv_id") String str2, @g @Query("msg_ids[]") List<String> list, @Query("del_msg_for_everyone") int i4, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @PUT("/im/msg/modify")
    Object editMessage(@Field("unique_name") int i4, @g @Field("msg_id") String str, @g @Field("content") String str2, @g Continuation<? super Response<Object>> continuation);

    @m8.h
    @PUT("/User/edit")
    Object editUserExpansion(@Body @g EditUserExpansionRequest editUserExpansionRequest, @g Continuation<? super Response<Object>> continuation);

    @m8.h
    @GET("/im/conversations")
    Object getChat(@Query("unique_name") int i4, @g @Query("conv_id") String str, @g Continuation<? super Response<ChatResponse>> continuation);

    @m8.h
    @GET("/im/conversions/userlist")
    Object getChatMembers(@Query("unique_name") int i4, @g @Query("conv_id") String str, @Query("page") int i10, @Query("size") int i11, @g Continuation<? super Response<PagedListResponse<ChatMemberResponse>>> continuation);

    @m8.h
    @GET("/im/conversations/convlist")
    Object getChats(@Query("unique_name") int i4, @Query("page") int i10, @Query("size") int i11, @m8.h @Query("conv_type") String str, @g Continuation<? super Response<PagedListResponse<ChatResponse>>> continuation);

    @m8.h
    @GET("/devtool/token")
    Object getDevToken(@Query("aud") int i4, @g @Query("act") String str, @g @Query("members[]") List<Integer> list, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @GET("/im/conversations/msglist")
    Object getLastMessages(@g @Query("conv_id") String str, @Query("unique_name") int i4, @Query("page") int i10, @Query("size") int i11, @m8.h @Query("msg_id") String str2, @g Continuation<? super Response<PagedListResponse<MessageResponse>>> continuation);

    @m8.h
    @FormUrlEncoded
    @POST("/im/conversations/{id}/join")
    Object joinChatByInvitation(@Header("Authorization") @g String str, @Path("id") @g String str2, @g @Field("conv_id") String str3, @Field("unique_name") int i4, @Field("to_unique_name") int i10, @g Continuation<? super Response<JoinChatResponse>> continuation);

    @m8.h
    @PUT("/im/conversations/pinned")
    Object pinMessage(@Body @g PinMessageRequest pinMessageRequest, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @HTTP(hasBody = true, method = AsyncHttpDelete.f44553o, path = "/im/conversations/managers")
    Object removeChatManager(@Field("unique_name") int i4, @g @Field("conv_id") String str, @Field("to_unique_name") int i10, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @HTTP(hasBody = true, method = AsyncHttpDelete.f44553o, path = "/im/conversations/member")
    Object removeChatMember(@Header("Authorization") @g String str, @Field("unique_name") int i4, @g @Field("conv_id") String str2, @Field("to_unique_name") int i10, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @POST("/im/conversations/msg_multi")
    Object sendMediaGroupMessage(@Body @g SendMediaMessageRequest sendMediaMessageRequest, @g Continuation<? super Response<SendMediaMessageResponse>> continuation);

    @m8.h
    @POST("/im/conversations/msg")
    Object sendMessage(@Body @g SendMessageRequest sendMessageRequest, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @FormUrlEncoded
    @HTTP(hasBody = true, method = AsyncHttpDelete.f44553o, path = "/im/conversations/ban")
    Object unbanChatMember(@Field("unique_name") int i4, @g @Field("conv_id") String str, @Field("to_unique_name") int i10, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @PUT("/im/conversations")
    Object updateChat(@Body @g UpdateChatRequest updateChatRequest, @g Continuation<? super Response<String>> continuation);

    @m8.h
    @Headers({"Content-Type: image/*; charset=utf-8"})
    @PUT
    Object uploadFile(@g @Url String str, @Body @g RequestBody requestBody, @g Continuation<? super Unit> continuation);
}
