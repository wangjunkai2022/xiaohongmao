package com.qennnsad.aknkaksd.presentation.module.main.followers;

import androidx.lifecycle.MutableLiveData;
import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import com.googlecode.mp4parser.boxes.apple.x0;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FollowersPagingSource.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u0018¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "Landroidx/paging/PagingState;", t.b.f83859d, "a", "(Landroidx/paging/PagingState;)Ljava/lang/Integer;", "Landroidx/paging/PagingSource$LoadParams;", "params", "Landroidx/paging/PagingSource$LoadResult;", x0.f36550r, "(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;", "getPageListForFollowersUseCase", "", "b", "Ljava/lang/String;", "userId", "", "c", "Z", "isFollowees", "Landroidx/lifecycle/MutableLiveData;", "d", "Landroidx/lifecycle/MutableLiveData;", "loading", "<init>", "(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/m;Ljava/lang/String;ZLandroidx/lifecycle/MutableLiveData;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends PagingSource<Integer, UserInfo> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.anchor.m f51639a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f51640b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f51641c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51642d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FollowersPagingSource.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersPagingSource", f = "FollowersPagingSource.kt", i = {0, 0}, l = {26}, m = x0.f36550r, n = {"this", "pageNumber"}, s = {"L$0", "I$0"})
    /* loaded from: classes3.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f51643a;

        /* renamed from: b  reason: collision with root package name */
        int f51644b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f51645c;

        /* renamed from: e  reason: collision with root package name */
        int f51647e;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f51645c = obj;
            this.f51647e |= Integer.MIN_VALUE;
            return i.this.load(null, this);
        }
    }

    public i(@m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.m getPageListForFollowersUseCase, @m8.g String userId, boolean z9, @m8.g MutableLiveData<Boolean> loading) {
        Intrinsics.checkNotNullParameter(getPageListForFollowersUseCase, "getPageListForFollowersUseCase");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(loading, "loading");
        this.f51639a = getPageListForFollowersUseCase;
        this.f51640b = userId;
        this.f51641c = z9;
        this.f51642d = loading;
    }

    @Override // androidx.paging.PagingSource
    @m8.h
    /* renamed from: a */
    public Integer getRefreshKey(@m8.g PagingState<Integer, UserInfo> state) {
        Integer nextKey;
        int intValue;
        Integer prevKey;
        Intrinsics.checkNotNullParameter(state, "state");
        Integer anchorPosition = state.getAnchorPosition();
        if (anchorPosition != null) {
            PagingSource.LoadResult.Page<Integer, UserInfo> closestPageToPosition = state.closestPageToPosition(anchorPosition.intValue());
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
    /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0094 A[SYNTHETIC] */
    @Override // androidx.paging.PagingSource
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object load(@m8.g androidx.paging.PagingSource.LoadParams<java.lang.Integer> r8, @m8.g kotlin.coroutines.Continuation<? super androidx.paging.PagingSource.LoadResult<java.lang.Integer, com.qennnsad.aknkaksd.data.bean.me.UserInfo>> r9) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.followers.i.load(androidx.paging.PagingSource$LoadParams, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
