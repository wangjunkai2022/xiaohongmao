package com.im.freechat.utils;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.MessageEditedEvent;
import com.im.freechat.shared.entities.MessagesDeletedEvent;
import com.im.freechat.shared.entities.MessagesReadEvent;
import com.im.freechat.shared.entities.SocketEvent;
import com.im.freechat.shared.entities.message.MessageWithChat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ObservableProperty;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.s0;

/* compiled from: NotificationManagerImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0002J\f\u0010\u000b\u001a\u00020\n*\u00020\u0007H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0016\u0010\u0017\u001a\u00020\u00022\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0016R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u001bR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\r0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010!\u001a\u0004\b\"\u0010#R\"\u0010*\u001a\u00020\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010\u001b\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R/\u00102\u001a\u0004\u0018\u00010\r2\b\u0010+\u001a\u0004\u0018\u00010\r8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R+\u00108\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b3\u0010-\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006="}, d2 = {"Lcom/im/freechat/utils/l;", "Lcom/im/freechat/domain/n;", "", "t", "Lcom/im/freechat/shared/entities/SocketEvent;", "event", "o", "Lcom/im/freechat/shared/entities/message/MessageWithChat;", "message", "n", "Landroid/app/Notification;", "s", ContextChain.TAG_INFRA, "", k4.b.f84734a, "b", "d", "", "muted", "a", "", "", "messageIds", "c", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Z", "isMuted", "", "Ljava/util/List;", "mutedChats", "Landroidx/core/app/NotificationManagerCompat;", "Lkotlin/Lazy;", "l", "()Landroidx/core/app/NotificationManagerCompat;", "notificationManager", "e", "k", "()Z", "q", "(Z)V", "maxPriority", "<set-?>", "f", "Lkotlin/properties/ReadWriteProperty;", "m", "()Ljava/lang/Integer;", "r", "(Ljava/lang/Integer;)V", "openedChat", "g", "j", "()I", "p", "(I)V", "foregroundChecker", "Lcom/im/freechat/domain/j;", "inAppMessageManager", "<init>", "(Landroid/content/Context;Lcom/im/freechat/domain/j;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class l implements com.im.freechat.domain.n {

    /* renamed from: h  reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f43787h = {Reflection.mutableProperty1(new MutablePropertyReference1Impl(l.class, "openedChat", "getOpenedChat()Ljava/lang/Integer;", 0)), Reflection.mutableProperty1(new MutablePropertyReference1Impl(l.class, "foregroundChecker", "getForegroundChecker()I", 0))};
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f43788a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f43789b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final List<Integer> f43790c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f43791d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f43792e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ReadWriteProperty f43793f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final ReadWriteProperty f43794g;

    /* compiled from: NotificationManagerImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.NotificationManagerImpl$1", f = "NotificationManagerImpl.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43795a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.im.freechat.domain.j f43796b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l f43797c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: NotificationManagerImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/message/MessageWithChat;", "it", "", "a", "(Lcom/im/freechat/shared/entities/message/MessageWithChat;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.im.freechat.utils.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0375a<T> implements kotlinx.coroutines.flow.j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ l f43798a;

            C0375a(l lVar) {
                this.f43798a = lVar;
            }

            @Override // kotlinx.coroutines.flow.j
            @m8.h
            /* renamed from: a */
            public final Object emit(@m8.g MessageWithChat messageWithChat, @m8.g Continuation<? super Unit> continuation) {
                this.f43798a.n(messageWithChat);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.im.freechat.domain.j jVar, l lVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f43796b = jVar;
            this.f43797c = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f43796b, this.f43797c, continuation);
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
            int i4 = this.f43795a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<MessageWithChat> f10 = this.f43796b.f();
                C0375a c0375a = new C0375a(this.f43797c);
                this.f43795a = 1;
                if (f10.collect(c0375a, this) == coroutine_suspended) {
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

    /* compiled from: NotificationManagerImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.utils.NotificationManagerImpl$2", f = "NotificationManagerImpl.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43799a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.im.freechat.domain.j f43800b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ l f43801c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: NotificationManagerImpl.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/SocketEvent;", "it", "", "a", "(Lcom/im/freechat/shared/entities/SocketEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a<T> implements kotlinx.coroutines.flow.j {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ l f43802a;

            a(l lVar) {
                this.f43802a = lVar;
            }

            @Override // kotlinx.coroutines.flow.j
            @m8.h
            /* renamed from: a */
            public final Object emit(@m8.g SocketEvent socketEvent, @m8.g Continuation<? super Unit> continuation) {
                this.f43802a.o(socketEvent);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(com.im.freechat.domain.j jVar, l lVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f43800b = jVar;
            this.f43801c = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f43800b, this.f43801c, continuation);
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
            int i4 = this.f43799a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<SocketEvent> e4 = this.f43800b.e();
                a aVar = new a(this.f43801c);
                this.f43799a = 1;
                if (e4.collect(aVar, this) == coroutine_suspended) {
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

    /* compiled from: NotificationManagerImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Landroidx/core/app/NotificationManagerCompat;", "a", "()Landroidx/core/app/NotificationManagerCompat;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<NotificationManagerCompat> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final NotificationManagerCompat invoke() {
            return NotificationManagerCompat.from(l.this.f43788a);
        }
    }

    /* compiled from: Delegates.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlin/properties/Delegates$observable$1", "Lkotlin/properties/ObservableProperty;", "Lkotlin/reflect/KProperty;", "property", "oldValue", "newValue", "", "afterChange", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends ObservableProperty<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f43804a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Object obj, l lVar) {
            super(obj);
            this.f43804a = lVar;
        }

        @Override // kotlin.properties.ObservableProperty
        protected void afterChange(@m8.g KProperty<?> property, Integer num, Integer num2) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.f43804a.t();
        }
    }

    /* compiled from: Delegates.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0004\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t¸\u0006\u0000"}, d2 = {"kotlin/properties/Delegates$observable$1", "Lkotlin/properties/ObservableProperty;", "Lkotlin/reflect/KProperty;", "property", "oldValue", "newValue", "", "afterChange", "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e extends ObservableProperty<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f43805a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Object obj, l lVar) {
            super(obj);
            this.f43805a = lVar;
        }

        @Override // kotlin.properties.ObservableProperty
        protected void afterChange(@m8.g KProperty<?> property, Integer num, Integer num2) {
            Intrinsics.checkNotNullParameter(property, "property");
            num2.intValue();
            num.intValue();
            this.f43805a.t();
        }
    }

    public l(@m8.g Context context, @m8.g com.im.freechat.domain.j inAppMessageManager) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(inAppMessageManager, "inAppMessageManager");
        this.f43788a = context;
        this.f43790c = new ArrayList();
        lazy = LazyKt__LazyJVMKt.lazy(new c());
        this.f43791d = lazy;
        i();
        a2 a2Var = a2.f84781a;
        kotlinx.coroutines.l.f(a2Var, null, null, new a(inAppMessageManager, this, null), 3, null);
        kotlinx.coroutines.l.f(a2Var, null, null, new b(inAppMessageManager, this, null), 3, null);
        this.f43792e = true;
        Delegates delegates = Delegates.INSTANCE;
        this.f43793f = new d(null, this);
        this.f43794g = new e(0, this);
    }

    private final void i() {
        if (Build.VERSION.SDK_INT >= 26) {
            Context context = this.f43788a;
            int i4 = b.s.f2267g8;
            String string = context.getString(i4);
            Intrinsics.checkNotNullExpressionValue(string, "context.getString(R.string.new_message)");
            String string2 = this.f43788a.getString(i4);
            Intrinsics.checkNotNullExpressionValue(string2, "context.getString(R.string.new_message)");
            NotificationChannel notificationChannel = new NotificationChannel(m.f43807b, string, 4);
            notificationChannel.setDescription(string2);
            NotificationChannel notificationChannel2 = new NotificationChannel(m.f43806a, string, 3);
            notificationChannel2.setDescription(string2);
            Object systemService = this.f43788a.getSystemService("notification");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
            NotificationManager notificationManager = (NotificationManager) systemService;
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.createNotificationChannel(notificationChannel2);
        }
    }

    private final NotificationManagerCompat l() {
        return (NotificationManagerCompat) this.f43791d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(MessageWithChat messageWithChat) {
        if (this.f43790c.contains(Integer.valueOf(messageWithChat.getMessage().getChatId())) || this.f43789b) {
            return;
        }
        Notification s9 = s(messageWithChat);
        Notification build = new NotificationCompat.Builder(this.f43788a, this.f43792e ? m.f43807b : m.f43806a).setContentTitle(messageWithChat.getChatTitle()).setContentText("New messages").setAutoCancel(true).setPriority(this.f43792e ? 2 : 0).setSmallIcon(b.h.E4).setGroup(String.valueOf(messageWithChat.getMessage().getChatId())).setGroupSummary(true).setContentIntent(s9.contentIntent).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder(context, if (max…\n                .build()");
        NotificationManagerCompat l10 = l();
        l10.notify(a5.a.a(messageWithChat.getMessage().getMessageId()), s9);
        l10.notify(messageWithChat.getMessage().getChatId(), build);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(SocketEvent socketEvent) {
        if (socketEvent instanceof MessageEditedEvent) {
            if (Build.VERSION.SDK_INT >= 26) {
                Object systemService = this.f43788a.getSystemService("notification");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.NotificationManager");
                NotificationManager notificationManager = (NotificationManager) systemService;
                StatusBarNotification[] activeNotifications = notificationManager.getActiveNotifications();
                Intrinsics.checkNotNullExpressionValue(activeNotifications, "notificationManager.activeNotifications");
                int length = activeNotifications.length;
                boolean z9 = false;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        z9 = true;
                        break;
                    }
                    if (!(activeNotifications[i4].getId() != a5.a.a(((MessageEditedEvent) socketEvent).getMessage().getMessage().getMessageId()))) {
                        break;
                    }
                    i4++;
                }
                if (z9) {
                    return;
                }
                MessageEditedEvent messageEditedEvent = (MessageEditedEvent) socketEvent;
                notificationManager.notify(messageEditedEvent.getMessage().getMessage().hashCode(), s(messageEditedEvent.getMessage()));
            }
        } else if (socketEvent instanceof MessagesDeletedEvent) {
            for (Number number : ((MessagesDeletedEvent) socketEvent).getMessageIds()) {
                l().cancel(a5.a.a(number.longValue()));
            }
        } else if (socketEvent instanceof MessagesReadEvent) {
            c(((MessagesReadEvent) socketEvent).getMessageIds());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.app.Notification s(com.im.freechat.shared.entities.message.MessageWithChat r7) {
        /*
            r6 = this;
            java.lang.String r0 = r7.getChatAvatar()
            r1 = 0
            if (r0 == 0) goto L2b
            android.content.Context r0 = r6.f43788a     // Catch: java.lang.Exception -> L2b
            com.bumptech.glide.k r0 = com.bumptech.glide.c.E(r0)     // Catch: java.lang.Exception -> L2b
            com.bumptech.glide.j r0 = r0.v()     // Catch: java.lang.Exception -> L2b
            java.lang.String r2 = r7.getChatAvatar()     // Catch: java.lang.Exception -> L2b
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)     // Catch: java.lang.Exception -> L2b
            java.lang.Object r2 = com.im.freechat.extend.m.z(r2)     // Catch: java.lang.Exception -> L2b
            com.bumptech.glide.j r0 = r0.m(r2)     // Catch: java.lang.Exception -> L2b
            com.bumptech.glide.request.d r0 = r0.A1()     // Catch: java.lang.Exception -> L2b
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Exception -> L2b
            android.graphics.Bitmap r0 = (android.graphics.Bitmap) r0     // Catch: java.lang.Exception -> L2b
            goto L2c
        L2b:
            r0 = r1
        L2c:
            com.im.freechat.shared.entities.chat.Chat$Type r2 = r7.getChatType()
            com.im.freechat.shared.entities.chat.Chat$Type r3 = com.im.freechat.shared.entities.chat.Chat.Type.SINGLE
            if (r2 == r3) goto L5f
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            com.im.freechat.shared.entities.message.Message r3 = r7.getMessage()
            com.im.freechat.shared.entities.contact.Sender r3 = r3.getSender()
            java.lang.String r3 = r3.getDisplayName()
            r2.append(r3)
            java.lang.String r3 = ": "
            r2.append(r3)
            com.im.freechat.shared.entities.message.Message r3 = r7.getMessage()
            android.content.Context r4 = r6.f43788a
            java.lang.String r3 = com.im.freechat.extend.p.d(r3, r4)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            goto L6f
        L5f:
            com.im.freechat.shared.entities.chat.Chat$Type r2 = r7.getChatType()
            if (r2 != r3) goto Ld2
            com.im.freechat.shared.entities.message.Message r2 = r7.getMessage()
            android.content.Context r3 = r6.f43788a
            java.lang.String r2 = com.im.freechat.extend.p.d(r2, r3)
        L6f:
            androidx.core.app.NotificationCompat$Builder r3 = new androidx.core.app.NotificationCompat$Builder
            android.content.Context r4 = r6.f43788a
            java.lang.String r5 = "chats"
            r3.<init>(r4, r5)
            int r4 = b4.b.h.E4
            androidx.core.app.NotificationCompat$Builder r3 = r3.setSmallIcon(r4)
            androidx.core.app.NotificationCompat$Builder r0 = r3.setLargeIcon(r0)
            r3 = 0
            androidx.core.app.NotificationCompat$Builder r0 = r0.setPriority(r3)
            java.lang.String r3 = r7.getChatTitle()
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentTitle(r3)
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentText(r2)
            com.im.freechat.sdk.SDKManager r2 = com.im.freechat.sdk.SDKManager.f41970a
            kotlin.jvm.functions.Function2 r2 = r2.k()
            if (r2 == 0) goto Laf
            android.content.Context r1 = r6.f43788a
            com.im.freechat.shared.entities.message.Message r3 = r7.getMessage()
            int r3 = r3.getChatId()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Object r1 = r2.invoke(r1, r3)
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1
        Laf:
            androidx.core.app.NotificationCompat$Builder r0 = r0.setContentIntent(r1)
            r1 = 1
            androidx.core.app.NotificationCompat$Builder r0 = r0.setAutoCancel(r1)
            com.im.freechat.shared.entities.message.Message r7 = r7.getMessage()
            int r7 = r7.getChatId()
            java.lang.String r7 = java.lang.String.valueOf(r7)
            androidx.core.app.NotificationCompat$Builder r7 = r0.setGroup(r7)
            android.app.Notification r7 = r7.build()
            java.lang.String r0 = "Builder(context, CHANNEL…g())\n            .build()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r0)
            return r7
        Ld2:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unexpected state "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            java.lang.String r7 = r7.toString()
            r0.<init>(r7)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.utils.l.s(com.im.freechat.shared.entities.message.MessageWithChat):android.app.Notification");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t() {
        this.f43792e = j() == 0 || m() != null;
    }

    @Override // com.im.freechat.domain.n
    public void a(boolean z9) {
        this.f43789b = z9;
    }

    @Override // com.im.freechat.domain.n
    public void b(int i4) {
        this.f43790c.add(Integer.valueOf(i4));
        r(Integer.valueOf(i4));
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        r6 = kotlin.text.StringsKt__StringsKt.split$default((java.lang.CharSequence) r7, new java.lang.String[]{":"}, false, 0, 6, (java.lang.Object) null);
     */
    @Override // com.im.freechat.domain.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(@m8.g java.util.List<java.lang.Long> r14) {
        /*
            r13 = this;
            java.lang.String r0 = "messageIds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            android.content.Context r0 = r13.f43788a
            java.lang.String r1 = "notification"
            java.lang.Object r0 = r0.getSystemService(r1)
            java.lang.String r1 = "null cannot be cast to non-null type android.app.NotificationManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0, r1)
            android.app.NotificationManager r0 = (android.app.NotificationManager) r0
            java.util.Iterator r14 = r14.iterator()
        L18:
            boolean r1 = r14.hasNext()
            if (r1 == 0) goto L30
            java.lang.Object r1 = r14.next()
            java.lang.Number r1 = (java.lang.Number) r1
            long r1 = r1.longValue()
            int r1 = a5.a.a(r1)
            r0.cancel(r1)
            goto L18
        L30:
            java.util.LinkedHashMap r14 = new java.util.LinkedHashMap
            r14.<init>()
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 24
            if (r1 < r2) goto Lb1
            android.service.notification.StatusBarNotification[] r1 = r0.getActiveNotifications()
            java.lang.String r2 = "notificationManager.activeNotifications"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            int r2 = r1.length
            r3 = 0
            r4 = 0
        L47:
            r5 = 1
            if (r4 >= r2) goto L83
            r6 = r1[r4]
            java.lang.String r7 = r6.getGroupKey()
            if (r7 == 0) goto L80
            java.lang.String r6 = ":"
            java.lang.String[] r8 = new java.lang.String[]{r6}
            r9 = 0
            r10 = 0
            r11 = 6
            r12 = 0
            java.util.List r6 = kotlin.text.StringsKt.split$default(r7, r8, r9, r10, r11, r12)
            if (r6 == 0) goto L80
            java.lang.Object r6 = kotlin.collections.CollectionsKt.last(r6)
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L80
            java.lang.Object r7 = r14.get(r6)
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto L77
            int r7 = r7.intValue()
            goto L78
        L77:
            r7 = 0
        L78:
            int r7 = r7 + r5
            java.lang.Integer r5 = java.lang.Integer.valueOf(r7)
            r14.put(r6, r5)
        L80:
            int r4 = r4 + 1
            goto L47
        L83:
            java.util.Set r14 = r14.entrySet()
            java.util.Iterator r14 = r14.iterator()
        L8b:
            boolean r1 = r14.hasNext()
            if (r1 == 0) goto Lb1
            java.lang.Object r1 = r14.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getValue()
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            if (r2 != r5) goto L8b
            java.lang.Object r1 = r1.getKey()
            java.lang.String r1 = (java.lang.String) r1
            int r1 = r1.hashCode()
            r0.cancel(r1)
            goto L8b
        Lb1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.utils.l.c(java.util.List):void");
    }

    @Override // com.im.freechat.domain.n
    public void d(int i4) {
        this.f43790c.remove(Integer.valueOf(i4));
        r(null);
    }

    public final int j() {
        return ((Number) this.f43794g.getValue(this, f43787h[1])).intValue();
    }

    public final boolean k() {
        return this.f43792e;
    }

    @m8.h
    public final Integer m() {
        return (Integer) this.f43793f.getValue(this, f43787h[0]);
    }

    public final void p(int i4) {
        this.f43794g.setValue(this, f43787h[1], Integer.valueOf(i4));
    }

    public final void q(boolean z9) {
        this.f43792e = z9;
    }

    public final void r(@m8.h Integer num) {
        this.f43793f.setValue(this, f43787h[0], num);
    }
}
