package com.im.freechat.domain;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.DownloadInfo;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageWithChat;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: DatabaseRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0003\u0010\u0004J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H&J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u0005H&J!\u0010\u000b\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0007H¦@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\fJ\u001b\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0016J\u001b\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0016J\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0016J'\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00062\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\fJ\u001b\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u0016J\u001b\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010\u0016J\u0014\u0010 \u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00060\u0005H&J!\u0010!\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b!\u0010\fJ#\u0010%\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u00132\u0006\u0010$\u001a\u00020#H¦@ø\u0001\u0000¢\u0006\u0004\b%\u0010&J#\u0010(\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\u00132\u0006\u0010'\u001a\u00020#H¦@ø\u0001\u0000¢\u0006\u0004\b(\u0010&J\u001b\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H¦@ø\u0001\u0000¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00190\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b-\u0010\fJ\u0014\u0010/\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0\u00060\u0005H&J\u001c\u00102\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002010\u00060\u00052\u0006\u00100\u001a\u00020\u0013H&J\u0019\u00103\u001a\b\u0012\u0004\u0012\u00020.0\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0004J\u0019\u00104\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0004J\u0019\u00105\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005H¦@ø\u0001\u0000¢\u0006\u0004\b5\u0010\u0004J\u0018\u00106\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010.0\u00052\u0006\u00100\u001a\u00020\u0013H&J\u0013\u00107\u001a\u00020\u0019H¦@ø\u0001\u0000¢\u0006\u0004\b7\u0010\u0004J%\u00109\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00132\b\u00108\u001a\u0004\u0018\u00010#H¦@ø\u0001\u0000¢\u0006\u0004\b9\u0010&J\u0018\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00052\u0006\u0010\"\u001a\u00020\u0013H&J\u0015\u0010;\u001a\u0004\u0018\u00010\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b;\u0010\u0004J!\u0010=\u001a\u00020\u00022\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b=\u0010\fJ'\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00130\u00062\f\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00130\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b?\u0010\fJ#\u0010@\u001a\u00020\u00022\u0006\u00100\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\b@\u0010AJ\u001d\u0010B\u001a\u0004\u0018\u00010.2\u0006\u00100\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\bB\u0010\u0016J\u0018\u0010C\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u00052\u0006\u0010\"\u001a\u00020\u0013H&J\u001c\u0010D\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020.0\u00060\u00052\u0006\u0010\"\u001a\u00020\u0013H&J/\u0010G\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020F0\u00060\u00052\u0006\u00100\u001a\u00020\u00132\u0006\u0010E\u001a\u00020\u0010H¦@ø\u0001\u0000¢\u0006\u0004\bG\u0010HJ!\u0010J\u001a\b\u0012\u0004\u0012\u00020F0\u00062\u0006\u0010I\u001a\u00020#H¦@ø\u0001\u0000¢\u0006\u0004\bJ\u0010KJ#\u0010M\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010F0\u00052\u0006\u0010L\u001a\u00020\u0013H¦@ø\u0001\u0000¢\u0006\u0004\bM\u0010\u0016J'\u0010N\u001a\b\u0012\u0004\u0012\u00020F0\u00062\f\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006H¦@ø\u0001\u0000¢\u0006\u0004\bN\u0010\fJ\u0013\u0010O\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\bO\u0010\u0004J\u0019\u0010Q\u001a\b\u0012\u0004\u0012\u00020P0\u0005H¦@ø\u0001\u0000¢\u0006\u0004\bQ\u0010\u0004J\u0014\u0010S\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0\u00060\u0005H&J\u0014\u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020R0\u00060\u0005H&J\u0018\u0010U\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010R0\u00052\u0006\u0010\u001e\u001a\u00020\u0013H&J\u0014\u0010V\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00060\u0005H&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006W"}, d2 = {"Lcom/im/freechat/domain/c;", "", "", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "", "Lcom/im/freechat/shared/entities/DownloadInfo;", "r", "L", "list", "N", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "item", "u", "(Lcom/im/freechat/shared/entities/DownloadInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "mediaIds", "J", "", com.im.freechat.ui.chat.userprofile.j.f43244a, "c", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "n", "Lcom/im/freechat/shared/entities/contact/UserModel;", "o", "contactIds", "B", "z", "targetUserId", "g", "w", ContextChain.TAG_INFRA, "userId", "", "userMask", "M", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userName", "k", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "info", "D", "(Lcom/im/freechat/shared/entities/auth/UserInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "q", "Lcom/im/freechat/shared/entities/chat/Chat;", "t", k4.b.f84734a, "Lcom/im/freechat/shared/entities/chat/ChatMember;", "O", "h", "F", ExifInterface.LATITUDE_SOUTH, "P", "j", "draftMessage", "C", "d", "m", "presentIds", ExifInterface.LONGITUDE_EAST, "users", "l", "K", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "f", y.b.f83919g, "laterThan", "Lcom/im/freechat/shared/entities/message/Message;", y.b.f83920h, "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", s2.d.f93273b, "Q", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "id", "p", "R", "b", "Lcom/im/freechat/shared/entities/message/MessageWithChat;", "s", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "H", "e", "G", "I", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface c {
    @m8.h
    Object A(int i4, @m8.g Continuation<? super Chat> continuation);

    @m8.h
    Object B(@m8.g List<Integer> list, @m8.g Continuation<? super List<UserModel>> continuation);

    @m8.h
    Object C(int i4, @m8.h String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object D(@m8.g UserInfo userInfo, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object E(@m8.g List<Integer> list, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object F(@m8.g Continuation<? super List<Integer>> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<FriendStatus> G(int i4);

    @m8.g
    kotlinx.coroutines.flow.i<List<FriendStatus>> H();

    @m8.g
    kotlinx.coroutines.flow.i<List<UserModel>> I();

    @m8.h
    Object J(@m8.g List<Long> list, @m8.g Continuation<? super List<DownloadInfo>> continuation);

    @m8.h
    Object K(int i4, int i10, @m8.g Continuation<? super Unit> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<List<DownloadInfo>> L();

    @m8.h
    Object M(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object N(@m8.g List<DownloadInfo> list, @m8.g Continuation<? super Unit> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<List<ChatMember>> O(int i4);

    @m8.g
    kotlinx.coroutines.flow.i<Chat> P(int i4);

    @m8.h
    Object Q(@m8.g String str, @m8.g Continuation<? super List<Message>> continuation);

    @m8.h
    Object R(@m8.g List<Long> list, @m8.g Continuation<? super List<Message>> continuation);

    @m8.h
    Object S(@m8.g Continuation<? super kotlinx.coroutines.flow.i<Integer>> continuation);

    @m8.h
    Object a(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object b(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object c(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<Integer> d(int i4);

    @m8.g
    kotlinx.coroutines.flow.i<List<FriendStatus>> e();

    @m8.g
    kotlinx.coroutines.flow.i<UserModel> f(int i4);

    @m8.h
    Object g(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object h(@m8.g Continuation<? super List<Chat>> continuation);

    @m8.h
    Object i(@m8.g List<UserModel> list, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object j(@m8.g Continuation<? super UserModel> continuation);

    @m8.h
    Object k(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object l(@m8.g List<Integer> list, @m8.g Continuation<? super List<Integer>> continuation);

    @m8.h
    Object m(@m8.g Continuation<? super Integer> continuation);

    @m8.h
    Object n(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object o(int i4, @m8.g Continuation<? super UserModel> continuation);

    @m8.h
    Object p(int i4, @m8.g Continuation<? super kotlinx.coroutines.flow.i<Message>> continuation);

    @m8.h
    Object q(@m8.g List<UserModel> list, @m8.g Continuation<? super Unit> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<List<DownloadInfo>> r();

    @m8.h
    Object s(@m8.g Continuation<? super kotlinx.coroutines.flow.i<MessageWithChat>> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<List<Chat>> t();

    @m8.h
    Object u(@m8.g DownloadInfo downloadInfo, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object v(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<List<UserModel>> w();

    @m8.g
    kotlinx.coroutines.flow.i<List<Chat>> x(int i4);

    @m8.h
    Object y(int i4, long j4, @m8.g Continuation<? super kotlinx.coroutines.flow.i<? extends List<Message>>> continuation);

    @m8.h
    Object z(int i4, @m8.g Continuation<? super Unit> continuation);
}
