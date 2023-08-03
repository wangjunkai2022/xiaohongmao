package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import androidx.lifecycle.MutableLiveData;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.shared.entities.chat.FriendStatus;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;

/* compiled from: ChatViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u000b\u0010\fR#\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00038\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/d;", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "e", "Landroidx/lifecycle/MutableLiveData;", "s", "()Landroidx/lifecycle/MutableLiveData;", "requests", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatViewModel extends com.qennnsad.aknkaksd.presentation.common.l<d> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<List<FriendStatus>> f52554e = new MutableLiveData<>();

    /* compiled from: ChatViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatViewModel$1", f = "ChatViewModel.kt", i = {}, l = {17}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52555a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ChatViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0431a extends Lambda implements Function1<List<? extends FriendStatus>, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ChatViewModel f52557a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0431a(ChatViewModel chatViewModel) {
                super(1);
                this.f52557a = chatViewModel;
            }

            public final void a(@m8.g List<FriendStatus> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f52557a.s().postValue(it);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends FriendStatus> list) {
                a(list);
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
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f52555a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                C0431a c0431a = new C0431a(ChatViewModel.this);
                this.f52555a = 1;
                if (d4.q(c0431a, this) == coroutine_suspended) {
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
    public ChatViewModel() {
        j(new a(null));
    }

    @m8.g
    public final MutableLiveData<List<FriendStatus>> s() {
        return this.f52554e;
    }
}
