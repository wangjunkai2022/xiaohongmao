package com.qennnsad.aknkaksd.presentation.module.main.followers;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import androidx.paging.PagingSource;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.util.u;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FollowersViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B)\b\u0007\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b/\u00100R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001f\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u00158\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR#\u0010#\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\u001d0\u001c8\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010*\u001a\u0010\u0012\f\u0012\n %*\u0004\u0018\u00010\u00110\u00110$8\u0006¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u00061"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/followers/FollowersViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/c;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", y.b.f83920h, "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;", "getPageListForFollowersUseCase", "", "g", "Ljava/lang/String;", "userId", "", "h", "Z", "isFollowees", "Lkotlinx/coroutines/flow/t;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/flow/t;", "v", "()Lkotlinx/coroutines/flow/t;", "currentUser", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "j", "Lkotlinx/coroutines/flow/i;", "w", "()Lkotlinx/coroutines/flow/i;", "displayList", "Landroidx/lifecycle/MutableLiveData;", "kotlin.jvm.PlatformType", "k", "Landroidx/lifecycle/MutableLiveData;", y.b.f83919g, "()Landroidx/lifecycle/MutableLiveData;", "loadingPaging", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "Lg5/a;", "localDataManager", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FollowersViewModel extends com.qennnsad.aknkaksd.presentation.common.l<c> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f51619e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.anchor.m f51620f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final String f51621g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f51622h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final kotlinx.coroutines.flow.t<UserBean> f51623i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<UserInfo>> f51624j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51625k;

    /* compiled from: FollowersViewModel.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<PagingSource<Integer, UserInfo>> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, UserInfo> invoke() {
            return new i(FollowersViewModel.this.f51620f, FollowersViewModel.this.f51621g, FollowersViewModel.this.f51622h, FollowersViewModel.this.x());
        }
    }

    @u7.a
    public FollowersViewModel(@m8.g SavedStateHandle state, @m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.m getPageListForFollowersUseCase) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(getPageListForFollowersUseCase, "getPageListForFollowersUseCase");
        this.f51619e = sourceFactory;
        this.f51620f = getPageListForFollowersUseCase;
        String str = (String) state.get("user_id");
        if (str != null) {
            this.f51621g = str;
            Boolean bool = (Boolean) state.get(g.f51638a);
            this.f51622h = bool != null ? bool.booleanValue() : false;
            this.f51623i = localDataManager.f67821g;
            this.f51624j = CachedPagingDataKt.cachedIn(u.a(new a(), 50).getFlow(), ViewModelKt.getViewModelScope(this));
            this.f51625k = new MutableLiveData<>(Boolean.FALSE);
            return;
        }
        throw new IllegalStateException("User ID cant be null".toString());
    }

    @m8.g
    public final kotlinx.coroutines.flow.t<UserBean> v() {
        return this.f51623i;
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<PagingData<UserInfo>> w() {
        return this.f51624j;
    }

    @m8.g
    public final MutableLiveData<Boolean> x() {
        return this.f51625k;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m y() {
        return this.f51619e;
    }
}
