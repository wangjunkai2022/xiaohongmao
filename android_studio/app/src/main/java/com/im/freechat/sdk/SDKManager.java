package com.im.freechat.sdk;

import android.app.PendingIntent;
import android.content.Context;
import androidx.core.provider.FontRequest;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.di.ApiModuleKt;
import com.im.freechat.di.AuthModuleKt;
import com.im.freechat.di.ChatListModuleKt;
import com.im.freechat.di.ChatModuleKt;
import com.im.freechat.di.CommonModuleKt;
import com.im.freechat.di.ContactModuleKt;
import com.im.freechat.di.CreateChatModuleKt;
import com.im.freechat.di.DataModuleKt;
import com.im.freechat.di.GroupManagerModuleKt;
import com.im.freechat.di.ManagerModuleKt;
import com.im.freechat.di.SettingsModuleKt;
import com.im.freechat.di.VideoPlayerModuleKt;
import com.im.freechat.domain.n;
import com.im.freechat.domain.usecase.chat.l;
import com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import m8.g;
import m8.h;
import org.koin.core.Koin;
import org.koin.core.component.a;
import org.koin.core.scope.Scope;
import timber.log.Timber;

/* compiled from: SDKManager.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u000b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bO\u0010PJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0007J\b\u0010\f\u001a\u00020\u000bH\u0007J\b\u0010\u000e\u001a\u00020\rH\u0007J\b\u0010\u0010\u001a\u00020\u000fH\u0007J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0019J.\u0010\u001f\u001a\u00020\u00042\u001c\u0010\u001e\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 R\"\u0010'\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001b\u0010,\u001a\u00020(8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010)\u001a\u0004\b*\u0010+R\u001b\u00100\u001a\u00020-8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010)\u001a\u0004\b.\u0010/R\u001b\u00104\u001a\u0002018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010)\u001a\u0004\b2\u00103R\u001d\u00109\u001a\b\u0012\u0004\u0012\u00020\u0015058\u0006¢\u0006\f\n\u0004\b#\u00106\u001a\u0004\b7\u00108R\u0017\u0010?\u001a\u00020:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001b\u0010C\u001a\u00020@8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010)\u001a\u0004\bA\u0010BR6\u0010L\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020F\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR$\u0010N\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010\"\u001a\u0004\b;\u0010$\"\u0004\bM\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006Q"}, d2 = {"Lcom/im/freechat/sdk/SDKManager;", "Lorg/koin/core/component/a;", "Landroid/content/Context;", "c", "", "s", "appContext", "r", "", "muted", y.b.f83920h, "Lcom/im/freechat/sdk/c;", "h", "Lcom/im/freechat/sdk/a;", "d", "Lcom/im/freechat/sdk/b;", "e", "context", "", "appId", "t", "Ljava/lang/Runnable;", "v", "Lcom/im/freechat/sdk/e;", "q", "Lcom/im/freechat/sdk/d;", "p", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "u", "(Lkotlin/jvm/functions/Function1;)V", "b", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "w", "(Ljava/lang/String;)V", "IM_APP_ID", "Lcom/im/freechat/domain/usecase/dns/b;", "Lkotlin/Lazy;", "m", "()Lcom/im/freechat/domain/usecase/dns/b;", "resolveHostInteractor", "Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;", "o", "()Lcom/im/freechat/domain/usecase/downloads/SubscribeDownloadsInteractor;", "subscribeDownloadsInteractor", "Lcom/im/freechat/domain/usecase/chat/l;", "l", "()Lcom/im/freechat/domain/usecase/chat/l;", "resetSendingsInteractor", "", "Ljava/util/List;", ContextChain.TAG_INFRA, "()Ljava/util/List;", "logoutListeners", "Lkotlinx/coroutines/s0;", "g", "Lkotlinx/coroutines/s0;", "n", "()Lkotlinx/coroutines/s0;", "scope", "Lcom/im/freechat/domain/n;", "j", "()Lcom/im/freechat/domain/n;", "notificationManager", "Lkotlin/Function2;", "", "Landroid/app/PendingIntent;", "Lkotlin/jvm/functions/Function2;", "k", "()Lkotlin/jvm/functions/Function2;", "z", "(Lkotlin/jvm/functions/Function2;)V", "pendingIntentCreator", y.b.f83919g, "imageDomain", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SDKManager implements org.koin.core.component.a {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final SDKManager f41970a;

    /* renamed from: b  reason: collision with root package name */
    public static String f41971b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private static final Lazy f41972c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private static final Lazy f41973d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private static final Lazy f41974e;
    @g

    /* renamed from: f  reason: collision with root package name */
    private static final List<Runnable> f41975f;
    @g

    /* renamed from: g  reason: collision with root package name */
    private static final s0 f41976g;
    @g

    /* renamed from: h  reason: collision with root package name */
    private static final Lazy f41977h;
    @h

    /* renamed from: i  reason: collision with root package name */
    private static Function2<? super Context, ? super Integer, PendingIntent> f41978i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private static String f41979j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lorg/koin/core/a;", "", "a", "(Lorg/koin/core/a;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<org.koin.core.a, Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f41989a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List<x8.a> f41990b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, List<x8.a> list) {
            super(1);
            this.f41989a = context;
            this.f41990b = list;
        }

        public final void a(@g org.koin.core.a startKoin) {
            Intrinsics.checkNotNullParameter(startKoin, "$this$startKoin");
            org.koin.android.ext.koin.a.a(startKoin, this.f41989a);
            startKoin.h(this.f41990b);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(org.koin.core.a aVar) {
            a(aVar);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: SDKManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.SDKManager$initialize$1", f = "SDKManager.kt", i = {}, l = {49}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41991a;

        b(Continuation<? super b> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@g Continuation<?> continuation) {
            return new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Object invoke(@h Continuation<? super Unit> continuation) {
            return ((b) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41991a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.dns.b m9 = SDKManager.f41970a.m();
                Unit unit = Unit.INSTANCE;
                this.f41991a = 1;
                if (m9.a(unit, this) == coroutine_suspended) {
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

    /* compiled from: SDKManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.SDKManager$initialize$2", f = "SDKManager.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41992a;

        c(Continuation<? super c> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Object invoke(@h Continuation<? super Unit> continuation) {
            return ((c) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41992a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                SubscribeDownloadsInteractor o9 = SDKManager.f41970a.o();
                Unit unit = Unit.INSTANCE;
                this.f41992a = 1;
                if (o9.a(unit, this) == coroutine_suspended) {
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

    /* compiled from: SDKManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.SDKManager$initialize$3", f = "SDKManager.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41993a;

        d(Continuation<? super d> continuation) {
            super(1, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@g Continuation<?> continuation) {
            return new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Object invoke(@h Continuation<? super Unit> continuation) {
            return ((d) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41993a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                l l10 = SDKManager.f41970a.l();
                Unit unit = Unit.INSTANCE;
                this.f41993a = 1;
                if (l10.a(unit, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SDKManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.SDKManager$launch$1", f = "SDKManager.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41994a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1<Continuation<? super Unit>, Object> f41995b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        e(Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f41995b = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new e(this.f41995b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41994a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Continuation<? super Unit>, Object> function1 = this.f41995b;
                this.f41994a = 1;
                if (function1.invoke(this) == coroutine_suspended) {
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

    /* compiled from: SDKManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/im/freechat/domain/n;", "a", "()Lcom/im/freechat/domain/n;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class f extends Lambda implements Function0<n> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f41996a = new f();

        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @g
        /* renamed from: a */
        public final n invoke() {
            Scope h4;
            SDKManager sDKManager = SDKManager.f41970a;
            if (sDKManager instanceof org.koin.core.component.b) {
                h4 = ((org.koin.core.component.b) sDKManager).getScope();
            } else {
                h4 = sDKManager.getKoin().I().h();
            }
            return (n) h4.p(Reflection.getOrCreateKotlinClass(n.class), null, null);
        }
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        SDKManager sDKManager = new SDKManager();
        f41970a = sDKManager;
        d9.b bVar = d9.b.f62011a;
        lazy = LazyKt__LazyJVMKt.lazy(bVar.b(), (Function0) new SDKManager$special$$inlined$inject$default$1(sDKManager, null, null));
        f41972c = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(bVar.b(), (Function0) new SDKManager$special$$inlined$inject$default$2(sDKManager, null, null));
        f41973d = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(bVar.b(), (Function0) new SDKManager$special$$inlined$inject$default$3(sDKManager, null, null));
        f41974e = lazy3;
        f41975f = new ArrayList();
        f41976g = t0.a(i1.c());
        lazy4 = LazyKt__LazyJVMKt.lazy(f.f41996a);
        f41977h = lazy4;
    }

    private SDKManager() {
    }

    @JvmStatic
    @g
    public static final com.im.freechat.sdk.a d() {
        Scope h4;
        SDKManager sDKManager = f41970a;
        if (sDKManager instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) sDKManager).getScope();
        } else {
            h4 = sDKManager.getKoin().I().h();
        }
        return (com.im.freechat.sdk.a) h4.p(Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.a.class), null, null);
    }

    @JvmStatic
    @g
    public static final com.im.freechat.sdk.b e() {
        Scope h4;
        SDKManager sDKManager = f41970a;
        if (sDKManager instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) sDKManager).getScope();
        } else {
            h4 = sDKManager.getKoin().I().h();
        }
        return (com.im.freechat.sdk.b) h4.p(Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.b.class), null, null);
    }

    @JvmStatic
    @g
    public static final com.im.freechat.sdk.c h() {
        Scope h4;
        SDKManager sDKManager = f41970a;
        if (sDKManager instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) sDKManager).getScope();
        } else {
            h4 = sDKManager.getKoin().I().h();
        }
        return (com.im.freechat.sdk.c) h4.p(Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.c.class), null, null);
    }

    private final n j() {
        return (n) f41977h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.im.freechat.domain.usecase.dns.b m() {
        return (com.im.freechat.domain.usecase.dns.b) f41972c.getValue();
    }

    private final void r(Context context) {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new x8.a[]{com.im.freechat.di.a.a(), CommonModuleKt.a(), DataModuleKt.a(), ApiModuleKt.a(), ManagerModuleKt.a(), ChatListModuleKt.a(), ChatModuleKt.a(), GroupManagerModuleKt.a(), CreateChatModuleKt.a(), SettingsModuleKt.a(), VideoPlayerModuleKt.a(), AuthModuleKt.a(), ContactModuleKt.a()});
        if (v8.b.f94213a.i() != null) {
            v8.a.a(listOf);
        } else {
            v8.a.c(new a(context, listOf));
        }
    }

    private final void s(Context context) {
        FontRequestEmojiCompatConfig fontRequestEmojiCompatConfig = new FontRequestEmojiCompatConfig(context, new FontRequest("com.google.android.gms.fonts", "com.google.android.gms", "Noto Color Emoji Compat", b.c.f755c));
        fontRequestEmojiCompatConfig.setMetadataLoadStrategy(1);
        EmojiCompat.init(fontRequestEmojiCompatConfig);
    }

    @JvmStatic
    public static final void y(boolean z9) {
        f41970a.j().a(z9);
    }

    public final void c(@g Runnable r9) {
        Intrinsics.checkNotNullParameter(r9, "r");
        f41975f.add(r9);
    }

    @g
    public final String f() {
        String str = f41971b;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("IM_APP_ID");
        return null;
    }

    @h
    public final String g() {
        return f41979j;
    }

    @Override // org.koin.core.component.a
    @g
    public Koin getKoin() {
        return a.C0815a.a(this);
    }

    @g
    public final List<Runnable> i() {
        return f41975f;
    }

    @h
    public final Function2<Context, Integer, PendingIntent> k() {
        return f41978i;
    }

    @g
    public final l l() {
        return (l) f41974e.getValue();
    }

    @g
    public final s0 n() {
        return f41976g;
    }

    @g
    public final SubscribeDownloadsInteractor o() {
        return (SubscribeDownloadsInteractor) f41973d.getValue();
    }

    @g
    public final com.im.freechat.sdk.d p() {
        Scope h4;
        if (this instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) this).getScope();
        } else {
            h4 = getKoin().I().h();
        }
        return (com.im.freechat.sdk.d) h4.p(Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.d.class), null, null);
    }

    @g
    public final com.im.freechat.sdk.e q() {
        Scope h4;
        if (this instanceof org.koin.core.component.b) {
            h4 = ((org.koin.core.component.b) this).getScope();
        } else {
            h4 = getKoin().I().h();
        }
        return (com.im.freechat.sdk.e) h4.p(Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.e.class), null, null);
    }

    public final void t(@g Context context, @g String appId) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appId, "appId");
        w(appId);
        Timber.b bVar = Timber.f93860a;
        bVar.k("SDK INIT. APP_ID: " + appId + ". Host App: " + context.getPackageName(), new Object[0]);
        r(context);
        s(context);
        u(new b(null));
        u(new c(null));
        u(new d(null));
    }

    public final void u(@g Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        j.e(f41976g, null, null, new e(block, null), 3, null);
    }

    public final void v() {
        for (Runnable runnable : f41975f) {
            runnable.run();
        }
    }

    public final void w(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f41971b = str;
    }

    public final void x(@h String str) {
        f41979j = str;
    }

    public final void z(@h Function2<? super Context, ? super Integer, PendingIntent> function2) {
        f41978i = function2;
    }
}
