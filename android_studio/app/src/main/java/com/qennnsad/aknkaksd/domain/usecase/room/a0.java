package com.qennnsad.aknkaksd.domain.usecase.room;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Response;

/* compiled from: SendDanmuUseCase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/a0;", "Lcom/qennnsad/aknkaksd/domain/base/h;", "Lcom/qennnsad/aknkaksd/domain/usecase/room/a0$a;", "", "params", "Lio/reactivex/z;", "d", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/base/d;", "c", "Lcom/qennnsad/aknkaksd/domain/base/d;", "mapper", "Lg5/a;", "localDataManager", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a0 extends com.qennnsad.aknkaksd.domain.base.h<a, Object> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f48275a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f48276b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.base.d<Object> f48277c;

    /* compiled from: SendDanmuUseCase.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\u001d\u0010\u0007\u001a\u00020\u00002\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0002HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u000e\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/domain/usecase/room/a0$a;", "", "", "a", "b", "roomId", "content", "c", "toString", "", "hashCode", "other", "", "equals", "Ljava/lang/String;", "f", "()Ljava/lang/String;", "e", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final String f48278a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final String f48279b;

        public a(@m8.g String roomId, @m8.g String content) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Intrinsics.checkNotNullParameter(content, "content");
            this.f48278a = roomId;
            this.f48279b = content;
        }

        public static /* synthetic */ a d(a aVar, String str, String str2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                str = aVar.f48278a;
            }
            if ((i4 & 2) != 0) {
                str2 = aVar.f48279b;
            }
            return aVar.c(str, str2);
        }

        @m8.g
        public final String a() {
            return this.f48278a;
        }

        @m8.g
        public final String b() {
            return this.f48279b;
        }

        @m8.g
        public final a c(@m8.g String roomId, @m8.g String content) {
            Intrinsics.checkNotNullParameter(roomId, "roomId");
            Intrinsics.checkNotNullParameter(content, "content");
            return new a(roomId, content);
        }

        @m8.g
        public final String e() {
            return this.f48279b;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f48278a, aVar.f48278a) && Intrinsics.areEqual(this.f48279b, aVar.f48279b);
            }
            return false;
        }

        @m8.g
        public final String f() {
            return this.f48278a;
        }

        public int hashCode() {
            return (this.f48278a.hashCode() * 31) + this.f48279b.hashCode();
        }

        @m8.g
        public String toString() {
            return "Params(roomId=" + this.f48278a + ", content=" + this.f48279b + ')';
        }
    }

    @u7.a
    public a0(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f48275a = sourceFactory;
        this.f48276b = localDataManager;
        this.f48277c = new com.qennnsad.aknkaksd.domain.base.d<>(Object.class, localDataManager);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.domain.base.h
    @m8.g
    /* renamed from: d */
    public io.reactivex.z<Object> a(@m8.g a params) {
        Intrinsics.checkNotNullParameter(params, "params");
        io.reactivex.z<Response<String>> sendDanmuMsg = com.qennnsad.aknkaksd.data.repository.m.g(this.f48275a, false, 1, null).sendDanmuMsg(params.f(), params.e());
        final com.qennnsad.aknkaksd.domain.base.d<Object> dVar = this.f48277c;
        io.reactivex.z<R> map = sendDanmuMsg.map(new n7.o() { // from class: com.qennnsad.aknkaksd.domain.usecase.room.z
            @Override // n7.o
            public final Object apply(Object obj) {
                Object b10;
                b10 = com.qennnsad.aknkaksd.domain.base.d.b(com.qennnsad.aknkaksd.domain.base.d.this, (Response) obj, null, 2, null);
                return b10;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "sourceFactory.create().s…content).map(mapper::map)");
        return map;
    }
}
