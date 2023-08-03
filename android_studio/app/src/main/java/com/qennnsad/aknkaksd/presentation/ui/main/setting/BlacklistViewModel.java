package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import androidx.lifecycle.MutableLiveData;
import com.qennnsad.aknkaksd.data.bean.room.BlacklistedUserBean;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: BlacklistViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B!\b\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R#\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;", "", "userId", "", "u", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "t", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/user/d;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/user/d;", "getBlacklistedUsersUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/n;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/user/n;", "removeUserFromBlacklistUseCase", "Landroidx/lifecycle/MutableLiveData;", "", "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;", "h", "Landroidx/lifecycle/MutableLiveData;", "s", "()Landroidx/lifecycle/MutableLiveData;", "list", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/user/d;Lcom/qennnsad/aknkaksd/domain/usecase/user/n;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class BlacklistViewModel extends com.qennnsad.aknkaksd.presentation.common.l<c> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f53151e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.d f53152f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.user.n f53153g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<List<BlacklistedUserBean>> f53154h;

    /* compiled from: BlacklistViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;", "it", "", "a", "(Ljava/util/List;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<List<? extends BlacklistedUserBean>, Unit> {
        a() {
            super(1);
        }

        public final void a(@m8.g List<BlacklistedUserBean> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            BlacklistViewModel.this.s().postValue(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(List<? extends BlacklistedUserBean> list) {
            a(list);
            return Unit.INSTANCE;
        }
    }

    /* compiled from: BlacklistViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function1<String, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f53157b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str) {
            super(1);
            this.f53157b = str;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            MutableLiveData<List<BlacklistedUserBean>> s9 = BlacklistViewModel.this.s();
            List<BlacklistedUserBean> value = BlacklistViewModel.this.s().getValue();
            List<BlacklistedUserBean> list = null;
            if (value != null) {
                List<BlacklistedUserBean> value2 = BlacklistViewModel.this.s().getValue();
                if (value2 == null) {
                    return;
                }
                String str = this.f53157b;
                Iterator<T> it2 = value2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (Intrinsics.areEqual(((BlacklistedUserBean) next).getId(), str)) {
                        list = next;
                        break;
                    }
                }
                BlacklistedUserBean blacklistedUserBean = (BlacklistedUserBean) list;
                if (blacklistedUserBean == null) {
                    return;
                }
                list = CollectionsKt___CollectionsKt.minus(value, blacklistedUserBean);
            }
            s9.postValue(list);
        }
    }

    @u7.a
    public BlacklistViewModel(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.d getBlacklistedUsersUseCase, @m8.g com.qennnsad.aknkaksd.domain.usecase.user.n removeUserFromBlacklistUseCase) {
        List emptyList;
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(getBlacklistedUsersUseCase, "getBlacklistedUsersUseCase");
        Intrinsics.checkNotNullParameter(removeUserFromBlacklistUseCase, "removeUserFromBlacklistUseCase");
        this.f53151e = sourceFactory;
        this.f53152f = getBlacklistedUsersUseCase;
        this.f53153g = removeUserFromBlacklistUseCase;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f53154h = new MutableLiveData<>(emptyList);
        h(getBlacklistedUsersUseCase, d(), Unit.INSTANCE, new a());
    }

    @m8.g
    public final MutableLiveData<List<BlacklistedUserBean>> s() {
        return this.f53154h;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m t() {
        return this.f53151e;
    }

    public final void u(@m8.g String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        h(this.f53153g, d(), userId, new b(userId));
    }
}
