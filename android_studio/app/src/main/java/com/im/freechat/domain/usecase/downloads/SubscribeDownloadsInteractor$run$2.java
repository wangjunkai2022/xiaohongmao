package com.im.freechat.domain.usecase.downloads;

import com.im.freechat.shared.entities.DownloadInfo;
import io.sentry.protocol.v;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SubscribeDownloadsInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2", f = "SubscribeDownloadsInteractor.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class SubscribeDownloadsInteractor$run$2 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f41768a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ SubscribeDownloadsInteractor f41769b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SubscribeDownloadsInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/DownloadInfo;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$2$1", f = "SubscribeDownloadsInteractor.kt", i = {}, l = {27}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<List<? extends DownloadInfo>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41770a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41771b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SubscribeDownloadsInteractor f41772c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(SubscribeDownloadsInteractor subscribeDownloadsInteractor, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f41772c = subscribeDownloadsInteractor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            a aVar = new a(this.f41772c, continuation);
            aVar.f41771b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        /* renamed from: h */
        public final Object invoke(@g List<DownloadInfo> list, @h Continuation<? super Unit> continuation) {
            return ((a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f41770a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.c c10 = this.f41772c.c();
                this.f41770a = 1;
                if (c10.N((List) this.f41771b, this) == coroutine_suspended) {
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
    /* compiled from: SubscribeDownloadsInteractor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/DownloadInfo;", v.b.f83881a, "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$2$2", f = "SubscribeDownloadsInteractor.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<List<? extends DownloadInfo>, Continuation<? super Boolean>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f41773a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f41774b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ SubscribeDownloadsInteractor f41775c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(SubscribeDownloadsInteractor subscribeDownloadsInteractor, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f41775c = subscribeDownloadsInteractor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            b bVar = new b(this.f41775c, continuation);
            bVar.f41774b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        /* renamed from: h */
        public final Object invoke(@g List<DownloadInfo> list, @h Continuation<? super Boolean> continuation) {
            return ((b) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
            if (r6 != false) goto L11;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r6) {
            /*
                r5 = this;
                kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r0 = r5.f41773a
                if (r0 != 0) goto L55
                kotlin.ResultKt.throwOnFailure(r6)
                java.lang.Object r6 = r5.f41774b
                java.util.List r6 = (java.util.List) r6
                boolean r0 = r6.isEmpty()
                r1 = 1
                r0 = r0 ^ r1
                r2 = 0
                if (r0 == 0) goto L4f
                com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor r0 = r5.f41775c
                boolean r3 = r6 instanceof java.util.Collection
                if (r3 == 0) goto L25
                boolean r3 = r6.isEmpty()
                if (r3 == 0) goto L25
            L23:
                r6 = 1
                goto L4c
            L25:
                java.util.Iterator r6 = r6.iterator()
            L29:
                boolean r3 = r6.hasNext()
                if (r3 == 0) goto L23
                java.lang.Object r3 = r6.next()
                com.im.freechat.shared.entities.DownloadInfo r3 = (com.im.freechat.shared.entities.DownloadInfo) r3
                com.im.freechat.domain.e r4 = r0.d()
                java.lang.Integer[] r4 = r4.d()
                int r3 = r3.getStatus()
                java.lang.Integer r3 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r3)
                boolean r3 = kotlin.collections.ArraysKt.contains(r4, r3)
                if (r3 != 0) goto L29
                r6 = 0
            L4c:
                if (r6 == 0) goto L4f
                goto L50
            L4f:
                r1 = 0
            L50:
                java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r1)
                return r6
            L55:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribeDownloadsInteractor$run$2(SubscribeDownloadsInteractor subscribeDownloadsInteractor, Continuation<? super SubscribeDownloadsInteractor$run$2> continuation) {
        super(2, continuation);
        this.f41769b = subscribeDownloadsInteractor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new SubscribeDownloadsInteractor$run$2(this.f41769b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((SubscribeDownloadsInteractor$run$2) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f41768a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            final i<List<DownloadInfo>> L = this.f41769b.c().L();
            i b22 = k.b2(new i<List<? extends DownloadInfo>>() { // from class: com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1

                /* compiled from: Collect.kt */
                @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filterNot$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 7, 1})
                /* renamed from: com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1$2  reason: invalid class name */
                /* loaded from: classes3.dex */
                public static final class AnonymousClass2 implements j<List<? extends DownloadInfo>> {

                    /* renamed from: a  reason: collision with root package name */
                    final /* synthetic */ j f41758a;

                    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
                    @DebugMetadata(c = "com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1$2", f = "SubscribeDownloadsInteractor.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                    /* renamed from: com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1$2$1  reason: invalid class name */
                    /* loaded from: classes3.dex */
                    public static final class AnonymousClass1 extends ContinuationImpl {

                        /* renamed from: a  reason: collision with root package name */
                        /* synthetic */ Object f41759a;

                        /* renamed from: b  reason: collision with root package name */
                        int f41760b;

                        /* renamed from: c  reason: collision with root package name */
                        Object f41761c;

                        /* renamed from: d  reason: collision with root package name */
                        Object f41762d;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        @h
                        public final Object invokeSuspend(@g Object obj) {
                            this.f41759a = obj;
                            this.f41760b |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(j jVar) {
                        this.f41758a = jVar;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                    @Override // kotlinx.coroutines.flow.j
                    @m8.h
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public java.lang.Object emit(java.util.List<? extends com.im.freechat.shared.entities.DownloadInfo> r5, @m8.g kotlin.coroutines.Continuation r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r6
                            com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1$2$1 r0 = (com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.f41760b
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.f41760b = r1
                            goto L18
                        L13:
                            com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1$2$1 r0 = new com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1$2$1
                            r0.<init>(r6)
                        L18:
                            java.lang.Object r6 = r0.f41759a
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.f41760b
                            r3 = 1
                            if (r2 == 0) goto L31
                            if (r2 != r3) goto L29
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L48
                        L29:
                            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                            r5.<init>(r6)
                            throw r5
                        L31:
                            kotlin.ResultKt.throwOnFailure(r6)
                            kotlinx.coroutines.flow.j r6 = r4.f41758a
                            r2 = r5
                            java.util.List r2 = (java.util.List) r2
                            boolean r2 = r2.isEmpty()
                            if (r2 != 0) goto L48
                            r0.f41760b = r3
                            java.lang.Object r5 = r6.emit(r5, r0)
                            if (r5 != r1) goto L48
                            return r1
                        L48:
                            kotlin.Unit r5 = kotlin.Unit.INSTANCE
                            return r5
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.downloads.SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$filterNot$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.i
                @h
                public Object collect(@g j<? super List<? extends DownloadInfo>> jVar, @g Continuation continuation) {
                    Object coroutine_suspended2;
                    Object collect = i.this.collect(new AnonymousClass2(jVar), continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return collect == coroutine_suspended2 ? collect : Unit.INSTANCE;
                }
            }, new SubscribeDownloadsInteractor$run$2$invokeSuspend$$inlined$flatMapLatest$1(null, this.f41769b));
            this.f41768a = 1;
            if (k.x(b22, this) == coroutine_suspended) {
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
