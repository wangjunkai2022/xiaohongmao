package com.qennnsad.aknkaksd.presentation.module.main.me;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.analytics.data.events.EventSignature;
import com.qennnsad.aknkaksd.analytics.data.events.Screen;
import com.qennnsad.aknkaksd.data.bean.EditAvatarBean;
import com.qennnsad.aknkaksd.data.bean.fanclub.FanClubInfoBean;
import com.qennnsad.aknkaksd.data.bean.me.HelpUrl;
import com.qennnsad.aknkaksd.data.bean.me.UserMoney;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.user.s1;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
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
import kotlinx.coroutines.y0;

/* compiled from: MeProfileViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010I\u001a\u00020H\u0012\u0006\u0010\u0019\u001a\u00020\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u0010)\u001a\u00020&¢\u0006\u0004\bJ\u0010KJ\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0006\u001a\u00020\u0005J\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\u0018\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0019\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R%\u00101\u001a\u0010\u0012\f\u0012\n ,*\u0004\u0018\u00010+0+0*8\u0006¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u00100R\u001d\u00104\u001a\b\u0012\u0004\u0012\u00020\u00030*8\u0006¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b3\u00100R\u001d\u00107\u001a\b\u0012\u0004\u0012\u00020\t0*8\u0006¢\u0006\f\n\u0004\b5\u0010.\u001a\u0004\b6\u00100R\u001d\u0010;\u001a\b\u0012\u0004\u0012\u0002080*8\u0006¢\u0006\f\n\u0004\b9\u0010.\u001a\u0004\b:\u00100R\u001d\u0010?\u001a\b\u0012\u0004\u0012\u00020<0*8\u0006¢\u0006\f\n\u0004\b=\u0010.\u001a\u0004\b>\u00100R#\u0010G\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020B0A0@8\u0006¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F¨\u0006L"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/me/MeProfileViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/j;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "H", "", "F", "Lkotlinx/coroutines/j2;", "G", "", "path", "I", "Lcom/qennnsad/aknkaksd/analytics/data/events/Screen$Profile$Action;", com.alipay.sdk.packet.d.f6907q, "button", ExifInterface.LONGITUDE_EAST, "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "B", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/user/w;", "syncMeUserUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;", "syncUserMoneyUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;", "syncMyFanClubInfoUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/s;", "j", "Lcom/qennnsad/aknkaksd/domain/usecase/user/s;", "syncHelpUrlUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;", "uploadAvatarUseCase", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "l", "Landroidx/lifecycle/MutableLiveData;", "z", "()Landroidx/lifecycle/MutableLiveData;", "listLoading", "m", "C", "user", "n", y.b.f83920h, "helpUrl", "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "o", "D", "userMoney", "Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "p", y.b.f83919g, "fanClubInfo", "Landroidx/lifecycle/LiveData;", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;", "q", "Landroidx/lifecycle/LiveData;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Landroidx/lifecycle/LiveData;", "menuList", "Lx4/a;", "analytics", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lx4/a;Lcom/qennnsad/aknkaksd/domain/usecase/user/w;Lcom/qennnsad/aknkaksd/domain/usecase/user/e0;Lcom/qennnsad/aknkaksd/domain/usecase/user/a0;Lcom/qennnsad/aknkaksd/domain/usecase/user/s;Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class MeProfileViewModel extends com.qennnsad.aknkaksd.presentation.common.l<j> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51745e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final x4.a f51746f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.w f51747g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.e0 f51748h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.a0 f51749i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.s f51750j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final s1 f51751k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51752l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final MutableLiveData<UserBean> f51753m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<String> f51754n;
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    private final MutableLiveData<UserMoney> f51755o;
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    private final MutableLiveData<FanClubInfoBean> f51756p;
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    private final LiveData<List<i>> f51757q;

    /* compiled from: MeProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", "Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "userMoney", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/me/i;", "a", "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)Ljava/util/List;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function2<UserBean, UserMoney, List<? extends i>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f51758a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final List<i> invoke(@m8.h UserBean userBean, @m8.h UserMoney userMoney) {
            List<i> list;
            int collectionSizeOrDefault;
            ArrayList arrayList = new ArrayList();
            if (userBean != null) {
                if (userBean.is_anchor_rank()) {
                    arrayList.add(com.qennnsad.aknkaksd.presentation.module.main.me.b.f51779f);
                }
                if (userBean.getIswithdraw()) {
                    arrayList.add(new g0(userMoney != null ? Integer.valueOf(userMoney.getBeanbalance()) : null));
                }
                arrayList.add(new f0(userMoney != null ? Integer.valueOf(userMoney.getCoinbalance()) : null));
                if (userBean.isGuest()) {
                    arrayList.add(com.qennnsad.aknkaksd.presentation.module.main.me.d.f51788f);
                }
                if (userBean.is_family()) {
                    arrayList.add(com.qennnsad.aknkaksd.presentation.module.main.me.c.f51781f);
                }
                List<UserBean.MenuBean> menus = userBean.getMenus();
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(menus, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
                for (UserBean.MenuBean menuBean : menus) {
                    arrayList2.add(new c0(menuBean.getTitle(), menuBean.getTarget(), menuBean.getUrl(), menuBean.getHideNavBar(), menuBean.getIcon(), menuBean.getSpa()));
                }
                arrayList.addAll(arrayList2);
                arrayList.add(com.qennnsad.aknkaksd.presentation.module.main.me.a.f51777f);
                arrayList.add(b0.f51780f);
                arrayList.add(d0.f51789f);
                arrayList.add(e.f51790f);
                arrayList.add(e0.f51791f);
                if (userBean.is_lounge_vip()) {
                    arrayList.add(h.f51804f);
                }
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            return list;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$refreshData$1", f = "MeProfileViewModel.kt", i = {}, l = {73}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51759a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f51760b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/j2;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$refreshData$1$1", f = "MeProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class a extends SuspendLambda implements Function2<s0, Continuation<? super j2>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51762a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MeProfileViewModel f51763b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: MeProfileViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V"}, k = 3, mv = {1, 7, 1})
            /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            public static final class C0422a extends Lambda implements Function1<UserBean, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ MeProfileViewModel f51764a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0422a(MeProfileViewModel meProfileViewModel) {
                    super(1);
                    this.f51764a = meProfileViewModel;
                }

                public final void a(@m8.g UserBean it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    this.f51764a.C().postValue(it);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(UserBean userBean) {
                    a(userBean);
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(MeProfileViewModel meProfileViewModel, Continuation<? super a> continuation) {
                super(2, continuation);
                this.f51763b = meProfileViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new a(this.f51763b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super j2> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f51762a == 0) {
                    ResultKt.throwOnFailure(obj);
                    MeProfileViewModel meProfileViewModel = this.f51763b;
                    return meProfileViewModel.h(meProfileViewModel.f51747g, this.f51763b.z(), Unit.INSTANCE, new C0422a(this.f51763b));
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/j2;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$refreshData$1$2", f = "MeProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0423b extends SuspendLambda implements Function2<s0, Continuation<? super j2>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51765a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MeProfileViewModel f51766b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: MeProfileViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/me/UserMoney;)V"}, k = 3, mv = {1, 7, 1})
            /* renamed from: com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$b$b$a */
            /* loaded from: classes3.dex */
            public static final class a extends Lambda implements Function1<UserMoney, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ MeProfileViewModel f51767a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(MeProfileViewModel meProfileViewModel) {
                    super(1);
                    this.f51767a = meProfileViewModel;
                }

                public final void a(@m8.g UserMoney it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    this.f51767a.D().postValue(it);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(UserMoney userMoney) {
                    a(userMoney);
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0423b(MeProfileViewModel meProfileViewModel, Continuation<? super C0423b> continuation) {
                super(2, continuation);
                this.f51766b = meProfileViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0423b(this.f51766b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super j2> continuation) {
                return ((C0423b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f51765a == 0) {
                    ResultKt.throwOnFailure(obj);
                    MeProfileViewModel meProfileViewModel = this.f51766b;
                    return meProfileViewModel.h(meProfileViewModel.f51748h, this.f51766b.z(), Unit.INSTANCE, new a(this.f51766b));
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/j2;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$refreshData$1$3", f = "MeProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes3.dex */
        public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super j2>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f51768a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ MeProfileViewModel f51769b;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* compiled from: MeProfileViewModel.kt */
            @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V"}, k = 3, mv = {1, 7, 1})
            /* loaded from: classes3.dex */
            public static final class a extends Lambda implements Function1<FanClubInfoBean, Unit> {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ MeProfileViewModel f51770a;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(MeProfileViewModel meProfileViewModel) {
                    super(1);
                    this.f51770a = meProfileViewModel;
                }

                public final void a(@m8.g FanClubInfoBean it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    this.f51770a.x().postValue(it);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(FanClubInfoBean fanClubInfoBean) {
                    a(fanClubInfoBean);
                    return Unit.INSTANCE;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(MeProfileViewModel meProfileViewModel, Continuation<? super c> continuation) {
                super(2, continuation);
                this.f51769b = meProfileViewModel;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new c(this.f51769b, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super j2> continuation) {
                return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.f51768a == 0) {
                    ResultKt.throwOnFailure(obj);
                    MeProfileViewModel meProfileViewModel = this.f51769b;
                    return meProfileViewModel.h(meProfileViewModel.f51749i, this.f51769b.z(), Unit.INSTANCE, new a(this.f51769b));
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(continuation);
            bVar.f51760b = obj;
            return bVar;
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
            int i4 = this.f51759a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                s0 s0Var = (s0) this.f51760b;
                y0[] y0VarArr = {kotlinx.coroutines.j.b(s0Var, null, null, new a(MeProfileViewModel.this, null), 3, null), kotlinx.coroutines.j.b(s0Var, null, null, new C0423b(MeProfileViewModel.this, null), 3, null), kotlinx.coroutines.j.b(s0Var, null, null, new c(MeProfileViewModel.this, null), 3, null)};
                this.f51759a = 1;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MeProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$refreshHelpUrl$1", f = "MeProfileViewModel.kt", i = {}, l = {86}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    public static final class c extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51771a;

        c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((c) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object b10;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f51771a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                com.qennnsad.aknkaksd.domain.usecase.user.s sVar = MeProfileViewModel.this.f51750j;
                Unit unit = Unit.INSTANCE;
                this.f51771a = 1;
                b10 = sVar.b(unit, this);
                if (b10 == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
                b10 = ((Result) obj).m79unboximpl();
            }
            MeProfileViewModel meProfileViewModel = MeProfileViewModel.this;
            if (Result.m77isSuccessimpl(b10)) {
                meProfileViewModel.y().postValue(((HelpUrl) b10).getUrl());
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: MeProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel$uploadAvatar$1", f = "MeProfileViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes3.dex */
    static final class d extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f51773a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f51775c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: MeProfileViewModel.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;)V"}, k = 3, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a extends Lambda implements Function1<EditAvatarBean, Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ MeProfileViewModel f51776a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(MeProfileViewModel meProfileViewModel) {
                super(1);
                this.f51776a = meProfileViewModel;
            }

            public final void a(@m8.g EditAvatarBean it) {
                Intrinsics.checkNotNullParameter(it, "it");
                this.f51776a.o(R.string.upload_avatar_complete);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(EditAvatarBean editAvatarBean) {
                a(editAvatarBean);
                return Unit.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f51775c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new d(this.f51775c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((d) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f51773a == 0) {
                ResultKt.throwOnFailure(obj);
                MeProfileViewModel meProfileViewModel = MeProfileViewModel.this;
                meProfileViewModel.h(meProfileViewModel.f51751k, MeProfileViewModel.this.d(), this.f51775c, new a(MeProfileViewModel.this));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @u7.a
    public MeProfileViewModel(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g x4.a analytics, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.w syncMeUserUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.e0 syncUserMoneyUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.a0 syncMyFanClubInfoUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.s syncHelpUrlUseCase, @m8.g s1 uploadAvatarUseCase) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(syncMeUserUseCase, "syncMeUserUseCase");
        Intrinsics.checkNotNullParameter(syncUserMoneyUseCase, "syncUserMoneyUseCase");
        Intrinsics.checkNotNullParameter(syncMyFanClubInfoUseCase, "syncMyFanClubInfoUseCase");
        Intrinsics.checkNotNullParameter(syncHelpUrlUseCase, "syncHelpUrlUseCase");
        Intrinsics.checkNotNullParameter(uploadAvatarUseCase, "uploadAvatarUseCase");
        this.f51745e = sourceFactory;
        this.f51746f = analytics;
        this.f51747g = syncMeUserUseCase;
        this.f51748h = syncUserMoneyUseCase;
        this.f51749i = syncMyFanClubInfoUseCase;
        this.f51750j = syncHelpUrlUseCase;
        this.f51751k = uploadAvatarUseCase;
        this.f51752l = new MutableLiveData<>(Boolean.FALSE);
        MutableLiveData<UserBean> mutableLiveData = new MutableLiveData<>();
        this.f51753m = mutableLiveData;
        this.f51754n = new MutableLiveData<>();
        MutableLiveData<UserMoney> mutableLiveData2 = new MutableLiveData<>();
        this.f51755o = mutableLiveData2;
        this.f51756p = new MutableLiveData<>();
        this.f51757q = o4.m.n(mutableLiveData, mutableLiveData2, a.f51758a);
        F();
        G();
    }

    @m8.g
    public final LiveData<List<i>> A() {
        return this.f51757q;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m B() {
        return this.f51745e;
    }

    @m8.g
    public final MutableLiveData<UserBean> C() {
        return this.f51753m;
    }

    @m8.g
    public final MutableLiveData<UserMoney> D() {
        return this.f51755o;
    }

    public final void E(@m8.g Screen.Profile.Action action, @m8.h String str) {
        Intrinsics.checkNotNullParameter(action, "action");
        x4.a.h(this.f51746f, EventSignature.APP_CLICK, Screen.Profile.id, action, str, false, 16, null);
    }

    public final void F() {
        k(this.f51752l, new b(null));
    }

    @m8.g
    public final j2 G() {
        return j(new c(null));
    }

    @m8.g
    public final UserBean H() {
        UserBean value = this.f51753m.getValue();
        Intrinsics.checkNotNull(value);
        return value;
    }

    @m8.g
    public final j2 I(@m8.g String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return j(new d(path, null));
    }

    @m8.g
    public final MutableLiveData<FanClubInfoBean> x() {
        return this.f51756p;
    }

    @m8.g
    public final MutableLiveData<String> y() {
        return this.f51754n;
    }

    @m8.g
    public final MutableLiveData<Boolean> z() {
        return this.f51752l;
    }
}
