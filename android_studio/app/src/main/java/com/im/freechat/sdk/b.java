package com.im.freechat.sdk;

import com.im.freechat.sdk.a;
import com.im.freechat.shared.entities.DnsResolutionState;
import com.im.freechat.shared.entities.Result;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: DnsManager.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0006\u001a\u00020\u00042\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b2\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/sdk/b;", "", "Lkotlin/Function1;", "Lcom/im/freechat/shared/entities/DnsResolutionState;", "", "onData", "a", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/sdk/a$a;", "suspendRunner", "Lkotlinx/coroutines/j2;", "b", "Lcom/im/freechat/domain/usecase/dns/a;", "Lcom/im/freechat/domain/usecase/dns/a;", "listenDnsStatusInteractor", "<init>", "(Lcom/im/freechat/domain/usecase/dns/a;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.dns.a f42149a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DnsManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/DnsResolutionState;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DnsManager$listenDnsState$2", f = "DnsManager.kt", i = {}, l = {12}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<Result<? extends DnsResolutionState>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42150a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f42151b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<DnsResolutionState, Unit> f42152c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: DnsManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/DnsResolutionState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.DnsManager$listenDnsState$2$1", f = "DnsManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0336a extends SuspendLambda implements Function2<DnsResolutionState, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42153a;

            /* renamed from: b  reason: collision with root package name */
            /* synthetic */ Object f42154b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Function1<DnsResolutionState, Unit> f42155c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0336a(Function1<? super DnsResolutionState, Unit> function1, Continuation<? super C0336a> continuation) {
                super(2, continuation);
                this.f42155c = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @g
            public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                C0336a c0336a = new C0336a(this.f42155c, continuation);
                c0336a.f42154b = obj;
                return c0336a;
            }

            @Override // kotlin.jvm.functions.Function2
            @h
            /* renamed from: h */
            public final Object invoke(@g DnsResolutionState dnsResolutionState, @h Continuation<? super Unit> continuation) {
                return ((C0336a) create(dnsResolutionState, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @h
            public final Object invokeSuspend(@g Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f42153a == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f42155c.invoke((DnsResolutionState) this.f42154b);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(Function1<? super DnsResolutionState, Unit> function1, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f42152c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            a aVar = new a(this.f42152c, continuation);
            aVar.f42151b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        /* renamed from: h */
        public final Object invoke(@g Result<? extends DnsResolutionState> result, @h Continuation<? super Unit> continuation) {
            return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42150a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                C0336a c0336a = new C0336a(this.f42152c, null);
                this.f42150a = 1;
                if (((Result) this.f42151b).onSuccess(c0336a, this) == coroutine_suspended) {
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

    /* compiled from: DnsManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.DnsManager$listenDnsState$3", f = "DnsManager.kt", i = {}, l = {20}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: com.im.freechat.sdk.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0337b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42156a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<DnsResolutionState, Unit> f42158c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C0337b(Function1<? super DnsResolutionState, Unit> function1, Continuation<? super C0337b> continuation) {
            super(2, continuation);
            this.f42158c = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new C0337b(this.f42158c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((C0337b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42156a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                b bVar = b.this;
                Function1<DnsResolutionState, Unit> function1 = this.f42158c;
                this.f42156a = 1;
                if (bVar.a(function1, this) == coroutine_suspended) {
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

    public b(@g com.im.freechat.domain.usecase.dns.a listenDnsStatusInteractor) {
        Intrinsics.checkNotNullParameter(listenDnsStatusInteractor, "listenDnsStatusInteractor");
        this.f42149a = listenDnsStatusInteractor;
    }

    @h
    public final Object a(@g Function1<? super DnsResolutionState, Unit> function1, @g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        com.im.freechat.domain.usecase.dns.a aVar = this.f42149a;
        Unit unit = Unit.INSTANCE;
        Object c10 = aVar.c(unit, new a(function1, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : unit;
    }

    @g
    public final j2 b(@g a.C0327a suspendRunner, @g Function1<? super DnsResolutionState, Unit> onData) {
        Intrinsics.checkNotNullParameter(suspendRunner, "suspendRunner");
        Intrinsics.checkNotNullParameter(onData, "onData");
        return suspendRunner.c(new C0337b(onData, null));
    }
}
