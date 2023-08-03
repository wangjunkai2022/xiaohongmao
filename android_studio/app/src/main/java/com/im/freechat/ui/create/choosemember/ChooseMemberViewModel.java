package com.im.freechat.ui.create.choosemember;

import androidx.core.os.BundleKt;
import androidx.lifecycle.MutableLiveData;
import b4.b;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.s0;

/* compiled from: ChooseMemberViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR%\u0010\u0012\u001a\u0010\u0012\f\u0012\n \r*\u0004\u0018\u00010\f0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;", "", "userId", "", "j", "Lcom/im/freechat/domain/usecase/chat/c;", "c", "Lcom/im/freechat/domain/usecase/chat/c;", "createSingleChatInteractor", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "d", "Landroidx/lifecycle/MutableLiveData;", "k", "()Landroidx/lifecycle/MutableLiveData;", "loading", "<init>", "(Lcom/im/freechat/domain/usecase/chat/c;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChooseMemberViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.c f43508c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43509d;

    /* compiled from: ChooseMemberViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/im/freechat/ui/create/choosemember/ChooseMemberViewModel$Directions;", "", "(Ljava/lang/String;I)V", "CHAT_DETAILS", "NAME_GROUP", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        CHAT_DETAILS,
        NAME_GROUP
    }

    /* compiled from: ChooseMemberViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.create.choosemember.ChooseMemberViewModel$createSingleChat$1", f = "ChooseMemberViewModel.kt", i = {}, l = {17}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43511a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f43513c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(int i4, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f43513c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f43513c, continuation);
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
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43511a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.c cVar = ChooseMemberViewModel.this.f43508c;
                Integer boxInt = Boxing.boxInt(this.f43513c);
                this.f43511a = 1;
                a10 = cVar.a(boxInt, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            ChooseMemberViewModel chooseMemberViewModel = ChooseMemberViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                chooseMemberViewModel.e(Directions.CHAT_DETAILS, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Boxing.boxInt(((Number) a10).intValue()))));
            }
            ChooseMemberViewModel chooseMemberViewModel2 = ChooseMemberViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                chooseMemberViewModel2.h(b.s.f2312l1, m73exceptionOrNullimpl.getMessage());
            }
            return Unit.INSTANCE;
        }
    }

    public ChooseMemberViewModel(@m8.g com.im.freechat.domain.usecase.chat.c createSingleChatInteractor) {
        Intrinsics.checkNotNullParameter(createSingleChatInteractor, "createSingleChatInteractor");
        this.f43508c = createSingleChatInteractor;
        this.f43509d = new MutableLiveData<>(Boolean.FALSE);
    }

    public final void j(int i4) {
        d(this.f43509d, new a(i4, null));
    }

    @m8.g
    public final MutableLiveData<Boolean> k() {
        return this.f43509d;
    }
}
