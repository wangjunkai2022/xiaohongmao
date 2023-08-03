package com.qennnsad.aknkaksd.presentation.module.main.profile;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.FlowLiveDataConversions;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.sdk.SDKManager;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.other_user.g;
import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import com.qennnsad.aknkaksd.presentation.module.main.profile.e;
import io.sentry.protocol.y;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.y0;

/* compiled from: UserProfileViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BI\b\u0007\u0012\u0006\u0010M\u001a\u00020L\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&\u0012\u0006\u0010-\u001a\u00020*\u0012\u0006\u00101\u001a\u00020.¢\u0006\u0004\bN\u0010OJ\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000b\u001a\u00020\u0007J\u0006\u0010\f\u001a\u00020\u0007J\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0003J\u000e\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010J\u0006\u0010\u0013\u001a\u00020\u0007R\u0017\u0010\u0019\u001a\u00020\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001f\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u000103028\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R\u001d\u0010?\u001a\b\u0012\u0004\u0012\u00020:098\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R#\u0010D\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020A0@098\u0006¢\u0006\f\n\u0004\bB\u0010<\u001a\u0004\bC\u0010>R\u001d\u0010G\u001a\b\u0012\u0004\u0012\u00020\u0010028\u0006¢\u0006\f\n\u0004\bE\u00105\u001a\u0004\bF\u00107R\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020H098\u0006¢\u0006\f\n\u0004\bI\u0010<\u001a\u0004\bJ\u0010>¨\u0006P"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/profile/UserProfileViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/profile/e;", "", "C", "", "userId", "", "D", "F", "w", "K", "v", "J", "message", "H", "", "approve", "G", "I", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "z", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;", "getUserInfoUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;", "getAnchorContributorsUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;", "followUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;", "unfollowUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;", "j", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;", "blacklistUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/m;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/other_user/m;", "unblacklistUserUseCase", "Landroidx/lifecycle/LiveData;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "l", "Landroidx/lifecycle/LiveData;", y.b.f83919g, "()Landroidx/lifecycle/LiveData;", "currentUser", "Landroidx/lifecycle/MutableLiveData;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "m", "Landroidx/lifecycle/MutableLiveData;", "B", "()Landroidx/lifecycle/MutableLiveData;", "user", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "n", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "topContributors", "o", ExifInterface.LONGITUDE_EAST, "isFollowed", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "p", y.b.f83920h, "friendStatus", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/j;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/c;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/g;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/q;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/c;Lcom/qennnsad/aknkaksd/domain/usecase/other_user/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class UserProfileViewModel extends com.qennnsad.aknkaksd.presentation.common.l<com.qennnsad.aknkaksd.presentation.module.main.profile.e> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51856e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.j f51857f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.anchor.c f51858g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.g f51859h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final q f51860i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.c f51861j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.other_user.m f51862k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final LiveData<UserBean> f51863l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<UserInfo> f51864m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<List<RankItem>> f51865n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final LiveData<Boolean> f51866o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<FriendStatus> f51867p;

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$blacklistUser$1", f = "UserProfileViewModel.kt", i = {}, l = {94}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51868a;

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
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51868a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.other_user.c cVar = UserProfileViewModel.this.f51861j;
                String C = UserProfileViewModel.this.C();
                this.f51868a = 1;
                b10 = cVar.b(C, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                String str = (String) b10;
                userProfileViewModel.o(R.string.pull_black_success);
                UserInfo value = userProfileViewModel.B().getValue();
                if (value != null) {
                    value.setIsHit(1);
                }
                userProfileViewModel.B().postValue(userProfileViewModel.B().getValue());
            }
            UserProfileViewModel userProfileViewModel2 = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(b10) != null) {
                userProfileViewModel2.o(R.string.msg_unknown_error);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function1<String, Unit> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.h String str) {
            UserProfileViewModel.this.o(R.string.follow_success);
            UserInfo value = UserProfileViewModel.this.B().getValue();
            if (value != null) {
                value.setIsHit(0);
            }
            UserProfileViewModel.this.B().postValue(UserProfileViewModel.this.B().getValue());
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$init$1", f = "UserProfileViewModel.kt", i = {}, l = {53}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51871a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f51872b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ UserProfileViewModel f51873c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "it", "", "a", "(Lcom/im/freechat/shared/entities/chat/FriendStatus;)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<FriendStatus, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51874a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserProfileViewModel userProfileViewModel) {
                super(1);
                this.f51874a = userProfileViewModel;
            }

            public final void a(@m8.h FriendStatus friendStatus) {
                this.f51874a.y().postValue(friendStatus);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FriendStatus friendStatus) {
                a(friendStatus);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(int i4, UserProfileViewModel userProfileViewModel, Continuation<? super c> continuation) {
            super(2, continuation);
            this.f51872b = i4;
            this.f51873c = userProfileViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(this.f51872b, this.f51873c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51871a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int i10 = this.f51872b;
                a aVar = new a(this.f51873c);
                this.f51871a = 1;
                if (d4.k(i10, aVar, this) == coroutine_suspended) {
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

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "user", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "currentUser", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function2<UserInfo, UserBean, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final d f51875a = new d();

        d() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final Boolean invoke(@m8.h UserInfo userInfo, @m8.h UserBean userBean) {
            List<String> follow_users;
            boolean contains;
            if (userBean == null || (follow_users = userBean.getFollow_users()) == null) {
                return null;
            }
            contains = CollectionsKt___CollectionsKt.contains(follow_users, userInfo != null ? userInfo.getId() : null);
            return Boolean.valueOf(contains);
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$loadUserInfo$1", f = "UserProfileViewModel.kt", i = {}, l = {61}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class e extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51876a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f51877b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f51879d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlin/Result;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$loadUserInfo$1$1", f = "UserProfileViewModel.kt", i = {}, l = {63}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Result<? extends UserInfo>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51880a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51881b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f51882c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserProfileViewModel userProfileViewModel, int i4, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51881b = userProfileViewModel;
                this.f51882c = i4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f51881b, this.f51882c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Result<? extends UserInfo>> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object b10;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f51880a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.qennnsad.aknkaksd.domain.usecase.other_user.j jVar = this.f51881b.f51857f;
                    String valueOf = String.valueOf(this.f51882c);
                    this.f51880a = 1;
                    b10 = jVar.b(valueOf, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                    b10 = ((Result) obj).m79unboximpl();
                }
                UserProfileViewModel userProfileViewModel = this.f51881b;
                if (Result.m77isSuccessimpl(b10)) {
                    userProfileViewModel.B().postValue((UserInfo) b10);
                }
                UserProfileViewModel userProfileViewModel2 = this.f51881b;
                if (Result.m73exceptionOrNullimpl(b10) != null) {
                    userProfileViewModel2.o(R.string.msg_unknown_error);
                }
                return Result.m69boximpl(b10);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlin/Result;", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$loadUserInfo$1$2", f = "UserProfileViewModel.kt", i = {}, l = {68}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Result<? extends List<? extends RankItem>>>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51883a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51884b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f51885c;

            /* compiled from: Comparisons.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareByDescending$1"}, k = 3, mv = {1, 7, 1}, xi = 48)
            /* loaded from: classes3.dex */
            public static final class a<T> implements Comparator {
                @Override // java.util.Comparator
                public final int compare(T t9, T t10) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(((RankItem) t10).getCoin(), ((RankItem) t9).getCoin());
                    return compareValues;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(UserProfileViewModel userProfileViewModel, int i4, Continuation<? super b> continuation) {
                super(2, continuation);
                this.f51884b = userProfileViewModel;
                this.f51885c = i4;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new b(this.f51884b, this.f51885c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(s0 s0Var, Continuation<? super Result<? extends List<? extends RankItem>>> continuation) {
                return invoke2(s0Var, (Continuation<? super Result<? extends List<RankItem>>>) continuation);
            }

            @m8.h
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@m8.g s0 s0Var, @m8.h Continuation<? super Result<? extends List<RankItem>>> continuation) {
                return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object b10;
                List sortedWith;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f51883a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    com.qennnsad.aknkaksd.domain.usecase.anchor.c cVar = this.f51884b.f51858g;
                    String valueOf = String.valueOf(this.f51885c);
                    this.f51883a = 1;
                    b10 = cVar.b(valueOf, this);
                    if (b10 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                    b10 = ((Result) obj).m79unboximpl();
                }
                UserProfileViewModel userProfileViewModel = this.f51884b;
                if (Result.m77isSuccessimpl(b10)) {
                    List list = (List) b10;
                    MutableLiveData<List<RankItem>> A = userProfileViewModel.A();
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(list, new a());
                    A.setValue(sortedWith.subList(0, Math.min(3, list.size())));
                }
                return Result.m69boximpl(b10);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(int i4, Continuation<? super e> continuation) {
            super(2, continuation);
            this.f51879d = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            e eVar = new e(this.f51879d, continuation);
            eVar.f51877b = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((e) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51876a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f51877b;
                y0[] y0VarArr = {kotlinx.coroutines.j.b(s0Var, null, null, new a(UserProfileViewModel.this, this.f51879d, null), 3, null), kotlinx.coroutines.j.b(s0Var, null, null, new b(UserProfileViewModel.this, this.f51879d, null), 3, null)};
                this.f51876a = 1;
                if (kotlinx.coroutines.f.b(y0VarArr, this) == coroutine_suspended) {
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

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$replyFriendRequest$1", f = "UserProfileViewModel.kt", i = {}, l = {121}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class f extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51886a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f51888c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(boolean z9, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f51888c = z9;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new f(this.f51888c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object y9;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51886a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int parseInt = Integer.parseInt(UserProfileViewModel.this.C());
                boolean z9 = this.f51888c;
                this.f51886a = 1;
                y9 = d4.y(parseInt, z9, this);
                if (y9 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                y9 = ((Result) obj).m79unboximpl();
            }
            UserProfileViewModel userProfileViewModel = UserProfileViewModel.this;
            if (Result.m73exceptionOrNullimpl(y9) != null) {
                userProfileViewModel.o(R.string.msg_unknown_error);
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$sendFriendRequest$1", f = "UserProfileViewModel.kt", i = {}, l = {112}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class g extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51889a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51891c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51892a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserProfileViewModel userProfileViewModel) {
                super(0);
                this.f51892a = userProfileViewModel;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f51892a.o(R.string.msg_invitation_success);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function1<String, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51893a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(UserProfileViewModel userProfileViewModel) {
                super(1);
                this.f51893a = userProfileViewModel;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f51893a.o(R.string.msg_invitation_failre);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(String str, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f51891c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new g(this.f51891c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51889a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int parseInt = Integer.parseInt(UserProfileViewModel.this.C());
                String str = this.f51891c;
                a aVar = new a(UserProfileViewModel.this);
                b bVar = new b(UserProfileViewModel.this);
                this.f51889a = 1;
                if (d4.B(parseInt, str, aVar, bVar, this) == coroutine_suspended) {
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

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel$startChat$1", f = "UserProfileViewModel.kt", i = {}, l = {126}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class h extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51894a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<Integer, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51896a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(UserProfileViewModel userProfileViewModel) {
                super(1);
                this.f51896a = userProfileViewModel;
            }

            public final void a(int i4) {
                this.f51896a.l(new e.a(i4));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                a(num.intValue());
                return Unit.INSTANCE;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: UserProfileViewModel.kt */
        @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class b extends Lambda implements Function1<Throwable, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ UserProfileViewModel f51897a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(UserProfileViewModel userProfileViewModel) {
                super(1);
                this.f51897a = userProfileViewModel;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@m8.g Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f51897a.o(R.string.error_cant_create_chat);
            }
        }

        h(Continuation<? super h> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new h(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51894a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.im.freechat.sdk.a d4 = SDKManager.d();
                int parseInt = Integer.parseInt(UserProfileViewModel.this.C());
                a aVar = new a(UserProfileViewModel.this);
                b bVar = new b(UserProfileViewModel.this);
                this.f51894a = 1;
                if (d4.b(parseInt, aVar, bVar, this) == coroutine_suspended) {
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

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class i extends Lambda implements Function1<String, Unit> {
        i() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            UserProfileViewModel.this.o(R.string.pull_black_remove_success);
            UserInfo value = UserProfileViewModel.this.B().getValue();
            if (value != null) {
                value.setIsHit(0);
            }
            UserProfileViewModel.this.B().postValue(UserProfileViewModel.this.B().getValue());
        }
    }

    /* compiled from: UserProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class j extends Lambda implements Function1<String, Unit> {
        j() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            UserProfileViewModel.this.o(R.string.unfollow_success);
        }
    }

    @u7.a
    public UserProfileViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.j getUserInfoUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.c getAnchorContributorsUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.g followUserUseCase, @m8.g q unfollowUserUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.c blacklistUserUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.other_user.m unblacklistUserUseCase) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(getUserInfoUseCase, "getUserInfoUseCase");
        Intrinsics.checkNotNullParameter(getAnchorContributorsUseCase, "getAnchorContributorsUseCase");
        Intrinsics.checkNotNullParameter(followUserUseCase, "followUserUseCase");
        Intrinsics.checkNotNullParameter(unfollowUserUseCase, "unfollowUserUseCase");
        Intrinsics.checkNotNullParameter(blacklistUserUseCase, "blacklistUserUseCase");
        Intrinsics.checkNotNullParameter(unblacklistUserUseCase, "unblacklistUserUseCase");
        this.f51856e = sourceFactory;
        this.f51857f = getUserInfoUseCase;
        this.f51858g = getAnchorContributorsUseCase;
        this.f51859h = followUserUseCase;
        this.f51860i = unfollowUserUseCase;
        this.f51861j = blacklistUserUseCase;
        this.f51862k = unblacklistUserUseCase;
        LiveData<UserBean> asLiveData$default = FlowLiveDataConversions.asLiveData$default(localDataManager.f67821g, (CoroutineContext) null, 0L, 3, (Object) null);
        this.f51863l = asLiveData$default;
        MutableLiveData<UserInfo> mutableLiveData = new MutableLiveData<>();
        this.f51864m = mutableLiveData;
        this.f51865n = new MutableLiveData<>();
        this.f51866o = o4.m.n(mutableLiveData, asLiveData$default, d.f51875a);
        this.f51867p = new MutableLiveData<>();
    }

    @m8.g
    public final MutableLiveData<List<RankItem>> A() {
        return this.f51865n;
    }

    @m8.g
    public final MutableLiveData<UserInfo> B() {
        return this.f51864m;
    }

    @m8.g
    public final String C() {
        UserInfo value = this.f51864m.getValue();
        String id = value != null ? value.getId() : null;
        if (id == null) {
            l(new e.b(R.string.msg_unknown_error));
            return "0";
        }
        return id;
    }

    public final void D(int i4) {
        j(new c(i4, this, null));
    }

    @m8.g
    public final LiveData<Boolean> E() {
        return this.f51866o;
    }

    public final void F(int i4) {
        k(d(), new e(i4, null));
    }

    public final void G(boolean z9) {
        k(d(), new f(z9, null));
    }

    public final void H(@m8.g String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        k(d(), new g(message, null));
    }

    public final void I() {
        k(d(), new h(null));
    }

    public final void J() {
        h(this.f51862k, d(), C(), new i());
    }

    public final void K() {
        h(this.f51860i, d(), new q.a(C(), null, 2, null), new j());
    }

    public final void v() {
        k(d(), new a(null));
    }

    public final void w() {
        h(this.f51859h, d(), new g.a(C(), null, 2, null), new b());
    }

    @m8.g
    public final LiveData<UserBean> x() {
        return this.f51863l;
    }

    @m8.g
    public final MutableLiveData<FriendStatus> y() {
        return this.f51867p;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m z() {
        return this.f51856e;
    }
}
