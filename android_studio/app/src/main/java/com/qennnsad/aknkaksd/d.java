package com.qennnsad.aknkaksd;

import com.qennnsad.aknkaksd.presentation.common.o;
import com.qennnsad.aknkaksd.presentation.module.appupdate.i;
import com.qennnsad.aknkaksd.presentation.module.auth.findpass.l;
import com.qennnsad.aknkaksd.presentation.module.auth.login.s;
import com.qennnsad.aknkaksd.presentation.module.auth.signup.r;
import com.qennnsad.aknkaksd.presentation.module.contributors.k;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.f;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.d;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.d;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.d;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.d;
import com.qennnsad.aknkaksd.presentation.module.main.followers.k;
import com.qennnsad.aknkaksd.presentation.module.main.index.q;
import com.qennnsad.aknkaksd.presentation.module.main.me.t;
import com.qennnsad.aknkaksd.presentation.module.main.me.z;
import com.qennnsad.aknkaksd.presentation.module.main.profile.o;
import com.qennnsad.aknkaksd.presentation.module.main.rank.f;
import com.qennnsad.aknkaksd.presentation.module.main.search.l;
import com.qennnsad.aknkaksd.presentation.module.main.webview.r;
import com.qennnsad.aknkaksd.presentation.module.rank.container.g;
import com.qennnsad.aknkaksd.presentation.module.rank.dialogs.h;
import com.qennnsad.aknkaksd.presentation.module.rank.j;
import com.qennnsad.aknkaksd.presentation.module.splash.o;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.h;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.l;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.i;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.m;
import com.qennnsad.aknkaksd.presentation.ui.main.mall.j;
import com.qennnsad.aknkaksd.presentation.ui.main.me.edit.p;
import com.qennnsad.aknkaksd.presentation.ui.main.me.edit.r;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.d0;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.i;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.r;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.y;
import com.qennnsad.aknkaksd.presentation.ui.main.w;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.o1;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.r1;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.h;
import com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.k;
import d6.k;
import dagger.hilt.android.flags.a;
import dagger.hilt.android.internal.lifecycle.a;
import dagger.hilt.android.internal.lifecycle.c;
import dagger.hilt.android.internal.managers.ViewComponentManager;
import dagger.hilt.android.internal.managers.a;
import dagger.hilt.android.internal.managers.g;
import dagger.hilt.android.internal.managers.k;

/* compiled from: BeautyLiveApplication_HiltComponents.java */
/* loaded from: classes3.dex */
public final class d {

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @d6.k(modules = {f.class, k.class, dagger.hilt.android.internal.modules.f.class, dagger.hilt.android.internal.lifecycle.e.class})
    @n6.b
    /* loaded from: classes3.dex */
    public static abstract class a implements com.qennnsad.aknkaksd.presentation.module.auth.b, com.qennnsad.aknkaksd.presentation.module.auth.c, com.qennnsad.aknkaksd.presentation.module.contributors.b, com.qennnsad.aknkaksd.presentation.module.main.profile.c, com.qennnsad.aknkaksd.presentation.module.main.webview.f, com.qennnsad.aknkaksd.presentation.module.splash.l, com.qennnsad.aknkaksd.presentation.ui.b, com.qennnsad.aknkaksd.presentation.ui.chat.im.b, com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.a, com.qennnsad.aknkaksd.presentation.ui.room.manage.d, com.qennnsad.aknkaksd.presentation.ui.room.player.player.e, o1, f6.a, a.InterfaceC0504a, dagger.hilt.android.internal.lifecycle.f, g.a, ViewComponentManager.a, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* renamed from: com.qennnsad.aknkaksd.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        interface InterfaceC0401a extends h6.a {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {a.class})
    /* loaded from: classes3.dex */
    interface b {
        @d6.a
        h6.a a(a.InterfaceC0401a builder);
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @n6.a
    @d6.k(modules = {b.class, m.class, i.b.class, h.b.class, i.b.class, l.b.class, k.b.class, r.b.class, f.b.class, k.b.class, dagger.hilt.android.internal.managers.j.class, d.b.class, q.b.class, s.b.class, f.b.class, w.b.class, j.b.class, z.b.class, r.b.class, d.b.class, r1.b.class, g.b.class, h.b.class, j.b.class, l.b.class, h.b.class, l.b.class, m.b.class, d0.b.class, o.b.class, r.b.class, r.b.class, o.b.class, k.b.class, i.b.class, o.b.class, d.b.class, d.b.class})
    /* loaded from: classes3.dex */
    public static abstract class c implements f6.b, a.InterfaceC0506a, dagger.hilt.android.internal.managers.i, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* loaded from: classes3.dex */
        interface a extends h6.b {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {c.class})
    /* renamed from: com.qennnsad.aknkaksd.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    interface InterfaceC0402d {
        @d6.a
        h6.b a(c.a builder);
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @d6.k(modules = {o.class})
    @n6.c
    /* loaded from: classes3.dex */
    public static abstract class e implements com.qennnsad.aknkaksd.presentation.module.appupdate.g, com.qennnsad.aknkaksd.presentation.module.auth.l, com.qennnsad.aknkaksd.presentation.module.auth.findpass.j, com.qennnsad.aknkaksd.presentation.module.auth.login.o, com.qennnsad.aknkaksd.presentation.module.contributors.g, com.qennnsad.aknkaksd.presentation.module.main.anchors.followed.d, com.qennnsad.aknkaksd.presentation.module.main.anchors.hot.b, com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.b, com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan.b, com.qennnsad.aknkaksd.presentation.module.main.anchors.vip.b, com.qennnsad.aknkaksd.presentation.module.main.followers.h, com.qennnsad.aknkaksd.presentation.module.main.index.o, t, com.qennnsad.aknkaksd.presentation.module.main.profile.m, com.qennnsad.aknkaksd.presentation.module.main.rank.d, com.qennnsad.aknkaksd.presentation.module.main.search.i, com.qennnsad.aknkaksd.presentation.module.main.webview.o, com.qennnsad.aknkaksd.presentation.module.rank.e, com.qennnsad.aknkaksd.presentation.module.rank.container.e, com.qennnsad.aknkaksd.presentation.module.rank.dialogs.e, com.qennnsad.aknkaksd.presentation.ui.base.c, com.qennnsad.aknkaksd.presentation.ui.chat.im.g, com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.e, com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.j, com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.k, com.qennnsad.aknkaksd.presentation.ui.main.t, com.qennnsad.aknkaksd.presentation.ui.main.mall.g, p, com.qennnsad.aknkaksd.presentation.ui.main.setting.e, com.qennnsad.aknkaksd.presentation.ui.main.setting.p, y, com.qennnsad.aknkaksd.presentation.ui.room.h, com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.h, com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.i, com.qennnsad.aknkaksd.presentation.ui.room.manage.l, com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog.c, com.qennnsad.aknkaksd.presentation.ui.room.rank.d, com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.h, com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.g, com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.i, com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.q, f6.c, a.c, ViewComponentManager.b, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* loaded from: classes3.dex */
        interface a extends h6.c {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {e.class})
    /* loaded from: classes3.dex */
    interface f {
        @d6.a
        h6.c a(e.a builder);
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @d6.k
    @n6.d
    /* loaded from: classes3.dex */
    public static abstract class g implements com.qennnsad.aknkaksd.data.websocket.g, f6.d, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* loaded from: classes3.dex */
        interface a extends h6.d {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {g.class})
    /* loaded from: classes3.dex */
    interface h {
        @d6.a
        h6.d a(g.a builder);
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @u7.f
    @d6.d(modules = {f5.a.class, dagger.hilt.android.internal.modules.c.class, InterfaceC0402d.class, h.class, dagger.hilt.android.flags.b.class, f5.g.class})
    /* loaded from: classes3.dex */
    public static abstract class i implements com.qennnsad.aknkaksd.c, f5.d, a.b, dagger.hilt.android.internal.managers.h, k.a, p6.a, q6.b {
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @d6.k
    @n6.f
    /* loaded from: classes3.dex */
    public static abstract class j implements f6.e, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* loaded from: classes3.dex */
        interface a extends h6.e {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {j.class})
    /* loaded from: classes3.dex */
    interface k {
        @d6.a
        h6.e a(j.a builder);
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @d6.k(modules = {i.a.class, h.a.class, i.a.class, l.a.class, k.a.class, r.a.class, f.a.class, k.a.class, dagger.hilt.android.internal.lifecycle.g.class, d.a.class, q.a.class, s.a.class, f.a.class, w.a.class, j.a.class, z.a.class, r.a.class, d.a.class, r1.a.class, g.a.class, h.a.class, j.a.class, l.a.class, h.a.class, l.a.class, m.a.class, d0.a.class, o.a.class, r.a.class, r.a.class, o.a.class, k.a.class, i.a.class, o.a.class, d.a.class, d.a.class})
    @n6.e
    /* loaded from: classes3.dex */
    public static abstract class l implements f6.f, c.InterfaceC0505c, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* loaded from: classes3.dex */
        interface a extends h6.f {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {l.class})
    /* loaded from: classes3.dex */
    interface m {
        @d6.a
        h6.f a(l.a builder);
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @d6.k
    @n6.f
    /* loaded from: classes3.dex */
    public static abstract class n implements f6.g, q6.b {

        /* compiled from: BeautyLiveApplication_HiltComponents.java */
        @k.a
        /* loaded from: classes3.dex */
        interface a extends h6.g {
        }
    }

    /* compiled from: BeautyLiveApplication_HiltComponents.java */
    @z6.b
    @d6.h(subcomponents = {n.class})
    /* loaded from: classes3.dex */
    interface o {
        @d6.a
        h6.g a(n.a builder);
    }

    private d() {
    }
}
