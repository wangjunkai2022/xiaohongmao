package com.im.freechat.sdk;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.im.freechat.shared.entities.contact.UserModel;
import io.sentry.clientreport.e;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/* compiled from: DataManager.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001GB\u0099\u0001\u0012\u0006\u0010J\u001a\u00020H\u0012\u0006\u0010M\u001a\u00020K\u0012\u0006\u0010P\u001a\u00020N\u0012\u0006\u0010S\u001a\u00020Q\u0012\u0006\u0010V\u001a\u00020T\u0012\u0006\u0010Y\u001a\u00020W\u0012\u0006\u0010\\\u001a\u00020Z\u0012\u0006\u0010_\u001a\u00020]\u0012\u0006\u0010b\u001a\u00020`\u0012\u0006\u0010e\u001a\u00020c\u0012\u0006\u0010h\u001a\u00020f\u0012\u0006\u0010k\u001a\u00020i\u0012\u0006\u0010n\u001a\u00020l\u0012\u0006\u0010q\u001a\u00020o\u0012\u0006\u0010u\u001a\u00020r\u0012\u0006\u0010y\u001a\u00020v\u0012\u0006\u0010|\u001a\u00020z\u0012\u0006\u0010\u007f\u001a\u00020}¢\u0006\u0006\b\u0080\u0001\u0010\u0081\u0001J\\\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\f\u0010\rJ2\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\u0010\u0010\u0011J*\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\u0012\u0010\u0013J*\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b\u0014\u0010\u0013J1\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b\u0017\u0010\u0018JG\u0010\u001b\u001a\u00020\u00072\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0019\u0012\u0004\u0012\u00020\u00070\t2\u0018\b\u0002\u0010\n\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ-\u0010\u001e\u001a\u00020\u00072\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0019\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ?\u0010$\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000e2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b$\u0010%J-\u0010'\u001a\u00020\u00072\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u0019\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b'\u0010\u001fJ-\u0010(\u001a\u00020\u00072\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u0019\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b(\u0010\u001fJ1\u0010)\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b)\u0010\u0018J1\u0010*\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b*\u0010\u0018J8\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00070\u000b2\u0006\u0010 \u001a\u00020\u00022\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b+\u0010,J)\u0010-\u001a\u00020\u00072\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00070\tH\u0086@ø\u0001\u0002¢\u0006\u0004\b-\u0010\u001fJT\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010.\u001a\u00020\u00022\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u0086@ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002ø\u0001\u0002¢\u0006\u0004\b/\u00100J\u001d\u00103\u001a\u0004\u0018\u0001022\u0006\u00101\u001a\u00020\u0004H\u0086@ø\u0001\u0002¢\u0006\u0004\b3\u00104J\u001d\u00106\u001a\u0004\u0018\u0001022\u0006\u00105\u001a\u00020\u0004H\u0086@ø\u0001\u0002¢\u0006\u0004\b6\u00104J\u001d\u00108\u001a\u0004\u0018\u0001022\u0006\u00107\u001a\u00020\u0004H\u0086@ø\u0001\u0002¢\u0006\u0004\b8\u00104J(\u0010;\u001a\u00020\u00072\u0006\u0010:\u001a\u0002092\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0019\u0012\u0004\u0012\u00020\u00070\tJ(\u0010<\u001a\u00020\u00072\u0006\u0010:\u001a\u0002092\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u0019\u0012\u0004\u0012\u00020\u00070\tJ(\u0010=\u001a\u00020\u00072\u0006\u0010:\u001a\u0002092\u0018\u0010\u0016\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0\u0019\u0012\u0004\u0012\u00020\u00070\tJ,\u0010>\u001a\u00020\u00072\u0006\u0010:\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010&\u0012\u0004\u0012\u00020\u00070\tJB\u0010@\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0018\u0010\b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0019\u0012\u0004\u0012\u00020\u00070\t2\u0018\b\u0002\u0010\n\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u001a\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tJH\u0010A\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tJ\u001e\u0010B\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0006\u0010.\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eJ\u0016\u0010C\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0006\u0010.\u001a\u00020\u0002J\u0016\u0010D\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u0002J,\u0010E\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0012\u0004\u0012\u00020\u00070\tJ$\u0010F\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00070\tJB\u0010G\u001a\u00020?2\u0006\u0010:\u001a\u0002092\u0006\u0010.\u001a\u00020\u00022\u0014\u0010\u0016\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00070\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tR\u0014\u0010J\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010IR\u0014\u0010M\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010OR\u0014\u0010S\u001a\u00020Q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010RR\u0014\u0010V\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010UR\u0014\u0010Y\u001a\u00020W8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010XR\u0014\u0010\\\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010[R\u0014\u0010_\u001a\u00020]8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010^R\u0014\u0010b\u001a\u00020`8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010aR\u0014\u0010e\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010dR\u0014\u0010h\u001a\u00020f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010gR\u0014\u0010k\u001a\u00020i8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010jR\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010mR\u0014\u0010q\u001a\u00020o8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010pR\u0014\u0010u\u001a\u00020r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010y\u001a\u00020v8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010xR\u0014\u0010|\u001a\u00020z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010{R\u0014\u0010\u007f\u001a\u00020}8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010~\u0082\u0002\u000f\n\u0002\b!\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0082\u0001"}, d2 = {"Lcom/im/freechat/sdk/a;", "", "", "targetUserId", "", e.b.f83079a, "Lkotlin/Function0;", "", "onSuccess", "Lkotlin/Function1;", "onFailure", "Lkotlin/Result;", "B", "(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "approve", y.b.f83920h, "(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "d", "Lcom/im/freechat/shared/entities/contact/UserModel;", "onData", ContextChain.TAG_INFRA, "(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "", "m", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/shared/entities/chat/Chat;", "g", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", k4.b.f84734a, "message", "removeOnFail", "onResult", "D", "(ILjava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "q", "s", "k", "u", "H", "(ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "v", "userId", "b", "(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nickname", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "G", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ContactResponseMapperKt.BIO, "F", "remoteUrl", ExifInterface.LONGITUDE_EAST, "Lcom/im/freechat/sdk/a$a;", "suspendRunner", "h", "r", "t", "l", "Lkotlinx/coroutines/j2;", "n", "z", y.b.f83919g, "e", "c", "j", "w", "a", "Lcom/im/freechat/domain/usecase/chat/h;", "Lcom/im/freechat/domain/usecase/chat/h;", "listenChatsInteractor", "Lcom/im/freechat/domain/usecase/chat_request/f;", "Lcom/im/freechat/domain/usecase/chat_request/f;", "sendFriendRequestInteractor", "Lcom/im/freechat/domain/usecase/chat_request/c;", "Lcom/im/freechat/domain/usecase/chat_request/c;", "listenReceivedFriendRequestsInteractor", "Lcom/im/freechat/domain/usecase/chat_request/d;", "Lcom/im/freechat/domain/usecase/chat_request/d;", "listenSentFriendRequestsInteractor", "Lcom/im/freechat/domain/usecase/chat_request/b;", "Lcom/im/freechat/domain/usecase/chat_request/b;", "listenFriendRequestByTargetIdInteractor", "Lcom/im/freechat/domain/usecase/chat_request/a;", "Lcom/im/freechat/domain/usecase/chat_request/a;", "deleteFriendRequestInteractor", "Lcom/im/freechat/domain/usecase/chat_request/e;", "Lcom/im/freechat/domain/usecase/chat_request/e;", "replyFriendRequestInteractor", "Lcom/im/freechat/domain/usecase/chat/r;", "Lcom/im/freechat/domain/usecase/chat/r;", "subscribeChatInteractor", "Lcom/im/freechat/domain/usecase/chat/t;", "Lcom/im/freechat/domain/usecase/chat/t;", "syncChatInteractor", "Lcom/im/freechat/domain/usecase/chat/i;", "Lcom/im/freechat/domain/usecase/chat/i;", "listenTotalUnreadCountInteractor", "Lcom/im/freechat/domain/usecase/chat/c;", "Lcom/im/freechat/domain/usecase/chat/c;", "createSingleChatInteractor", "Lcom/im/freechat/domain/usecase/currentuser/g;", "Lcom/im/freechat/domain/usecase/currentuser/g;", "setExternalNicknameInteractor", "Lcom/im/freechat/domain/usecase/currentuser/f;", "Lcom/im/freechat/domain/usecase/currentuser/f;", "setBioInteractor", "Lcom/im/freechat/domain/usecase/currentuser/o;", "Lcom/im/freechat/domain/usecase/currentuser/o;", "updateExternalAvatarInteractor", "Lcom/im/freechat/domain/usecase/contact/f;", "o", "Lcom/im/freechat/domain/usecase/contact/f;", "removeFriendInteractor", "Lcom/im/freechat/domain/usecase/contact/d;", "p", "Lcom/im/freechat/domain/usecase/contact/d;", "listenContactInteractor", "Lcom/im/freechat/domain/usecase/contact/e;", "Lcom/im/freechat/domain/usecase/contact/e;", "listenFriendsInteractor", "Lcom/im/freechat/domain/usecase/messages/j;", "Lcom/im/freechat/domain/usecase/messages/j;", "sendMessageInteractor", "<init>", "(Lcom/im/freechat/domain/usecase/chat/h;Lcom/im/freechat/domain/usecase/chat_request/f;Lcom/im/freechat/domain/usecase/chat_request/c;Lcom/im/freechat/domain/usecase/chat_request/d;Lcom/im/freechat/domain/usecase/chat_request/b;Lcom/im/freechat/domain/usecase/chat_request/a;Lcom/im/freechat/domain/usecase/chat_request/e;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/chat/t;Lcom/im/freechat/domain/usecase/chat/i;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/currentuser/g;Lcom/im/freechat/domain/usecase/currentuser/f;Lcom/im/freechat/domain/usecase/currentuser/o;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/d;Lcom/im/freechat/domain/usecase/contact/e;Lcom/im/freechat/domain/usecase/messages/j;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a {
    @m8.g

    /* renamed from: a */
    private final com.im.freechat.domain.usecase.chat.h f41997a;
    @m8.g

    /* renamed from: b */
    private final com.im.freechat.domain.usecase.chat_request.f f41998b;
    @m8.g

    /* renamed from: c */
    private final com.im.freechat.domain.usecase.chat_request.c f41999c;
    @m8.g

    /* renamed from: d */
    private final com.im.freechat.domain.usecase.chat_request.d f42000d;
    @m8.g

    /* renamed from: e */
    private final com.im.freechat.domain.usecase.chat_request.b f42001e;
    @m8.g

    /* renamed from: f */
    private final com.im.freechat.domain.usecase.chat_request.a f42002f;
    @m8.g

    /* renamed from: g */
    private final com.im.freechat.domain.usecase.chat_request.e f42003g;
    @m8.g

    /* renamed from: h */
    private final com.im.freechat.domain.usecase.chat.r f42004h;
    @m8.g

    /* renamed from: i */
    private final com.im.freechat.domain.usecase.chat.t f42005i;
    @m8.g

    /* renamed from: j */
    private final com.im.freechat.domain.usecase.chat.i f42006j;
    @m8.g

    /* renamed from: k */
    private final com.im.freechat.domain.usecase.chat.c f42007k;
    @m8.g

    /* renamed from: l */
    private final com.im.freechat.domain.usecase.currentuser.g f42008l;
    @m8.g

    /* renamed from: m */
    private final com.im.freechat.domain.usecase.currentuser.f f42009m;
    @m8.g

    /* renamed from: n */
    private final com.im.freechat.domain.usecase.currentuser.o f42010n;
    @m8.g

    /* renamed from: o */
    private final com.im.freechat.domain.usecase.contact.f f42011o;
    @m8.g

    /* renamed from: p */
    private final com.im.freechat.domain.usecase.contact.d f42012p;
    @m8.g

    /* renamed from: q */
    private final com.im.freechat.domain.usecase.contact.e f42013q;
    @m8.g

    /* renamed from: r */
    private final com.im.freechat.domain.usecase.messages.j f42014r;

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J9\u0010\t\u001a\u00020\b2'\u0010\u0007\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0002\b\u0006ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\u000b\u001a\u00020\u0005R\u0017\u0010\u000f\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/sdk/a$a;", "", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/j2;", "c", "(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;", "a", "Lkotlinx/coroutines/s0;", "b", "()Lkotlinx/coroutines/s0;", "scope", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.sdk.a$a */
    /* loaded from: classes3.dex */
    public static final class C0327a {
        @m8.g

        /* renamed from: a */
        private final s0 f42015a = t0.a(m2.c(null, 1, null).plus(i1.e()));

        public final void a() {
            t0.f(this.f42015a, null, 1, null);
        }

        @m8.g
        public final s0 b() {
            return this.f42015a;
        }

        @m8.g
        public final j2 c(@m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> block) {
            j2 f10;
            Intrinsics.checkNotNullParameter(block, "block");
            f10 = kotlinx.coroutines.l.f(this.f42015a, null, null, block, 3, null);
            return f10;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {0}, l = {75}, m = "sendMessage", n = {"onResult"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class a0 extends ContinuationImpl {

        /* renamed from: a */
        Object f42016a;

        /* renamed from: b */
        /* synthetic */ Object f42017b;

        /* renamed from: d */
        int f42019d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a0(Continuation<? super a0> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f42017b = obj;
            this.f42019d |= Integer.MIN_VALUE;
            return a.this.D(0, null, false, null, this);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {0, 0}, l = {107}, m = "createSingleChat-BWLJW6A", n = {"onData", "onFailure"}, s = {"L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a */
        Object f42020a;

        /* renamed from: b */
        Object f42021b;

        /* renamed from: c */
        /* synthetic */ Object f42022c;

        /* renamed from: e */
        int f42024e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Continuation<? super b> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42022c = obj;
            this.f42024e |= Integer.MIN_VALUE;
            Object b10 = a.this.b(0, null, null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return b10 == coroutine_suspended ? b10 : Result.m69boximpl(b10);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {}, l = {119}, m = "setAvatar", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b0 extends ContinuationImpl {

        /* renamed from: a */
        /* synthetic */ Object f42025a;

        /* renamed from: c */
        int f42027c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b0(Continuation<? super b0> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f42025a = obj;
            this.f42027c |= Integer.MIN_VALUE;
            return a.this.E(null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$createSingleChat$4", f = "DataManager.kt", i = {}, l = {193}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42028a;

        /* renamed from: c */
        final /* synthetic */ int f42030c;

        /* renamed from: d */
        final /* synthetic */ Function1<Integer, Unit> f42031d;

        /* renamed from: e */
        final /* synthetic */ Function1<Throwable, Unit> f42032e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(int i4, Function1<? super Integer, Unit> function1, Function1<? super Throwable, Unit> function12, Continuation<? super c> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42030c = i4;
            this.f42031d = function1;
            this.f42032e = function12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f42030c, this.f42031d, this.f42032e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42028a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42030c;
                Function1<Integer, Unit> function1 = this.f42031d;
                Function1<Throwable, Unit> function12 = this.f42032e;
                this.f42028a = 1;
                if (aVar.b(i10, function1, function12, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {}, l = {116}, m = "setBio", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c0 extends ContinuationImpl {

        /* renamed from: a */
        /* synthetic */ Object f42033a;

        /* renamed from: c */
        int f42035c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c0(Continuation<? super c0> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f42033a = obj;
            this.f42035c |= Integer.MIN_VALUE;
            return a.this.F(null, this);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {}, l = {58}, m = "deleteFriend-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a */
        /* synthetic */ Object f42036a;

        /* renamed from: c */
        int f42038c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Continuation<? super d> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42036a = obj;
            this.f42038c |= Integer.MIN_VALUE;
            Object d4 = a.this.d(0, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return d4 == coroutine_suspended ? d4 : Result.m69boximpl(d4);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {}, l = {113}, m = "setNickname", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class d0 extends ContinuationImpl {

        /* renamed from: a */
        /* synthetic */ Object f42039a;

        /* renamed from: c */
        int f42041c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d0(Continuation<? super d0> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f42039a = obj;
            this.f42041c |= Integer.MIN_VALUE;
            return a.this.G(null, this);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$deleteFriend$2", f = "DataManager.kt", i = {}, l = {184}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42042a;

        /* renamed from: c */
        final /* synthetic */ int f42044c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(int i4, Continuation<? super e> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42044c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(this.f42044c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42042a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42044c;
                this.f42042a = 1;
                if (aVar.d(i10, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {0}, l = {100}, m = "syncChat-0E7RQCE", n = {"onFailure"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class e0 extends ContinuationImpl {

        /* renamed from: a */
        Object f42045a;

        /* renamed from: b */
        /* synthetic */ Object f42046b;

        /* renamed from: d */
        int f42048d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e0(Continuation<? super e0> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42046b = obj;
            this.f42048d |= Integer.MIN_VALUE;
            Object H = a.this.H(0, null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return H == coroutine_suspended ? H : Result.m69boximpl(H);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {}, l = {54}, m = "deleteFriendRequest-gIAlu-s", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class f extends ContinuationImpl {

        /* renamed from: a */
        /* synthetic */ Object f42049a;

        /* renamed from: c */
        int f42051c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Continuation<? super f> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42049a = obj;
            this.f42051c |= Integer.MIN_VALUE;
            Object f10 = a.this.f(0, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return f10 == coroutine_suspended ? f10 : Result.m69boximpl(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$deleteFriendRequest$2", f = "DataManager.kt", i = {}, l = {181}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42052a;

        /* renamed from: c */
        final /* synthetic */ int f42054c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i4, Continuation<? super g> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42054c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f42054c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42052a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42054c;
                this.f42052a = 1;
                if (aVar.f(i10, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenChats$2", f = "DataManager.kt", i = {}, l = {72}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class h extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends Chat>>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42055a;

        /* renamed from: b */
        private /* synthetic */ Object f42056b;

        /* renamed from: c */
        final /* synthetic */ Function1<List<Chat>, Unit> f42057c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenChats$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$h$a */
        /* loaded from: classes3.dex */
        public static final class C0328a extends SuspendLambda implements Function2<List<? extends Chat>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42058a;

            /* renamed from: b */
            /* synthetic */ Object f42059b;

            /* renamed from: c */
            final /* synthetic */ Function1<List<Chat>, Unit> f42060c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0328a(Function1<? super List<Chat>, Unit> function1, Continuation<? super C0328a> continuation) {
                super(2, continuation);
                this.f42060c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0328a c0328a = new C0328a(this.f42060c, continuation);
                c0328a.f42059b = obj;
                return c0328a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g List<Chat> list, @m8.h Continuation<? super Unit> continuation) {
                return ((C0328a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42058a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42060c.invoke((List) this.f42059b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        h(Function1<? super List<Chat>, Unit> function1, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f42057c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            h hVar = new h(this.f42057c, continuation);
            hVar.f42056b = obj;
            return hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<Chat>> result, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42055a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0328a c0328a = new C0328a(this.f42057c, null);
                this.f42055a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42056b).onSuccess(c0328a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenChats$3", f = "DataManager.kt", i = {}, l = {123}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class i extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42061a;

        /* renamed from: c */
        final /* synthetic */ Function1<List<Chat>, Unit> f42063c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        i(Function1<? super List<Chat>, Unit> function1, Continuation<? super i> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42063c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new i(this.f42063c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((i) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42061a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                Function1<List<Chat>, Unit> function1 = this.f42063c;
                this.f42061a = 1;
                if (aVar.g(function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriend$2", f = "DataManager.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class j extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends UserModel>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42064a;

        /* renamed from: b */
        private /* synthetic */ Object f42065b;

        /* renamed from: c */
        final /* synthetic */ Function1<UserModel, Unit> f42066c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriend$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$j$a */
        /* loaded from: classes3.dex */
        public static final class C0329a extends SuspendLambda implements Function2<UserModel, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42067a;

            /* renamed from: b */
            /* synthetic */ Object f42068b;

            /* renamed from: c */
            final /* synthetic */ Function1<UserModel, Unit> f42069c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0329a(Function1<? super UserModel, Unit> function1, Continuation<? super C0329a> continuation) {
                super(2, continuation);
                this.f42069c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0329a c0329a = new C0329a(this.f42069c, continuation);
                c0329a.f42068b = obj;
                return c0329a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.h UserModel userModel, @m8.h Continuation<? super Unit> continuation) {
                return ((C0329a) create(userModel, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42067a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42069c.invoke((UserModel) this.f42068b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        j(Function1<? super UserModel, Unit> function1, Continuation<? super j> continuation) {
            super(2, continuation);
            this.f42066c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            j jVar = new j(this.f42066c, continuation);
            jVar.f42065b = obj;
            return jVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<UserModel> result, @m8.h Continuation<? super Unit> continuation) {
            return ((j) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42064a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0329a c0329a = new C0329a(this.f42066c, null);
                this.f42064a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42065b).onSuccess(c0329a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriend$3", f = "DataManager.kt", i = {}, l = {187}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class k extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42070a;

        /* renamed from: c */
        final /* synthetic */ int f42072c;

        /* renamed from: d */
        final /* synthetic */ Function1<UserModel, Unit> f42073d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        k(int i4, Function1<? super UserModel, Unit> function1, Continuation<? super k> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42072c = i4;
            this.f42073d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new k(this.f42072c, this.f42073d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((k) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42070a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42072c;
                Function1<UserModel, Unit> function1 = this.f42073d;
                this.f42070a = 1;
                if (aVar.i(i10, function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriendRequestByTargetId$2", f = "DataManager.kt", i = {}, l = {95}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class l extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends FriendStatus>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42074a;

        /* renamed from: b */
        private /* synthetic */ Object f42075b;

        /* renamed from: c */
        final /* synthetic */ Function1<FriendStatus, Unit> f42076c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriendRequestByTargetId$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$l$a */
        /* loaded from: classes3.dex */
        public static final class C0330a extends SuspendLambda implements Function2<FriendStatus, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42077a;

            /* renamed from: b */
            /* synthetic */ Object f42078b;

            /* renamed from: c */
            final /* synthetic */ Function1<FriendStatus, Unit> f42079c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0330a(Function1<? super FriendStatus, Unit> function1, Continuation<? super C0330a> continuation) {
                super(2, continuation);
                this.f42079c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0330a c0330a = new C0330a(this.f42079c, continuation);
                c0330a.f42078b = obj;
                return c0330a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.h FriendStatus friendStatus, @m8.h Continuation<? super Unit> continuation) {
                return ((C0330a) create(friendStatus, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42077a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42079c.invoke((FriendStatus) this.f42078b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        l(Function1<? super FriendStatus, Unit> function1, Continuation<? super l> continuation) {
            super(2, continuation);
            this.f42076c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            l lVar = new l(this.f42076c, continuation);
            lVar.f42075b = obj;
            return lVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<FriendStatus> result, @m8.h Continuation<? super Unit> continuation) {
            return ((l) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42074a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0330a c0330a = new C0330a(this.f42076c, null);
                this.f42074a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42075b).onSuccess(c0330a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriendRequestByTargetId$3", f = "DataManager.kt", i = {}, l = {142}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class m extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42080a;

        /* renamed from: c */
        final /* synthetic */ int f42082c;

        /* renamed from: d */
        final /* synthetic */ Function1<FriendStatus, Unit> f42083d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        m(int i4, Function1<? super FriendStatus, Unit> function1, Continuation<? super m> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42082c = i4;
            this.f42083d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new m(this.f42082c, this.f42083d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((m) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42080a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42082c;
                Function1<FriendStatus, Unit> function1 = this.f42083d;
                this.f42080a = 1;
                if (aVar.k(i10, function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriends$2", f = "DataManager.kt", i = {0}, l = {67, 68}, m = "invokeSuspend", n = {"$this$invoke"}, s = {"L$0"})
    /* loaded from: classes3.dex */
    public static final class n extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends UserModel>>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42084a;

        /* renamed from: b */
        private /* synthetic */ Object f42085b;

        /* renamed from: c */
        final /* synthetic */ Function1<List<UserModel>, Unit> f42086c;

        /* renamed from: d */
        final /* synthetic */ Function1<Throwable, Unit> f42087d;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriends$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$n$a */
        /* loaded from: classes3.dex */
        public static final class C0331a extends SuspendLambda implements Function2<List<? extends UserModel>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42088a;

            /* renamed from: b */
            /* synthetic */ Object f42089b;

            /* renamed from: c */
            final /* synthetic */ Function1<List<UserModel>, Unit> f42090c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0331a(Function1<? super List<UserModel>, Unit> function1, Continuation<? super C0331a> continuation) {
                super(2, continuation);
                this.f42090c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0331a c0331a = new C0331a(this.f42090c, continuation);
                c0331a.f42089b = obj;
                return c0331a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g List<UserModel> list, @m8.h Continuation<? super Unit> continuation) {
                return ((C0331a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42088a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42090c.invoke((List) this.f42089b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriends$2$2", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42091a;

            /* renamed from: b */
            /* synthetic */ Object f42092b;

            /* renamed from: c */
            final /* synthetic */ Function1<Throwable, Unit> f42093c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(Function1<? super Throwable, Unit> function1, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f42093c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                b bVar = new b(this.f42093c, continuation);
                bVar.f42092b = obj;
                return bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.h Throwable th, @m8.h Continuation<? super Unit> continuation) {
                return ((b) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42091a == 0) {
                    ResultKt.throwOnFailure(obj);
                    Throwable th = (Throwable) this.f42092b;
                    Function1<Throwable, Unit> function1 = this.f42093c;
                    if (function1 != null) {
                        function1.invoke(th);
                    }
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        n(Function1<? super List<UserModel>, Unit> function1, Function1<? super Throwable, Unit> function12, Continuation<? super n> continuation) {
            super(2, continuation);
            this.f42086c = function1;
            this.f42087d = function12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            n nVar = new n(this.f42086c, this.f42087d, continuation);
            nVar.f42085b = obj;
            return nVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<UserModel>> result, @m8.h Continuation<? super Unit> continuation) {
            return ((n) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            com.im.freechat.shared.entities.Result result;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42084a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                result = (com.im.freechat.shared.entities.Result) this.f42085b;
                C0331a c0331a = new C0331a(this.f42086c, null);
                this.f42085b = result;
                this.f42084a = 1;
                if (result.onSuccess(c0331a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                if (i4 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            } else {
                result = (com.im.freechat.shared.entities.Result) this.f42085b;
                ResultKt.throwOnFailure(obj);
            }
            b bVar = new b(this.f42087d, null);
            this.f42085b = null;
            this.f42084a = 2;
            if (result.onFailure(bVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenFriends$3", f = "DataManager.kt", i = {}, l = {150}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class o extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42094a;

        /* renamed from: c */
        final /* synthetic */ Function1<List<UserModel>, Unit> f42096c;

        /* renamed from: d */
        final /* synthetic */ Function1<Throwable, Unit> f42097d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        o(Function1<? super List<UserModel>, Unit> function1, Function1<? super Throwable, Unit> function12, Continuation<? super o> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42096c = function1;
            this.f42097d = function12;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new o(this.f42096c, this.f42097d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((o) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42094a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                Function1<List<UserModel>, Unit> function1 = this.f42096c;
                Function1<Throwable, Unit> function12 = this.f42097d;
                this.f42094a = 1;
                if (aVar.m(function1, function12, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenReceivedFriendRequests$2", f = "DataManager.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class p extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends FriendStatus>>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42098a;

        /* renamed from: b */
        private /* synthetic */ Object f42099b;

        /* renamed from: c */
        final /* synthetic */ Function1<List<FriendStatus>, Unit> f42100c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenReceivedFriendRequests$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$p$a */
        /* loaded from: classes3.dex */
        public static final class C0332a extends SuspendLambda implements Function2<List<? extends FriendStatus>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42101a;

            /* renamed from: b */
            /* synthetic */ Object f42102b;

            /* renamed from: c */
            final /* synthetic */ Function1<List<FriendStatus>, Unit> f42103c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0332a(Function1<? super List<FriendStatus>, Unit> function1, Continuation<? super C0332a> continuation) {
                super(2, continuation);
                this.f42103c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0332a c0332a = new C0332a(this.f42103c, continuation);
                c0332a.f42102b = obj;
                return c0332a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g List<FriendStatus> list, @m8.h Continuation<? super Unit> continuation) {
                return ((C0332a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42101a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42103c.invoke((List) this.f42102b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        p(Function1<? super List<FriendStatus>, Unit> function1, Continuation<? super p> continuation) {
            super(2, continuation);
            this.f42100c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            p pVar = new p(this.f42100c, continuation);
            pVar.f42099b = obj;
            return pVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<FriendStatus>> result, @m8.h Continuation<? super Unit> continuation) {
            return ((p) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42098a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0332a c0332a = new C0332a(this.f42100c, null);
                this.f42098a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42099b).onSuccess(c0332a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenReceivedFriendRequests$3", f = "DataManager.kt", i = {}, l = {h0.I}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class q extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42104a;

        /* renamed from: c */
        final /* synthetic */ Function1<List<FriendStatus>, Unit> f42106c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        q(Function1<? super List<FriendStatus>, Unit> function1, Continuation<? super q> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42106c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new q(this.f42106c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((q) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42104a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                Function1<List<FriendStatus>, Unit> function1 = this.f42106c;
                this.f42104a = 1;
                if (aVar.q(function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenSentFriendRequests$2", f = "DataManager.kt", i = {}, l = {90}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class r extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends List<? extends FriendStatus>>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42107a;

        /* renamed from: b */
        private /* synthetic */ Object f42108b;

        /* renamed from: c */
        final /* synthetic */ Function1<List<FriendStatus>, Unit> f42109c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenSentFriendRequests$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$r$a */
        /* loaded from: classes3.dex */
        public static final class C0333a extends SuspendLambda implements Function2<List<? extends FriendStatus>, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42110a;

            /* renamed from: b */
            /* synthetic */ Object f42111b;

            /* renamed from: c */
            final /* synthetic */ Function1<List<FriendStatus>, Unit> f42112c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0333a(Function1<? super List<FriendStatus>, Unit> function1, Continuation<? super C0333a> continuation) {
                super(2, continuation);
                this.f42112c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0333a c0333a = new C0333a(this.f42112c, continuation);
                c0333a.f42111b = obj;
                return c0333a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g List<FriendStatus> list, @m8.h Continuation<? super Unit> continuation) {
                return ((C0333a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42110a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42112c.invoke((List) this.f42111b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        r(Function1<? super List<FriendStatus>, Unit> function1, Continuation<? super r> continuation) {
            super(2, continuation);
            this.f42109c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            r rVar = new r(this.f42109c, continuation);
            rVar.f42108b = obj;
            return rVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<? extends List<FriendStatus>> result, @m8.h Continuation<? super Unit> continuation) {
            return ((r) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42107a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0333a c0333a = new C0333a(this.f42109c, null);
                this.f42107a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42108b).onSuccess(c0333a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenSentFriendRequests$3", f = "DataManager.kt", i = {}, l = {h0.Q}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class s extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42113a;

        /* renamed from: c */
        final /* synthetic */ Function1<List<FriendStatus>, Unit> f42115c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        s(Function1<? super List<FriendStatus>, Unit> function1, Continuation<? super s> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42115c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new s(this.f42115c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((s) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42113a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                Function1<List<FriendStatus>, Unit> function1 = this.f42115c;
                this.f42113a = 1;
                if (aVar.s(function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenSingleChat$2", f = "DataManager.kt", i = {}, l = {98}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class t extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Chat>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42116a;

        /* renamed from: b */
        private /* synthetic */ Object f42117b;

        /* renamed from: c */
        final /* synthetic */ Function1<Chat, Unit> f42118c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenSingleChat$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$t$a */
        /* loaded from: classes3.dex */
        public static final class C0334a extends SuspendLambda implements Function2<Chat, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42119a;

            /* renamed from: b */
            /* synthetic */ Object f42120b;

            /* renamed from: c */
            final /* synthetic */ Function1<Chat, Unit> f42121c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0334a(Function1<? super Chat, Unit> function1, Continuation<? super C0334a> continuation) {
                super(2, continuation);
                this.f42121c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0334a c0334a = new C0334a(this.f42121c, continuation);
                c0334a.f42120b = obj;
                return c0334a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.h Chat chat, @m8.h Continuation<? super Unit> continuation) {
                return ((C0334a) create(chat, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42119a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42121c.invoke((Chat) this.f42120b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        t(Function1<? super Chat, Unit> function1, Continuation<? super t> continuation) {
            super(2, continuation);
            this.f42118c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            t tVar = new t(this.f42118c, continuation);
            tVar.f42117b = obj;
            return tVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Chat> result, @m8.h Continuation<? super Unit> continuation) {
            return ((t) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42116a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0334a c0334a = new C0334a(this.f42118c, null);
                this.f42116a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42117b).onSuccess(c0334a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenTotalUnreadCount$2", f = "DataManager.kt", i = {}, l = {104}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class u extends SuspendLambda implements Function2<com.im.freechat.shared.entities.Result<? extends Integer>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42122a;

        /* renamed from: b */
        private /* synthetic */ Object f42123b;

        /* renamed from: c */
        final /* synthetic */ Function1<Integer, Unit> f42124c;

        /* compiled from: DataManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenTotalUnreadCount$2$1", f = "DataManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.a$u$a */
        /* loaded from: classes3.dex */
        public static final class C0335a extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {

            /* renamed from: a */
            int f42125a;

            /* renamed from: b */
            /* synthetic */ int f42126b;

            /* renamed from: c */
            final /* synthetic */ Function1<Integer, Unit> f42127c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0335a(Function1<? super Integer, Unit> function1, Continuation<? super C0335a> continuation) {
                super(2, continuation);
                this.f42127c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0335a c0335a = new C0335a(this.f42127c, continuation);
                c0335a.f42126b = ((Number) obj).intValue();
                return c0335a;
            }

            @m8.h
            public final Object h(int i4, @m8.h Continuation<? super Unit> continuation) {
                return ((C0335a) create(Integer.valueOf(i4), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Unit> continuation) {
                return h(num.intValue(), continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42125a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42127c.invoke(Boxing.boxInt(this.f42126b));
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        u(Function1<? super Integer, Unit> function1, Continuation<? super u> continuation) {
            super(2, continuation);
            this.f42124c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            u uVar = new u(this.f42124c, continuation);
            uVar.f42123b = obj;
            return uVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g com.im.freechat.shared.entities.Result<Integer> result, @m8.h Continuation<? super Unit> continuation) {
            return ((u) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42122a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0335a c0335a = new C0335a(this.f42124c, null);
                this.f42122a = 1;
                if (((com.im.freechat.shared.entities.Result) this.f42123b).onSuccess(c0335a, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$listenTotalUnreadCount$3", f = "DataManager.kt", i = {}, l = {190}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class v extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42128a;

        /* renamed from: c */
        final /* synthetic */ Function1<Integer, Unit> f42130c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        v(Function1<? super Integer, Unit> function1, Continuation<? super v> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42130c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new v(this.f42130c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((v) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42128a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                Function1<Integer, Unit> function1 = this.f42130c;
                this.f42128a = 1;
                if (aVar.v(function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {}, l = {49}, m = "replyFriendRequest-0E7RQCE", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class w extends ContinuationImpl {

        /* renamed from: a */
        /* synthetic */ Object f42131a;

        /* renamed from: c */
        int f42133c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        w(Continuation<? super w> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42131a = obj;
            this.f42133c |= Integer.MIN_VALUE;
            Object y9 = a.this.y(0, false, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return y9 == coroutine_suspended ? y9 : Result.m69boximpl(y9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$replyFriendRequest$2", f = "DataManager.kt", i = {}, l = {175}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class x extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42134a;

        /* renamed from: c */
        final /* synthetic */ int f42136c;

        /* renamed from: d */
        final /* synthetic */ boolean f42137d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        x(int i4, boolean z9, Continuation<? super x> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42136c = i4;
            this.f42137d = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new x(this.f42136c, this.f42137d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((x) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42134a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42136c;
                boolean z9 = this.f42137d;
                this.f42134a = 1;
                if (aVar.y(i10, z9, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager", f = "DataManager.kt", i = {0, 0}, l = {43}, m = "sendFriendRequest-yxL6bBk", n = {"onSuccess", "onFailure"}, s = {"L$0", "L$1"})
    /* loaded from: classes3.dex */
    public static final class y extends ContinuationImpl {

        /* renamed from: a */
        Object f42138a;

        /* renamed from: b */
        Object f42139b;

        /* renamed from: c */
        /* synthetic */ Object f42140c;

        /* renamed from: e */
        int f42142e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        y(Continuation<? super y> continuation) {
            super(continuation);
            a.this = r1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            this.f42140c = obj;
            this.f42142e |= Integer.MIN_VALUE;
            Object B = a.this.B(0, null, null, null, this);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return B == coroutine_suspended ? B : Result.m69boximpl(B);
        }
    }

    /* compiled from: DataManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DataManager$sendFriendRequest$4", f = "DataManager.kt", i = {}, l = {163}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class z extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        int f42143a;

        /* renamed from: c */
        final /* synthetic */ int f42145c;

        /* renamed from: d */
        final /* synthetic */ String f42146d;

        /* renamed from: e */
        final /* synthetic */ Function0<Unit> f42147e;

        /* renamed from: f */
        final /* synthetic */ Function1<String, Unit> f42148f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        z(int i4, String str, Function0<Unit> function0, Function1<? super String, Unit> function1, Continuation<? super z> continuation) {
            super(2, continuation);
            a.this = r1;
            this.f42145c = i4;
            this.f42146d = str;
            this.f42147e = function0;
            this.f42148f = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new z(this.f42145c, this.f42146d, this.f42147e, this.f42148f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((z) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42143a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                a aVar = a.this;
                int i10 = this.f42145c;
                String str = this.f42146d;
                Function0<Unit> function0 = this.f42147e;
                Function1<String, Unit> function1 = this.f42148f;
                this.f42143a = 1;
                if (aVar.B(i10, str, function0, function1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    public a(@m8.g com.im.freechat.domain.usecase.chat.h listenChatsInteractor, @m8.g com.im.freechat.domain.usecase.chat_request.f sendFriendRequestInteractor, @m8.g com.im.freechat.domain.usecase.chat_request.c listenReceivedFriendRequestsInteractor, @m8.g com.im.freechat.domain.usecase.chat_request.d listenSentFriendRequestsInteractor, @m8.g com.im.freechat.domain.usecase.chat_request.b listenFriendRequestByTargetIdInteractor, @m8.g com.im.freechat.domain.usecase.chat_request.a deleteFriendRequestInteractor, @m8.g com.im.freechat.domain.usecase.chat_request.e replyFriendRequestInteractor, @m8.g com.im.freechat.domain.usecase.chat.r subscribeChatInteractor, @m8.g com.im.freechat.domain.usecase.chat.t syncChatInteractor, @m8.g com.im.freechat.domain.usecase.chat.i listenTotalUnreadCountInteractor, @m8.g com.im.freechat.domain.usecase.chat.c createSingleChatInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.g setExternalNicknameInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.f setBioInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.o updateExternalAvatarInteractor, @m8.g com.im.freechat.domain.usecase.contact.f removeFriendInteractor, @m8.g com.im.freechat.domain.usecase.contact.d listenContactInteractor, @m8.g com.im.freechat.domain.usecase.contact.e listenFriendsInteractor, @m8.g com.im.freechat.domain.usecase.messages.j sendMessageInteractor) {
        Intrinsics.checkNotNullParameter(listenChatsInteractor, "listenChatsInteractor");
        Intrinsics.checkNotNullParameter(sendFriendRequestInteractor, "sendFriendRequestInteractor");
        Intrinsics.checkNotNullParameter(listenReceivedFriendRequestsInteractor, "listenReceivedFriendRequestsInteractor");
        Intrinsics.checkNotNullParameter(listenSentFriendRequestsInteractor, "listenSentFriendRequestsInteractor");
        Intrinsics.checkNotNullParameter(listenFriendRequestByTargetIdInteractor, "listenFriendRequestByTargetIdInteractor");
        Intrinsics.checkNotNullParameter(deleteFriendRequestInteractor, "deleteFriendRequestInteractor");
        Intrinsics.checkNotNullParameter(replyFriendRequestInteractor, "replyFriendRequestInteractor");
        Intrinsics.checkNotNullParameter(subscribeChatInteractor, "subscribeChatInteractor");
        Intrinsics.checkNotNullParameter(syncChatInteractor, "syncChatInteractor");
        Intrinsics.checkNotNullParameter(listenTotalUnreadCountInteractor, "listenTotalUnreadCountInteractor");
        Intrinsics.checkNotNullParameter(createSingleChatInteractor, "createSingleChatInteractor");
        Intrinsics.checkNotNullParameter(setExternalNicknameInteractor, "setExternalNicknameInteractor");
        Intrinsics.checkNotNullParameter(setBioInteractor, "setBioInteractor");
        Intrinsics.checkNotNullParameter(updateExternalAvatarInteractor, "updateExternalAvatarInteractor");
        Intrinsics.checkNotNullParameter(removeFriendInteractor, "removeFriendInteractor");
        Intrinsics.checkNotNullParameter(listenContactInteractor, "listenContactInteractor");
        Intrinsics.checkNotNullParameter(listenFriendsInteractor, "listenFriendsInteractor");
        Intrinsics.checkNotNullParameter(sendMessageInteractor, "sendMessageInteractor");
        this.f41997a = listenChatsInteractor;
        this.f41998b = sendFriendRequestInteractor;
        this.f41999c = listenReceivedFriendRequestsInteractor;
        this.f42000d = listenSentFriendRequestsInteractor;
        this.f42001e = listenFriendRequestByTargetIdInteractor;
        this.f42002f = deleteFriendRequestInteractor;
        this.f42003g = replyFriendRequestInteractor;
        this.f42004h = subscribeChatInteractor;
        this.f42005i = syncChatInteractor;
        this.f42006j = listenTotalUnreadCountInteractor;
        this.f42007k = createSingleChatInteractor;
        this.f42008l = setExternalNicknameInteractor;
        this.f42009m = setBioInteractor;
        this.f42010n = updateExternalAvatarInteractor;
        this.f42011o = removeFriendInteractor;
        this.f42012p = listenContactInteractor;
        this.f42013q = listenFriendsInteractor;
        this.f42014r = sendMessageInteractor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object o(a aVar, Function1 function1, Function1 function12, Continuation continuation, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            function12 = null;
        }
        return aVar.m(function1, function12, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ j2 p(a aVar, C0327a c0327a, Function1 function1, Function1 function12, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            function12 = null;
        }
        return aVar.n(c0327a, function1, function12);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0077  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object B(int r5, @m8.g java.lang.String r6, @m8.h kotlin.jvm.functions.Function0<kotlin.Unit> r7, @m8.h kotlin.jvm.functions.Function1<? super java.lang.String, kotlin.Unit> r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r9) {
        /*
            r4 = this;
            boolean r0 = r9 instanceof com.im.freechat.sdk.a.y
            if (r0 == 0) goto L13
            r0 = r9
            com.im.freechat.sdk.a$y r0 = (com.im.freechat.sdk.a.y) r0
            int r1 = r0.f42142e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42142e = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$y r0 = new com.im.freechat.sdk.a$y
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f42140c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42142e
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 != r3) goto L39
            java.lang.Object r5 = r0.f42139b
            r8 = r5
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            java.lang.Object r5 = r0.f42138a
            r7 = r5
            kotlin.jvm.functions.Function0 r7 = (kotlin.jvm.functions.Function0) r7
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r5 = r9.m79unboximpl()
            goto L58
        L39:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L41:
            kotlin.ResultKt.throwOnFailure(r9)
            com.im.freechat.domain.usecase.chat_request.f r9 = r4.f41998b
            com.im.freechat.domain.usecase.chat_request.f$a r2 = new com.im.freechat.domain.usecase.chat_request.f$a
            r2.<init>(r5, r6)
            r0.f42138a = r7
            r0.f42139b = r8
            r0.f42142e = r3
            java.lang.Object r5 = r9.a(r2, r0)
            if (r5 != r1) goto L58
            return r1
        L58:
            boolean r6 = kotlin.Result.m77isSuccessimpl(r5)
            if (r6 == 0) goto L66
            r6 = r5
            kotlin.Unit r6 = (kotlin.Unit) r6
            if (r7 == 0) goto L66
            r7.invoke()
        L66:
            java.lang.Throwable r6 = kotlin.Result.m73exceptionOrNullimpl(r5)
            if (r6 == 0) goto L7f
            if (r8 == 0) goto L7f
            java.lang.String r6 = r6.getLocalizedMessage()
            if (r6 != 0) goto L77
            java.lang.String r6 = "Unknown error"
            goto L7c
        L77:
            java.lang.String r7 = "it.localizedMessage ?: \"Unknown error\""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
        L7c:
            r8.invoke(r6)
        L7f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.B(int, java.lang.String, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007d  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object D(int r18, @m8.g java.lang.String r19, boolean r20, @m8.g kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r21, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r22) {
        /*
            r17 = this;
            r0 = r17
            r1 = r22
            boolean r2 = r1 instanceof com.im.freechat.sdk.a.a0
            if (r2 == 0) goto L17
            r2 = r1
            com.im.freechat.sdk.a$a0 r2 = (com.im.freechat.sdk.a.a0) r2
            int r3 = r2.f42019d
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f42019d = r3
            goto L1c
        L17:
            com.im.freechat.sdk.a$a0 r2 = new com.im.freechat.sdk.a$a0
            r2.<init>(r1)
        L1c:
            java.lang.Object r1 = r2.f42017b
            java.lang.Object r3 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r4 = r2.f42019d
            r5 = 1
            if (r4 == 0) goto L3f
            if (r4 != r5) goto L37
            java.lang.Object r2 = r2.f42016a
            kotlin.jvm.functions.Function1 r2 = (kotlin.jvm.functions.Function1) r2
            kotlin.ResultKt.throwOnFailure(r1)
            kotlin.Result r1 = (kotlin.Result) r1
            java.lang.Object r1 = r1.m79unboximpl()
            goto L67
        L37:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3f:
            kotlin.ResultKt.throwOnFailure(r1)
            com.im.freechat.domain.usecase.messages.j r1 = r0.f42014r
            com.im.freechat.domain.usecase.messages.j$a r4 = new com.im.freechat.domain.usecase.messages.j$a
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r15 = 124(0x7c, float:1.74E-43)
            r16 = 0
            r6 = r4
            r7 = r18
            r8 = r19
            r14 = r20
            r6.<init>(r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            r6 = r21
            r2.f42016a = r6
            r2.f42019d = r5
            java.lang.Object r1 = r1.a(r4, r2)
            if (r1 != r3) goto L66
            return r3
        L66:
            r2 = r6
        L67:
            boolean r3 = kotlin.Result.m77isSuccessimpl(r1)
            if (r3 == 0) goto L77
            r3 = r1
            kotlin.Unit r3 = (kotlin.Unit) r3
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            r2.invoke(r3)
        L77:
            java.lang.Throwable r1 = kotlin.Result.m73exceptionOrNullimpl(r1)
            if (r1 == 0) goto L85
            r1 = 0
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r1)
            r2.invoke(r1)
        L85:
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.D(int, java.lang.String, boolean, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object E(@m8.g java.lang.String r5, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.a.b0
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.a$b0 r0 = (com.im.freechat.sdk.a.b0) r0
            int r1 = r0.f42027c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42027c = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$b0 r0 = new com.im.freechat.sdk.a$b0
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42025a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42027c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.currentuser.o r6 = r4.f42010n
            r0.f42027c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            boolean r6 = kotlin.Result.m76isFailureimpl(r5)
            if (r6 == 0) goto L4c
            r5 = 0
        L4c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.E(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object F(@m8.g java.lang.String r5, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.a.c0
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.a$c0 r0 = (com.im.freechat.sdk.a.c0) r0
            int r1 = r0.f42035c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42035c = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$c0 r0 = new com.im.freechat.sdk.a$c0
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42033a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42035c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.currentuser.f r6 = r4.f42009m
            r0.f42035c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            boolean r6 = kotlin.Result.m76isFailureimpl(r5)
            if (r6 == 0) goto L4c
            r5 = 0
        L4c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.F(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x004b A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object G(@m8.g java.lang.String r5, @m8.g kotlin.coroutines.Continuation<? super com.im.freechat.shared.entities.auth.UserInfo> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.a.d0
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.a$d0 r0 = (com.im.freechat.sdk.a.d0) r0
            int r1 = r0.f42041c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42041c = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$d0 r0 = new com.im.freechat.sdk.a$d0
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42039a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42041c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L45
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.currentuser.g r6 = r4.f42008l
            r0.f42041c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            boolean r6 = kotlin.Result.m76isFailureimpl(r5)
            if (r6 == 0) goto L4c
            r5 = 0
        L4c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.G(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0056  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object H(int r5, @m8.g kotlin.jvm.functions.Function0<kotlin.Unit> r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.sdk.a.e0
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.sdk.a$e0 r0 = (com.im.freechat.sdk.a.e0) r0
            int r1 = r0.f42048d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42048d = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$e0 r0 = new com.im.freechat.sdk.a$e0
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f42046b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42048d
            r3 = 1
            if (r2 == 0) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r5 = r0.f42045a
            r6 = r5
            kotlin.jvm.functions.Function0 r6 = (kotlin.jvm.functions.Function0) r6
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.m79unboximpl()
            goto L50
        L34:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3c:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.domain.usecase.chat.t r7 = r4.f42005i
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            r0.f42045a = r6
            r0.f42048d = r3
            java.lang.Object r5 = r7.a(r5, r0)
            if (r5 != r1) goto L50
            return r1
        L50:
            java.lang.Throwable r7 = kotlin.Result.m73exceptionOrNullimpl(r5)
            if (r7 == 0) goto L59
            r6.invoke()
        L59:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.H(int, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public final j2 a(@m8.g C0327a suspendRunner, int i4, @m8.g Function1<? super Integer, Unit> onData, @m8.h Function1<? super Throwable, Unit> function1) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        return suspendRunner.c(new c(i4, onData, function1, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x005d  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(int r5, @m8.g kotlin.jvm.functions.Function1<? super java.lang.Integer, kotlin.Unit> r6, @m8.h kotlin.jvm.functions.Function1<? super java.lang.Throwable, kotlin.Unit> r7, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<java.lang.Integer>> r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof com.im.freechat.sdk.a.b
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.sdk.a$b r0 = (com.im.freechat.sdk.a.b) r0
            int r1 = r0.f42024e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42024e = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$b r0 = new com.im.freechat.sdk.a$b
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f42022c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42024e
            r3 = 1
            if (r2 == 0) goto L41
            if (r2 != r3) goto L39
            java.lang.Object r5 = r0.f42021b
            r7 = r5
            kotlin.jvm.functions.Function1 r7 = (kotlin.jvm.functions.Function1) r7
            java.lang.Object r5 = r0.f42020a
            r6 = r5
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r5 = r8.m79unboximpl()
            goto L57
        L39:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L41:
            kotlin.ResultKt.throwOnFailure(r8)
            com.im.freechat.domain.usecase.chat.c r8 = r4.f42007k
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            r0.f42020a = r6
            r0.f42021b = r7
            r0.f42024e = r3
            java.lang.Object r5 = r8.a(r5, r0)
            if (r5 != r1) goto L57
            return r1
        L57:
            boolean r8 = kotlin.Result.m77isSuccessimpl(r5)
            if (r8 == 0) goto L6b
            r8 = r5
            java.lang.Number r8 = (java.lang.Number) r8
            int r8 = r8.intValue()
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)
            r6.invoke(r8)
        L6b:
            java.lang.Throwable r6 = kotlin.Result.m73exceptionOrNullimpl(r5)
            if (r6 == 0) goto L76
            if (r7 == 0) goto L76
            r7.invoke(r6)
        L76:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.b(int, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public final j2 c(@m8.g C0327a suspendRunner, int i4) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        return suspendRunner.c(new e(i4, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(int r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.a.d
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.a$d r0 = (com.im.freechat.sdk.a.d) r0
            int r1 = r0.f42038c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42038c = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$d r0 = new com.im.freechat.sdk.a$d
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42036a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42038c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L49
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.contact.f r6 = r4.f42011o
            java.lang.Integer r5 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r5)
            r0.f42038c = r3
            java.lang.Object r5 = r6.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.d(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public final j2 e(@m8.g C0327a suspendRunner, int i4) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        return suspendRunner.c(new g(i4, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object f(int r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.im.freechat.sdk.a.f
            if (r0 == 0) goto L13
            r0 = r6
            com.im.freechat.sdk.a$f r0 = (com.im.freechat.sdk.a.f) r0
            int r1 = r0.f42051c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42051c = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$f r0 = new com.im.freechat.sdk.a$f
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f42049a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42051c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.m79unboximpl()
            goto L4a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            com.im.freechat.domain.usecase.chat_request.a r6 = r4.f42002f
            com.im.freechat.domain.usecase.chat_request.a$a r2 = new com.im.freechat.domain.usecase.chat_request.a$a
            r2.<init>(r5)
            r0.f42051c = r3
            java.lang.Object r5 = r6.a(r2, r0)
            if (r5 != r1) goto L4a
            return r1
        L4a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.f(int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.h
    public final Object g(@m8.g Function1<? super List<Chat>, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.chat.h hVar = this.f41997a;
        Unit unit = Unit.INSTANCE;
        Object c10 = hVar.c(unit, new h(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    public final void h(@m8.g C0327a suspendRunner, @m8.g Function1<? super List<Chat>, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        kotlinx.coroutines.l.f(suspendRunner.b(), null, null, new i(onData, null), 3, null);
    }

    @m8.h
    public final Object i(int i4, @m8.g Function1<? super UserModel, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object c10 = this.f42012p.c(Boxing.boxInt(i4), new j(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : Unit.INSTANCE;
    }

    @m8.g
    public final j2 j(@m8.g C0327a suspendRunner, int i4, @m8.g Function1<? super UserModel, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        return suspendRunner.c(new k(i4, onData, null));
    }

    @m8.h
    public final Object k(int i4, @m8.g Function1<? super FriendStatus, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object c10 = this.f42001e.c(Boxing.boxInt(i4), new l(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : Unit.INSTANCE;
    }

    public final void l(@m8.g C0327a suspendRunner, int i4, @m8.g Function1<? super FriendStatus, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        kotlinx.coroutines.l.f(suspendRunner.b(), null, null, new m(i4, onData, null), 3, null);
    }

    @m8.h
    public final Object m(@m8.g Function1<? super List<UserModel>, Unit> function1, @m8.h Function1<? super Throwable, Unit> function12, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.contact.e eVar = this.f42013q;
        Unit unit = Unit.INSTANCE;
        Object c10 = eVar.c(unit, new n(function1, function12, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    @m8.g
    public final j2 n(@m8.g C0327a suspendRunner, @m8.g Function1<? super List<UserModel>, Unit> onSuccess, @m8.h Function1<? super Throwable, Unit> function1) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        return suspendRunner.c(new o(onSuccess, function1, null));
    }

    @m8.h
    public final Object q(@m8.g Function1<? super List<FriendStatus>, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.chat_request.c cVar = this.f41999c;
        Unit unit = Unit.INSTANCE;
        Object c10 = cVar.c(unit, new p(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    public final void r(@m8.g C0327a suspendRunner, @m8.g Function1<? super List<FriendStatus>, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        kotlinx.coroutines.l.f(suspendRunner.b(), null, null, new q(onData, null), 3, null);
    }

    @m8.h
    public final Object s(@m8.g Function1<? super List<FriendStatus>, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.chat_request.d dVar = this.f42000d;
        Unit unit = Unit.INSTANCE;
        Object c10 = dVar.c(unit, new r(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    public final void t(@m8.g C0327a suspendRunner, @m8.g Function1<? super List<FriendStatus>, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        kotlinx.coroutines.l.f(suspendRunner.b(), null, null, new s(onData, null), 3, null);
    }

    @m8.h
    public final Object u(int i4, @m8.g Function1<? super Chat, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object c10 = this.f42004h.c(Boxing.boxInt(i4), new t(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : Unit.INSTANCE;
    }

    @m8.h
    public final Object v(@m8.g Function1<? super Integer, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.chat.i iVar = this.f42006j;
        Unit unit = Unit.INSTANCE;
        Object c10 = iVar.c(unit, new u(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    @m8.g
    public final j2 w(@m8.g C0327a suspendRunner, @m8.g Function1<? super Integer, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        return suspendRunner.c(new v(onData, null));
    }

    @m8.g
    public final j2 x(@m8.g C0327a suspendRunner, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        return suspendRunner.c(new x(i4, z9, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0037  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object y(int r5, boolean r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Result<kotlin.Unit>> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.im.freechat.sdk.a.w
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.sdk.a$w r0 = (com.im.freechat.sdk.a.w) r0
            int r1 = r0.f42133c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42133c = r1
            goto L18
        L13:
            com.im.freechat.sdk.a$w r0 = new com.im.freechat.sdk.a$w
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f42131a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f42133c
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r5 = r7.m79unboximpl()
            goto L4a
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            com.im.freechat.domain.usecase.chat_request.e r7 = r4.f42003g
            com.im.freechat.domain.usecase.chat_request.e$a r2 = new com.im.freechat.domain.usecase.chat_request.e$a
            r2.<init>(r5, r6)
            r0.f42133c = r3
            java.lang.Object r5 = r7.a(r2, r0)
            if (r5 != r1) goto L4a
            return r1
        L4a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.a.y(int, boolean, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public final j2 z(@m8.g C0327a suspendRunner, int i4, @m8.g String reason, @m8.h Function0<Unit> function0, @m8.h Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(reason, "reason");
        return suspendRunner.c(new z(i4, reason, function0, function1, null));
    }
}
