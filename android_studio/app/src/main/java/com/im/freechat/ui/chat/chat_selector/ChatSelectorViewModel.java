package com.im.freechat.ui.chat.chat_selector;

import androidx.lifecycle.MutableLiveData;
import com.im.freechat.domain.usecase.chat.h;
import com.im.freechat.shared.entities.Result;
import com.im.freechat.shared.entities.chat.Chat;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import m8.g;

/* compiled from: ChatSelectorViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u0011\u0010\u0012J\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R#\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\t8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;", "Lkotlinx/coroutines/j2;", "k", "Lcom/im/freechat/domain/usecase/chat/h;", "c", "Lcom/im/freechat/domain/usecase/chat/h;", "listenChatsInteractor", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "d", "Landroidx/lifecycle/MutableLiveData;", "j", "()Landroidx/lifecycle/MutableLiveData;", "chatList", "<init>", "(Lcom/im/freechat/domain/usecase/chat/h;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatSelectorViewModel extends com.im.freechat.base.a<Directions> {
    @g

    /* renamed from: c  reason: collision with root package name */
    private final h f42283c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final MutableLiveData<List<Chat>> f42284d;

    /* compiled from: ChatSelectorViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/chat/chat_selector/ChatSelectorViewModel$Directions;", "", "(Ljava/lang/String;I)V", "CHAT", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        CHAT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChatSelectorViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel$init$1", f = "ChatSelectorViewModel.kt", i = {}, l = {14}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f42286a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatSelectorViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@"}, d2 = {"Lcom/im/freechat/shared/entities/Result;", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel$init$1$1", f = "ChatSelectorViewModel.kt", i = {}, l = {15}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0344a extends SuspendLambda implements Function2<Result<? extends List<? extends Chat>>, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f42288a;

            /* renamed from: b  reason: collision with root package name */
            private /* synthetic */ Object f42289b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ChatSelectorViewModel f42290c;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: ChatSelectorViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/Chat;", "it", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
            @DebugMetadata(c = "com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel$init$1$1$1", f = "ChatSelectorViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: com.im.freechat.ui.chat.chat_selector.ChatSelectorViewModel$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0345a extends SuspendLambda implements Function2<List<? extends Chat>, Continuation<? super Unit>, Object> {

                /* renamed from: a  reason: collision with root package name */
                int f42291a;

                /* renamed from: b  reason: collision with root package name */
                /* synthetic */ Object f42292b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ ChatSelectorViewModel f42293c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0345a(ChatSelectorViewModel chatSelectorViewModel, Continuation<? super C0345a> continuation) {
                    super(2, continuation);
                    this.f42293c = chatSelectorViewModel;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @g
                public final Continuation<Unit> create(@m8.h Object obj, @g Continuation<?> continuation) {
                    C0345a c0345a = new C0345a(this.f42293c, continuation);
                    c0345a.f42292b = obj;
                    return c0345a;
                }

                @Override // kotlin.jvm.functions.Function2
                @m8.h
                /* renamed from: h */
                public final Object invoke(@g List<Chat> list, @m8.h Continuation<? super Unit> continuation) {
                    return ((C0345a) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @m8.h
                public final Object invokeSuspend(@g Object obj) {
                    IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.f42291a == 0) {
                        ResultKt.throwOnFailure(obj);
                        this.f42293c.j().setValue((List) this.f42292b);
                        return Unit.INSTANCE;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0344a(ChatSelectorViewModel chatSelectorViewModel, Continuation<? super C0344a> continuation) {
                super(2, continuation);
                this.f42290c = chatSelectorViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @g
            public final Continuation<Unit> create(@m8.h Object obj, @g Continuation<?> continuation) {
                C0344a c0344a = new C0344a(this.f42290c, continuation);
                c0344a.f42289b = obj;
                return c0344a;
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            /* renamed from: h */
            public final Object invoke(@g Result<? extends List<Chat>> result, @m8.h Continuation<? super Unit> continuation) {
                return ((C0344a) create(result, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f42288a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    C0345a c0345a = new C0345a(this.f42290c, null);
                    this.f42288a = 1;
                    if (((Result) this.f42289b).onSuccess(c0345a, this) == coroutine_suspended) {
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
        public final Continuation<Unit> create(@m8.h Object obj, @g Continuation<?> continuation) {
            return new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f42286a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                h hVar = ChatSelectorViewModel.this.f42283c;
                Unit unit = Unit.INSTANCE;
                C0344a c0344a = new C0344a(ChatSelectorViewModel.this, null);
                this.f42286a = 1;
                if (hVar.c(unit, c0344a, this) == coroutine_suspended) {
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

    public ChatSelectorViewModel(@g h listenChatsInteractor) {
        Intrinsics.checkNotNullParameter(listenChatsInteractor, "listenChatsInteractor");
        this.f42283c = listenChatsInteractor;
        this.f42284d = new MutableLiveData<>();
    }

    @g
    public final MutableLiveData<List<Chat>> j() {
        return this.f42284d;
    }

    @g
    public final j2 k() {
        return c(new a(null));
    }
}
