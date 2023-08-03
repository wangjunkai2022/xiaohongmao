package com.im.freechat.ui.create.namegroup;

import androidx.core.os.BundleKt;
import androidx.lifecycle.MutableLiveData;
import b4.b;
import com.im.freechat.domain.usecase.chat.b;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: NameGroupViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0010\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0010¢\u0006\u0004\b)\u0010*J\u0014\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003J\u000e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R(\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R%\u0010\"\u001a\u0010\u0012\f\u0012\n \u001d*\u0004\u0018\u00010\u001c0\u001c0\u001b8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010%\u001a\b\u0012\u0004\u0012\u00020\b0\u001b8\u0006¢\u0006\f\n\u0004\b#\u0010\u001f\u001a\u0004\b$\u0010!R#\u0010(\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u001b8\u0006¢\u0006\f\n\u0004\b&\u0010\u001f\u001a\u0004\b'\u0010!¨\u0006,"}, d2 = {"Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;", "Lcom/im/freechat/base/a;", "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", com.im.freechat.ui.create.choosemember.h.f43540d, "Lkotlinx/coroutines/j2;", "p", "", "name", "", "k", "Lcom/im/freechat/domain/usecase/chat/b;", "c", "Lcom/im/freechat/domain/usecase/chat/b;", "createGroupChatInteractor", "Lcom/im/freechat/domain/usecase/currentuser/a;", "d", "Lcom/im/freechat/domain/usecase/currentuser/a;", "getCurrentUserInteractor", "e", "Ljava/util/List;", "o", "()Ljava/util/List;", "q", "(Ljava/util/List;)V", "originalMembers", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "f", "Landroidx/lifecycle/MutableLiveData;", "m", "()Landroidx/lifecycle/MutableLiveData;", "loading", "g", "l", "avatar", "h", "n", "memberList", "<init>", "(Lcom/im/freechat/domain/usecase/chat/b;Lcom/im/freechat/domain/usecase/currentuser/a;)V", "Directions", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class NameGroupViewModel extends com.im.freechat.base.a<Directions> {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.chat.b f43552c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.im.freechat.domain.usecase.currentuser.a f43553d;

    /* renamed from: e  reason: collision with root package name */
    public List<UserModel> f43554e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<Boolean> f43555f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<String> f43556g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<List<UserModel>> f43557h;

    /* compiled from: NameGroupViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;", "", "(Ljava/lang/String;I)V", "CHAT_DETAILS", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Directions {
        CHAT_DETAILS
    }

    /* compiled from: NameGroupViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.create.namegroup.NameGroupViewModel$createChat$1", f = "NameGroupViewModel.kt", i = {}, l = {30}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43559a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f43561c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f43561c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f43561c, continuation);
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
            int collectionSizeOrDefault;
            Object a10;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43559a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.domain.usecase.chat.b bVar = NameGroupViewModel.this.f43552c;
                String str = this.f43561c;
                List<UserModel> o9 = NameGroupViewModel.this.o();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(o9, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (UserModel userModel : o9) {
                    arrayList.add(Boxing.boxInt(userModel.getUserId()));
                }
                b.a aVar = new b.a(str, arrayList, NameGroupViewModel.this.l().getValue());
                this.f43559a = 1;
                a10 = bVar.a(aVar, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            NameGroupViewModel nameGroupViewModel = NameGroupViewModel.this;
            if (Result.m77isSuccessimpl(a10)) {
                nameGroupViewModel.e(Directions.CHAT_DETAILS, BundleKt.bundleOf(TuplesKt.to(k4.b.f84734a, Boxing.boxInt(((Number) a10).intValue()))));
            }
            NameGroupViewModel nameGroupViewModel2 = NameGroupViewModel.this;
            Throwable m73exceptionOrNullimpl = Result.m73exceptionOrNullimpl(a10);
            if (m73exceptionOrNullimpl != null) {
                nameGroupViewModel2.h(b.s.f2312l1, m73exceptionOrNullimpl.getMessage());
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: NameGroupViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.im.freechat.ui.create.namegroup.NameGroupViewModel$init$1", f = "NameGroupViewModel.kt", i = {}, l = {25}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f43562a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<UserModel> f43564c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<UserModel> list, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f43564c = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new b(this.f43564c, continuation);
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
            Object a10;
            List listOf;
            List<UserModel> plus;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f43562a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                NameGroupViewModel.this.q(this.f43564c);
                com.im.freechat.domain.usecase.currentuser.a aVar = NameGroupViewModel.this.f43553d;
                Unit unit = Unit.INSTANCE;
                this.f43562a = 1;
                a10 = aVar.a(unit, this);
                if (a10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                a10 = ((Result) obj).m79unboximpl();
            }
            NameGroupViewModel nameGroupViewModel = NameGroupViewModel.this;
            List<UserModel> list = this.f43564c;
            if (Result.m77isSuccessimpl(a10)) {
                MutableLiveData<List<UserModel>> n9 = nameGroupViewModel.n();
                listOf = CollectionsKt__CollectionsJVMKt.listOf(((UserInfo) a10).asContact());
                plus = CollectionsKt___CollectionsKt.plus((Collection) listOf, (Iterable) list);
                n9.setValue(plus);
            }
            return Unit.INSTANCE;
        }
    }

    public NameGroupViewModel(@m8.g com.im.freechat.domain.usecase.chat.b createGroupChatInteractor, @m8.g com.im.freechat.domain.usecase.currentuser.a getCurrentUserInteractor) {
        List emptyList;
        Intrinsics.checkNotNullParameter(createGroupChatInteractor, "createGroupChatInteractor");
        Intrinsics.checkNotNullParameter(getCurrentUserInteractor, "getCurrentUserInteractor");
        this.f43552c = createGroupChatInteractor;
        this.f43553d = getCurrentUserInteractor;
        this.f43555f = new MutableLiveData<>(Boolean.FALSE);
        this.f43556g = new MutableLiveData<>(null);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f43557h = new MutableLiveData<>(emptyList);
    }

    public final void k(@m8.g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        d(this.f43555f, new a(name, null));
    }

    @m8.g
    public final MutableLiveData<String> l() {
        return this.f43556g;
    }

    @m8.g
    public final MutableLiveData<Boolean> m() {
        return this.f43555f;
    }

    @m8.g
    public final MutableLiveData<List<UserModel>> n() {
        return this.f43557h;
    }

    @m8.g
    public final List<UserModel> o() {
        List<UserModel> list = this.f43554e;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException("originalMembers");
        return null;
    }

    @m8.g
    public final j2 p(@m8.g List<UserModel> members) {
        Intrinsics.checkNotNullParameter(members, "members");
        return c(new b(members, null));
    }

    public final void q(@m8.g List<UserModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f43554e = list;
    }
}
