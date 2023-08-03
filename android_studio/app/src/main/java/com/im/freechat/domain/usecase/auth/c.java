package com.im.freechat.domain.usecase.auth;

import com.im.freechat.domain.p;
import com.im.freechat.shared.entities.banner.Banner;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GetBannerListInteractor.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001B\u0017\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/domain/usecase/auth/c;", "Lcom/im/freechat/domain/usecase/base/a;", "", "", "Lcom/im/freechat/shared/entities/banner/Banner;", "params", "c", "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/domain/k;", "a", "Lcom/im/freechat/domain/k;", "loginRepository", "Lcom/im/freechat/domain/p;", "b", "Lcom/im/freechat/domain/p;", "remoteRepository", "<init>", "(Lcom/im/freechat/domain/k;Lcom/im/freechat/domain/p;)V", com.ksyun.media.player.d.d.A}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends com.im.freechat.domain.usecase.base.a<Unit, List<? extends Banner>> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.im.freechat.domain.k f41384a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final p f41385b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GetBannerListInteractor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.im.freechat.domain.usecase.auth.GetBannerListInteractor", f = "GetBannerListInteractor.kt", i = {0, 1, 1, 1}, l = {14, 19}, m = "run", n = {"this", "this", "token", "list"}, s = {"L$0", "L$0", "L$1", "L$2"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f41386a;

        /* renamed from: b  reason: collision with root package name */
        Object f41387b;

        /* renamed from: c  reason: collision with root package name */
        Object f41388c;

        /* renamed from: d  reason: collision with root package name */
        /* synthetic */ Object f41389d;

        /* renamed from: f  reason: collision with root package name */
        int f41391f;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f41389d = obj;
            this.f41391f |= Integer.MIN_VALUE;
            return c.this.b(null, this);
        }
    }

    public c(@m8.g com.im.freechat.domain.k loginRepository, @m8.g p remoteRepository) {
        Intrinsics.checkNotNullParameter(loginRepository, "loginRepository");
        Intrinsics.checkNotNullParameter(remoteRepository, "remoteRepository");
        this.f41384a = loginRepository;
        this.f41385b = remoteRepository;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:25:0x007c). Please submit an issue!!! */
    @Override // com.im.freechat.domain.usecase.base.a
    @m8.h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(@m8.g kotlin.Unit r11, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.shared.entities.banner.Banner>> r12) {
        /*
            r10 = this;
            boolean r11 = r12 instanceof com.im.freechat.domain.usecase.auth.c.a
            if (r11 == 0) goto L13
            r11 = r12
            com.im.freechat.domain.usecase.auth.c$a r11 = (com.im.freechat.domain.usecase.auth.c.a) r11
            int r0 = r11.f41391f
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r11.f41391f = r0
            goto L18
        L13:
            com.im.freechat.domain.usecase.auth.c$a r11 = new com.im.freechat.domain.usecase.auth.c$a
            r11.<init>(r12)
        L18:
            java.lang.Object r12 = r11.f41389d
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.f41391f
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L49
            if (r1 == r4) goto L41
            if (r1 != r3) goto L39
            java.lang.Object r1 = r11.f41388c
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r5 = r11.f41387b
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r6 = r11.f41386a
            com.im.freechat.domain.usecase.auth.c r6 = (com.im.freechat.domain.usecase.auth.c) r6
            kotlin.ResultKt.throwOnFailure(r12)
            goto L7c
        L39:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L41:
            java.lang.Object r1 = r11.f41386a
            com.im.freechat.domain.usecase.auth.c r1 = (com.im.freechat.domain.usecase.auth.c) r1
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5a
        L49:
            kotlin.ResultKt.throwOnFailure(r12)
            com.im.freechat.domain.k r12 = r10.f41384a
            r11.f41386a = r10
            r11.f41391f = r4
            java.lang.Object r12 = r12.v(r11)
            if (r12 != r0) goto L59
            return r0
        L59:
            r1 = r10
        L5a:
            com.im.freechat.shared.entities.auth.UserInfo r12 = (com.im.freechat.shared.entities.auth.UserInfo) r12
            java.lang.String r12 = r12.getToken()
            java.util.List r5 = kotlin.collections.CollectionsKt.emptyList()
            r6 = r1
            r1 = r5
            r7 = 0
            r5 = r12
            r12 = 1
        L69:
            if (r12 == 0) goto La8
            com.im.freechat.domain.p r12 = r6.f41385b
            r11.f41386a = r6
            r11.f41387b = r5
            r11.f41388c = r1
            r11.f41391f = r3
            java.lang.Object r12 = r12.getBannerList(r5, r7, r11)
            if (r12 != r0) goto L7c
            return r0
        L7c:
            com.im.freechat.shared.entities.PagedList r12 = (com.im.freechat.shared.entities.PagedList) r12
            java.util.List r7 = r12.getList()
            java.util.List r1 = kotlin.collections.CollectionsKt.plus(r1, r7)
            com.im.freechat.shared.entities.PageInfo r7 = r12.getPageInfo()
            int r7 = r7.getPage()
            com.im.freechat.shared.entities.PageInfo r8 = r12.getPageInfo()
            int r8 = r8.getTotalPage()
            if (r7 >= r8) goto L9a
            r7 = 1
            goto L9b
        L9a:
            r7 = 0
        L9b:
            com.im.freechat.shared.entities.PageInfo r12 = r12.getPageInfo()
            int r12 = r12.getPage()
            int r12 = r12 + r4
            r9 = r7
            r7 = r12
            r12 = r9
            goto L69
        La8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.domain.usecase.auth.c.b(kotlin.Unit, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
