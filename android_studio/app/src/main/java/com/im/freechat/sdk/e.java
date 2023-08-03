package com.im.freechat.sdk;

import com.im.freechat.domain.usecase.auth.StartWebSocketInteractor;
import com.im.freechat.domain.usecase.auth.k;
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
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import m8.g;
import m8.h;
import timber.log.Timber;

/* compiled from: WebsocketManager.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\r\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0012\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b!\u0010\"J\"\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0006\u0010\t\u001a\u00020\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R$\u0010 \u001a\u0004\u0018\u00010\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, d2 = {"Lcom/im/freechat/sdk/e;", "", "", "timeoutEnabled", "Lkotlin/Function1;", "", "", "errorCallback", "g", "h", "Lcom/im/freechat/domain/usecase/dns/a;", "a", "Lcom/im/freechat/domain/usecase/dns/a;", "listenDnsStatusInteractor", "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;", "b", "Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;", "startWebSocketInteractor", "Lcom/im/freechat/domain/usecase/auth/k;", "c", "Lcom/im/freechat/domain/usecase/auth/k;", "stopWebSocketInteractor", "Lcom/im/freechat/domain/usecase/auth/a;", "d", "Lcom/im/freechat/domain/usecase/auth/a;", "assertUserLoggedInInteractor", "Lkotlinx/coroutines/j2;", "e", "Lkotlinx/coroutines/j2;", "()Lkotlinx/coroutines/j2;", "f", "(Lkotlinx/coroutines/j2;)V", "listenerJob", "<init>", "(Lcom/im/freechat/domain/usecase/dns/a;Lcom/im/freechat/domain/usecase/auth/StartWebSocketInteractor;Lcom/im/freechat/domain/usecase/auth/k;Lcom/im/freechat/domain/usecase/auth/a;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.dns.a f42208a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final StartWebSocketInteractor f42209b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final k f42210c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.auth.a f42211d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private j2 f42212e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebsocketManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$startSocketListening$1", f = "WebsocketManager.kt", i = {}, l = {29}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42213a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f42215c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function1<String, Unit> f42216d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: WebsocketManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/DnsResolutionState;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$startSocketListening$1$1", f = "WebsocketManager.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.sdk.e$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0339a extends SuspendLambda implements Function2<Result<? extends DnsResolutionState>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42217a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f42218b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ e f42219c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ boolean f42220d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Function1<String, Unit> f42221e;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: WebsocketManager.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/DnsResolutionState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$startSocketListening$1$1$1", f = "WebsocketManager.kt", i = {}, l = {32, 33}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.sdk.e$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0340a extends SuspendLambda implements Function2<DnsResolutionState, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f42222a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f42223b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ e f42224c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ boolean f42225d;

                /* renamed from: e  reason: collision with root package name */
                final /* synthetic */ Function1<String, Unit> f42226e;

                /* JADX INFO: Access modifiers changed from: package-private */
                /* compiled from: WebsocketManager.kt */
                @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$startSocketListening$1$1$1$1$1", f = "WebsocketManager.kt", i = {0}, l = {34, 35}, m = "invokeSuspend", n = {"$this$invoke"}, s = {"L$0"})
                /* renamed from: com.im.freechat.sdk.e$a$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes3.dex */
                public static final class C0341a extends SuspendLambda implements Function2<Result<? extends String>, Continuation<? super Unit>, Object> {

                    /* renamed from: a  reason: collision with root package name */
                    int f42227a;

                    /* renamed from: b  reason: collision with root package name */
                    private /* synthetic */ Object f42228b;

                    /* renamed from: c  reason: collision with root package name */
                    final /* synthetic */ Function1<String, Unit> f42229c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: WebsocketManager.kt */
                    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                    @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$startSocketListening$1$1$1$1$1$1", f = "WebsocketManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: com.im.freechat.sdk.e$a$a$a$a$a  reason: collision with other inner class name */
                    /* loaded from: classes3.dex */
                    public static final class C0342a extends SuspendLambda implements Function2<String, Continuation<? super Unit>, Object> {

                        /* renamed from: a  reason: collision with root package name */
                        int f42230a;

                        /* renamed from: b  reason: collision with root package name */
                        /* synthetic */ Object f42231b;

                        /* renamed from: c  reason: collision with root package name */
                        final /* synthetic */ Function1<String, Unit> f42232c;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        C0342a(Function1<? super String, Unit> function1, Continuation<? super C0342a> continuation) {
                            super(2, continuation);
                            this.f42232c = function1;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @g
                        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                            C0342a c0342a = new C0342a(this.f42232c, continuation);
                            c0342a.f42231b = obj;
                            return c0342a;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        @h
                        /* renamed from: h */
                        public final Object invoke(@g String str, @h Continuation<? super Unit> continuation) {
                            return ((C0342a) create(str, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @h
                        public final Object invokeSuspend(@g Object obj) {
                            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            if (this.f42230a == 0) {
                                ResultKt.throwOnFailure(obj);
                                this.f42232c.invoke((String) this.f42231b);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: WebsocketManager.kt */
                    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "e", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                    @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$startSocketListening$1$1$1$1$1$2", f = "WebsocketManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: com.im.freechat.sdk.e$a$a$a$a$b */
                    /* loaded from: classes3.dex */
                    public static final class b extends SuspendLambda implements Function2<Throwable, Continuation<? super Unit>, Object> {

                        /* renamed from: a  reason: collision with root package name */
                        int f42233a;

                        /* renamed from: b  reason: collision with root package name */
                        /* synthetic */ Object f42234b;

                        b(Continuation<? super b> continuation) {
                            super(2, continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @g
                        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                            b bVar = new b(continuation);
                            bVar.f42234b = obj;
                            return bVar;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        @h
                        public final Object invoke(@h Throwable th, @h Continuation<? super Unit> continuation) {
                            return ((b) create(th, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @h
                        public final Object invokeSuspend(@g Object obj) {
                            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            if (this.f42233a == 0) {
                                ResultKt.throwOnFailure(obj);
                                Timber.f93860a.e((Throwable) this.f42234b);
                                return Unit.INSTANCE;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    C0341a(Function1<? super String, Unit> function1, Continuation<? super C0341a> continuation) {
                        super(2, continuation);
                        this.f42229c = function1;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @g
                    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                        C0341a c0341a = new C0341a(this.f42229c, continuation);
                        c0341a.f42228b = obj;
                        return c0341a;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @h
                    /* renamed from: h */
                    public final Object invoke(@g Result<String> result, @h Continuation<? super Unit> continuation) {
                        return ((C0341a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @h
                    public final Object invokeSuspend(@g Object obj) {
                        Object coroutine_suspended;
                        Result result;
                        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i4 = this.f42227a;
                        if (i4 == 0) {
                            ResultKt.throwOnFailure(obj);
                            result = (Result) this.f42228b;
                            C0342a c0342a = new C0342a(this.f42229c, null);
                            this.f42228b = result;
                            this.f42227a = 1;
                            if (result.onSuccess(c0342a, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } else if (i4 != 1) {
                            if (i4 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            ResultKt.throwOnFailure(obj);
                            return Unit.INSTANCE;
                        } else {
                            result = (Result) this.f42228b;
                            ResultKt.throwOnFailure(obj);
                        }
                        b bVar = new b(null);
                        this.f42228b = null;
                        this.f42227a = 2;
                        if (result.onFailure(bVar, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                C0340a(e eVar, boolean z9, Function1<? super String, Unit> function1, Continuation<? super C0340a> continuation) {
                    super(2, continuation);
                    this.f42224c = eVar;
                    this.f42225d = z9;
                    this.f42226e = function1;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @g
                public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                    C0340a c0340a = new C0340a(this.f42224c, this.f42225d, this.f42226e, continuation);
                    c0340a.f42223b = obj;
                    return c0340a;
                }

                @Override // kotlin.jvm.functions.Function2
                @h
                /* renamed from: h */
                public final Object invoke(@g DnsResolutionState dnsResolutionState, @h Continuation<? super Unit> continuation) {
                    return ((C0340a) create(dnsResolutionState, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct code enable 'Show inconsistent code' option in preferences
                */
                public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
                    /*
                        r7 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r7.f42222a
                        r2 = 2
                        r3 = 1
                        if (r1 == 0) goto L24
                        if (r1 == r3) goto L1a
                        if (r1 != r2) goto L12
                        kotlin.ResultKt.throwOnFailure(r8)
                        goto L6c
                    L12:
                        java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r8.<init>(r0)
                        throw r8
                    L1a:
                        kotlin.ResultKt.throwOnFailure(r8)
                        kotlin.Result r8 = (kotlin.Result) r8
                        java.lang.Object r8 = r8.m79unboximpl()
                        goto L44
                    L24:
                        kotlin.ResultKt.throwOnFailure(r8)
                        java.lang.Object r8 = r7.f42223b
                        com.im.freechat.shared.entities.DnsResolutionState r8 = (com.im.freechat.shared.entities.DnsResolutionState) r8
                        com.im.freechat.shared.entities.Resolved r1 = com.im.freechat.shared.entities.Resolved.INSTANCE
                        boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r1)
                        if (r8 == 0) goto L6c
                        com.im.freechat.sdk.e r8 = r7.f42224c
                        com.im.freechat.domain.usecase.auth.a r8 = com.im.freechat.sdk.e.a(r8)
                        kotlin.Unit r1 = kotlin.Unit.INSTANCE
                        r7.f42222a = r3
                        java.lang.Object r8 = r8.a(r1, r7)
                        if (r8 != r0) goto L44
                        return r0
                    L44:
                        com.im.freechat.sdk.e r1 = r7.f42224c
                        boolean r3 = r7.f42225d
                        kotlin.jvm.functions.Function1<java.lang.String, kotlin.Unit> r4 = r7.f42226e
                        boolean r5 = kotlin.Result.m77isSuccessimpl(r8)
                        if (r5 == 0) goto L6c
                        r5 = r8
                        kotlin.Unit r5 = (kotlin.Unit) r5
                        com.im.freechat.domain.usecase.auth.StartWebSocketInteractor r1 = com.im.freechat.sdk.e.c(r1)
                        java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
                        com.im.freechat.sdk.e$a$a$a$a r5 = new com.im.freechat.sdk.e$a$a$a$a
                        r6 = 0
                        r5.<init>(r4, r6)
                        r7.f42223b = r8
                        r7.f42222a = r2
                        java.lang.Object r8 = r1.c(r3, r5, r7)
                        if (r8 != r0) goto L6c
                        return r0
                    L6c:
                        kotlin.Unit r8 = kotlin.Unit.INSTANCE
                        return r8
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.sdk.e.a.C0339a.C0340a.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0339a(e eVar, boolean z9, Function1<? super String, Unit> function1, Continuation<? super C0339a> continuation) {
                super(2, continuation);
                this.f42219c = eVar;
                this.f42220d = z9;
                this.f42221e = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @g
            public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                C0339a c0339a = new C0339a(this.f42219c, this.f42220d, this.f42221e, continuation);
                c0339a.f42218b = obj;
                return c0339a;
            }

            @Override // kotlin.jvm.functions.Function2
            @h
            /* renamed from: h */
            public final Object invoke(@g Result<? extends DnsResolutionState> result, @h Continuation<? super Unit> continuation) {
                return ((C0339a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @h
            public final Object invokeSuspend(@g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42217a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0340a c0340a = new C0340a(this.f42219c, this.f42220d, this.f42221e, null);
                    this.f42217a = 1;
                    if (((Result) this.f42218b).onSuccess(c0340a, this) == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(boolean z9, Function1<? super String, Unit> function1, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f42215c = z9;
            this.f42216d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new a(this.f42215c, this.f42216d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42213a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.dns.a aVar = e.this.f42208a;
                Unit unit = Unit.INSTANCE;
                C0339a c0339a = new C0339a(e.this, this.f42215c, this.f42216d, null);
                this.f42213a = 1;
                if (aVar.c(unit, c0339a, this) == coroutine_suspended) {
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
    /* compiled from: WebsocketManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.sdk.WebsocketManager$stopSocketListening$1", f = "WebsocketManager.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42235a;

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42235a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                k kVar = e.this.f42210c;
                Unit unit = Unit.INSTANCE;
                this.f42235a = 1;
                if (kVar.a(unit, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                ((kotlin.Result) obj).m79unboximpl();
            }
            return Unit.INSTANCE;
        }
    }

    public e(@g com.im.freechat.domain.usecase.dns.a listenDnsStatusInteractor, @g StartWebSocketInteractor startWebSocketInteractor, @g k stopWebSocketInteractor, @g com.im.freechat.domain.usecase.auth.a assertUserLoggedInInteractor) {
        Intrinsics.checkNotNullParameter(listenDnsStatusInteractor, "listenDnsStatusInteractor");
        Intrinsics.checkNotNullParameter(startWebSocketInteractor, "startWebSocketInteractor");
        Intrinsics.checkNotNullParameter(stopWebSocketInteractor, "stopWebSocketInteractor");
        Intrinsics.checkNotNullParameter(assertUserLoggedInInteractor, "assertUserLoggedInInteractor");
        this.f42208a = listenDnsStatusInteractor;
        this.f42209b = startWebSocketInteractor;
        this.f42210c = stopWebSocketInteractor;
        this.f42211d = assertUserLoggedInInteractor;
    }

    @h
    public final j2 e() {
        return this.f42212e;
    }

    public final void f(@h j2 j2Var) {
        this.f42212e = j2Var;
    }

    public final void g(boolean z9, @g Function1<? super String, Unit> errorCallback) {
        j2 f10;
        Intrinsics.checkNotNullParameter(errorCallback, "errorCallback");
        j2 j2Var = this.f42212e;
        if (j2Var != null) {
            j2.a.b(j2Var, null, 1, null);
        }
        f10 = l.f(t0.a(i1.c()), null, null, new a(z9, errorCallback, null), 3, null);
        this.f42212e = f10;
    }

    public final void h() {
        j2 j2Var = this.f42212e;
        if (j2Var != null) {
            j2.a.b(j2Var, null, 1, null);
        }
        l.f(t0.a(i1.c()), null, null, new b(null), 3, null);
    }
}
