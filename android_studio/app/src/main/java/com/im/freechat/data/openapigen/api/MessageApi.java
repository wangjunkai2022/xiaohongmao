package com.im.freechat.data.openapigen.api;

import com.im.freechat.data.openapigen.models.DeleteMessagesRequest;
import com.im.freechat.data.openapigen.models.EditMessageCaptionRequest;
import com.im.freechat.data.openapigen.models.EditMessageMediaGroupRequest;
import com.im.freechat.data.openapigen.models.EditMessageText200Response;
import com.im.freechat.data.openapigen.models.EditMessageTextRequest;
import com.im.freechat.data.openapigen.models.ForwardMessage200Response;
import com.im.freechat.data.openapigen.models.ForwardMessageRequest;
import com.im.freechat.data.openapigen.models.GetMessage200Response;
import com.im.freechat.data.openapigen.models.GetMessageUpdates200Response;
import com.im.freechat.data.openapigen.models.PinMessageRequest;
import com.im.freechat.data.openapigen.models.SendAnimationRequest;
import com.im.freechat.data.openapigen.models.SendDocumentRequest;
import com.im.freechat.data.openapigen.models.SendMediaGroupRequest;
import com.im.freechat.data.openapigen.models.SendPhotoRequest;
import com.im.freechat.data.openapigen.models.SendStickerRequest;
import com.im.freechat.data.openapigen.models.SendText200Response;
import com.im.freechat.data.openapigen.models.SendTextRequest;
import com.im.freechat.data.openapigen.models.SendVideoRequest;
import com.im.freechat.data.openapigen.models.UnpinMessageRequest;
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

/* compiled from: MessageApi.kt */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J#\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0007J#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\nH§@ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ#\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u000eH§@ø\u0001\u0000¢\u0006\u0002\u0010\u000fJ#\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u0012H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J#\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\u00032\n\b\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u0017H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J!\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u001cH§@ø\u0001\u0000¢\u0006\u0002\u0010\u001dJ?\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00032\b\b\u0001\u0010 \u001a\u00020\u001c2\b\b\u0001\u0010!\u001a\u00020\u001c2\b\b\u0001\u0010\"\u001a\u00020#2\b\b\u0001\u0010$\u001a\u00020#H§@ø\u0001\u0000¢\u0006\u0002\u0010%JC\u0010&\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00032\b\b\u0001\u0010\"\u001a\u00020#2\b\b\u0001\u0010$\u001a\u00020#2\n\b\u0003\u0010 \u001a\u0004\u0018\u00010#2\n\b\u0003\u0010'\u001a\u0004\u0018\u00010#H§@ø\u0001\u0000¢\u0006\u0002\u0010(J#\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010*\u001a\u0004\u0018\u00010+H§@ø\u0001\u0000¢\u0006\u0002\u0010,J#\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010*\u001a\u0004\u0018\u00010+H§@ø\u0001\u0000¢\u0006\u0002\u0010,J#\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u00100\u001a\u0004\u0018\u000101H§@ø\u0001\u0000¢\u0006\u0002\u00102J#\u00103\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u00104\u001a\u0004\u0018\u000105H§@ø\u0001\u0000¢\u0006\u0002\u00106J#\u00107\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u00108\u001a\u0004\u0018\u000109H§@ø\u0001\u0000¢\u0006\u0002\u0010:J#\u0010;\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u0010<\u001a\u0004\u0018\u00010=H§@ø\u0001\u0000¢\u0006\u0002\u0010>J#\u0010?\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u0010@\u001a\u0004\u0018\u00010AH§@ø\u0001\u0000¢\u0006\u0002\u0010BJ#\u0010C\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u0010D\u001a\u0004\u0018\u00010EH§@ø\u0001\u0000¢\u0006\u0002\u0010FJ#\u0010G\u001a\b\u0012\u0004\u0012\u00020/0\u00032\n\b\u0003\u0010H\u001a\u0004\u0018\u00010IH§@ø\u0001\u0000¢\u0006\u0002\u0010JJ#\u0010K\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0003\u0010L\u001a\u0004\u0018\u00010MH§@ø\u0001\u0000¢\u0006\u0002\u0010N\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006O"}, d2 = {"Lcom/im/freechat/data/openapigen/api/MessageApi;", "", "deleteMessages", "Lretrofit2/Response;", "Lcom/im/freechat/data/openapigen/models/EditMessageText200Response;", "deleteMessagesRequest", "Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;", "(Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editMessageCaption", "editMessageCaptionRequest", "Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;", "(Lcom/im/freechat/data/openapigen/models/EditMessageCaptionRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editMessageMediaGroup", "editMessageMediaGroupRequest", "Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;", "(Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "editMessageText", "editMessageTextRequest", "Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;", "(Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardMessage", "Lcom/im/freechat/data/openapigen/models/ForwardMessage200Response;", "forwardMessageRequest", "Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;", "(Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessage", "Lcom/im/freechat/data/openapigen/models/GetMessage200Response;", "messageId", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessageUpdates", "Lcom/im/freechat/data/openapigen/models/GetMessageUpdates200Response;", "lastMessageId", "lastUpdatedAt", f.f47744a, "", "limit", "(JJIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessages", b.f84734a, "(IILjava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pinMessage", "pinMessageRequest", "Lcom/im/freechat/data/openapigen/models/PinMessageRequest;", "(Lcom/im/freechat/data/openapigen/models/PinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "readMessage", "sendAnimation", "Lcom/im/freechat/data/openapigen/models/SendText200Response;", "sendAnimationRequest", "Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;", "(Lcom/im/freechat/data/openapigen/models/SendAnimationRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendDocument", "sendDocumentRequest", "Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;", "(Lcom/im/freechat/data/openapigen/models/SendDocumentRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendMediaGroup", "sendMediaGroupRequest", "Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;", "(Lcom/im/freechat/data/openapigen/models/SendMediaGroupRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendPhoto", "sendPhotoRequest", "Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;", "(Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendSticker", "sendStickerRequest", "Lcom/im/freechat/data/openapigen/models/SendStickerRequest;", "(Lcom/im/freechat/data/openapigen/models/SendStickerRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendText", "sendTextRequest", "Lcom/im/freechat/data/openapigen/models/SendTextRequest;", "(Lcom/im/freechat/data/openapigen/models/SendTextRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendVideo", "sendVideoRequest", "Lcom/im/freechat/data/openapigen/models/SendVideoRequest;", "(Lcom/im/freechat/data/openapigen/models/SendVideoRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unpinMessage", "unpinMessageRequest", "Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;", "(Lcom/im/freechat/data/openapigen/models/UnpinMessageRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public interface MessageApi {

    /* compiled from: MessageApi.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ Object deleteMessages$default(MessageApi messageApi, DeleteMessagesRequest deleteMessagesRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    deleteMessagesRequest = null;
                }
                return messageApi.deleteMessages(deleteMessagesRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteMessages");
        }

        public static /* synthetic */ Object editMessageCaption$default(MessageApi messageApi, EditMessageCaptionRequest editMessageCaptionRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    editMessageCaptionRequest = null;
                }
                return messageApi.editMessageCaption(editMessageCaptionRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: editMessageCaption");
        }

        public static /* synthetic */ Object editMessageMediaGroup$default(MessageApi messageApi, EditMessageMediaGroupRequest editMessageMediaGroupRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    editMessageMediaGroupRequest = null;
                }
                return messageApi.editMessageMediaGroup(editMessageMediaGroupRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: editMessageMediaGroup");
        }

        public static /* synthetic */ Object editMessageText$default(MessageApi messageApi, EditMessageTextRequest editMessageTextRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    editMessageTextRequest = null;
                }
                return messageApi.editMessageText(editMessageTextRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: editMessageText");
        }

        public static /* synthetic */ Object forwardMessage$default(MessageApi messageApi, ForwardMessageRequest forwardMessageRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    forwardMessageRequest = null;
                }
                return messageApi.forwardMessage(forwardMessageRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: forwardMessage");
        }

        public static /* synthetic */ Object getMessages$default(MessageApi messageApi, int i4, int i10, Integer num, Integer num2, Continuation continuation, int i11, Object obj) {
            if (obj == null) {
                return messageApi.getMessages(i4, i10, (i11 & 4) != 0 ? null : num, (i11 & 8) != 0 ? null : num2, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getMessages");
        }

        public static /* synthetic */ Object pinMessage$default(MessageApi messageApi, PinMessageRequest pinMessageRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    pinMessageRequest = null;
                }
                return messageApi.pinMessage(pinMessageRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pinMessage");
        }

        public static /* synthetic */ Object readMessage$default(MessageApi messageApi, PinMessageRequest pinMessageRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    pinMessageRequest = null;
                }
                return messageApi.readMessage(pinMessageRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readMessage");
        }

        public static /* synthetic */ Object sendAnimation$default(MessageApi messageApi, SendAnimationRequest sendAnimationRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendAnimationRequest = null;
                }
                return messageApi.sendAnimation(sendAnimationRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendAnimation");
        }

        public static /* synthetic */ Object sendDocument$default(MessageApi messageApi, SendDocumentRequest sendDocumentRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendDocumentRequest = null;
                }
                return messageApi.sendDocument(sendDocumentRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendDocument");
        }

        public static /* synthetic */ Object sendMediaGroup$default(MessageApi messageApi, SendMediaGroupRequest sendMediaGroupRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendMediaGroupRequest = null;
                }
                return messageApi.sendMediaGroup(sendMediaGroupRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendMediaGroup");
        }

        public static /* synthetic */ Object sendPhoto$default(MessageApi messageApi, SendPhotoRequest sendPhotoRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendPhotoRequest = null;
                }
                return messageApi.sendPhoto(sendPhotoRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendPhoto");
        }

        public static /* synthetic */ Object sendSticker$default(MessageApi messageApi, SendStickerRequest sendStickerRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendStickerRequest = null;
                }
                return messageApi.sendSticker(sendStickerRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendSticker");
        }

        public static /* synthetic */ Object sendText$default(MessageApi messageApi, SendTextRequest sendTextRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendTextRequest = null;
                }
                return messageApi.sendText(sendTextRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendText");
        }

        public static /* synthetic */ Object sendVideo$default(MessageApi messageApi, SendVideoRequest sendVideoRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    sendVideoRequest = null;
                }
                return messageApi.sendVideo(sendVideoRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendVideo");
        }

        public static /* synthetic */ Object unpinMessage$default(MessageApi messageApi, UnpinMessageRequest unpinMessageRequest, Continuation continuation, int i4, Object obj) {
            if (obj == null) {
                if ((i4 & 1) != 0) {
                    unpinMessageRequest = null;
                }
                return messageApi.unpinMessage(unpinMessageRequest, continuation);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unpinMessage");
        }
    }

    @h
    @POST("deleteMessages")
    Object deleteMessages(@h @Body DeleteMessagesRequest deleteMessagesRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("editMessageCaption")
    Object editMessageCaption(@h @Body EditMessageCaptionRequest editMessageCaptionRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("editMessageMediaGroup")
    Object editMessageMediaGroup(@h @Body EditMessageMediaGroupRequest editMessageMediaGroupRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("editMessageText")
    Object editMessageText(@h @Body EditMessageTextRequest editMessageTextRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("forwardMessage")
    Object forwardMessage(@h @Body ForwardMessageRequest forwardMessageRequest, @g Continuation<? super Response<ForwardMessage200Response>> continuation);

    @h
    @GET("getMessage")
    Object getMessage(@Query("message_id") long j4, @g Continuation<? super Response<GetMessage200Response>> continuation);

    @h
    @GET("getMessageUpdates")
    Object getMessageUpdates(@Query("last_message_id") long j4, @Query("last_updated_at") long j10, @Query("page") int i4, @Query("limit") int i10, @g Continuation<? super Response<GetMessageUpdates200Response>> continuation);

    @h
    @GET("getMessages")
    Object getMessages(@Query("page") int i4, @Query("limit") int i10, @h @Query("last_message_id") Integer num, @h @Query("chat_id") Integer num2, @g Continuation<? super Response<GetMessageUpdates200Response>> continuation);

    @h
    @POST("pinMessage")
    Object pinMessage(@h @Body PinMessageRequest pinMessageRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("readMessage")
    Object readMessage(@h @Body PinMessageRequest pinMessageRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);

    @h
    @POST("sendAnimation")
    Object sendAnimation(@h @Body SendAnimationRequest sendAnimationRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("sendDocument")
    Object sendDocument(@h @Body SendDocumentRequest sendDocumentRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("sendMediaGroup")
    Object sendMediaGroup(@h @Body SendMediaGroupRequest sendMediaGroupRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("sendPhoto")
    Object sendPhoto(@h @Body SendPhotoRequest sendPhotoRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("sendSticker")
    Object sendSticker(@h @Body SendStickerRequest sendStickerRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("sendText")
    Object sendText(@h @Body SendTextRequest sendTextRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("sendVideo")
    Object sendVideo(@h @Body SendVideoRequest sendVideoRequest, @g Continuation<? super Response<SendText200Response>> continuation);

    @h
    @POST("unpinMessage")
    Object unpinMessage(@h @Body UnpinMessageRequest unpinMessageRequest, @g Continuation<? super Response<EditMessageText200Response>> continuation);
}
