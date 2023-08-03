package com.qennnsad.aknkaksd.presentation.ui.room.manage;

import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.BaseResponse;
import com.qennnsad.aknkaksd.data.bean.room.RoomAdminInfo;
import io.sentry.clientreport.e;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RoomManagePresenter.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b \u0010!J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002J&\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0017\u0010\u001a\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001c\u001a\u00020\u001b8\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0013\u0010\u001e¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/o;", "", "", "roomUid", "", "d", "uid", "info", "f", "anchorId", "roomId", "duration", e.b.f83079a, "e", "Ljava/lang/ref/WeakReference;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;", "a", "Ljava/lang/ref/WeakReference;", "uiInterface", "b", "Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;", "ui", "Lcom/qennnsad/aknkaksd/data/repository/m;", "Lcom/qennnsad/aknkaksd/data/repository/m;", "c", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lf5/e;", "helper", "Lf5/e;", "()Lf5/e;", "uidInterface", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/manage/n;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<n> f53569a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final n f53570b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final f5.e f53571c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f53572d;

    /* compiled from: RoomManagePresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016J\u001c\u0010\u000b\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\u0014¨\u0006\f"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/manage/o$a", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", "Lcom/qennnsad/aknkaksd/data/bean/room/RoomAdminInfo;", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<List<? extends RoomAdminInfo>>> {
        a() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<List<RoomAdminInfo>> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            com.qennnsad.aknkaksd.util.toast.a.f(response.getMsg(), false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<List<RoomAdminInfo>> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            n nVar = o.this.f53570b;
            if (nVar != null) {
                nVar.S(response.getData());
            }
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.msg_unknown_error, false, 2, null);
        }
    }

    /* compiled from: RoomManagePresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/manage/o$b", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<String>> {
        b() {
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
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.room_live_manage_warn_success, false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.msg_unknown_error, false, 2, null);
        }
    }

    /* compiled from: RoomManagePresenter.kt */
    @Metadata(bv = {}, d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0016\u0010\n\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0014¨\u0006\u000b"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/manage/o$c", "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/a;", "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;", "", io.sentry.protocol.j.f83728f, "", "f", "", "throwable", "onError", "d", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends com.qennnsad.aknkaksd.presentation.ui.base.observer.a<BaseResponse<Object>> {
        c() {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        protected void d(@m8.g BaseResponse<Object> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            super.d(response);
            com.qennnsad.aknkaksd.util.toast.a.f(response.getMsg(), false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.c
        public void f(@m8.g BaseResponse<Object> response) {
            Intrinsics.checkNotNullParameter(response, "response");
            com.qennnsad.aknkaksd.util.toast.a.m(R.string.room_live_manage_report_success, false, 2, null);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.observer.a, com.qennnsad.aknkaksd.presentation.ui.base.observer.c, io.reactivex.g0
        public void onError(@m8.g Throwable throwable) {
            Intrinsics.checkNotNullParameter(throwable, "throwable");
            super.onError(throwable);
            com.qennnsad.aknkaksd.util.toast.a.e(R.string.msg_unknown_error, false, 2, null);
        }
    }

    public o(@m8.g n uidInterface) {
        Intrinsics.checkNotNullParameter(uidInterface, "uidInterface");
        WeakReference<n> weakReference = new WeakReference<>(uidInterface);
        this.f53569a = weakReference;
        this.f53570b = weakReference.get();
        f5.e c10 = ((f5.d) dagger.hilt.c.a(uidInterface.b(), f5.d.class)).c();
        this.f53571c = c10;
        this.f53572d = c10.g();
    }

    @m8.g
    public final f5.e b() {
        return this.f53571c;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m c() {
        return this.f53572d;
    }

    public final void d(@m8.g String roomUid) {
        Intrinsics.checkNotNullParameter(roomUid, "roomUid");
        com.qennnsad.aknkaksd.data.repository.m.g(this.f53572d, false, 1, null).getAdmin(roomUid).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new a());
    }

    public final void e(@m8.g String anchorId, @m8.g String roomId, @m8.g String duration, @m8.g String reason) {
        Intrinsics.checkNotNullParameter(anchorId, "anchorId");
        Intrinsics.checkNotNullParameter(roomId, "roomId");
        Intrinsics.checkNotNullParameter(duration, "duration");
        Intrinsics.checkNotNullParameter(reason, "reason");
        com.qennnsad.aknkaksd.data.repository.m.g(this.f53572d, false, 1, null).roomWarn(anchorId, roomId, duration, reason).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new b());
    }

    public final void f(@m8.g String uid, @m8.g String info) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(info, "info");
        com.qennnsad.aknkaksd.data.repository.m.g(this.f53572d, false, 1, null).userReport(uid, info).subscribeOn(io.reactivex.schedulers.b.d()).observeOn(io.reactivex.android.schedulers.a.c()).subscribe(new c());
    }
}
