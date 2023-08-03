package com.qennnsad.aknkaksd.presentation.module.main.search;

import androidx.lifecycle.MutableLiveData;
import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import com.googlecode.mp4parser.boxes.apple.x0;
import com.qennnsad.aknkaksd.data.bean.AnchorSummary;
import com.qennnsad.aknkaksd.domain.usecase.anchor.p;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SearchUserPagingSource.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B%\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/search/j;", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/AnchorSummary;", "Landroidx/paging/PagingState;", t.b.f83859d, "a", "(Landroidx/paging/PagingState;)Ljava/lang/Integer;", "Landroidx/paging/PagingSource$LoadParams;", "params", "Landroidx/paging/PagingSource$LoadResult;", x0.f36550r, "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;", "getPageListForSearchUseCase", "", "b", "Ljava/lang/String;", s2.d.f93273b, "Landroidx/lifecycle/MutableLiveData;", "", "c", "Landroidx/lifecycle/MutableLiveData;", "loading", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/p;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends PagingSource<Integer, AnchorSummary> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final p f52027a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f52028b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final MutableLiveData<Boolean> f52029c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SearchUserPagingSource.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserPagingSource", f = "SearchUserPagingSource.kt", i = {0, 0}, l = {26}, m = x0.f36550r, n = {"this", "pageNumber"}, s = {"L$0", "I$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f52030a;

        /* renamed from: b  reason: collision with root package name */
        int f52031b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f52032c;

        /* renamed from: e  reason: collision with root package name */
        int f52034e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f52032c = obj;
            this.f52034e |= Integer.MIN_VALUE;
            return j.this.load(null, this);
        }
    }

    public j(@m8.g p getPageListForSearchUseCase, @m8.g String query, @m8.g MutableLiveData<Boolean> loading) {
        Intrinsics.checkNotNullParameter(getPageListForSearchUseCase, "getPageListForSearchUseCase");
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(loading, "loading");
        this.f52027a = getPageListForSearchUseCase;
        this.f52028b = query;
        this.f52029c = loading;
    }

    @Override // androidx.paging.PagingSource
    @m8.h
    /* renamed from: a */
    public Integer getRefreshKey(@m8.g PagingState<Integer, AnchorSummary> state) {
        Integer nextKey;
        int intValue;
        Integer prevKey;
        Intrinsics.checkNotNullParameter(state, "state");
        Integer anchorPosition = state.getAnchorPosition();
        if (anchorPosition != null) {
            PagingSource.LoadResult.Page<Integer, AnchorSummary> closestPageToPosition = state.closestPageToPosition(anchorPosition.intValue());
            if (closestPageToPosition != null && (prevKey = closestPageToPosition.getPrevKey()) != null) {
                intValue = prevKey.intValue() + 1;
            } else if (closestPageToPosition == null || (nextKey = closestPageToPosition.getNextKey()) == null) {
                return null;
            } else {
                intValue = nextKey.intValue() - 1;
            }
            return Integer.valueOf(intValue);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
    @Override // androidx.paging.PagingSource
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object load(@m8.g androidx.paging.PagingSource.LoadParams<java.lang.Integer> r7, @m8.g kotlin.coroutines.Continuation<? super androidx.paging.PagingSource.LoadResult<java.lang.Integer, com.qennnsad.aknkaksd.data.bean.AnchorSummary>> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.qennnsad.aknkaksd.presentation.module.main.search.j.a
            if (r0 == 0) goto L13
            r0 = r8
            com.qennnsad.aknkaksd.presentation.module.main.search.j$a r0 = (com.qennnsad.aknkaksd.presentation.module.main.search.j.a) r0
            int r1 = r0.f52034e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f52034e = r1
            goto L18
        L13:
            com.qennnsad.aknkaksd.presentation.module.main.search.j$a r0 = new com.qennnsad.aknkaksd.presentation.module.main.search.j$a
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f52032c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f52034e
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            int r7 = r0.f52031b
            java.lang.Object r0 = r0.f52030a
            com.qennnsad.aknkaksd.presentation.module.main.search.j r0 = (com.qennnsad.aknkaksd.presentation.module.main.search.j) r0
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r8 = r8.m79unboximpl()
            goto L6e
        L35:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            androidx.lifecycle.MutableLiveData<java.lang.Boolean> r8 = r6.f52029c
            java.lang.Boolean r2 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            r8.postValue(r2)
            java.lang.Object r7 = r7.getKey()
            java.lang.Integer r7 = (java.lang.Integer) r7
            if (r7 == 0) goto L56
            int r7 = r7.intValue()
            goto L57
        L56:
            r7 = 1
        L57:
            com.qennnsad.aknkaksd.domain.usecase.anchor.p r8 = r6.f52027a
            com.qennnsad.aknkaksd.domain.usecase.anchor.p$a r2 = new com.qennnsad.aknkaksd.domain.usecase.anchor.p$a
            java.lang.String r4 = r6.f52028b
            r2.<init>(r4, r7)
            r0.f52030a = r6
            r0.f52031b = r7
            r0.f52034e = r3
            java.lang.Object r8 = r8.b(r2, r0)
            if (r8 != r1) goto L6d
            return r1
        L6d:
            r0 = r6
        L6e:
            boolean r1 = kotlin.Result.m77isSuccessimpl(r8)
            r2 = 0
            if (r1 == 0) goto Lac
            com.qennnsad.aknkaksd.data.bean.PageBean r8 = (com.qennnsad.aknkaksd.data.bean.PageBean) r8
            androidx.lifecycle.MutableLiveData<java.lang.Boolean> r0 = r0.f52029c
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            r0.postValue(r1)
            androidx.paging.PagingSource$LoadResult$Page r0 = new androidx.paging.PagingSource$LoadResult$Page
            java.util.List r1 = r8.getList()
            java.lang.String r2 = "it.list"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r2 = 0
            if (r7 != r3) goto L90
            r7 = r2
            goto L95
        L90:
            int r7 = r7 - r3
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
        L95:
            int r4 = r8.getPage()
            int r5 = r8.getPage_cnt()
            if (r4 >= r5) goto La8
            int r8 = r8.getPage()
            int r8 = r8 + r3
            java.lang.Integer r2 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)
        La8:
            r0.<init>(r1, r7, r2)
            return r0
        Lac:
            java.lang.Throwable r7 = kotlin.Result.m73exceptionOrNullimpl(r8)
            if (r7 == 0) goto Lc1
            androidx.lifecycle.MutableLiveData<java.lang.Boolean> r8 = r0.f52029c
            java.lang.Boolean r0 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            r8.postValue(r0)
            androidx.paging.PagingSource$LoadResult$Error r8 = new androidx.paging.PagingSource$LoadResult$Error
            r8.<init>(r7)
            return r8
        Lc1:
            androidx.lifecycle.MutableLiveData<java.lang.Boolean> r7 = r0.f52029c
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            r7.postValue(r8)
            androidx.paging.PagingSource$LoadResult$Error r7 = new androidx.paging.PagingSource$LoadResult$Error
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            r8.<init>()
            r7.<init>(r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.search.j.load(androidx.paging.PagingSource$LoadParams, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
