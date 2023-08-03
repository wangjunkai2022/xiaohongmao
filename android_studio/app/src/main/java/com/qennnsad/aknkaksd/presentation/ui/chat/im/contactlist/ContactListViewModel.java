package com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
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
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: ContactListViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR#\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/e;", "", "userId", "Lkotlinx/coroutines/j2;", "t", "Lcom/im/freechat/sdk/a;", "e", "Lcom/im/freechat/sdk/a;", "dataManager", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "f", "Landroidx/lifecycle/MutableLiveData;", "u", "()Landroidx/lifecycle/MutableLiveData;", "contacts", "<init>", "(Lcom/im/freechat/sdk/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ContactListViewModel extends com.qennnsad.aknkaksd.presentation.common.l<e> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.im.freechat.sdk.a f52657e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<List<UserModel>> f52658f;

    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListViewModel$1", f = "ContactListViewModel.kt", i = {}, l = {21}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52659a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ContactListViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/im/freechat/shared/entities/contact/UserModel;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListViewModel$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0433a extends Lambda implements Function1<List<? extends UserModel>, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ContactListViewModel f52661a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0433a(ContactListViewModel contactListViewModel) {
                super(1);
                this.f52661a = contactListViewModel;
            }

            public final void a(@m8.g List<UserModel> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f52661a.u().postValue(it);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends UserModel> list) {
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
            int i4 = this.f52659a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a aVar = ContactListViewModel.this.f52657e;
                C0433a c0433a = new C0433a(ContactListViewModel.this);
                this.f52659a = 1;
                if (com.im.freechat.sdk.a.o(aVar, c0433a, null, this, 2, null) == coroutine_suspended) {
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

    /* compiled from: ContactListViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListViewModel$deleteFriend$1", f = "ContactListViewModel.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f52662a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f52663b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f52663b = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f52663b, continuation);
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
            int i4 = this.f52662a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int i10 = this.f52663b;
                this.f52662a = 1;
                if (d4.d(i10, this) == coroutine_suspended) {
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

    @u7.a
    public ContactListViewModel(@m8.g com.im.freechat.sdk.a dataManager) {
        Intrinsics.checkNotNullParameter(dataManager, "dataManager");
        this.f52657e = dataManager;
        this.f52658f = new MutableLiveData<>();
        kotlinx.coroutines.j.e(ViewModelKt.getViewModelScope(this), null, null, new a(null), 3, null);
    }

    @m8.g
    public final j2 t(int i4) {
        return j(new b(i4, null));
    }

    @m8.g
    public final MutableLiveData<List<UserModel>> u() {
        return this.f52658f;
    }
}
