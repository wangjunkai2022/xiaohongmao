package com.qennnsad.aknkaksd.domain.usecase.anchor;

import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.squareup.moshi.z;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: GetFollowAnchorUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001\tB\u0019\b\u0007\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00062\u0006\u0010\u0005\u001a\u00020\u0002H\u0014R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR#\u0010\u0011\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;", "", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "f", "()Lcom/qennnsad/aknkaksd/domain/base/d;", "responseMapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f extends com.qennnsad.aknkaksd.domain.base.h<a, List<? extends HotAnchorSummary>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f47965a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f47966b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<List<HotAnchorSummary>> f47967c;

    /* compiled from: GetFollowAnchorUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001d\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f$a;", "", "", "a", "", "b", com.qennnsad.aknkaksd.data.repository.f.f47744a, "isPkOn", "c", "", "toString", "hashCode", "other", "equals", "I", "e", "()I", "Z", "f", "()Z", "<init>", "(IZ)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final int f47968a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f47969b;

        public a(int i4, boolean z9) {
            this.f47968a = i4;
            this.f47969b = z9;
        }

        public static /* synthetic */ a d(a aVar, int i4, boolean z9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                i4 = aVar.f47968a;
            }
            if ((i10 & 2) != 0) {
                z9 = aVar.f47969b;
            }
            return aVar.c(i4, z9);
        }

        public final int a() {
            return this.f47968a;
        }

        public final boolean b() {
            return this.f47969b;
        }

        @m8.g
        public final a c(int i4, boolean z9) {
            return new a(i4, z9);
        }

        public final int e() {
            return this.f47968a;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return this.f47968a == aVar.f47968a && this.f47969b == aVar.f47969b;
            }
            return false;
        }

        public final boolean f() {
            return this.f47969b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int i4 = this.f47968a * 31;
            boolean z9 = this.f47969b;
            int i10 = z9;
            if (z9 != 0) {
                i10 = 1;
            }
            return i4 + i10;
        }

        @m8.g
        public String toString() {
            return "Params(page=" + this.f47968a + ", isPkOn=" + this.f47969b + ')';
        }
    }

    @u7.a
    public f(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f47965a = sourceFactory;
        this.f47966b = localDataManager;
        ParameterizedType m9 = z.m(List.class, HotAnchorSummary.class);
        Intrinsics.checkNotNullExpressionValue(m9, "newParameterizedType(\n  …ary::class.java\n        )");
        this.f47967c = new com.qennnsad.aknkaksd.domain.base.d<>(m9, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ List e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (List) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<List<HotAnchorSummary>> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> d4 = com.qennnsad.aknkaksd.data.repository.m.g(this.f47965a, false, 1, null).d(params.e(), params.f());
        final com.qennnsad.aknkaksd.domain.base.d<List<HotAnchorSummary>> dVar = this.f47967c;
        io.reactivex.z map = d4.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.anchor.e
            @Override // n7.o
            public final Object apply(Object obj) {
                List e4;
                e4 = f.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().l….map(responseMapper::map)");
        return map;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.base.d<List<HotAnchorSummary>> f() {
        return this.f47967c;
    }
}
