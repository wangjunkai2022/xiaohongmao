package com.qennnsad.aknkaksd.presentation.ui.main.me.edit;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MutableLiveData;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.EditAvatarBean;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.domain.usecase.user.c1;
import com.qennnsad.aknkaksd.domain.usecase.user.g1;
import com.qennnsad.aknkaksd.domain.usecase.user.i0;
import com.qennnsad.aknkaksd.domain.usecase.user.m0;
import com.qennnsad.aknkaksd.domain.usecase.user.q0;
import com.qennnsad.aknkaksd.domain.usecase.user.s1;
import com.qennnsad.aknkaksd.domain.usecase.user.u0;
import com.qennnsad.aknkaksd.domain.usecase.user.y0;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: EditProfileViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001BQ\b\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001c\u0012\u0006\u0010#\u001a\u00020 \u0012\u0006\u0010'\u001a\u00020$\u0012\u0006\u0010+\u001a\u00020(\u0012\u0006\u0010/\u001a\u00020,\u0012\u0006\u00103\u001a\u000200\u0012\u0006\u00107\u001a\u000204\u0012\u0006\u0010;\u001a\u000208¢\u0006\u0004\bC\u0010DJ\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0003J\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0003J\u000e\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\rJ\u000e\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0003R\u0017\u0010\u001b\u001a\u00020\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00107\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R\u001d\u0010B\u001a\b\u0012\u0004\u0012\u00020=0<8\u0006¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A¨\u0006E"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/e;", "", "nickname", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "intro", y.b.f83920h, com.qennnsad.aknkaksd.data.websocket.b.O, "z", "city", "v", "", "gender", y.b.f83919g, com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "u", "emotion", "w", "path", "B", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "s", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lcom/qennnsad/aknkaksd/domain/usecase/user/g1;", "f", "Lcom/qennnsad/aknkaksd/domain/usecase/user/g1;", "updateNicknameUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/y0;", "g", "Lcom/qennnsad/aknkaksd/domain/usecase/user/y0;", "updateIntroUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/c1;", "h", "Lcom/qennnsad/aknkaksd/domain/usecase/user/c1;", "updateNameCardUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/m0;", ContextChain.TAG_INFRA, "Lcom/qennnsad/aknkaksd/domain/usecase/user/m0;", "updateCityUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;", "j", "Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;", "updateGenderUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/i0;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/user/i0;", "updateBirthdayUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/q0;", "l", "Lcom/qennnsad/aknkaksd/domain/usecase/user/q0;", "updateEmotionUseCase", "Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;", "m", "Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;", "uploadAvatarUseCase", "Landroidx/lifecycle/MutableLiveData;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "n", "Landroidx/lifecycle/MutableLiveData;", "t", "()Landroidx/lifecycle/MutableLiveData;", "user", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lcom/qennnsad/aknkaksd/domain/usecase/user/g1;Lcom/qennnsad/aknkaksd/domain/usecase/user/y0;Lcom/qennnsad/aknkaksd/domain/usecase/user/c1;Lcom/qennnsad/aknkaksd/domain/usecase/user/m0;Lcom/qennnsad/aknkaksd/domain/usecase/user/u0;Lcom/qennnsad/aknkaksd/domain/usecase/user/i0;Lcom/qennnsad/aknkaksd/domain/usecase/user/q0;Lcom/qennnsad/aknkaksd/domain/usecase/user/s1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class EditProfileViewModel extends com.qennnsad.aknkaksd.presentation.common.l<com.qennnsad.aknkaksd.presentation.ui.main.me.edit.e> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f52923e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final g1 f52924f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final y0 f52925g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final c1 f52926h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final m0 f52927i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final u0 f52928j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final i0 f52929k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final q0 f52930l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final s1 f52931m;
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    private final MutableLiveData<UserBean> f52932n;

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<String, Unit> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function1<String, Unit> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function1<String, Unit> {
        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class d extends Lambda implements Function1<String, Unit> {
        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class e extends Lambda implements Function1<String, Unit> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class f extends Lambda implements Function1<String, Unit> {
        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class g extends Lambda implements Function1<String, Unit> {
        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.edit_profile_complete);
        }
    }

    /* compiled from: EditProfileViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;", "it", "", "a", "(Lcom/qennnsad/aknkaksd/data/bean/EditAvatarBean;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class h extends Lambda implements Function1<EditAvatarBean, Unit> {
        h() {
            super(1);
        }

        public final void a(@m8.g EditAvatarBean it) {
            Intrinsics.checkNotNullParameter(it, "it");
            EditProfileViewModel.this.o(R.string.upload_avatar_complete);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(EditAvatarBean editAvatarBean) {
            a(editAvatarBean);
            return Unit.INSTANCE;
        }
    }

    @u7.a
    public EditProfileViewModel(@m8.g com.qennnsad.aknkaksd.data.repository.m sourceFactory, @m8.g g1 updateNicknameUseCase, @m8.g y0 updateIntroUseCase, @m8.g c1 updateNameCardUseCase, @m8.g m0 updateCityUseCase, @m8.g u0 updateGenderUseCase, @m8.g i0 updateBirthdayUseCase, @m8.g q0 updateEmotionUseCase, @m8.g s1 uploadAvatarUseCase) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(updateNicknameUseCase, "updateNicknameUseCase");
        Intrinsics.checkNotNullParameter(updateIntroUseCase, "updateIntroUseCase");
        Intrinsics.checkNotNullParameter(updateNameCardUseCase, "updateNameCardUseCase");
        Intrinsics.checkNotNullParameter(updateCityUseCase, "updateCityUseCase");
        Intrinsics.checkNotNullParameter(updateGenderUseCase, "updateGenderUseCase");
        Intrinsics.checkNotNullParameter(updateBirthdayUseCase, "updateBirthdayUseCase");
        Intrinsics.checkNotNullParameter(updateEmotionUseCase, "updateEmotionUseCase");
        Intrinsics.checkNotNullParameter(uploadAvatarUseCase, "uploadAvatarUseCase");
        this.f52923e = sourceFactory;
        this.f52924f = updateNicknameUseCase;
        this.f52925g = updateIntroUseCase;
        this.f52926h = updateNameCardUseCase;
        this.f52927i = updateCityUseCase;
        this.f52928j = updateGenderUseCase;
        this.f52929k = updateBirthdayUseCase;
        this.f52930l = updateEmotionUseCase;
        this.f52931m = uploadAvatarUseCase;
        this.f52932n = new MutableLiveData<>();
    }

    public final void A(@m8.g String nickname) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        h(this.f52924f, d(), nickname, new g());
    }

    public final void B(@m8.g String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        h(this.f52931m, d(), path, new h());
    }

    @m8.g
    public final com.qennnsad.aknkaksd.data.repository.m s() {
        return this.f52923e;
    }

    @m8.g
    public final MutableLiveData<UserBean> t() {
        return this.f52932n;
    }

    public final void u(@m8.g String time) {
        Intrinsics.checkNotNullParameter(time, "time");
        h(this.f52929k, d(), time, new a());
    }

    public final void v(@m8.g String city) {
        Intrinsics.checkNotNullParameter(city, "city");
        h(this.f52927i, d(), city, new b());
    }

    public final void w(int i4) {
        h(this.f52930l, d(), Integer.valueOf(i4), new c());
    }

    public final void x(int i4) {
        h(this.f52928j, d(), Integer.valueOf(i4), new d());
    }

    public final void y(@m8.g String intro) {
        Intrinsics.checkNotNullParameter(intro, "intro");
        h(this.f52925g, d(), intro, new e());
    }

    public final void z(@m8.g String nameCard) {
        Intrinsics.checkNotNullParameter(nameCard, "nameCard");
        h(this.f52926h, d(), nameCard, new f());
    }
}
