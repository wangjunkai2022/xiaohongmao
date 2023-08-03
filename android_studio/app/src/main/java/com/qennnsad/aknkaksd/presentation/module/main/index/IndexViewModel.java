package com.qennnsad.aknkaksd.presentation.module.main.index;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Transformations;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.HallBean;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: IndexViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B\u0011\b\u0007\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR%\u0010\u0012\u001a\u0010\u0012\f\u0012\n \r*\u0004\u0018\u00010\f0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00130\u000b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0011R%\u0010\u0019\u001a\u0010\u0012\f\u0012\n \r*\u0004\u0018\u00010\f0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u000f\u001a\u0004\b\u0018\u0010\u0011R#\u0010!\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0\u001b0\u001a8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 ¨\u0006'"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$Event;", "", "e", "I", "v", "()I", y.b.f83919g, "(I)V", "lastPos", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "f", "Landroidx/lifecycle/MutableLiveData;", "w", "()Landroidx/lifecycle/MutableLiveData;", "isPkOn", "Lcom/qennnsad/aknkaksd/data/bean/HallBean;", "g", "u", "hall", "h", "t", "gameCenterVisibility", "Landroidx/lifecycle/LiveData;", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;", ContextChain.TAG_INFRA, "Landroidx/lifecycle/LiveData;", "s", "()Landroidx/lifecycle/LiveData;", "anchorTypeList", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class IndexViewModel extends com.qennnsad.aknkaksd.presentation.common.l<Event> {

    /* renamed from: e  reason: collision with root package name */
    private int f51672e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51673f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<HallBean> f51674g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51675h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final LiveData<List<com.qennnsad.aknkaksd.presentation.module.main.index.a>> f51676i;

    /* compiled from: IndexViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/index/IndexViewModel$Event;", "", "(Ljava/lang/String;I)V", "NAVIGATE_HOT", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
        NAVIGATE_HOT
    }

    /* compiled from: IndexViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\b\u0010\u0001\u001a\u0004\u0018\u00010\u00002\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/HallBean;", "hall", "", "gameCenter", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/a;", "a", "(Lcom/qennnsad/aknkaksd/data/bean/HallBean;Ljava/lang/Boolean;)Ljava/util/List;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function2<HallBean, Boolean, List<com.qennnsad.aknkaksd.presentation.module.main.index.a>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f51678a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: a */
        public final List<com.qennnsad.aknkaksd.presentation.module.main.index.a> invoke(@m8.h HallBean hallBean, @m8.h Boolean bool) {
            List<com.qennnsad.aknkaksd.presentation.module.main.index.a> mutableListOf;
            boolean z9 = false;
            t tVar = t.f51702c;
            d dVar = d.f51683c;
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(e.f51684c, tVar, g.f51690c, u.f51703c, s.f51701c, dVar);
            if (hallBean != null && hallBean.isShowVegan()) {
                z9 = true;
            }
            if (!z9) {
                mutableListOf.remove(tVar);
            }
            if (!Intrinsics.areEqual(bool, Boolean.TRUE)) {
                mutableListOf.remove(dVar);
            }
            return mutableListOf;
        }
    }

    @u7.a
    public IndexViewModel(@m8.g g5.a localDataManager) {
        HallBean hall;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f51672e = 1;
        Boolean bool = Boolean.FALSE;
        this.f51673f = new MutableLiveData<>(bool);
        MutableLiveData<HallBean> mutableLiveData = new MutableLiveData<>();
        this.f51674g = mutableLiveData;
        MutableLiveData<Boolean> mutableLiveData2 = new MutableLiveData<>(bool);
        this.f51675h = mutableLiveData2;
        LiveData<List<com.qennnsad.aknkaksd.presentation.module.main.index.a>> distinctUntilChanged = Transformations.distinctUntilChanged(o4.m.n(mutableLiveData, mutableLiveData2, a.f51678a));
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "distinctUntilChanged(this)");
        this.f51676i = distinctUntilChanged;
        ConfigBean e4 = localDataManager.e();
        if (e4 == null || (hall = e4.getHall()) == null) {
            return;
        }
        mutableLiveData.setValue(hall);
    }

    @m8.g
    public final LiveData<List<com.qennnsad.aknkaksd.presentation.module.main.index.a>> s() {
        return this.f51676i;
    }

    @m8.g
    public final MutableLiveData<Boolean> t() {
        return this.f51675h;
    }

    @m8.g
    public final MutableLiveData<HallBean> u() {
        return this.f51674g;
    }

    public final int v() {
        return this.f51672e;
    }

    @m8.g
    public final MutableLiveData<Boolean> w() {
        return this.f51673f;
    }

    public final void x(int i4) {
        this.f51672e = i4;
    }
}
