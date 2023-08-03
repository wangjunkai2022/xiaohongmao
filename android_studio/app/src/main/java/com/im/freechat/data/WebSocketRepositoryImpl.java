package com.im.freechat.data;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.mlkit.common.MlKitException;
import com.im.freechat.data.openapigen.models.SendEndTyping;
import com.im.freechat.data.openapigen.models.SendStartTyping;
import com.im.freechat.data.openapigen.models.SocketMessage;
import com.im.freechat.data.sources.database.MainDatabase;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentDao;
import com.im.freechat.data.sources.database.entities.chat.ChatDao;
import com.im.freechat.data.sources.database.entities.chat.ChatMapper;
import com.im.freechat.data.sources.database.entities.contact.UserDao;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusMapper;
import com.im.freechat.data.sources.database.entities.message.MessageDao;
import com.im.freechat.data.sources.database.entities.message.MessageMapper;
import com.im.freechat.data.sources.websocket.WsBinder;
import com.im.freechat.data.sources.websocket.WsService;
import com.im.freechat.domain.q;
import com.im.freechat.domain.u;
import com.im.freechat.shared.entities.SocketEvent;
import com.im.freechat.shared.entities.TypingEvent;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.qennnsad.aknkaksd.util.a1;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.s;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.flow.z;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/* compiled from: WebSocketRepositoryImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000Á\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001T\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u001e\u001a\u00020\u001a\u0012\u0006\u0010_\u001a\u00020^\u0012\u0006\u0010!\u001a\u00020\u001f\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010'\u001a\u00020%\u0012\u0006\u0010*\u001a\u00020(\u0012\u0006\u0010-\u001a\u00020+¢\u0006\u0004\b`\u0010aJ$\u0010\b\u001a\u00020\u00072\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J&\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u001f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0002H\u0016J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0016J\b\u0010\u0019\u001a\u00020\u0007H\u0016R\u0017\u0010\u001e\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010 R\u0014\u0010$\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010#R\u0014\u0010'\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010&R\u0014\u0010*\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010)R\u0014\u0010-\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010A\u001a\u00020>8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bB\u0010CR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010\r\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u001a\u0010K\u001a\b\u0012\u0004\u0012\u00020\u000e0H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020\u00050L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010S\u001a\u0004\u0018\u00010P8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0014\u0010W\u001a\u00020T8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR\u0014\u0010Z\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bX\u0010YR\u0014\u0010]\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b[\u0010\\¨\u0006b"}, d2 = {"Lcom/im/freechat/data/WebSocketRepositoryImpl;", "Lcom/im/freechat/domain/u;", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "messageFlow", "", "connectionFlow", "", "B", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "selfUser", "", "deviceToken", "timeoutEnabled", "Lcom/im/freechat/shared/entities/SocketEvent;", "f", "", k4.b.f84734a, "a", "e", "Lcom/im/freechat/shared/entities/TypingEvent;", "b", "(Ljava/lang/Integer;)Lkotlinx/coroutines/flow/i;", "d", "listenConnectionState", "c", "Landroid/content/Context;", "Landroid/content/Context;", y.b.f83920h, "()Landroid/content/Context;", "context", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "messageMapper", "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "chatMapper", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "chatRequestMapper", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "contactMapper", "Lcom/im/freechat/domain/q;", "Lcom/im/freechat/domain/q;", "serverDateRepository", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "g", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "chatDao", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "h", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "messageDao", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", ContextChain.TAG_INFRA, "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "attachmentDao", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "j", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "contactDao", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "k", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "friendStatusDao", "l", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "m", "Ljava/lang/String;", "n", "Z", "Lkotlinx/coroutines/flow/s;", "o", "Lkotlinx/coroutines/flow/s;", "eventChannel", "Lkotlinx/coroutines/flow/t;", "p", "Lkotlinx/coroutines/flow/t;", "connectionState", "Lcom/im/freechat/data/sources/websocket/WsBinder;", "q", "Lcom/im/freechat/data/sources/websocket/WsBinder;", "binder", "com/im/freechat/data/WebSocketRepositoryImpl$c", "r", "Lcom/im/freechat/data/WebSocketRepositoryImpl$c;", "serviceConnection", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()I", "userId", "z", "()Ljava/lang/String;", "imToken", "Lcom/im/freechat/data/sources/database/MainDatabase;", "database", "<init>", "(Landroid/content/Context;Lcom/im/freechat/data/sources/database/MainDatabase;Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;Lcom/im/freechat/domain/q;)V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public final class WebSocketRepositoryImpl implements u {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f39669a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final MessageMapper f39670b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final ChatMapper f39671c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final FriendStatusMapper f39672d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final UserEntityMapper f39673e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final q f39674f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final ChatDao f39675g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final MessageDao f39676h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final AttachmentDao f39677i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final UserDao f39678j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final FriendStatusDao f39679k;

    /* renamed from: l  reason: collision with root package name */
    private UserInfo f39680l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private String f39681m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f39682n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final s<SocketEvent> f39683o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final t<Boolean> f39684p;
    @m8.h

    /* renamed from: q  reason: collision with root package name */
    private WsBinder f39685q;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    private final c f39686r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebSocketRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$handleMessages$1", f = "WebSocketRepositoryImpl.kt", i = {}, l = {224}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f39712a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<SocketMessage> f39713b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ WebSocketRepositoryImpl f39714c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: WebSocketRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SocketMessage;", "socketMessage", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$handleMessages$1$1", f = "WebSocketRepositoryImpl.kt", i = {0, 1, 2, 3, 3, 4, 5, 6, 7, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39}, l = {121, 126, 128, h0.I, 131, 132, 133, h0.J, 139, 141, 144, 146, 148, 151, 155, 157, 159, a1.f54532a, 163, 164, 167, 168, 169, 170, 173, 174, 176, 177, 178, com.facebook.imagepipeline.common.e.f12205e, 183, 186, 187, 192, 197, 198, MlKitException.CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED, 203, com.facebook.imageutils.c.f13394i, 210, com.facebook.imageutils.c.f13390e}, m = "invokeSuspend", n = {"$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "messageAndAttachment", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "it", "$this$invokeSuspend_u24lambda_u2d7", "it", "$this$invokeSuspend_u24lambda_u2d7", "it", "$this$invokeSuspend_u24lambda_u2d7", "it", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "needChatSync", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7", "$this$invokeSuspend_u24lambda_u2d7"}, s = {"L$1", "L$1", "L$1", "L$1", "L$2", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$2", "L$1", "L$2", "L$1", "L$2", "L$1", "L$2", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "I$0", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1", "L$1"})
        /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0304a extends SuspendLambda implements Function2<SocketMessage, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            Object f39715a;

            /* renamed from: b  reason: collision with root package name */
            Object f39716b;

            /* renamed from: c  reason: collision with root package name */
            int f39717c;

            /* renamed from: d  reason: collision with root package name */
            int f39718d;

            /* renamed from: e  reason: collision with root package name */
            /* synthetic */ Object f39719e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ WebSocketRepositoryImpl f39720f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0304a(WebSocketRepositoryImpl webSocketRepositoryImpl, Continuation<? super C0304a> continuation) {
                super(2, continuation);
                this.f39720f = webSocketRepositoryImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0304a c0304a = new C0304a(this.f39720f, continuation);
                c0304a.f39719e = obj;
                return c0304a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g SocketMessage socketMessage, @m8.h Continuation<? super Unit> continuation) {
                return ((C0304a) create(socketMessage, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:108:0x038c  */
            /* JADX WARN: Removed duplicated region for block: B:117:0x03f1 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:120:0x040d A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:123:0x0412  */
            /* JADX WARN: Removed duplicated region for block: B:131:0x0448  */
            /* JADX WARN: Removed duplicated region for block: B:134:0x0467 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:136:0x046c  */
            /* JADX WARN: Removed duplicated region for block: B:146:0x0496  */
            /* JADX WARN: Removed duplicated region for block: B:158:0x050b A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:159:0x050c  */
            /* JADX WARN: Removed duplicated region for block: B:162:0x052a A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:165:0x054a A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:173:0x058b A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:174:0x058c  */
            /* JADX WARN: Removed duplicated region for block: B:176:0x0593  */
            /* JADX WARN: Removed duplicated region for block: B:182:0x05d6 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:190:0x060c  */
            /* JADX WARN: Removed duplicated region for block: B:191:0x0615  */
            /* JADX WARN: Removed duplicated region for block: B:194:0x0624 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:228:0x0746 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:242:0x07c9 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:265:0x0855  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x01f8  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x01fa  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x0209  */
            /* JADX WARN: Removed duplicated region for block: B:58:0x024b  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0269  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x0282  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x0291  */
            /* JADX WARN: Removed duplicated region for block: B:78:0x02d9 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:81:0x02eb  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x030f A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:94:0x0343  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r23) {
                /*
                    Method dump skipped, instructions count: 2258
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.WebSocketRepositoryImpl.a.C0304a.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.i<? extends SocketMessage> iVar, WebSocketRepositoryImpl webSocketRepositoryImpl, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f39713b = iVar;
            this.f39714c = webSocketRepositoryImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f39713b, this.f39714c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f39712a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i e12 = kotlinx.coroutines.flow.k.e1(this.f39713b, new C0304a(this.f39714c, null));
                this.f39712a = 1;
                if (kotlinx.coroutines.flow.k.x(e12, this) == coroutine_suspended) {
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
    /* compiled from: WebSocketRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$handleMessages$2", f = "WebSocketRepositoryImpl.kt", i = {}, l = {229}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f39721a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<Boolean> f39722b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ WebSocketRepositoryImpl f39723c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: WebSocketRepositoryImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$handleMessages$2$1", f = "WebSocketRepositoryImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        public static final class a extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f39724a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ boolean f39725b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ WebSocketRepositoryImpl f39726c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(WebSocketRepositoryImpl webSocketRepositoryImpl, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f39726c = webSocketRepositoryImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f39726c, continuation);
                aVar.f39725b = ((Boolean) obj).booleanValue();
                return aVar;
            }

            @m8.h
            public final Object h(boolean z9, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(Boolean.valueOf(z9), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
                return h(bool.booleanValue(), continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f39724a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f39726c.f39684p.setValue(Boxing.boxBoolean(this.f39725b));
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlinx.coroutines.flow.i<Boolean> iVar, WebSocketRepositoryImpl webSocketRepositoryImpl, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f39722b = iVar;
            this.f39723c = webSocketRepositoryImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f39722b, this.f39723c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f39721a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i e12 = kotlinx.coroutines.flow.k.e1(this.f39722b, new a(this.f39723c, null));
                this.f39721a = 1;
                if (kotlinx.coroutines.flow.k.x(e12, this) == coroutine_suspended) {
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

    /* compiled from: WebSocketRepositoryImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"com/im/freechat/data/WebSocketRepositoryImpl$c", "Landroid/content/ServiceConnection;", "Landroid/content/ComponentName;", "name", "Landroid/os/IBinder;", NotificationCompat.CATEGORY_SERVICE, "", "onServiceConnected", "onServiceDisconnected", "data_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes2.dex */
    public static final class c implements ServiceConnection {
        c() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@m8.g ComponentName name, @m8.g IBinder service) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(service, "service");
            WsBinder wsBinder = (WsBinder) service;
            WebSocketRepositoryImpl webSocketRepositoryImpl = WebSocketRepositoryImpl.this;
            webSocketRepositoryImpl.f39685q = wsBinder;
            webSocketRepositoryImpl.B(wsBinder.startSocket(webSocketRepositoryImpl.z(), webSocketRepositoryImpl.f39681m, webSocketRepositoryImpl.f39682n), wsBinder.listenConnectionState());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@m8.g ComponentName name) {
            Intrinsics.checkNotNullParameter(name, "name");
            WebSocketRepositoryImpl.this.f39685q = null;
        }
    }

    public WebSocketRepositoryImpl(@m8.g Context context, @m8.g MainDatabase database, @m8.g MessageMapper messageMapper, @m8.g ChatMapper chatMapper, @m8.g FriendStatusMapper chatRequestMapper, @m8.g UserEntityMapper contactMapper, @m8.g q serverDateRepository) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(messageMapper, "messageMapper");
        Intrinsics.checkNotNullParameter(chatMapper, "chatMapper");
        Intrinsics.checkNotNullParameter(chatRequestMapper, "chatRequestMapper");
        Intrinsics.checkNotNullParameter(contactMapper, "contactMapper");
        Intrinsics.checkNotNullParameter(serverDateRepository, "serverDateRepository");
        this.f39669a = context;
        this.f39670b = messageMapper;
        this.f39671c = chatMapper;
        this.f39672d = chatRequestMapper;
        this.f39673e = contactMapper;
        this.f39674f = serverDateRepository;
        this.f39675g = database.chatDao();
        this.f39676h = database.messageDao();
        this.f39677i = database.attachmentDao();
        this.f39678j = database.userDao();
        this.f39679k = database.friendStatusDao();
        this.f39681m = "";
        this.f39683o = z.b(0, 0, null, 7, null);
        this.f39684p = j0.a(Boolean.FALSE);
        this.f39686r = new c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int A() {
        UserInfo userInfo = this.f39680l;
        if (userInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selfUser");
            userInfo = null;
        }
        return userInfo.getUserId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(kotlinx.coroutines.flow.i<? extends SocketMessage> iVar, kotlinx.coroutines.flow.i<Boolean> iVar2) {
        kotlinx.coroutines.l.f(t0.a(i1.c()), null, null, new a(iVar, this, null), 3, null);
        kotlinx.coroutines.l.f(t0.a(i1.c()), null, null, new b(iVar2, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String z() {
        UserInfo userInfo = this.f39680l;
        if (userInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("selfUser");
            userInfo = null;
        }
        return userInfo.getImToken();
    }

    @Override // com.im.freechat.domain.u
    public void a(int i4) {
        WsBinder wsBinder = this.f39685q;
        if (wsBinder != null) {
            wsBinder.sendWebSocketMessage(new SendStartTyping(SendStartTyping.Type.sendStartTyping, i4));
        }
    }

    @Override // com.im.freechat.domain.u
    @m8.g
    public kotlinx.coroutines.flow.i<TypingEvent> b(@m8.h final Integer num) {
        final s<SocketEvent> sVar = this.f39683o;
        final kotlinx.coroutines.flow.i<Object> iVar = new kotlinx.coroutines.flow.i<Object>() { // from class: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<Object> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39706a;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1$2", f = "WebSocketRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39707a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39708b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39709c;

                    /* renamed from: d  reason: collision with root package name */
                    Object f39710d;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39707a = obj;
                        this.f39708b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar) {
                    this.f39706a = jVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(java.lang.Object r5, @m8.g kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1$2$1 r0 = (com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39708b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39708b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1$2$1 r0 = new com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.f39707a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39708b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L43
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.j r6 = r4.f39706a
                        boolean r2 = r5 instanceof com.im.freechat.shared.entities.TypingEvent
                        if (r2 == 0) goto L43
                        r0.f39708b = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L43
                        return r1
                    L43:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filterIsInstance$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super Object> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
        return new kotlinx.coroutines.flow.i<TypingEvent>() { // from class: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<TypingEvent> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39697a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Integer f39698b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ WebSocketRepositoryImpl f39699c;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1$2", f = "WebSocketRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39700a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39701b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39702c;

                    /* renamed from: d  reason: collision with root package name */
                    Object f39703d;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39700a = obj;
                        this.f39701b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar, Integer num, WebSocketRepositoryImpl webSocketRepositoryImpl) {
                    this.f39697a = jVar;
                    this.f39698b = num;
                    this.f39699c = webSocketRepositoryImpl;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.shared.entities.TypingEvent r7, @m8.g kotlin.coroutines.Continuation r8) {
                    /*
                        r6 = this;
                        boolean r0 = r8 instanceof com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r8
                        com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1$2$1 r0 = (com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39701b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39701b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1$2$1 r0 = new com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1$2$1
                        r0.<init>(r8)
                    L18:
                        java.lang.Object r8 = r0.f39700a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39701b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L66
                    L29:
                        java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                        java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                        r7.<init>(r8)
                        throw r7
                    L31:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlinx.coroutines.flow.j r8 = r6.f39697a
                        r2 = r7
                        com.im.freechat.shared.entities.TypingEvent r2 = (com.im.freechat.shared.entities.TypingEvent) r2
                        int r4 = r2.getChatId()
                        java.lang.Integer r5 = r6.f39698b
                        if (r5 != 0) goto L42
                        goto L48
                    L42:
                        int r5 = r5.intValue()
                        if (r4 == r5) goto L4c
                    L48:
                        java.lang.Integer r4 = r6.f39698b
                        if (r4 != 0) goto L5a
                    L4c:
                        int r2 = r2.getUserId()
                        com.im.freechat.data.WebSocketRepositoryImpl r4 = r6.f39699c
                        int r4 = com.im.freechat.data.WebSocketRepositoryImpl.v(r4)
                        if (r2 == r4) goto L5a
                        r2 = 1
                        goto L5b
                    L5a:
                        r2 = 0
                    L5b:
                        if (r2 == 0) goto L66
                        r0.f39701b = r3
                        java.lang.Object r7 = r8.emit(r7, r0)
                        if (r7 != r1) goto L66
                        return r1
                    L66:
                        kotlin.Unit r7 = kotlin.Unit.INSTANCE
                        return r7
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.WebSocketRepositoryImpl$listenTyping$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super TypingEvent> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar, num, this), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.u
    public void c() {
        if (this.f39685q != null) {
            this.f39669a.unbindService(this.f39686r);
            this.f39685q = null;
            Context context = this.f39669a;
            context.stopService(WsService.Companion.createIntent(context));
        }
    }

    @Override // com.im.freechat.domain.u
    @m8.g
    public kotlinx.coroutines.flow.i<SocketEvent> d() {
        final s<SocketEvent> sVar = this.f39683o;
        return new kotlinx.coroutines.flow.i<SocketEvent>() { // from class: com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1

            /* compiled from: Collect.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
            /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass2 implements kotlinx.coroutines.flow.j<SocketEvent> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ kotlinx.coroutines.flow.j f39688a;

                @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                @DebugMetadata(c = "com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1$2", f = "WebSocketRepositoryImpl.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                /* renamed from: com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {

                    /* renamed from: a  reason: collision with root package name */
                    /* synthetic */ Object f39689a;

                    /* renamed from: b  reason: collision with root package name */
                    int f39690b;

                    /* renamed from: c  reason: collision with root package name */
                    Object f39691c;

                    /* renamed from: d  reason: collision with root package name */
                    Object f39692d;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        this.f39689a = obj;
                        this.f39690b |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kotlinx.coroutines.flow.j jVar) {
                    this.f39688a = jVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kotlinx.coroutines.flow.j
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public java.lang.Object emit(com.im.freechat.shared.entities.SocketEvent r6, @m8.g kotlin.coroutines.Continuation r7) {
                    /*
                        r5 = this;
                        boolean r0 = r7 instanceof com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r7
                        com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1$2$1 r0 = (com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.f39690b
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.f39690b = r1
                        goto L18
                    L13:
                        com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1$2$1 r0 = new com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1$2$1
                        r0.<init>(r7)
                    L18:
                        java.lang.Object r7 = r0.f39689a
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.f39690b
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.ResultKt.throwOnFailure(r7)
                        goto L54
                    L29:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r7)
                        throw r6
                    L31:
                        kotlin.ResultKt.throwOnFailure(r7)
                        kotlinx.coroutines.flow.j r7 = r5.f39688a
                        r2 = r6
                        com.im.freechat.shared.entities.SocketEvent r2 = (com.im.freechat.shared.entities.SocketEvent) r2
                        boolean r4 = r2 instanceof com.im.freechat.shared.entities.MessagesDeletedEvent
                        if (r4 != 0) goto L48
                        boolean r4 = r2 instanceof com.im.freechat.shared.entities.MessageEditedEvent
                        if (r4 != 0) goto L48
                        boolean r2 = r2 instanceof com.im.freechat.shared.entities.MessagesReadEvent
                        if (r2 == 0) goto L46
                        goto L48
                    L46:
                        r2 = 0
                        goto L49
                    L48:
                        r2 = 1
                    L49:
                        if (r2 == 0) goto L54
                        r0.f39690b = r3
                        java.lang.Object r6 = r7.emit(r6, r0)
                        if (r6 != r1) goto L54
                        return r1
                    L54:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.WebSocketRepositoryImpl$listenMessageUpdates$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.i
            @m8.h
            public Object collect(@m8.g kotlinx.coroutines.flow.j<? super SocketEvent> jVar, @m8.g Continuation continuation) {
                Object coroutine_suspended;
                Object collect = kotlinx.coroutines.flow.i.this.collect(new AnonymousClass2(jVar), continuation);
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return collect == coroutine_suspended ? collect : Unit.INSTANCE;
            }
        };
    }

    @Override // com.im.freechat.domain.u
    public void e(int i4) {
        WsBinder wsBinder = this.f39685q;
        if (wsBinder != null) {
            wsBinder.sendWebSocketMessage(new SendEndTyping(SendEndTyping.Type.sendEndTyping, i4));
        }
    }

    @Override // com.im.freechat.domain.u
    @m8.g
    public kotlinx.coroutines.flow.i<SocketEvent> f(@m8.g UserInfo selfUser, @m8.g String deviceToken, boolean z9) {
        Intrinsics.checkNotNullParameter(selfUser, "selfUser");
        Intrinsics.checkNotNullParameter(deviceToken, "deviceToken");
        this.f39680l = selfUser;
        this.f39682n = z9;
        WsBinder wsBinder = this.f39685q;
        if (wsBinder != null) {
            wsBinder.onTokenUpdate(z(), deviceToken);
        }
        if (this.f39685q == null) {
            this.f39681m = deviceToken;
            Intent createIntent = WsService.Companion.createIntent(this.f39669a);
            this.f39669a.startService(createIntent);
            this.f39669a.bindService(createIntent, this.f39686r, 1);
        }
        return this.f39683o;
    }

    @Override // com.im.freechat.domain.u
    @m8.g
    public kotlinx.coroutines.flow.i<Boolean> listenConnectionState() {
        return this.f39684p;
    }

    @m8.g
    public final Context y() {
        return this.f39669a;
    }
}
