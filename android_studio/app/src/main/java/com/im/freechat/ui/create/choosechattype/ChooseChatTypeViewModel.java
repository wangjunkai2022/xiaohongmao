package com.im.freechat.ui.create.choosechattype;

import androidx.lifecycle.MutableLiveData;
import com.im.freechat.shared.entities.Result;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.Chat;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: ChooseChatTypeViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u001a\u0010\u001bJ\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR1\u0010\u0015\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u000f \u0010*\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e0\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\r8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014¨\u0006\u001d"}, d2 = {"Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;", "Lkotlinx/coroutines/j2;", "m", "Lcom/im/freechat/domain/usecase/chat/g;", "c", "Lcom/im/freechat/domain/usecase/chat/g;", "listenAllChatsInteractor", "Lcom/im/freechat/domain/usecase/currentuser/a;", "d", "Lcom/im/freechat/domain/usecase/currentuser/a;", "getCurrentUserInteractor", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "kotlin.jvm.PlatformType", "e", "Landroidx/lifecycle/MutableLiveData;", "k", "()Landroidx/lifecycle/MutableLiveData;", "chatList", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "f", "l", "currentUser", "<init>", "(Lcom/im/freechat/domain/usecase/chat/g;Lcom/im/freechat/domain/usecase/currentuser/a;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChooseChatTypeViewModel extends com.im.freechat.base.a<Directions> {
    @g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.g f43476c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.a f43477d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<List<Chat>> f43478e;
    @g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<UserInfo> f43479f;

    /* compiled from: ChooseChatTypeViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/im/freechat/ui/create/choosechattype/ChooseChatTypeViewModel$Directions;", "", "(Ljava/lang/String;I)V", "NAVIGATE_CHOOSE_MEMBER", "NAVIGATE_CHAT_DETAILS", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        NAVIGATE_CHOOSE_MEMBER,
        NAVIGATE_CHAT_DETAILS
    }

    /* compiled from: ChooseChatTypeViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$init$1", f = "ChooseChatTypeViewModel.kt", i = {}, l = {19, 22}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43481a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChooseChatTypeViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$init$1$1", f = "ChooseChatTypeViewModel.kt", i = {}, l = {20}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0367a extends SuspendLambda implements Function2<Result<? extends List<? extends Chat>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f43483a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f43484b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ChooseChatTypeViewModel f43485c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ChooseChatTypeViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$init$1$1$1", f = "ChooseChatTypeViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0368a extends SuspendLambda implements Function2<List<? extends Chat>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f43486a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f43487b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ChooseChatTypeViewModel f43488c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0368a(ChooseChatTypeViewModel chooseChatTypeViewModel, Continuation<? super C0368a> continuation) {
                    super(2, continuation);
                    this.f43488c = chooseChatTypeViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @g
                public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                    C0368a c0368a = new C0368a(this.f43488c, continuation);
                    c0368a.f43487b = obj;
                    return c0368a;
                }

                @Override // kotlin.jvm.functions.Function2
                @h
                /* renamed from: h */
                public final Object invoke(@g List<Chat> list, @h Continuation<? super Unit> continuation) {
                    return ((C0368a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @h
                public final Object invokeSuspend(@g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f43486a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f43488c.k().setValue((List) this.f43487b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0367a(ChooseChatTypeViewModel chooseChatTypeViewModel, Continuation<? super C0367a> continuation) {
                super(2, continuation);
                this.f43485c = chooseChatTypeViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @g
            public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
                C0367a c0367a = new C0367a(this.f43485c, continuation);
                c0367a.f43484b = obj;
                return c0367a;
            }

            @Override // kotlin.jvm.functions.Function2
            @h
            /* renamed from: h */
            public final Object invoke(@g Result<? extends List<Chat>> result, @h Continuation<? super Unit> continuation) {
                return ((C0367a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @h
            public final Object invokeSuspend(@g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f43483a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0368a c0368a = new C0368a(this.f43485c, null);
                    this.f43483a = 1;
                    if (((Result) this.f43484b).onSuccess(c0368a, this) == coroutine_suspended) {
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
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
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
                int r1 = r7.f43481a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L24
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                kotlin.ResultKt.throwOnFailure(r8)
                kotlin.Result r8 = (kotlin.Result) r8
                java.lang.Object r8 = r8.m79unboximpl()
                goto L51
            L18:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L20:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L40
            L24:
                kotlin.ResultKt.throwOnFailure(r8)
                com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel r8 = com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.this
                com.im.freechat.domain.usecase.chat.g r8 = com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.j(r8)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$a$a r4 = new com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel$a$a
                com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel r5 = com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.this
                r6 = 0
                r4.<init>(r5, r6)
                r7.f43481a = r3
                java.lang.Object r8 = r8.c(r1, r4, r7)
                if (r8 != r0) goto L40
                return r0
            L40:
                com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel r8 = com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.this
                com.im.freechat.domain.usecase.currentuser.a r8 = com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.i(r8)
                kotlin.Unit r1 = kotlin.Unit.INSTANCE
                r7.f43481a = r2
                java.lang.Object r8 = r8.a(r1, r7)
                if (r8 != r0) goto L51
                return r0
            L51:
                com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel r0 = com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.this
                boolean r1 = kotlin.Result.m77isSuccessimpl(r8)
                if (r1 == 0) goto L62
                com.im.freechat.shared.entities.auth.UserInfo r8 = (com.im.freechat.shared.entities.auth.UserInfo) r8
                androidx.lifecycle.MutableLiveData r0 = r0.l()
                r0.setValue(r8)
            L62:
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.create.choosechattype.ChooseChatTypeViewModel.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public ChooseChatTypeViewModel(@g com.im.freechat.domain.usecase.chat.g listenAllChatsInteractor, @g com.im.freechat.domain.usecase.currentuser.a getCurrentUserInteractor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(listenAllChatsInteractor, "listenAllChatsInteractor");
        Intrinsics.checkNotNullParameter(getCurrentUserInteractor, "getCurrentUserInteractor");
        this.f43476c = listenAllChatsInteractor;
        this.f43477d = getCurrentUserInteractor;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f43478e = new MutableLiveData<>(emptyList);
        this.f43479f = new MutableLiveData<>(null);
    }

    @g
    public final MutableLiveData<List<Chat>> k() {
        return this.f43478e;
    }

    @g
    public final MutableLiveData<UserInfo> l() {
        return this.f43479f;
    }

    @g
    public final j2 m() {
        return c(new a(null));
    }
}
