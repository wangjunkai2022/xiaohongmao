package com.im.freechat.domain;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Message;
import io.sentry.clientreport.e;
import io.sentry.protocol.y;
import java.io.File;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: SyncRepository.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001J7\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0014\u0012\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\r\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\fJ)\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH¦@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J;\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0016\u0010\u0013\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H¦@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\fJi\u0010 \u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00180\u00042\u0006\u0010\u001f\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\b \u0010!Je\u0010#\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00180\u0004H¦@ø\u0001\u0000¢\u0006\u0004\b#\u0010$J1\u0010&\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00022\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00060\u000f2\u0006\u0010\t\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b&\u0010'J+\u0010*\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\b*\u0010+J+\u0010,\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\b,\u0010+J+\u0010-\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010(\u001a\u00020\u00062\u0006\u0010)\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\b-\u0010+J#\u00100\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.H¦@ø\u0001\u0000¢\u0006\u0004\b0\u00101J\u001b\u00102\u001a\u00020\n2\u0006\u0010/\u001a\u00020.H¦@ø\u0001\u0000¢\u0006\u0004\b2\u00103J\u001b\u00104\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b4\u0010\bJ#\u00106\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00022\u0006\u00105\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\b6\u00107JE\u0010;\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u00182\u0006\u00109\u001a\u00020\u00022\u0006\u0010:\u001a\u00020\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H¦@ø\u0001\u0000¢\u0006\u0004\b;\u0010<J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00020\u001c0=H&J\u0010\u0010@\u001a\u00020\n2\u0006\u0010?\u001a\u00020\u001cH&J\b\u0010A\u001a\u00020\u001cH&J#\u0010C\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u0006H¦@ø\u0001\u0000¢\u0006\u0004\bC\u0010DJ%\u0010G\u001a\u00020\n2\u0006\u0010E\u001a\u00020\u00022\b\u0010F\u001a\u0004\u0018\u00010\u0018H¦@ø\u0001\u0000¢\u0006\u0004\bG\u0010HJ\u0013\u0010I\u001a\u00020\nH¦@ø\u0001\u0000¢\u0006\u0004\bI\u0010JJ#\u0010L\u001a\u00020\n2\u0006\u0010E\u001a\u00020\u00022\u0006\u0010K\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\bL\u00107J\u001b\u0010M\u001a\u00020\n2\u0006\u0010E\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\bM\u0010\bJ\u0013\u0010N\u001a\u00020\nH¦@ø\u0001\u0000¢\u0006\u0004\bN\u0010JJ1\u0010Q\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010O\u001a\u00020\u00182\f\u0010P\u001a\b\u0012\u0004\u0012\u00020\u00020\u000fH¦@ø\u0001\u0000¢\u0006\u0004\bQ\u0010RJ#\u0010T\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010S\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\bT\u0010\fJ+\u0010V\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\bV\u0010WJ+\u0010Z\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\bZ\u0010[J+\u0010\\\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b\\\u0010[J+\u0010]\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b]\u0010[J+\u0010^\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b^\u0010[J+\u0010_\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b_\u0010[J#\u0010`\u001a\u00020\u00022\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\b`\u0010\fJ+\u0010b\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010a\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\bb\u0010WJ+\u0010d\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010c\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\bd\u0010WJ+\u0010f\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010e\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\bf\u0010gJ+\u0010j\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010i\u001a\u00020hH¦@ø\u0001\u0000¢\u0006\u0004\bj\u0010kJ+\u0010m\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010l\u001a\u00020\u001cH¦@ø\u0001\u0000¢\u0006\u0004\bm\u0010WJ#\u0010o\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010n\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\bo\u0010HJ#\u0010q\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010p\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\bq\u0010HJ#\u0010s\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010r\u001a\u00020\u0018H¦@ø\u0001\u0000¢\u0006\u0004\bs\u0010HJ\u001b\u0010u\u001a\u00020t2\u0006\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\bu\u0010\bJ\u0013\u0010v\u001a\u00020\nH¦@ø\u0001\u0000¢\u0006\u0004\bv\u0010JJ\u0013\u0010w\u001a\u00020\nH¦@ø\u0001\u0000¢\u0006\u0004\bw\u0010JJ\u001b\u0010x\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H¦@ø\u0001\u0000¢\u0006\u0004\bx\u0010\bJ\u0013\u0010y\u001a\u00020\nH¦@ø\u0001\u0000¢\u0006\u0004\by\u0010J\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006z"}, d2 = {"Lcom/im/freechat/domain/t;", "", "", "userId", "", "Lkotlin/Pair;", "", "F", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", k4.b.f84734a, "", "g", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "K", "lastUpdateTime", "", "presentChatIds", "C", "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lastReadMessageIds", "n", "(IILkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "M", "currentUserId", "", "content", "attachmentUris", "replyToMessageId", "", "mentionAll", "mentions", "removeOnFail", "Q", "(IILjava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/util/Map;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forwardMessageIds", ExifInterface.LONGITUDE_EAST, "(IILjava/util/List;Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "messageIds", "O", "(ILjava/util/List;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "messageId", "newContent", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(IJLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.GPS_DIRECTION_TRUE, "k", "Lcom/im/freechat/shared/entities/message/Message;", "message", "l", "(ILcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ContextChain.TAG_INFRA, "(Lcom/im/freechat/shared/entities/message/Message;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "B", "forEveryone", "p", "(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "mediaId", "width", "height", "j", "(IILjava/lang/String;IILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "h", "synchronizing", "u", "w", "messagedId", "o", "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "targetUserId", e.b.f83079a, "J", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "accepted", "G", "t", "R", "name", "targetIds", y.b.f83920h, "(ILjava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "targetId", "v", "skipIfNotEmpty", "L", "(IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "selfUserId", "memberId", "f", "(IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "m", "P", "q", y.b.f83919g, "d", "isPublic", "z", "show", "e", MessageBundle.TITLE_ENTRY, "c", "(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/io/File;", "file", "U", "(IILjava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "pinState", "I", ContactResponseMapperKt.BIO, ExifInterface.LATITUDE_SOUTH, "nickname", "N", "avatarUrl", "r", "Lcom/im/freechat/shared/entities/contact/UserModel;", "getUser", "b", "H", "s", "D", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface t {
    @m8.h
    Object A(int i4, long j4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object B(int i4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object C(long j4, @m8.g List<Integer> list, @m8.g Continuation<? super Long> continuation);

    @m8.h
    Object D(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object E(int i4, int i10, @m8.g List<Long> list, @m8.h String str, @m8.g List<String> list2, boolean z9, @m8.g Map<Integer, String> map, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object F(int i4, @m8.g Continuation<? super Map<Integer, Pair<Long, Long>>> continuation);

    @m8.h
    Object G(int i4, boolean z9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object H(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object I(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object J(int i4, @m8.h String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object K(int i4, int i10, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object L(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object M(int i4, int i10, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object N(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object O(int i4, @m8.g List<Long> list, int i10, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object P(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object Q(int i4, int i10, @m8.h String str, @m8.g List<String> list, @m8.h Long l10, boolean z9, @m8.g Map<Integer, String> map, boolean z10, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object R(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object S(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object T(int i4, long j4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object U(int i4, int i10, @m8.g File file, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object a(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object b(@m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object c(int i4, int i10, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object d(int i4, int i10, @m8.g Continuation<? super Integer> continuation);

    @m8.h
    Object e(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object f(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object g(int i4, int i10, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object getUser(int i4, @m8.g Continuation<? super UserModel> continuation);

    @m8.g
    kotlinx.coroutines.flow.i<Boolean> h();

    @m8.h
    Object i(@m8.g Message message, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object j(int i4, int i10, @m8.g String str, int i11, int i12, @m8.h Long l10, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object k(int i4, long j4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object l(int i4, @m8.g Message message, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object m(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object n(int i4, int i10, @m8.g Pair<Long, Long> pair, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object o(int i4, long j4, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object p(int i4, boolean z9, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object q(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object r(int i4, @m8.g String str, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object s(int i4, @m8.g Continuation<? super Integer> continuation);

    @m8.h
    Object t(int i4, @m8.g Continuation<? super Unit> continuation);

    void u(boolean z9);

    @m8.h
    Object v(int i4, int i10, @m8.g Continuation<? super Integer> continuation);

    boolean w();

    @m8.h
    Object x(int i4, int i10, int i11, @m8.g Continuation<? super Unit> continuation);

    @m8.h
    Object y(int i4, @m8.g String str, @m8.g List<Integer> list, @m8.g Continuation<? super Integer> continuation);

    @m8.h
    Object z(int i4, int i10, boolean z9, @m8.g Continuation<? super Unit> continuation);
}
