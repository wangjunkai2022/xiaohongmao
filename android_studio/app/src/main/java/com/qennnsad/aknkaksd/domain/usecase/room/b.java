package com.qennnsad.aknkaksd.domain.usecase.room;

import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.room.PrivateCheckBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: CheckPrivatePassUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/b;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/room/b$a;", "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends com.qennnsad.aknkaksd.domain.base.h<a, PrivateCheckBean> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48280a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48281b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<PrivateCheckBean> f48282c;

    /* compiled from: CheckPrivatePassUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0002HÆ\u0003J1\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u0002HÆ\u0001J\t\u0010\r\u001a\u00020\u0002HÖ\u0001J\t\u0010\u000e\u001a\u00020\u0004HÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0012\u001a\u0004\b\u0019\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/b$a;", "", "", "a", "", "b", "c", "d", "passType", "limitBeanId", "prerequisite", "anchorId", "e", "toString", "hashCode", "other", "", "equals", "Ljava/lang/String;", ContextChain.TAG_INFRA, "()Ljava/lang/String;", "I", "h", "()I", "j", "g", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48283a;

        /* renamed from: b  reason: collision with root package name */
        private final int f48284b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final String f48285c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final String f48286d;

        public a(@m8.g String passType, int i4, @m8.g String prerequisite, @m8.g String anchorId) {
            Intrinsics.checkNotNullParameter(passType, "passType");
            Intrinsics.checkNotNullParameter(prerequisite, "prerequisite");
            Intrinsics.checkNotNullParameter(anchorId, "anchorId");
            this.f48283a = passType;
            this.f48284b = i4;
            this.f48285c = prerequisite;
            this.f48286d = anchorId;
        }

        public static /* synthetic */ a f(a aVar, String str, int i4, String str2, String str3, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = aVar.f48283a;
            }
            if ((i10 & 2) != 0) {
                i4 = aVar.f48284b;
            }
            if ((i10 & 4) != 0) {
                str2 = aVar.f48285c;
            }
            if ((i10 & 8) != 0) {
                str3 = aVar.f48286d;
            }
            return aVar.e(str, i4, str2, str3);
        }

        @m8.g
        public final String a() {
            return this.f48283a;
        }

        public final int b() {
            return this.f48284b;
        }

        @m8.g
        public final String c() {
            return this.f48285c;
        }

        @m8.g
        public final String d() {
            return this.f48286d;
        }

        @m8.g
        public final a e(@m8.g String passType, int i4, @m8.g String prerequisite, @m8.g String anchorId) {
            Intrinsics.checkNotNullParameter(passType, "passType");
            Intrinsics.checkNotNullParameter(prerequisite, "prerequisite");
            Intrinsics.checkNotNullParameter(anchorId, "anchorId");
            return new a(passType, i4, prerequisite, anchorId);
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f48283a, aVar.f48283a) && this.f48284b == aVar.f48284b && Intrinsics.areEqual(this.f48285c, aVar.f48285c) && Intrinsics.areEqual(this.f48286d, aVar.f48286d);
            }
            return false;
        }

        @m8.g
        public final String g() {
            return this.f48286d;
        }

        public final int h() {
            return this.f48284b;
        }

        public int hashCode() {
            return (((((this.f48283a.hashCode() * 31) + this.f48284b) * 31) + this.f48285c.hashCode()) * 31) + this.f48286d.hashCode();
        }

        @m8.g
        public final String i() {
            return this.f48283a;
        }

        @m8.g
        public final String j() {
            return this.f48285c;
        }

        @m8.g
        public String toString() {
            return "Params(passType=" + this.f48283a + ", limitBeanId=" + this.f48284b + ", prerequisite=" + this.f48285c + ", anchorId=" + this.f48286d + ')';
        }
    }

    @u7.a
    public b(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48280a = sourceFactory;
        this.f48281b = localDataManager;
        this.f48282c = new com.qennnsad.aknkaksd.domain.base.d<>(PrivateCheckBean.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ PrivateCheckBean e(com.qennnsad.aknkaksd.domain.base.d dVar, Response response) {
        return (PrivateCheckBean) com.qennnsad.aknkaksd.domain.base.d.b(dVar, response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<PrivateCheckBean> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        UserBean C = this.f48281b.C();
        Intrinsics.checkNotNull(C);
        io.reactivex.z<Response<String>> s9 = com.qennnsad.aknkaksd.data.repository.m.g(this.f48280a, false, 1, null).s(params.i(), params.h(), params.j(), C.getId(), params.g());
        final com.qennnsad.aknkaksd.domain.base.d<PrivateCheckBean> dVar = this.f48282c;
        io.reactivex.z map = s9.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.a
            @Override // n7.o
            public final Object apply(Object obj) {
                PrivateCheckBean e4;
                e4 = b.e(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj);
                return e4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().c…nchorId).map(mapper::map)");
        return map;
    }
}
