package com.qennnsad.aknkaksd.presentation.ui.room.stream_chat;

import androidx.arch.core.util.Function;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.shared.entities.chat.Chat;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.data.bean.DepositOption;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: StreamChatViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001/B!\b\u0007\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010,\u001a\u00020+¢\u0006\u0004\b-\u0010.J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u0007R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R#\u0010\u001a\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00150\u00148\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001f\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR%\u0010$\u001a\u0010\u0012\f\u0012\n !*\u0004\u0018\u00010\u00050\u00050\u00148\u0006¢\u0006\f\n\u0004\b\"\u0010\u0017\u001a\u0004\b#\u0010\u0019R\u001f\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0\u00148\u0006¢\u0006\f\n\u0004\b&\u0010\u0017\u001a\u0004\b'\u0010\u0019¨\u00060"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "Lkotlinx/coroutines/j2;", "F", "", k4.b.f84734a, "", "streamerId", "D", y.b.f83919g, "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "depositOption", "", "C", ExifInterface.LONGITUDE_EAST, "Lcom/qennnsad/aknkaksd/domain/usecase/room/k;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/room/k;", "getDepositAgentUseCase", "Landroidx/lifecycle/MutableLiveData;", "", "h", "Landroidx/lifecycle/MutableLiveData;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Landroidx/lifecycle/MutableLiveData;", "depositOptions", "Landroidx/lifecycle/LiveData;", ContextChain.TAG_INFRA, "Landroidx/lifecycle/LiveData;", "B", "()Landroidx/lifecycle/LiveData;", "selectedOption", "kotlin.jvm.PlatformType", "j", y.b.f83920h, "agentId", "Lcom/im/freechat/shared/entities/chat/Chat;", "k", "z", "chat", "Lg5/a;", "localDataManager", "Lx4/a;", "analytics", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/room/k;Lx4/a;)V", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class StreamChatViewModel extends com.qennnsad.aknkaksd.presentation.common.l<a> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final g5.a f54231e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.room.k f54232f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final x4.a f54233g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<List<DepositOption>> f54234h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final LiveData<DepositOption> f54235i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final MutableLiveData<Integer> f54236j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final MutableLiveData<Chat> f54237k;

    /* compiled from: StreamChatViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "", "<init>", "()V", "a", "b", "c", "d", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$c;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$d;", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class a {

        /* compiled from: StreamChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$a;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0452a extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            public static final C0452a f54238a = new C0452a();

            private C0452a() {
                super(null);
            }
        }

        /* compiled from: StreamChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$b;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class b extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            public static final b f54239a = new b();

            private b() {
                super(null);
            }
        }

        /* compiled from: StreamChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$c;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class c extends a {
            @m8.g

            /* renamed from: a  reason: collision with root package name */
            public static final c f54240a = new c();

            private c() {
                super(null);
            }
        }

        /* compiled from: StreamChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a$d;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatViewModel$a;", "", "a", "", "b", k4.b.f84734a, "startTime", "c", "", "toString", "hashCode", "", "other", "", "equals", "I", "e", "()I", "J", "f", "()J", "<init>", "(IJ)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class d extends a {

            /* renamed from: a  reason: collision with root package name */
            private final int f54241a;

            /* renamed from: b  reason: collision with root package name */
            private final long f54242b;

            public d(int i4, long j4) {
                super(null);
                this.f54241a = i4;
                this.f54242b = j4;
            }

            public static /* synthetic */ d d(d dVar, int i4, long j4, int i10, Object obj) {
                if ((i10 & 1) != 0) {
                    i4 = dVar.f54241a;
                }
                if ((i10 & 2) != 0) {
                    j4 = dVar.f54242b;
                }
                return dVar.c(i4, j4);
            }

            public final int a() {
                return this.f54241a;
            }

            public final long b() {
                return this.f54242b;
            }

            @m8.g
            public final d c(int i4, long j4) {
                return new d(i4, j4);
            }

            public final int e() {
                return this.f54241a;
            }

            public boolean equals(@m8.h Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof d) {
                    d dVar = (d) obj;
                    return this.f54241a == dVar.f54241a && this.f54242b == dVar.f54242b;
                }
                return false;
            }

            public final long f() {
                return this.f54242b;
            }

            public int hashCode() {
                return (this.f54241a * 31) + a5.a.a(this.f54242b);
            }

            @m8.g
            public String toString() {
                return "ShowChat(chatId=" + this.f54241a + ", startTime=" + this.f54242b + ')';
            }
        }

        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel$sendIntroMessage$1", f = "StreamChatViewModel.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f54243a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f54244b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ StreamChatViewModel f54245c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f54246d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StreamChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(Z)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Boolean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ StreamChatViewModel f54247a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f54248b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ long f54249c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f54250d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(StreamChatViewModel streamChatViewModel, int i4, long j4, String str) {
                super(1);
                this.f54247a = streamChatViewModel;
                this.f54248b = i4;
                this.f54249c = j4;
                this.f54250d = str;
            }

            public final void a(boolean z9) {
                if (z9) {
                    this.f54247a.f54231e.Y(this.f54248b, this.f54249c);
                    this.f54247a.l(new a.d(this.f54248b, this.f54249c));
                    this.f54247a.f54233g.d(EventSignature.APP_RECHARGE_DIALOG_CREATED, String.valueOf(this.f54248b), this.f54250d);
                    return;
                }
                this.f54247a.o(R.string.error_cant_create_chat);
                this.f54247a.l(a.b.f54239a);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                a(bool.booleanValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, StreamChatViewModel streamChatViewModel, String str, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f54244b = i4;
            this.f54245c = streamChatViewModel;
            this.f54246d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f54244b, this.f54245c, this.f54246d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f54243a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                long currentTimeMillis = System.currentTimeMillis() - 1000;
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int i10 = this.f54244b;
                String x9 = this.f54245c.x();
                a aVar = new a(this.f54245c, this.f54244b, currentTimeMillis, this.f54246d);
                this.f54243a = 1;
                if (d4.D(i10, x9, true, aVar, this) == coroutine_suspended) {
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

    /* compiled from: Transformations.kt */
    @Metadata(d1 = {"\u0000\u0004\n\u0002\b\b\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\b\u0000\u0010\u0003\"\u0004\b\u0001\u0010\u00012\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u0001H\u0003H\u0003H\n¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"<anonymous>", "Y", "kotlin.jvm.PlatformType", "X", "it", "apply", "(Ljava/lang/Object;)Ljava/lang/Object;", "androidx/lifecycle/TransformationsKt$map$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c<I, O> implements Function {
        @Override // androidx.arch.core.util.Function
        public final DepositOption apply(List<? extends DepositOption> list) {
            Object obj;
            List<? extends DepositOption> it = list;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            Iterator<T> it2 = it.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (((DepositOption) obj).getSelected()) {
                    break;
                }
            }
            return (DepositOption) obj;
        }
    }

    /* compiled from: StreamChatViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel$startDepositSession$1", f = "StreamChatViewModel.kt", i = {}, l = {70}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f54251a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f54253c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f54253c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f54253c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f54251a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.room.k kVar = StreamChatViewModel.this.f54232f;
                Unit unit = Unit.INSTANCE;
                this.f54251a = 1;
                b10 = kVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            StreamChatViewModel streamChatViewModel = StreamChatViewModel.this;
            String str = this.f54253c;
            if (Result.m77isSuccessimpl(b10)) {
                Integer num = (Integer) b10;
                streamChatViewModel.y().postValue(Boxing.boxInt(num != null ? num.intValue() : 0));
                if (num != null) {
                    streamChatViewModel.D(num.intValue(), str);
                }
            }
            StreamChatViewModel streamChatViewModel2 = StreamChatViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                streamChatViewModel2.l(a.c.f54240a);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: StreamChatViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel$startStreamChatListening$1", f = "StreamChatViewModel.kt", i = {}, l = {51}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f54254a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: StreamChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "id", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel$startStreamChatListening$1$1", f = "StreamChatViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f54256a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ int f54257b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ StreamChatViewModel f54258c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: StreamChatViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/Chat;)V"}, k = 3, mv = {1, 7, 1})
            /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0453a extends Lambda implements Function1<Chat, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ StreamChatViewModel f54259a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0453a(StreamChatViewModel streamChatViewModel) {
                    super(1);
                    this.f54259a = streamChatViewModel;
                }

                public final void a(@m8.h Chat chat) {
                    this.f54259a.z().postValue(chat);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Chat chat) {
                    a(chat);
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(StreamChatViewModel streamChatViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f54258c = streamChatViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f54258c, continuation);
                aVar.f54257b = ((Number) obj).intValue();
                return aVar;
            }

            @m8.h
            public final Object h(int i4, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(Integer.valueOf(i4), continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Integer num, Continuation<? super Unit> continuation) {
                return h(num.intValue(), continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f54256a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    int i10 = this.f54257b;
                    if (i10 != 0) {
                        com.im.freechat.sdk.a d4 = SDKManager.d();
                        C0453a c0453a = new C0453a(this.f54258c);
                        this.f54256a = 1;
                        if (d4.u(i10, c0453a, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        this.f54258c.z().postValue(null);
                        this.f54258c.l(a.C0452a.f54238a);
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                return Unit.INSTANCE;
            }
        }

        e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f54254a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                t<Integer> y9 = StreamChatViewModel.this.f54231e.y();
                a aVar = new a(StreamChatViewModel.this, null);
                this.f54254a = 1;
                if (kotlinx.coroutines.flow.k.A(y9, aVar, this) == coroutine_suspended) {
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

    @u7.a
    public StreamChatViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.domain.usecase.room.k getDepositAgentUseCase, @m8.g x4.a analytics) {
        List emptyList;
        List<DepositOption> plus;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(getDepositAgentUseCase, "getDepositAgentUseCase");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.f54231e = localDataManager;
        this.f54232f = getDepositAgentUseCase;
        this.f54233g = analytics;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        MutableLiveData<List<DepositOption>> mutableLiveData = new MutableLiveData<>(emptyList);
        this.f54234h = mutableLiveData;
        LiveData<DepositOption> map = Transformations.map(mutableLiveData, new c());
        Intrinsics.checkNotNullExpressionValue(map, "crossinline transform: (…p(this) { transform(it) }");
        this.f54235i = map;
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>(0);
        this.f54236j = mutableLiveData2;
        this.f54237k = new MutableLiveData<>();
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends DepositOption>) ((Collection<? extends Object>) localDataManager.f()), new DepositOption(Integer.MAX_VALUE, 0, false, false, 8, null));
        mutableLiveData.setValue(plus);
        int x9 = localDataManager.x();
        if (x9 != 0) {
            mutableLiveData2.postValue(Integer.valueOf(x9));
            l(new a.d(x9, localDataManager.z()));
        }
        F();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j2 D(int i4, String str) {
        return j(new b(i4, this, str, null));
    }

    private final j2 F() {
        return j(new e(null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String x() {
        DepositOption value = this.f54235i.getValue();
        Integer valueOf = value != null ? Integer.valueOf(value.getCoins()) : null;
        if ((valueOf != null && valueOf.intValue() == Integer.MAX_VALUE) || valueOf == null) {
            return "你好，可以充值列表中没有的余额吗？";
        }
        return "你好，我要充值" + valueOf + com.qennnsad.aknkaksd.e.f48515g;
    }

    @m8.g
    public final MutableLiveData<List<DepositOption>> A() {
        return this.f54234h;
    }

    @m8.g
    public final LiveData<DepositOption> B() {
        return this.f54235i;
    }

    public final void C(@m8.g DepositOption depositOption) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(depositOption, "depositOption");
        MutableLiveData<List<DepositOption>> mutableLiveData = this.f54234h;
        List<DepositOption> value = mutableLiveData.getValue();
        if (value != null) {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(value, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (DepositOption depositOption2 : value) {
                arrayList.add(DepositOption.copy$default(depositOption2, 0, 0, false, Intrinsics.areEqual(depositOption2, depositOption), 7, null));
            }
        } else {
            arrayList = null;
        }
        mutableLiveData.setValue(arrayList);
    }

    public final void E(@m8.g String streamerId) {
        Intrinsics.checkNotNullParameter(streamerId, "streamerId");
        k(d(), new d(streamerId, null));
    }

    @m8.g
    public final MutableLiveData<Integer> y() {
        return this.f54236j;
    }

    @m8.g
    public final MutableLiveData<Chat> z() {
        return this.f54237k;
    }
}
