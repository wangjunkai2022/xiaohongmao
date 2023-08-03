package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.util.o0;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: UserInfoDialogPresenter.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\r¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002R\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0018\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u001c\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0015\u001a\u0004\b\u001a\u0010\u001b¨\u0006 "}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p;", "", "", "userId", "", "f", "uid", "roomId", "c", "h", "toUid", "g", "Ljava/lang/ref/WeakReference;", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;", "a", "Ljava/lang/ref/WeakReference;", "uiInterface", "b", "Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;", "ui", "Lf5/e;", "Lkotlin/Lazy;", "d", "()Lf5/e;", "diHelper", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "uidInterface", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/n;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<n> f54489a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final n f54490b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f54491c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f54492d;

    /* compiled from: UserInfoDialogPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lf5/e;", "a", "()Lf5/e;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<f5.e> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ n f54493a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(n nVar) {
            super(0);
            this.f54493a = nVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final f5.e invoke() {
            return ((f5.d) dagger.hilt.c.a(this.f54493a.b(), f5.d.class)).c();
        }
    }

    /* compiled from: UserInfoDialogPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$b", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<String>> {
        b() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            com.qennnsad.aknkaksd.util.toast.a.n(response.getMsg(), false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            n nVar = p.this.f54490b;
            if (nVar != null) {
                nVar.g();
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.follow_error, false, 2, null);
        }
    }

    /* compiled from: UserInfoDialogPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$c", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<UserInfo>> {
        c() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<UserInfo> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            com.qennnsad.aknkaksd.util.toast.a.f(response.getMsg(), false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<UserInfo> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            n nVar = p.this.f54490b;
            if (nVar != null) {
                nVar.O(response.getData());
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.msg_unknown_error, false, 2, null);
        }
    }

    /* compiled from: UserInfoDialogPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$d", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<String>> {
        d() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            com.qennnsad.aknkaksd.util.toast.a.f(response.getMsg(), false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            com.qennnsad.aknkaksd.util.toast.a.n("发送成功", false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.msg_unknown_error, false, 2, null);
        }
    }

    /* compiled from: UserInfoDialogPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "()Lcom/qennnsad/aknkaksd/data/repository/m;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function0<com.qennnsad.aknkaksd.data.repository.m> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final com.qennnsad.aknkaksd.data.repository.m invoke() {
            return p.this.d().g();
        }
    }

    /* compiled from: UserInfoDialogPresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/widget/userinfo/p$f", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class f extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<String>> {
        f() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            com.qennnsad.aknkaksd.util.toast.a.n(response.getMsg(), false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<String> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            n nVar = p.this.f54490b;
            if (nVar != null) {
                nVar.w();
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.unfollow_error, false, 2, null);
        }
    }

    public p(@m8.g n uidInterface) {
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(uidInterface, "uidInterface");
        WeakReference<n> weakReference = new WeakReference<>(uidInterface);
        this.f54489a = weakReference;
        this.f54490b = weakReference.get();
        lazy = LazyKt__LazyJVMKt.lazy(new a(uidInterface));
        this.f54491c = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new e());
        this.f54492d = lazy2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final f5.e d() {
        return (f5.e) this.f54491c.getValue();
    }

    private final com.qennnsad.aknkaksd.data.repository.m e() {
        return (com.qennnsad.aknkaksd.data.repository.m) this.f54492d.getValue();
    }

    public final void c(@m8.g String uid, @m8.g String roomId) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        com.qennnsad.aknkaksd.data.repository.m.g(e(), false, 1, null).followUser(uid, roomId).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new b());
    }

    public final void f(@m8.g String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        com.qennnsad.aknkaksd.data.repository.m.g(e(), false, 1, null).getUserInfo(userId).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new c());
    }

    public final void g(@m8.g String toUid, @m8.h String str) {
        Intrinsics.checkNotNullParameter(toUid, "toUid");
        o0.g("sendNameCard", "sendNameCard:" + toUid);
        com.qennnsad.aknkaksd.data.repository.m.g(e(), false, 1, null).sendNameCard(toUid, str).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new d());
    }

    public final void h(@m8.g String uid, @m8.g String roomId) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        com.qennnsad.aknkaksd.data.repository.m.g(e(), false, 1, null).unfollowUser(uid, roomId).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new f());
    }
}
