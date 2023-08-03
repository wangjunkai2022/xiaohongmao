package com.qennnsad.aknkaksd;

import android.app.Activity;
import android.app.DownloadManager;
import android.app.Service;
import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.gson.Gson;
import com.qennnsad.aknkaksd.analytics.data.device.DeviceInfo;
import com.qennnsad.aknkaksd.d;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import com.qennnsad.aknkaksd.data.sharedpreference.Prefs;
import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import com.qennnsad.aknkaksd.data.websocket.WebSocketService;
import com.qennnsad.aknkaksd.domain.usecase.auth.c0;
import com.qennnsad.aknkaksd.domain.usecase.auth.h0;
import com.qennnsad.aknkaksd.domain.usecase.user.c1;
import com.qennnsad.aknkaksd.domain.usecase.user.g1;
import com.qennnsad.aknkaksd.domain.usecase.user.i0;
import com.qennnsad.aknkaksd.domain.usecase.user.k1;
import com.qennnsad.aknkaksd.domain.usecase.user.m0;
import com.qennnsad.aknkaksd.domain.usecase.user.o1;
import com.qennnsad.aknkaksd.domain.usecase.user.u0;
import com.qennnsad.aknkaksd.domain.usecase.user.w;
import com.qennnsad.aknkaksd.domain.usecase.user.y0;
import com.qennnsad.aknkaksd.presentation.common.SharedViewModel;
import com.qennnsad.aknkaksd.presentation.module.appupdate.UpdateFragment;
import com.qennnsad.aknkaksd.presentation.module.appupdate.UpdateViewModel;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.module.auth.GuestLinkPhoneNumberActivity;
import com.qennnsad.aknkaksd.presentation.module.auth.TestConfigDialog;
import com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel;
import com.qennnsad.aknkaksd.presentation.module.auth.login.LoginFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel;
import com.qennnsad.aknkaksd.presentation.module.auth.login.t;
import com.qennnsad.aknkaksd.presentation.module.auth.signup.SignUpViewModel;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsActivity;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsFragment;
import com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorFragment;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.HotAnchorFragment;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.HotAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.NearbyAnchorFragment;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.NearbyAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.VeganAnchorFragment;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.VeganAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.VipAnchorFragment;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.VipAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersFragment;
import com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.index.IndexFragment;
import com.qennnsad.aknkaksd.presentation.module.main.index.IndexViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.index.r;
import com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileFragment;
import com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.me.a0;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileActivity;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileFragment;
import com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.rank.MainRankFragment;
import com.qennnsad.aknkaksd.presentation.module.main.rank.MainRankViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserFragment;
import com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel;
import com.qennnsad.aknkaksd.presentation.module.rank.RankFragment;
import com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel;
import com.qennnsad.aknkaksd.presentation.module.rank.container.RankListFragment;
import com.qennnsad.aknkaksd.presentation.module.rank.container.RankListViewModel;
import com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog;
import com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel;
import com.qennnsad.aknkaksd.presentation.module.splash.SplashActivity;
import com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatDetailsActivity;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatFragment;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatViewModel;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListViewModelProvider;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListFragment;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListViewModel;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.DataUsageActivity;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.SettingsViewModelProvider;
import com.qennnsad.aknkaksd.presentation.ui.main.MainFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.mall.MallFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.me.edit.s;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.BlacklistFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.BlacklistViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.ModifyPasswordFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.ModifyPasswordViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.SettingsFragment;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.SettingsViewModel;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.z;
import com.qennnsad.aknkaksd.presentation.ui.main.u;
import com.qennnsad.aknkaksd.presentation.ui.main.x;
import com.qennnsad.aknkaksd.presentation.ui.main.y;
import com.qennnsad.aknkaksd.presentation.ui.room.RoomFinishedFragment;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.PurchaseItemListFragmentDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.manage.AdminListActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.manage.RoomManageDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PkRightPlayerActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.p1;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.PrivateRoomFragment;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.s1;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankViewModel;
import com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatDialog;
import com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel;
import com.qennnsad.aknkaksd.util.JwtUtil;
import com.qennnsad.aknkaksd.util.e0;
import com.qennnsad.aknkaksd.util.m1;
import com.qennnsad.aknkaksd.util.q0;
import com.qennnsad.aknkaksd.util.t0;
import dagger.hilt.android.internal.lifecycle.a;
import dagger.internal.v;
import java.util.Map;
import java.util.Set;

/* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f {

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    private static final class b implements d.a.InterfaceC0401a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48535a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48536b;

        /* renamed from: c  reason: collision with root package name */
        private Activity f48537c;

        @Override // h6.a
        /* renamed from: b */
        public b a(Activity activity) {
            this.f48537c = (Activity) dagger.internal.p.b(activity);
            return this;
        }

        @Override // h6.a
        /* renamed from: c */
        public d.a build() {
            dagger.internal.p.a(this.f48537c, Activity.class);
            return new c(this.f48535a, this.f48536b, this.f48537c);
        }

        private b(k singletonCImpl, e activityRetainedCImpl) {
            this.f48535a = singletonCImpl;
            this.f48536b = activityRetainedCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class c extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f48538a;

        /* renamed from: b  reason: collision with root package name */
        private final k f48539b;

        /* renamed from: c  reason: collision with root package name */
        private final e f48540c;

        /* renamed from: d  reason: collision with root package name */
        private final c f48541d;

        /* renamed from: e  reason: collision with root package name */
        private u7.c<FragmentActivity> f48542e;

        /* renamed from: f  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.presentation.ui.chat.im.l> f48543f;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
        /* loaded from: classes3.dex */
        public static final class a<T> implements u7.c<T> {

            /* renamed from: a  reason: collision with root package name */
            private final k f48544a;

            /* renamed from: b  reason: collision with root package name */
            private final e f48545b;

            /* renamed from: c  reason: collision with root package name */
            private final c f48546c;

            /* renamed from: d  reason: collision with root package name */
            private final int f48547d;

            a(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, int id) {
                this.f48544a = singletonCImpl;
                this.f48545b = activityRetainedCImpl;
                this.f48546c = activityCImpl;
                this.f48547d = id;
            }

            @Override // u7.c
            public T get() {
                int i4 = this.f48547d;
                if (i4 != 0) {
                    if (i4 == 1) {
                        return (T) dagger.hilt.android.internal.modules.b.c(this.f48546c.f48538a);
                    }
                    throw new AssertionError(this.f48547d);
                }
                return (T) new com.qennnsad.aknkaksd.presentation.ui.chat.im.l((FragmentActivity) this.f48546c.f48542e.get());
            }
        }

        private UserProfileActivity A(UserProfileActivity instance) {
            com.qennnsad.aknkaksd.presentation.module.main.profile.d.c(instance, (g5.a) this.f48539b.f48577h.get());
            return instance;
        }

        private void t(final Activity activityParam) {
            this.f48542e = v.a(new a(this.f48539b, this.f48540c, this.f48541d, 1));
            this.f48543f = dagger.internal.g.b(new a(this.f48539b, this.f48540c, this.f48541d, 0));
        }

        private AdminListActivity u(AdminListActivity instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.manage.e.d(instance, (com.qennnsad.aknkaksd.data.websocket.j) this.f48539b.f48586q.get());
            return instance;
        }

        private ChatDetailsActivity v(ChatDetailsActivity instance) {
            com.qennnsad.aknkaksd.presentation.ui.chat.im.c.e(instance, this.f48543f.get());
            com.qennnsad.aknkaksd.presentation.ui.chat.im.c.c(instance, (g5.a) this.f48539b.f48577h.get());
            return instance;
        }

        private PkRightPlayerActivity w(PkRightPlayerActivity instance) {
            p1.f(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48539b.f48585p.get());
            p1.c(instance, (e0) this.f48539b.f48588s.get());
            p1.e(instance, (com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c) this.f48539b.f48589t.get());
            return instance;
        }

        private PlayerActivity x(PlayerActivity instance) {
            p1.f(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48539b.f48585p.get());
            p1.c(instance, (e0) this.f48539b.f48588s.get());
            p1.e(instance, (com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c) this.f48539b.f48589t.get());
            return instance;
        }

        private SimpleWebViewActivity y(SimpleWebViewActivity instance) {
            com.qennnsad.aknkaksd.presentation.module.main.webview.g.c(instance, (g5.a) this.f48539b.f48577h.get());
            return instance;
        }

        private SplashActivity z(SplashActivity instance) {
            com.qennnsad.aknkaksd.presentation.module.splash.m.c(instance, (g5.a) this.f48539b.f48577h.get());
            com.qennnsad.aknkaksd.presentation.module.splash.m.e(instance, (t0) this.f48539b.f48582m.get());
            com.qennnsad.aknkaksd.presentation.module.splash.m.f(instance, (m1) this.f48539b.f48594y.get());
            return instance;
        }

        @Override // dagger.hilt.android.internal.lifecycle.a.InterfaceC0504a
        public a.d a() {
            return dagger.hilt.android.internal.lifecycle.b.c(c(), new n(this.f48539b, this.f48540c));
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.webview.f
        public void b(SimpleWebViewActivity arg0) {
            y(arg0);
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.b
        public Set<String> c() {
            return ImmutableSet.of(com.qennnsad.aknkaksd.presentation.ui.main.setting.j.c(), com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.i.c(), com.qennnsad.aknkaksd.presentation.ui.chat.im.j.c(), com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.m.c(), com.qennnsad.aknkaksd.presentation.module.contributors.l.c(), s.c(), com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.g.c(), com.qennnsad.aknkaksd.presentation.module.main.followers.l.c(), com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.e.c(), r.c(), t.c(), com.qennnsad.aknkaksd.presentation.module.main.rank.g.c(), x.c(), com.qennnsad.aknkaksd.presentation.ui.main.mall.k.c(), a0.c(), com.qennnsad.aknkaksd.presentation.ui.main.setting.s.c(), com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.e.c(), s1.c(), com.qennnsad.aknkaksd.presentation.module.rank.container.h.c(), com.qennnsad.aknkaksd.presentation.module.rank.dialogs.i.c(), com.qennnsad.aknkaksd.presentation.module.rank.k.c(), com.qennnsad.aknkaksd.presentation.module.auth.findpass.m.c(), com.qennnsad.aknkaksd.presentation.ui.room.rank.i.c(), com.qennnsad.aknkaksd.presentation.module.main.search.m.c(), com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.n.c(), com.qennnsad.aknkaksd.presentation.ui.main.setting.e0.c(), com.qennnsad.aknkaksd.presentation.common.p.c(), com.qennnsad.aknkaksd.presentation.module.auth.signup.s.c(), com.qennnsad.aknkaksd.presentation.module.main.webview.s.c(), com.qennnsad.aknkaksd.presentation.module.splash.p.c(), com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.l.c(), com.qennnsad.aknkaksd.presentation.module.appupdate.j.c(), com.qennnsad.aknkaksd.presentation.module.main.profile.p.c(), com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.e.c(), com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.e.c());
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.chat.im.b
        public void d(ChatDetailsActivity arg0) {
            v(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.contributors.b
        public void e(ContributorsActivity arg0) {
        }

        @Override // dagger.hilt.android.internal.managers.ViewComponentManager.a
        public h6.e f() {
            return new l(this.f48539b, this.f48540c, this.f48541d);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.manage.d
        public void g(AdminListActivity arg0) {
            u(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.profile.c
        public void h(UserProfileActivity arg0) {
            A(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.e
        public void i(PkRightPlayerActivity arg0) {
            w(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.auth.c
        public void j(GuestLinkPhoneNumberActivity arg0) {
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.auth.b
        public void k(AuthActivity arg0) {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.a
        public void l(DataUsageActivity arg0) {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.b
        public void m(MainContainerActivity arg0) {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.o1
        public void n(PlayerActivity arg0) {
            x(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.splash.l
        public void o(SplashActivity arg0) {
            z(arg0);
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.b
        public h6.f p() {
            return new n(this.f48539b, this.f48540c);
        }

        @Override // dagger.hilt.android.internal.managers.g.a
        public h6.c q() {
            return new g(this.f48539b, this.f48540c, this.f48541d);
        }

        private c(k singletonCImpl, e activityRetainedCImpl, Activity activityParam) {
            this.f48541d = this;
            this.f48539b = singletonCImpl;
            this.f48540c = activityRetainedCImpl;
            this.f48538a = activityParam;
            t(activityParam);
        }
    }

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    private static final class d implements d.c.a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48548a;

        @Override // h6.b
        /* renamed from: a */
        public d.c build() {
            return new e(this.f48548a);
        }

        private d(k singletonCImpl) {
            this.f48548a = singletonCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class e extends d.c {

        /* renamed from: a  reason: collision with root package name */
        private final k f48549a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48550b;

        /* renamed from: c  reason: collision with root package name */
        private u7.c f48551c;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
        /* loaded from: classes3.dex */
        public static final class a<T> implements u7.c<T> {

            /* renamed from: a  reason: collision with root package name */
            private final k f48552a;

            /* renamed from: b  reason: collision with root package name */
            private final e f48553b;

            /* renamed from: c  reason: collision with root package name */
            private final int f48554c;

            a(k singletonCImpl, e activityRetainedCImpl, int id) {
                this.f48552a = singletonCImpl;
                this.f48553b = activityRetainedCImpl;
                this.f48554c = id;
            }

            @Override // u7.c
            public T get() {
                if (this.f48554c == 0) {
                    return (T) dagger.hilt.android.internal.managers.c.c();
                }
                throw new AssertionError(this.f48554c);
            }
        }

        private void c() {
            this.f48551c = dagger.internal.g.b(new a(this.f48549a, this.f48550b, 0));
        }

        @Override // dagger.hilt.android.internal.managers.a.InterfaceC0506a
        public h6.a a() {
            return new b(this.f48549a, this.f48550b);
        }

        @Override // dagger.hilt.android.internal.managers.b.d
        public dagger.hilt.android.a b() {
            return (dagger.hilt.android.a) this.f48551c.get();
        }

        private e(k singletonCImpl) {
            this.f48550b = this;
            this.f48549a = singletonCImpl;
            c();
        }
    }

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* renamed from: com.qennnsad.aknkaksd.f$f  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0407f {

        /* renamed from: a  reason: collision with root package name */
        private f5.a f48555a;

        /* renamed from: b  reason: collision with root package name */
        private dagger.hilt.android.internal.modules.c f48556b;

        /* renamed from: c  reason: collision with root package name */
        private f5.g f48557c;

        public C0407f a(f5.a appUpdateModule) {
            this.f48555a = (f5.a) dagger.internal.p.b(appUpdateModule);
            return this;
        }

        public C0407f b(dagger.hilt.android.internal.modules.c applicationContextModule) {
            this.f48556b = (dagger.hilt.android.internal.modules.c) dagger.internal.p.b(applicationContextModule);
            return this;
        }

        public d.i c() {
            if (this.f48555a == null) {
                this.f48555a = new f5.a();
            }
            dagger.internal.p.a(this.f48556b, dagger.hilt.android.internal.modules.c.class);
            if (this.f48557c == null) {
                this.f48557c = new f5.g();
            }
            return new k(this.f48555a, this.f48556b, this.f48557c);
        }

        @Deprecated
        public C0407f d(dagger.hilt.android.flags.b hiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule) {
            dagger.internal.p.b(hiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule);
            return this;
        }

        public C0407f e(f5.g sdkModule) {
            this.f48557c = (f5.g) dagger.internal.p.b(sdkModule);
            return this;
        }

        private C0407f() {
        }
    }

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    private static final class g implements d.e.a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48558a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48559b;

        /* renamed from: c  reason: collision with root package name */
        private final c f48560c;

        /* renamed from: d  reason: collision with root package name */
        private Fragment f48561d;

        @Override // h6.c
        /* renamed from: b */
        public d.e build() {
            dagger.internal.p.a(this.f48561d, Fragment.class);
            return new h(this.f48558a, this.f48559b, this.f48560c, this.f48561d);
        }

        @Override // h6.c
        /* renamed from: c */
        public g a(Fragment fragment) {
            this.f48561d = (Fragment) dagger.internal.p.b(fragment);
            return this;
        }

        private g(k singletonCImpl, e activityRetainedCImpl, c activityCImpl) {
            this.f48558a = singletonCImpl;
            this.f48559b = activityRetainedCImpl;
            this.f48560c = activityCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class h extends d.e {

        /* renamed from: a  reason: collision with root package name */
        private final k f48562a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48563b;

        /* renamed from: c  reason: collision with root package name */
        private final c f48564c;

        /* renamed from: d  reason: collision with root package name */
        private final h f48565d;

        private com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.l A0(com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.l instance) {
            com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.b.c(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.b.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private UserProfileFragment B0(UserProfileFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private VeganAnchorFragment C0(VeganAnchorFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.d.d(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private VipAnchorFragment D0(VipAnchorFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.d.d(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private c5.g E0() {
            return new c5.g((c5.b) this.f48562a.f48584o.get(), (g5.a) this.f48562a.f48577h.get());
        }

        private com.qennnsad.aknkaksd.presentation.ui.base.b R(com.qennnsad.aknkaksd.presentation.ui.base.b instance) {
            com.qennnsad.aknkaksd.presentation.ui.base.d.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.ui.base.d.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.base.d.g(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            com.qennnsad.aknkaksd.presentation.ui.base.d.f(instance, (q0) this.f48562a.f48595z.get());
            return instance;
        }

        private BlacklistFragment S(BlacklistFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private ChatFragment T(ChatFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private ChatListFragment U(ChatListFragment instance) {
            com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.f.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.f.f(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.f.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private ContactListFragment V(ContactListFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private ContributorsFragment W(ContributorsFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.contributors.h.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            com.qennnsad.aknkaksd.presentation.module.contributors.h.d(instance, (q0) this.f48562a.f48595z.get());
            return instance;
        }

        private EditProfileFragment X(EditProfileFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private FollowedAnchorFragment Y(FollowedAnchorFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.d.d(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private FollowersFragment Z(FollowersFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.g a0(com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.g instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.i.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.i.c(instance, (g5.a) this.f48562a.f48577h.get());
            return instance;
        }

        private HotAnchorFragment b0(HotAnchorFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.d.d(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private IndexFragment c0(IndexFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private LoginFragment d0(LoginFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.auth.login.p.d(instance, (t0) this.f48562a.f48582m.get());
            return instance;
        }

        private MainFragment e0(MainFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            u.d(instance, (m1) this.f48562a.f48594y.get());
            return instance;
        }

        private MainRankFragment f0(MainRankFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private MallFragment g0(MallFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.ui.main.mall.h.e(instance, E0());
            com.qennnsad.aknkaksd.presentation.ui.main.mall.h.d(instance, (t0) this.f48562a.f48582m.get());
            return instance;
        }

        private MeProfileFragment h0(MeProfileFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private ModifyPasswordFragment i0(ModifyPasswordFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.f j0(com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.f instance) {
            com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.b.c(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.b.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private NearbyAnchorFragment k0(NearbyAnchorFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.d.d(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.h l0(com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.h instance) {
            com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.b.c(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.b.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private PrivateRoomFragment m0(PrivateRoomFragment instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.d.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private PurchaseItemListFragmentDialog n0(PurchaseItemListFragmentDialog instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.j.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.j.f(instance, (com.qennnsad.aknkaksd.data.websocket.j) this.f48562a.f48586q.get());
            com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.j.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private RankFragment o0(RankFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.rank.f.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            com.qennnsad.aknkaksd.presentation.module.rank.f.d(instance, (q0) this.f48562a.f48595z.get());
            return instance;
        }

        private RankListFragment p0(RankListFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private RankTodayDialog q0(RankTodayDialog instance) {
            com.qennnsad.aknkaksd.presentation.module.rank.dialogs.f.d(instance, (q0) this.f48562a.f48595z.get());
            com.qennnsad.aknkaksd.presentation.module.rank.dialogs.f.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private RestorePasswordFragment r0(RestorePasswordFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private RoomFinishedFragment s0(RoomFinishedFragment instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.i.f(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            com.qennnsad.aknkaksd.presentation.ui.room.i.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.room.i.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private RoomManageDialog t0(RoomManageDialog instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.manage.m.c(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.room.manage.m.e(instance, (com.qennnsad.aknkaksd.data.websocket.j) this.f48562a.f48586q.get());
            return instance;
        }

        private RoomSeatRankDialog u0(RoomSeatRankDialog instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.rank.e.c(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.room.rank.e.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private SearchUserFragment v0(SearchUserFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            return instance;
        }

        private SettingsFragment w0(SettingsFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            z.c(instance, (com.qennnsad.aknkaksd.util.q) this.f48562a.A.get());
            return instance;
        }

        private SimpleWebViewFragment x0(SimpleWebViewFragment instance) {
            com.qennnsad.aknkaksd.presentation.common.k.d(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.common.k.c(instance, (x4.a) this.f48562a.f48581l.get());
            com.qennnsad.aknkaksd.presentation.module.main.webview.p.e(instance, E0());
            com.qennnsad.aknkaksd.presentation.module.main.webview.p.d(instance, (t0) this.f48562a.f48582m.get());
            return instance;
        }

        private StreamChatDialog y0(StreamChatDialog instance) {
            com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.i.c(instance, (g5.a) this.f48562a.f48577h.get());
            com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.i.e(instance, (com.qennnsad.aknkaksd.data.repository.m) this.f48562a.f48585p.get());
            return instance;
        }

        private TestConfigDialog z0(TestConfigDialog instance) {
            com.qennnsad.aknkaksd.presentation.module.auth.m.e(instance, (t0) this.f48562a.f48582m.get());
            com.qennnsad.aknkaksd.presentation.module.auth.m.c(instance, (g5.a) this.f48562a.f48577h.get());
            return instance;
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.c
        public void A(PrivateRoomFragment arg0) {
            m0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.search.i
        public void B(SearchUserFragment arg0) {
            v0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.rank.e
        public void C(RankFragment arg0) {
            o0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.webview.o
        public void D(SimpleWebViewFragment arg0) {
            x0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.rank.dialogs.e
        public void E(RankTodayDialog arg0) {
            q0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.setting.y
        public void F(SettingsFragment arg0) {
            w0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.contributors.g
        public void G(ContributorsFragment arg0) {
            W(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.h
        public void H(com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.g arg0) {
            a0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.b
        public void I(NearbyAnchorFragment arg0) {
            k0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.manage.l
        public void J(RoomManageDialog arg0) {
            t0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.j
        public void K(ContactListFragment arg0) {
            V(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.g
        public void L(com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.f arg0) {
            j0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.t
        public void M(MainFragment arg0) {
            e0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.b
        public void N(VeganAnchorFragment arg0) {
            C0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.b
        public void O(VipAnchorFragment arg0) {
            D0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.chat.im.g
        public void P(ChatFragment arg0) {
            T(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.index.o
        public void Q(IndexFragment arg0) {
            c0(arg0);
        }

        @Override // dagger.hilt.android.internal.lifecycle.a.c
        public a.d a() {
            return this.f48564c.a();
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.base.c
        public void b(com.qennnsad.aknkaksd.presentation.ui.base.b arg0) {
            R(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.i
        public void c(PurchaseItemListFragmentDialog arg0) {
            n0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.followers.h
        public void d(FollowersFragment arg0) {
            Z(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.rank.container.e
        public void e(RankListFragment arg0) {
            p0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.auth.l
        public void f(TestConfigDialog arg0) {
            z0(arg0);
        }

        @Override // dagger.hilt.android.internal.managers.ViewComponentManager.b
        public h6.g g() {
            return new p(this.f48562a, this.f48563b, this.f48564c, this.f48565d);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.rank.d
        public void h(MainRankFragment arg0) {
            f0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.appupdate.g
        public void i(UpdateFragment arg0) {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.k
        public void j(com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.SettingsFragment arg0) {
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.h
        public void k(StreamChatDialog arg0) {
            y0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.i
        public void l(com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.h arg0) {
            l0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.q
        public void m(com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.l arg0) {
            A0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.setting.p
        public void n(ModifyPasswordFragment arg0) {
            i0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.me.t
        public void o(MeProfileFragment arg0) {
            h0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.profile.m
        public void p(UserProfileFragment arg0) {
            B0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.e
        public void q(ChatListFragment arg0) {
            U(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.rank.d
        public void r(RoomSeatRankDialog arg0) {
            u0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.mall.g
        public void s(MallFragment arg0) {
            g0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.b
        public void t(HotAnchorFragment arg0) {
            b0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.auth.findpass.j
        public void u(RestorePasswordFragment arg0) {
            r0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.auth.login.o
        public void v(LoginFragment arg0) {
            d0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.me.edit.p
        public void w(EditProfileFragment arg0) {
            X(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.room.h
        public void x(RoomFinishedFragment arg0) {
            s0(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.d
        public void y(FollowedAnchorFragment arg0) {
            Y(arg0);
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.main.setting.e
        public void z(BlacklistFragment arg0) {
            S(arg0);
        }

        private h(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, Fragment fragmentParam) {
            this.f48565d = this;
            this.f48562a = singletonCImpl;
            this.f48563b = activityRetainedCImpl;
            this.f48564c = activityCImpl;
        }
    }

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    private static final class i implements d.g.a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48566a;

        /* renamed from: b  reason: collision with root package name */
        private Service f48567b;

        @Override // h6.d
        /* renamed from: b */
        public d.g build() {
            dagger.internal.p.a(this.f48567b, Service.class);
            return new j(this.f48566a, this.f48567b);
        }

        @Override // h6.d
        /* renamed from: c */
        public i a(Service service) {
            this.f48567b = (Service) dagger.internal.p.b(service);
            return this;
        }

        private i(k singletonCImpl) {
            this.f48566a = singletonCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class j extends d.g {

        /* renamed from: a  reason: collision with root package name */
        private final k f48568a;

        /* renamed from: b  reason: collision with root package name */
        private final j f48569b;

        private WebSocketService b(WebSocketService instance) {
            com.qennnsad.aknkaksd.data.websocket.h.c(instance, (g5.a) this.f48568a.f48577h.get());
            com.qennnsad.aknkaksd.data.websocket.h.e(instance, (com.qennnsad.aknkaksd.data.websocket.j) this.f48568a.f48586q.get());
            return instance;
        }

        @Override // com.qennnsad.aknkaksd.data.websocket.g
        public void a(WebSocketService arg0) {
            b(arg0);
        }

        private j(k singletonCImpl, Service serviceParam) {
            this.f48569b = this;
            this.f48568a = singletonCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class k extends d.i {
        private u7.c<com.qennnsad.aknkaksd.util.q> A;
        private u7.c<com.im.freechat.sdk.d> B;
        private u7.c<com.im.freechat.sdk.a> C;
        private u7.c<DnsResolver> D;
        private u7.c<g5.f> E;
        private u7.c<JwtUtil> F;
        private u7.c<y> G;
        private u7.c<com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.e> H;

        /* renamed from: a  reason: collision with root package name */
        private final dagger.hilt.android.internal.modules.c f48570a;

        /* renamed from: b  reason: collision with root package name */
        private final f5.g f48571b;

        /* renamed from: c  reason: collision with root package name */
        private final f5.a f48572c;

        /* renamed from: d  reason: collision with root package name */
        private final k f48573d;

        /* renamed from: e  reason: collision with root package name */
        private u7.c<Prefs> f48574e;

        /* renamed from: f  reason: collision with root package name */
        private u7.c<Gson> f48575f;

        /* renamed from: g  reason: collision with root package name */
        private u7.c<PrefsHelper> f48576g;

        /* renamed from: h  reason: collision with root package name */
        private u7.c<g5.a> f48577h;

        /* renamed from: i  reason: collision with root package name */
        private u7.c<DeviceInfo> f48578i;

        /* renamed from: j  reason: collision with root package name */
        private u7.c<Context> f48579j;

        /* renamed from: k  reason: collision with root package name */
        private u7.c<y4.e> f48580k;

        /* renamed from: l  reason: collision with root package name */
        private u7.c<x4.a> f48581l;

        /* renamed from: m  reason: collision with root package name */
        private u7.c<t0> f48582m;

        /* renamed from: n  reason: collision with root package name */
        private u7.c<g5.d> f48583n;

        /* renamed from: o  reason: collision with root package name */
        private u7.c<c5.b> f48584o;

        /* renamed from: p  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.data.repository.m> f48585p;

        /* renamed from: q  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.data.websocket.j> f48586q;

        /* renamed from: r  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> f48587r;

        /* renamed from: s  reason: collision with root package name */
        private u7.c<e0> f48588s;

        /* renamed from: t  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> f48589t;

        /* renamed from: u  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.util.translation.d> f48590u;

        /* renamed from: v  reason: collision with root package name */
        private u7.c<com.qennnsad.aknkaksd.util.translation.h> f48591v;

        /* renamed from: w  reason: collision with root package name */
        private u7.c<f5.e> f48592w;

        /* renamed from: x  reason: collision with root package name */
        private u7.c<DownloadManager> f48593x;

        /* renamed from: y  reason: collision with root package name */
        private u7.c<m1> f48594y;

        /* renamed from: z  reason: collision with root package name */
        private u7.c<q0> f48595z;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
        /* loaded from: classes3.dex */
        public static final class a<T> implements u7.c<T> {

            /* renamed from: a  reason: collision with root package name */
            private final k f48596a;

            /* renamed from: b  reason: collision with root package name */
            private final int f48597b;

            a(k singletonCImpl, int id) {
                this.f48596a = singletonCImpl;
                this.f48597b = id;
            }

            @Override // u7.c
            public T get() {
                switch (this.f48597b) {
                    case 0:
                        return (T) new x4.a((g5.a) this.f48596a.f48577h.get(), (DeviceInfo) this.f48596a.f48578i.get(), (PrefsHelper) this.f48596a.f48576g.get(), (y4.e) this.f48596a.f48580k.get());
                    case 1:
                        return (T) new g5.a((PrefsHelper) this.f48596a.f48576g.get());
                    case 2:
                        return (T) new PrefsHelper((Prefs) this.f48596a.f48574e.get(), (Gson) this.f48596a.f48575f.get());
                    case 3:
                        return (T) new Prefs(dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a));
                    case 4:
                        return (T) f5.i.c(this.f48596a.f48571b);
                    case 5:
                        return (T) new DeviceInfo(dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a));
                    case 6:
                        return (T) new y4.e((Context) this.f48596a.f48579j.get());
                    case 7:
                        return (T) f5.b.c(this.f48596a.f48572c, dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a));
                    case 8:
                        return (T) new f5.e((g5.a) this.f48596a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48596a.f48585p.get(), (x4.a) this.f48596a.f48581l.get(), (t0) this.f48596a.f48582m.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48596a.f48586q.get(), (com.qennnsad.aknkaksd.data.repository.dns.h) this.f48596a.f48587r.get(), (com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c) this.f48596a.f48589t.get(), (com.qennnsad.aknkaksd.util.translation.h) this.f48596a.f48591v.get(), (c5.b) this.f48596a.f48584o.get());
                    case 9:
                        return (T) new com.qennnsad.aknkaksd.data.repository.m((g5.a) this.f48596a.f48577h.get(), (t0) this.f48596a.f48582m.get(), (g5.d) this.f48596a.f48583n.get(), (c5.b) this.f48596a.f48584o.get());
                    case 10:
                        return (T) new t0(dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a), (g5.a) this.f48596a.f48577h.get());
                    case 11:
                        return (T) new g5.d((PrefsHelper) this.f48596a.f48576g.get(), (DeviceInfo) this.f48596a.f48578i.get());
                    case 12:
                        return (T) new c5.b((g5.a) this.f48596a.f48577h.get());
                    case 13:
                        return (T) new com.qennnsad.aknkaksd.data.websocket.j((PrefsHelper) this.f48596a.f48576g.get(), (g5.a) this.f48596a.f48577h.get());
                    case 14:
                        return (T) new com.qennnsad.aknkaksd.data.repository.dns.h((g5.a) this.f48596a.f48577h.get());
                    case 15:
                        return (T) com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.d.c(dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a), (g5.a) this.f48596a.f48577h.get(), (e0) this.f48596a.f48588s.get());
                    case 16:
                        return (T) new e0((g5.a) this.f48596a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48596a.f48585p.get());
                    case 17:
                        return (T) new com.qennnsad.aknkaksd.util.translation.h((com.qennnsad.aknkaksd.util.translation.d) this.f48596a.f48590u.get());
                    case 18:
                        return (T) new com.qennnsad.aknkaksd.util.translation.d((com.qennnsad.aknkaksd.data.repository.m) this.f48596a.f48585p.get());
                    case 19:
                        return (T) new m1((Context) this.f48596a.f48579j.get(), (g5.a) this.f48596a.f48577h.get(), (DownloadManager) this.f48596a.f48593x.get());
                    case 20:
                        return (T) f5.c.c(this.f48596a.f48572c, dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a));
                    case 21:
                        return (T) new q0(dagger.hilt.android.internal.modules.e.c(this.f48596a.f48570a), (g5.a) this.f48596a.f48577h.get());
                    case 22:
                        return (T) new com.qennnsad.aknkaksd.util.q((g5.a) this.f48596a.f48577h.get());
                    case 23:
                        return (T) f5.j.c(this.f48596a.f48571b);
                    case 24:
                        return (T) f5.h.c(this.f48596a.f48571b);
                    case 25:
                        return (T) new DnsResolver((t0) this.f48596a.f48582m.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48596a.f48585p.get(), (g5.a) this.f48596a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.dns.h) this.f48596a.f48587r.get());
                    case 26:
                        return (T) new g5.f((com.qennnsad.aknkaksd.data.repository.m) this.f48596a.f48585p.get(), (Gson) this.f48596a.f48575f.get());
                    case 27:
                        return (T) new JwtUtil((g5.a) this.f48596a.f48577h.get());
                    case 28:
                        return (T) new y((Context) this.f48596a.f48579j.get(), (g5.a) this.f48596a.f48577h.get());
                    case 29:
                        return (T) new com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.e((g5.a) this.f48596a.f48577h.get(), (JwtUtil) this.f48596a.F.get());
                    default:
                        throw new AssertionError(this.f48597b);
                }
            }
        }

        private void L(final f5.a appUpdateModuleParam, final dagger.hilt.android.internal.modules.c applicationContextModuleParam, final f5.g sdkModuleParam) {
            this.f48574e = dagger.internal.g.b(new a(this.f48573d, 3));
            this.f48575f = dagger.internal.g.b(new a(this.f48573d, 4));
            this.f48576g = dagger.internal.g.b(new a(this.f48573d, 2));
            this.f48577h = dagger.internal.g.b(new a(this.f48573d, 1));
            this.f48578i = dagger.internal.g.b(new a(this.f48573d, 5));
            this.f48579j = dagger.internal.g.b(new a(this.f48573d, 7));
            this.f48580k = dagger.internal.g.b(new a(this.f48573d, 6));
            this.f48581l = dagger.internal.g.b(new a(this.f48573d, 0));
            this.f48582m = dagger.internal.g.b(new a(this.f48573d, 10));
            this.f48583n = dagger.internal.g.b(new a(this.f48573d, 11));
            this.f48584o = dagger.internal.g.b(new a(this.f48573d, 12));
            this.f48585p = dagger.internal.g.b(new a(this.f48573d, 9));
            this.f48586q = dagger.internal.g.b(new a(this.f48573d, 13));
            this.f48587r = dagger.internal.g.b(new a(this.f48573d, 14));
            this.f48588s = dagger.internal.g.b(new a(this.f48573d, 16));
            this.f48589t = dagger.internal.g.b(new a(this.f48573d, 15));
            this.f48590u = dagger.internal.g.b(new a(this.f48573d, 18));
            this.f48591v = dagger.internal.g.b(new a(this.f48573d, 17));
            this.f48592w = dagger.internal.g.b(new a(this.f48573d, 8));
            this.f48593x = dagger.internal.g.b(new a(this.f48573d, 20));
            this.f48594y = dagger.internal.g.b(new a(this.f48573d, 19));
            this.f48595z = dagger.internal.g.b(new a(this.f48573d, 21));
            this.A = dagger.internal.g.b(new a(this.f48573d, 22));
            this.B = dagger.internal.g.b(new a(this.f48573d, 23));
            this.C = dagger.internal.g.b(new a(this.f48573d, 24));
            this.D = dagger.internal.g.b(new a(this.f48573d, 25));
            this.E = dagger.internal.g.b(new a(this.f48573d, 26));
            this.F = dagger.internal.g.b(new a(this.f48573d, 27));
            this.G = dagger.internal.g.b(new a(this.f48573d, 28));
            this.H = dagger.internal.g.b(new a(this.f48573d, 29));
        }

        private BeautyLiveApplication M(BeautyLiveApplication instance) {
            com.qennnsad.aknkaksd.a.c(instance, this.f48581l.get());
            com.qennnsad.aknkaksd.a.d(instance, this.f48577h.get());
            return instance;
        }

        @Override // dagger.hilt.android.internal.managers.k.a
        public h6.d a() {
            return new i(this.f48573d);
        }

        @Override // com.qennnsad.aknkaksd.c
        public void b(BeautyLiveApplication arg0) {
            M(arg0);
        }

        @Override // f5.d
        public f5.e c() {
            return this.f48592w.get();
        }

        @Override // dagger.hilt.android.flags.a.b
        public Set<Boolean> d() {
            return ImmutableSet.of();
        }

        @Override // dagger.hilt.android.internal.managers.b.InterfaceC0507b
        public h6.b e() {
            return new d(this.f48573d);
        }

        private k(f5.a appUpdateModuleParam, dagger.hilt.android.internal.modules.c applicationContextModuleParam, f5.g sdkModuleParam) {
            this.f48573d = this;
            this.f48570a = applicationContextModuleParam;
            this.f48571b = sdkModuleParam;
            this.f48572c = appUpdateModuleParam;
            L(appUpdateModuleParam, applicationContextModuleParam, sdkModuleParam);
        }
    }

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    private static final class l implements d.j.a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48598a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48599b;

        /* renamed from: c  reason: collision with root package name */
        private final c f48600c;

        /* renamed from: d  reason: collision with root package name */
        private View f48601d;

        @Override // h6.e
        /* renamed from: b */
        public d.j build() {
            dagger.internal.p.a(this.f48601d, View.class);
            return new m(this.f48598a, this.f48599b, this.f48600c, this.f48601d);
        }

        @Override // h6.e
        /* renamed from: c */
        public l a(View view) {
            this.f48601d = (View) dagger.internal.p.b(view);
            return this;
        }

        private l(k singletonCImpl, e activityRetainedCImpl, c activityCImpl) {
            this.f48598a = singletonCImpl;
            this.f48599b = activityRetainedCImpl;
            this.f48600c = activityCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class m extends d.j {

        /* renamed from: a  reason: collision with root package name */
        private final k f48602a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48603b;

        /* renamed from: c  reason: collision with root package name */
        private final c f48604c;

        /* renamed from: d  reason: collision with root package name */
        private final m f48605d;

        private m(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, View viewParam) {
            this.f48605d = this;
            this.f48602a = singletonCImpl;
            this.f48603b = activityRetainedCImpl;
            this.f48604c = activityCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class n implements d.l.a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48606a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48607b;

        /* renamed from: c  reason: collision with root package name */
        private SavedStateHandle f48608c;

        @Override // h6.f
        /* renamed from: b */
        public d.l build() {
            dagger.internal.p.a(this.f48608c, SavedStateHandle.class);
            return new o(this.f48606a, this.f48607b, this.f48608c);
        }

        @Override // h6.f
        /* renamed from: c */
        public n a(SavedStateHandle handle) {
            this.f48608c = (SavedStateHandle) dagger.internal.p.b(handle);
            return this;
        }

        private n(k singletonCImpl, e activityRetainedCImpl) {
            this.f48606a = singletonCImpl;
            this.f48607b = activityRetainedCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class o extends d.l {
        private u7.c<RoomSeatRankViewModel> A;
        private u7.c<SearchUserViewModel> B;
        private u7.c<SettingsViewModelProvider> C;
        private u7.c<SettingsViewModel> D;
        private u7.c<SharedViewModel> E;
        private u7.c<SignUpViewModel> F;
        private u7.c<SimpleWebViewViewModel> G;
        private u7.c<SplashViewModel> H;
        private u7.c<StreamChatViewModel> I;
        private u7.c<UpdateViewModel> J;
        private u7.c<UserProfileViewModel> K;
        private u7.c<VeganAnchorViewModel> L;
        private u7.c<VipAnchorViewModel> M;

        /* renamed from: a  reason: collision with root package name */
        private final SavedStateHandle f48609a;

        /* renamed from: b  reason: collision with root package name */
        private final k f48610b;

        /* renamed from: c  reason: collision with root package name */
        private final e f48611c;

        /* renamed from: d  reason: collision with root package name */
        private final o f48612d;

        /* renamed from: e  reason: collision with root package name */
        private u7.c<BlacklistViewModel> f48613e;

        /* renamed from: f  reason: collision with root package name */
        private u7.c<ChatListViewModelProvider> f48614f;

        /* renamed from: g  reason: collision with root package name */
        private u7.c<ChatViewModel> f48615g;

        /* renamed from: h  reason: collision with root package name */
        private u7.c<ContactListViewModel> f48616h;

        /* renamed from: i  reason: collision with root package name */
        private u7.c<ContributorsViewModel> f48617i;

        /* renamed from: j  reason: collision with root package name */
        private u7.c<EditProfileViewModel> f48618j;

        /* renamed from: k  reason: collision with root package name */
        private u7.c<FollowedAnchorViewModel> f48619k;

        /* renamed from: l  reason: collision with root package name */
        private u7.c<FollowersViewModel> f48620l;

        /* renamed from: m  reason: collision with root package name */
        private u7.c<HotAnchorViewModel> f48621m;

        /* renamed from: n  reason: collision with root package name */
        private u7.c<IndexViewModel> f48622n;

        /* renamed from: o  reason: collision with root package name */
        private u7.c<LoginViewModel> f48623o;

        /* renamed from: p  reason: collision with root package name */
        private u7.c<MainRankViewModel> f48624p;

        /* renamed from: q  reason: collision with root package name */
        private u7.c<MainViewModel> f48625q;

        /* renamed from: r  reason: collision with root package name */
        private u7.c<MallViewModel> f48626r;

        /* renamed from: s  reason: collision with root package name */
        private u7.c<MeProfileViewModel> f48627s;

        /* renamed from: t  reason: collision with root package name */
        private u7.c<ModifyPasswordViewModel> f48628t;

        /* renamed from: u  reason: collision with root package name */
        private u7.c<NearbyAnchorViewModel> f48629u;

        /* renamed from: v  reason: collision with root package name */
        private u7.c<PlayerViewModel> f48630v;

        /* renamed from: w  reason: collision with root package name */
        private u7.c<RankListViewModel> f48631w;

        /* renamed from: x  reason: collision with root package name */
        private u7.c<RankTodayViewModel> f48632x;

        /* renamed from: y  reason: collision with root package name */
        private u7.c<RankViewModel> f48633y;

        /* renamed from: z  reason: collision with root package name */
        private u7.c<RestorePasswordViewModel> f48634z;

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
        /* loaded from: classes3.dex */
        public static final class a<T> implements u7.c<T> {

            /* renamed from: a  reason: collision with root package name */
            private final k f48635a;

            /* renamed from: b  reason: collision with root package name */
            private final e f48636b;

            /* renamed from: c  reason: collision with root package name */
            private final o f48637c;

            /* renamed from: d  reason: collision with root package name */
            private final int f48638d;

            a(k singletonCImpl, e activityRetainedCImpl, o viewModelCImpl, int id) {
                this.f48635a = singletonCImpl;
                this.f48636b = activityRetainedCImpl;
                this.f48637c = viewModelCImpl;
                this.f48638d = id;
            }

            @Override // u7.c
            public T get() {
                switch (this.f48638d) {
                    case 0:
                        return (T) new BlacklistViewModel((com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), this.f48637c.C0(), this.f48637c.i1());
                    case 1:
                        return (T) new ChatListViewModelProvider((com.im.freechat.sdk.d) this.f48635a.B.get());
                    case 2:
                        return (T) new ChatViewModel();
                    case 3:
                        return (T) new ContactListViewModel((com.im.freechat.sdk.a) this.f48635a.C.get());
                    case 4:
                        return (T) new ContributorsViewModel(this.f48637c.f48609a, this.f48637c.D0(), this.f48637c.P0(), this.f48637c.v1(), (g5.a) this.f48635a.f48577h.get());
                    case 5:
                        return (T) new EditProfileViewModel((com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), this.f48637c.H1(), this.f48637c.F1(), this.f48637c.G1(), this.f48637c.C1(), this.f48637c.E1(), this.f48637c.B1(), this.f48637c.D1(), this.f48637c.K1());
                    case 6:
                        return (T) this.f48637c.S0(com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.e.c((g5.a) this.f48635a.f48577h.get(), this.f48637c.G0()));
                    case 7:
                        return (T) new FollowersViewModel(this.f48637c.f48609a, (g5.a) this.f48635a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), this.f48637c.J0());
                    case 8:
                        return (T) this.f48637c.T0(com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.c.c());
                    case 9:
                        return (T) new IndexViewModel((g5.a) this.f48635a.f48577h.get());
                    case 10:
                        return (T) new LoginViewModel((g5.a) this.f48635a.f48577h.get(), this.f48637c.r1(), this.f48637c.x0(), this.f48637c.c1(), this.f48637c.b1(), this.f48637c.H0(), this.f48637c.q1());
                    case 11:
                        return (T) new MainRankViewModel((y) this.f48635a.G.get());
                    case 12:
                        return (T) new MainViewModel((g5.a) this.f48635a.f48577h.get(), this.f48637c.A0(), this.f48637c.x1(), this.f48637c.t1(), this.f48637c.v1(), this.f48637c.y1(), this.f48637c.s1());
                    case 13:
                        return (T) new MallViewModel(this.f48637c.v0());
                    case 14:
                        return (T) new MeProfileViewModel((com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), (x4.a) this.f48635a.f48581l.get(), this.f48637c.v1(), this.f48637c.y1(), this.f48637c.w1(), this.f48637c.u1(), this.f48637c.K1());
                    case 15:
                        return (T) new ModifyPasswordViewModel(this.f48637c.e1());
                    case 16:
                        return (T) this.f48637c.U0(com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.c.c());
                    case 17:
                        return (T) new PlayerViewModel((com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), (g5.a) this.f48635a.f48577h.get(), (x4.a) this.f48635a.f48581l.get(), this.f48637c.L0(), this.f48637c.y1(), this.f48637c.P0(), this.f48637c.z0(), this.f48637c.w1(), this.f48637c.Y0(), this.f48637c.w0(), (com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.e) this.f48635a.H.get(), this.f48637c.O0(), this.f48637c.o1(), this.f48637c.p1(), this.f48637c.I0(), this.f48637c.G0(), this.f48637c.f1(), this.f48637c.X0(), this.f48637c.E0(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48635a.f48586q.get(), (e0) this.f48635a.f48588s.get());
                    case 18:
                        return (T) new RankListViewModel(this.f48637c.f48609a, (y) this.f48635a.G.get());
                    case 19:
                        return (T) new RankTodayViewModel(this.f48637c.f48609a, this.f48637c.N0(), this.f48637c.z0(), this.f48637c.A1(), (g5.a) this.f48635a.f48577h.get());
                    case 20:
                        return (T) new RankViewModel(this.f48637c.f48609a, this.f48637c.N0(), this.f48637c.z0(), this.f48637c.A1(), (g5.a) this.f48635a.f48577h.get(), (y) this.f48635a.G.get());
                    case 21:
                        return (T) new RestorePasswordViewModel(this.f48637c.q1(), this.f48637c.H0(), this.f48637c.u0(), (g5.a) this.f48635a.f48577h.get());
                    case 22:
                        return (T) new RoomSeatRankViewModel(this.f48637c.f48609a, this.f48637c.M0());
                    case 23:
                        return (T) new SearchUserViewModel((g5.a) this.f48635a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), (x4.a) this.f48635a.f48581l.get(), this.f48637c.K0(), this.f48637c.z0(), this.f48637c.A1());
                    case 24:
                        return (T) new SettingsViewModelProvider((com.im.freechat.sdk.d) this.f48635a.B.get());
                    case 25:
                        return (T) new SettingsViewModel(this.f48637c.I1(), this.f48637c.J1(), this.f48637c.d1());
                    case 26:
                        return (T) new SharedViewModel((g5.a) this.f48635a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), (x4.a) this.f48635a.f48581l.get(), this.f48637c.m1(), this.f48637c.l1(), this.f48637c.a1(), this.f48637c.Q0(), this.f48637c.y0());
                    case 27:
                        return (T) new SignUpViewModel(this.f48637c.H0(), this.f48637c.q1(), this.f48637c.h1(), this.f48637c.Z0(), (g5.a) this.f48635a.f48577h.get());
                    case 28:
                        return (T) new SimpleWebViewViewModel((com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), this.f48637c.v0(), this.f48637c.g1());
                    case 29:
                        return (T) new SplashViewModel(this.f48637c.f48609a, this.f48637c.n1(), this.f48637c.k1(), this.f48637c.j1(), this.f48637c.b1(), (g5.a) this.f48635a.f48577h.get(), (JwtUtil) this.f48635a.F.get(), (DnsResolver) this.f48635a.D.get(), (x4.a) this.f48635a.f48581l.get());
                    case 30:
                        return (T) new StreamChatViewModel((g5.a) this.f48635a.f48577h.get(), this.f48637c.F0(), (x4.a) this.f48635a.f48581l.get());
                    case 31:
                        return (T) new UpdateViewModel((m1) this.f48635a.f48594y.get());
                    case 32:
                        return (T) new UserProfileViewModel((g5.a) this.f48635a.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48635a.f48585p.get(), this.f48637c.P0(), this.f48637c.B0(), this.f48637c.z0(), this.f48637c.A1(), this.f48637c.t0(), this.f48637c.z1());
                    case 33:
                        return (T) this.f48637c.V0(com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.c.c());
                    case 34:
                        return (T) this.f48637c.W0(com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.c.c());
                    default:
                        throw new AssertionError(this.f48638d);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.app.c A0() {
            return new com.qennnsad.aknkaksd.domain.usecase.app.c((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.other_user.q A1() {
            return new com.qennnsad.aknkaksd.domain.usecase.other_user.q((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.anchor.c B0() {
            return new com.qennnsad.aknkaksd.domain.usecase.anchor.c((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public i0 B1() {
            return new i0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.d C0() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.d((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public m0 C1() {
            return new m0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.b D0() {
            return new com.qennnsad.aknkaksd.domain.usecase.b((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.q0 D1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.q0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.h E0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.h((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public u0 E1() {
            return new u0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.k F0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.k((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public y0 F1() {
            return new y0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.anchor.f G0() {
            return new com.qennnsad.aknkaksd.domain.usecase.anchor.f((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public c1 G1() {
            return new c1((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.m H0() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.m((g5.a) this.f48610b.f48577h.get(), (g5.f) this.f48610b.E.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public g1 H1() {
            return new g1((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.anchor.i I0() {
            return new com.qennnsad.aknkaksd.domain.usecase.anchor.i((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public k1 I1() {
            return new k1((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.anchor.m J0() {
            return new com.qennnsad.aknkaksd.domain.usecase.anchor.m((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public o1 J1() {
            return new o1((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.anchor.p K0() {
            return new com.qennnsad.aknkaksd.domain.usecase.anchor.p((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.s1 K1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.s1((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.n L0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.n((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.e M0() {
            return new com.qennnsad.aknkaksd.domain.usecase.e((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.h N0() {
            return new com.qennnsad.aknkaksd.domain.usecase.h((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.q O0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.q((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.other_user.j P0() {
            return new com.qennnsad.aknkaksd.domain.usecase.other_user.j((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.r Q0() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.r((g5.a) this.f48610b.f48577h.get(), (g5.f) this.f48610b.E.get(), (x4.a) this.f48610b.f48581l.get());
        }

        private void R0(final SavedStateHandle savedStateHandleParam) {
            this.f48613e = new a(this.f48610b, this.f48611c, this.f48612d, 0);
            this.f48614f = new a(this.f48610b, this.f48611c, this.f48612d, 1);
            this.f48615g = new a(this.f48610b, this.f48611c, this.f48612d, 2);
            this.f48616h = new a(this.f48610b, this.f48611c, this.f48612d, 3);
            this.f48617i = new a(this.f48610b, this.f48611c, this.f48612d, 4);
            this.f48618j = new a(this.f48610b, this.f48611c, this.f48612d, 5);
            this.f48619k = new a(this.f48610b, this.f48611c, this.f48612d, 6);
            this.f48620l = new a(this.f48610b, this.f48611c, this.f48612d, 7);
            this.f48621m = new a(this.f48610b, this.f48611c, this.f48612d, 8);
            this.f48622n = new a(this.f48610b, this.f48611c, this.f48612d, 9);
            this.f48623o = new a(this.f48610b, this.f48611c, this.f48612d, 10);
            this.f48624p = new a(this.f48610b, this.f48611c, this.f48612d, 11);
            this.f48625q = new a(this.f48610b, this.f48611c, this.f48612d, 12);
            this.f48626r = new a(this.f48610b, this.f48611c, this.f48612d, 13);
            this.f48627s = new a(this.f48610b, this.f48611c, this.f48612d, 14);
            this.f48628t = new a(this.f48610b, this.f48611c, this.f48612d, 15);
            this.f48629u = new a(this.f48610b, this.f48611c, this.f48612d, 16);
            this.f48630v = new a(this.f48610b, this.f48611c, this.f48612d, 17);
            this.f48631w = new a(this.f48610b, this.f48611c, this.f48612d, 18);
            this.f48632x = new a(this.f48610b, this.f48611c, this.f48612d, 19);
            this.f48633y = new a(this.f48610b, this.f48611c, this.f48612d, 20);
            this.f48634z = new a(this.f48610b, this.f48611c, this.f48612d, 21);
            this.A = new a(this.f48610b, this.f48611c, this.f48612d, 22);
            this.B = new a(this.f48610b, this.f48611c, this.f48612d, 23);
            this.C = new a(this.f48610b, this.f48611c, this.f48612d, 24);
            this.D = new a(this.f48610b, this.f48611c, this.f48612d, 25);
            this.E = new a(this.f48610b, this.f48611c, this.f48612d, 26);
            this.F = new a(this.f48610b, this.f48611c, this.f48612d, 27);
            this.G = new a(this.f48610b, this.f48611c, this.f48612d, 28);
            this.H = new a(this.f48610b, this.f48611c, this.f48612d, 29);
            this.I = new a(this.f48610b, this.f48611c, this.f48612d, 30);
            this.J = new a(this.f48610b, this.f48611c, this.f48612d, 31);
            this.K = new a(this.f48610b, this.f48611c, this.f48612d, 32);
            this.L = new a(this.f48610b, this.f48611c, this.f48612d, 33);
            this.M = new a(this.f48610b, this.f48611c, this.f48612d, 34);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public FollowedAnchorViewModel S0(FollowedAnchorViewModel instance) {
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(instance, I0());
            return instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public HotAnchorViewModel T0(HotAnchorViewModel instance) {
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(instance, I0());
            return instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public NearbyAnchorViewModel U0(NearbyAnchorViewModel instance) {
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(instance, I0());
            return instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public VeganAnchorViewModel V0(VeganAnchorViewModel instance) {
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(instance, I0());
            return instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public VipAnchorViewModel W0(VipAnchorViewModel instance) {
            com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(instance, I0());
            return instance;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.t X0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.t((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.h Y0() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.h((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.t Z0() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.t((g5.a) this.f48610b.f48577h.get(), (x4.a) this.f48610b.f48581l.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get(), (g5.f) this.f48610b.E.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.anchor.s a1() {
            return new com.qennnsad.aknkaksd.domain.usecase.anchor.s((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.v b1() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.v((g5.a) this.f48610b.f48577h.get(), (g5.f) this.f48610b.E.get(), (JwtUtil) this.f48610b.F.get(), (x4.a) this.f48610b.f48581l.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.x c1() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.x((g5.a) this.f48610b.f48577h.get(), (g5.f) this.f48610b.E.get(), (JwtUtil) this.f48610b.F.get(), (x4.a) this.f48610b.f48581l.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public c0 d1() {
            return new c0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (x4.a) this.f48610b.f48581l.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.k e1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.k((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.x f1() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.x((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.gamecenter.b g1() {
            return new com.qennnsad.aknkaksd.domain.usecase.gamecenter.b(dagger.hilt.android.internal.modules.e.c(this.f48610b.f48570a), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.e0 h1() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.e0((g5.a) this.f48610b.f48577h.get(), (x4.a) this.f48610b.f48581l.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get(), (g5.f) this.f48610b.E.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.n i1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.n((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.app.g j1() {
            return new com.qennnsad.aknkaksd.domain.usecase.app.g((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get(), (DnsResolver) this.f48610b.D.get(), (t0) this.f48610b.f48582m.get(), (com.qennnsad.aknkaksd.data.repository.dns.h) this.f48610b.f48587r.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.app.l k1() {
            return new com.qennnsad.aknkaksd.domain.usecase.app.l((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.gamecenter.f l1() {
            return new com.qennnsad.aknkaksd.domain.usecase.gamecenter.f((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.gamecenter.j m1() {
            return new com.qennnsad.aknkaksd.domain.usecase.gamecenter.j((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.app.o n1() {
            return new com.qennnsad.aknkaksd.domain.usecase.app.o((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.a0 o1() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.a0((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.e0 p1() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.e0((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get(), (x4.a) this.f48610b.f48581l.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public h0 q1() {
            return new h0((g5.a) this.f48610b.f48577h.get(), (g5.f) this.f48610b.E.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.app.s r1() {
            return new com.qennnsad.aknkaksd.domain.usecase.app.s((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (DnsResolver) this.f48610b.D.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.i0 s1() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.i0((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.other_user.c t0() {
            return new com.qennnsad.aknkaksd.domain.usecase.other_user.c((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.gift.d t1() {
            return new com.qennnsad.aknkaksd.domain.usecase.gift.d(dagger.hilt.android.internal.modules.e.c(this.f48610b.f48570a), (g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.auth.j u0() {
            return new com.qennnsad.aknkaksd.domain.usecase.auth.j((g5.f) this.f48610b.E.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.s u1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.s((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.webview.b v0() {
            return new com.qennnsad.aknkaksd.domain.usecase.webview.b((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public w v1() {
            return new w((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.b w0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.b((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.a0 w1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.a0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.a x0() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.a((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.app.w x1() {
            return new com.qennnsad.aknkaksd.domain.usecase.app.w((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.room.e y0() {
            return new com.qennnsad.aknkaksd.domain.usecase.room.e((com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get(), (g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.websocket.j) this.f48610b.f48586q.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.user.e0 y1() {
            return new com.qennnsad.aknkaksd.domain.usecase.user.e0((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.other_user.g z0() {
            return new com.qennnsad.aknkaksd.domain.usecase.other_user.g((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.qennnsad.aknkaksd.domain.usecase.other_user.m z1() {
            return new com.qennnsad.aknkaksd.domain.usecase.other_user.m((g5.a) this.f48610b.f48577h.get(), (com.qennnsad.aknkaksd.data.repository.m) this.f48610b.f48585p.get());
        }

        @Override // dagger.hilt.android.internal.lifecycle.c.InterfaceC0505c
        public Map<String, u7.c<ViewModel>> a() {
            return ImmutableMap.builderWithExpectedSize(35).d("com.qennnsad.aknkaksd.presentation.ui.main.setting.BlacklistViewModel", this.f48613e).d("com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListViewModelProvider", this.f48614f).d("com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatViewModel", this.f48615g).d("com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.ContactListViewModel", this.f48616h).d("com.qennnsad.aknkaksd.presentation.module.contributors.ContributorsViewModel", this.f48617i).d("com.qennnsad.aknkaksd.presentation.ui.main.me.edit.EditProfileViewModel", this.f48618j).d("com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.FollowedAnchorViewModel", this.f48619k).d("com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersViewModel", this.f48620l).d("com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.HotAnchorViewModel", this.f48621m).d("com.qennnsad.aknkaksd.presentation.module.main.index.IndexViewModel", this.f48622n).d("com.qennnsad.aknkaksd.presentation.module.auth.login.LoginViewModel", this.f48623o).d("com.qennnsad.aknkaksd.presentation.module.main.rank.MainRankViewModel", this.f48624p).d("com.qennnsad.aknkaksd.presentation.ui.main.MainViewModel", this.f48625q).d("com.qennnsad.aknkaksd.presentation.ui.main.mall.MallViewModel", this.f48626r).d("com.qennnsad.aknkaksd.presentation.module.main.me.MeProfileViewModel", this.f48627s).d("com.qennnsad.aknkaksd.presentation.ui.main.setting.ModifyPasswordViewModel", this.f48628t).d("com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.NearbyAnchorViewModel", this.f48629u).d("com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerViewModel", this.f48630v).d("com.qennnsad.aknkaksd.presentation.module.rank.container.RankListViewModel", this.f48631w).d("com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayViewModel", this.f48632x).d("com.qennnsad.aknkaksd.presentation.module.rank.RankViewModel", this.f48633y).d("com.qennnsad.aknkaksd.presentation.module.auth.findpass.RestorePasswordViewModel", this.f48634z).d("com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankViewModel", this.A).d("com.qennnsad.aknkaksd.presentation.module.main.search.SearchUserViewModel", this.B).d("com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.SettingsViewModelProvider", this.C).d("com.qennnsad.aknkaksd.presentation.ui.main.setting.SettingsViewModel", this.D).d("com.qennnsad.aknkaksd.presentation.common.SharedViewModel", this.E).d("com.qennnsad.aknkaksd.presentation.module.auth.signup.SignUpViewModel", this.F).d("com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewViewModel", this.G).d("com.qennnsad.aknkaksd.presentation.module.splash.SplashViewModel", this.H).d("com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatViewModel", this.I).d("com.qennnsad.aknkaksd.presentation.module.appupdate.UpdateViewModel", this.J).d("com.qennnsad.aknkaksd.presentation.module.main.profile.UserProfileViewModel", this.K).d("com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.VeganAnchorViewModel", this.L).d("com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.VipAnchorViewModel", this.M).a();
        }

        private o(k singletonCImpl, e activityRetainedCImpl, SavedStateHandle savedStateHandleParam) {
            this.f48612d = this;
            this.f48610b = singletonCImpl;
            this.f48611c = activityRetainedCImpl;
            this.f48609a = savedStateHandleParam;
            R0(savedStateHandleParam);
        }
    }

    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    private static final class p implements d.n.a {

        /* renamed from: a  reason: collision with root package name */
        private final k f48639a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48640b;

        /* renamed from: c  reason: collision with root package name */
        private final c f48641c;

        /* renamed from: d  reason: collision with root package name */
        private final h f48642d;

        /* renamed from: e  reason: collision with root package name */
        private View f48643e;

        @Override // h6.g
        /* renamed from: b */
        public d.n build() {
            dagger.internal.p.a(this.f48643e, View.class);
            return new q(this.f48639a, this.f48640b, this.f48641c, this.f48642d, this.f48643e);
        }

        @Override // h6.g
        /* renamed from: c */
        public p a(View view) {
            this.f48643e = (View) dagger.internal.p.b(view);
            return this;
        }

        private p(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, h fragmentCImpl) {
            this.f48639a = singletonCImpl;
            this.f48640b = activityRetainedCImpl;
            this.f48641c = activityCImpl;
            this.f48642d = fragmentCImpl;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DaggerBeautyLiveApplication_HiltComponents_SingletonC.java */
    /* loaded from: classes3.dex */
    public static final class q extends d.n {

        /* renamed from: a  reason: collision with root package name */
        private final k f48644a;

        /* renamed from: b  reason: collision with root package name */
        private final e f48645b;

        /* renamed from: c  reason: collision with root package name */
        private final c f48646c;

        /* renamed from: d  reason: collision with root package name */
        private final h f48647d;

        /* renamed from: e  reason: collision with root package name */
        private final q f48648e;

        private q(k singletonCImpl, e activityRetainedCImpl, c activityCImpl, h fragmentCImpl, View viewParam) {
            this.f48648e = this;
            this.f48644a = singletonCImpl;
            this.f48645b = activityRetainedCImpl;
            this.f48646c = activityCImpl;
            this.f48647d = fragmentCImpl;
        }
    }

    private f() {
    }

    public static C0407f a() {
        return new C0407f();
    }
}
