package com.im.freechat.domain;

import com.im.freechat.shared.entities.Result;
import com.im.freechat.shared.entities.SocketEvent;
import com.im.freechat.shared.entities.message.MessageWithChat;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.flow.z;
import kotlinx.coroutines.s0;

/* compiled from: InAppMessageManager.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/domain/j;", "", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/shared/entities/message/MessageWithChat;", "f", "Lcom/im/freechat/shared/entities/SocketEvent;", "e", "Lcom/im/freechat/domain/usecase/messages/m;", "a", "Lcom/im/freechat/domain/usecase/messages/m;", "subscribeNewMessagesInteractor", "Lcom/im/freechat/domain/usecase/messages/l;", "b", "Lcom/im/freechat/domain/usecase/messages/l;", "subscribeMessageUpdatesInteractor", "Lkotlinx/coroutines/flow/s;", "c", "Lkotlinx/coroutines/flow/s;", "newMessagesFlow", "d", "messageUpdatesFlow", "<init>", "(Lcom/im/freechat/domain/usecase/messages/m;Lcom/im/freechat/domain/usecase/messages/l;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.messages.m f41309a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.messages.l f41310b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final kotlinx.coroutines.flow.s<MessageWithChat> f41311c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final kotlinx.coroutines.flow.s<SocketEvent> f41312d;

    /* compiled from: InAppMessageManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.InAppMessageManager$1", f = "InAppMessageManager.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41313a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: InAppMessageManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/message/MessageWithChat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.domain.InAppMessageManager$1$1", f = "InAppMessageManager.kt", i = {}, l = {22}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.domain.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0313a extends SuspendLambda implements Function2<Result<? extends MessageWithChat>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41315a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41316b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ j f41317c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: InAppMessageManager.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/message/MessageWithChat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.domain.InAppMessageManager$1$1$1", f = "InAppMessageManager.kt", i = {}, l = {22}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.domain.j$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0314a extends SuspendLambda implements Function2<MessageWithChat, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f41318a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f41319b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ j f41320c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0314a(j jVar, Continuation<? super C0314a> continuation) {
                    super(2, continuation);
                    this.f41320c = jVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0314a c0314a = new C0314a(this.f41320c, continuation);
                    c0314a.f41319b = obj;
                    return c0314a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g MessageWithChat messageWithChat, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0314a) create(messageWithChat, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f41318a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        kotlinx.coroutines.flow.s sVar = this.f41320c.f41311c;
                        this.f41318a = 1;
                        if (sVar.emit((MessageWithChat) this.f41319b, this) == coroutine_suspended) {
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
            C0313a(j jVar, Continuation<? super C0313a> continuation) {
                super(2, continuation);
                this.f41317c = jVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                C0313a c0313a = new C0313a(this.f41317c, continuation);
                c0313a.f41316b = obj;
                return c0313a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g Result<MessageWithChat> result, @m8.h Continuation<? super Unit> continuation) {
                return ((C0313a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41315a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0314a c0314a = new C0314a(this.f41317c, null);
                    this.f41315a = 1;
                    if (((Result) this.f41316b).onSuccess(c0314a, this) == coroutine_suspended) {
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

        a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(continuation);
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
            int i4 = this.f41313a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.m mVar = j.this.f41309a;
                Unit unit = Unit.INSTANCE;
                C0313a c0313a = new C0313a(j.this, null);
                this.f41313a = 1;
                if (mVar.c(unit, c0313a, this) == coroutine_suspended) {
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

    /* compiled from: InAppMessageManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.InAppMessageManager$2", f = "InAppMessageManager.kt", i = {}, l = {26}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41321a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: InAppMessageManager.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "Lcom/im/freechat/shared/entities/SocketEvent;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.domain.InAppMessageManager$2$1", f = "InAppMessageManager.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<Result<? extends SocketEvent>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f41323a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f41324b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ j f41325c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: InAppMessageManager.kt */
            @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/SocketEvent;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.domain.InAppMessageManager$2$1$1", f = "InAppMessageManager.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.domain.j$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0315a extends SuspendLambda implements Function2<SocketEvent, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f41326a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f41327b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ j f41328c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0315a(j jVar, Continuation<? super C0315a> continuation) {
                    super(2, continuation);
                    this.f41328c = jVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.g
                public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                    C0315a c0315a = new C0315a(this.f41328c, continuation);
                    c0315a.f41327b = obj;
                    return c0315a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@m8.g SocketEvent socketEvent, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0315a) create(socketEvent, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@m8.g Object obj) {
                    Object coroutine_suspended;
                    coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i4 = this.f41326a;
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        kotlinx.coroutines.flow.s sVar = this.f41328c.f41312d;
                        this.f41326a = 1;
                        if (sVar.emit((SocketEvent) this.f41327b, this) == coroutine_suspended) {
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
            a(j jVar, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f41325c = jVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                a aVar = new a(this.f41325c, continuation);
                aVar.f41324b = obj;
                return aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@m8.g Result<? extends SocketEvent> result, @m8.h Continuation<? super Unit> continuation) {
                return ((a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f41323a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0315a c0315a = new C0315a(this.f41325c, null);
                    this.f41323a = 1;
                    if (((Result) this.f41324b).onSuccess(c0315a, this) == coroutine_suspended) {
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

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(continuation);
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
            int i4 = this.f41321a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.messages.l lVar = j.this.f41310b;
                Unit unit = Unit.INSTANCE;
                a aVar = new a(j.this, null);
                this.f41321a = 1;
                if (lVar.c(unit, aVar, this) == coroutine_suspended) {
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

    public j(@m8.g com.im.freechat.domain.usecase.messages.m subscribeNewMessagesInteractor, @m8.g com.im.freechat.domain.usecase.messages.l subscribeMessageUpdatesInteractor) {
        Intrinsics.checkNotNullParameter(subscribeNewMessagesInteractor, "subscribeNewMessagesInteractor");
        Intrinsics.checkNotNullParameter(subscribeMessageUpdatesInteractor, "subscribeMessageUpdatesInteractor");
        this.f41309a = subscribeNewMessagesInteractor;
        this.f41310b = subscribeMessageUpdatesInteractor;
        this.f41311c = z.b(0, 0, null, 7, null);
        this.f41312d = z.b(0, 0, null, 7, null);
        a2 a2Var = a2.f84781a;
        kotlinx.coroutines.l.f(a2Var, null, null, new a(null), 3, null);
        kotlinx.coroutines.l.f(a2Var, null, null, new b(null), 3, null);
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<SocketEvent> e() {
        return this.f41312d;
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<MessageWithChat> f() {
        return this.f41311c;
    }
}
