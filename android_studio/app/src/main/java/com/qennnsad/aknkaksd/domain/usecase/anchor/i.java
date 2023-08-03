package com.qennnsad.aknkaksd.domain.usecase.anchor;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.AnchorPageBean;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.presentation.module.main.index.AnchorType;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetPageListForAnchorUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\tB\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR#\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;", "Lcom/qennnsad/aknkaksd/data/bean/AnchorPageBean;", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends com.qennnsad.aknkaksd.domain.base.h<a, AnchorPageBean<HotAnchorSummary>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f47973a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f47974b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<AnchorPageBean<HotAnchorSummary>> f47975c;

    /* compiled from: GetPageListForAnchorUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0004HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J1\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0012\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\n\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u000b\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0016\u001a\u0004\b\u0019\u0010\u0018R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i$a;", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "a", "", "b", "c", "", "d", "anchorType", com.qennnsad.aknkaksd.data.repository.f.f47744a, com.qennnsad.aknkaksd.data.repository.f.f47745b, "isPkOn", "e", "", "toString", "hashCode", "other", "equals", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "g", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "I", "h", "()I", ContextChain.TAG_INFRA, "Z", "j", "()Z", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;IIZ)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final AnchorType f47976a;

        /* renamed from: b  reason: collision with root package name */
        private final int f47977b;

        /* renamed from: c  reason: collision with root package name */
        private final int f47978c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f47979d;

        public a(@m8.g AnchorType anchorType, int i4, int i10, boolean z9) {
            Intrinsics.checkNotNullParameter(anchorType, "anchorType");
            this.f47976a = anchorType;
            this.f47977b = i4;
            this.f47978c = i10;
            this.f47979d = z9;
        }

        public static /* synthetic */ a f(a aVar, AnchorType anchorType, int i4, int i10, boolean z9, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                anchorType = aVar.f47976a;
            }
            if ((i11 & 2) != 0) {
                i4 = aVar.f47977b;
            }
            if ((i11 & 4) != 0) {
                i10 = aVar.f47978c;
            }
            if ((i11 & 8) != 0) {
                z9 = aVar.f47979d;
            }
            return aVar.e(anchorType, i4, i10, z9);
        }

        @m8.g
        public final AnchorType a() {
            return this.f47976a;
        }

        public final int b() {
            return this.f47977b;
        }

        public final int c() {
            return this.f47978c;
        }

        public final boolean d() {
            return this.f47979d;
        }

        @m8.g
        public final a e(@m8.g AnchorType anchorType, int i4, int i10, boolean z9) {
            Intrinsics.checkNotNullParameter(anchorType, "anchorType");
            return new a(anchorType, i4, i10, z9);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f47976a == aVar.f47976a && this.f47977b == aVar.f47977b && this.f47978c == aVar.f47978c && this.f47979d == aVar.f47979d;
            }
            return false;
        }

        @m8.g
        public final AnchorType g() {
            return this.f47976a;
        }

        public final int h() {
            return this.f47977b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((this.f47976a.hashCode() * 31) + this.f47977b) * 31) + this.f47978c) * 31;
            boolean z9 = this.f47979d;
            int i4 = z9;
            if (z9 != 0) {
                i4 = 1;
            }
            return hashCode + i4;
        }

        public final int i() {
            return this.f47978c;
        }

        public final boolean j() {
            return this.f47979d;
        }

        @m8.g
        public String toString() {
            return "Params(anchorType=" + this.f47976a + ", page=" + this.f47977b + ", size=" + this.f47978c + ", isPkOn=" + this.f47979d + ')';
        }
    }

    /* compiled from: GetPageListForAnchorUseCase.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnchorType.values().length];
            iArr[AnchorType.FOLLOW.ordinal()] = 1;
            iArr[AnchorType.HOT.ordinal()] = 2;
            iArr[AnchorType.NEARBY.ordinal()] = 3;
            iArr[AnchorType.VIP.ordinal()] = 4;
            iArr[AnchorType.VEGAN.ordinal()] = 5;
            iArr[AnchorType.CASINO.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @u7.a
    public i(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47973a = sourceFactory;
        this.f47974b = localDataManager;
        ParameterizedType m9 = z.m(AnchorPageBean.class, HotAnchorSummary.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(\n  …ary::class.java\n        )");
        this.f47975c = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AnchorPageBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (AnchorPageBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<AnchorPageBean<HotAnchorSummary>> a(@m8.g a params) {
        io.reactivex.z<Response<String>> O;
        Intrinsics.checkNotNullParameter(params, "params");
        com.qennnsad.aknkaksd.data.repository.b g4 = com.qennnsad.aknkaksd.data.repository.m.g(this.f47973a, false, 1, null);
        switch (b.$EnumSwitchMapping$0[params.g().ordinal()]) {
            case 1:
                throw new IllegalStateException("Invalid anchor type for api".toString());
            case 2:
                O = g4.O(params.h(), params.i(), j.f47980a, params.j());
                break;
            case 3:
                O = g4.C(params.h(), params.i(), j.f47980a, params.j());
                break;
            case 4:
                O = g4.a0(params.h(), params.i(), j.f47980a, params.j());
                break;
            case 5:
                O = g4.T(params.h(), params.i(), j.f47980a, params.j());
                break;
            case 6:
                throw new IllegalStateException("Invalid anchor type for api".toString());
            default:
                throw new NoWhenBranchMatchedException();
        }
        final com.qennnsad.aknkaksd.domain.base.d<AnchorPageBean<HotAnchorSummary>> dVar = this.f47975c;
        io.reactivex.z map = O.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.anchor.h
            @Override // n7.o
            public final Object apply(Object obj) {
                AnchorPageBean e4;
                e4 = i.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "with(sourceFactory.creat…nseMapper::map)\n        }");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<AnchorPageBean<HotAnchorSummary>> f() {
        return this.f47975c;
    }
}
