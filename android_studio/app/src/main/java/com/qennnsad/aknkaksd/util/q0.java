package com.qennnsad.aknkaksd.util;

import android.content.Context;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.Mysterable;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MysteryUtil.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\b\b\u0001\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007R\u0014\u0010\u000b\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/qennnsad/aknkaksd/util/q0;", "", "Lcom/qennnsad/aknkaksd/data/bean/Mysterable;", "anon", "", "noClipBoard", "", "b", "Landroid/content/Context;", "a", "Landroid/content/Context;", "appContext", "Lg5/a;", "localDataManager", "<init>", "(Landroid/content/Context;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class q0 {
    @m8.g

    /* renamed from: a */
    private final Context f54888a;
    @m8.g

    /* renamed from: b */
    private final g5.a f54889b;

    @u7.a
    public q0(@m6.b @m8.g Context appContext, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f54888a = appContext;
        this.f54889b = localDataManager;
    }

    public static /* synthetic */ void c(q0 q0Var, Mysterable mysterable, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        q0Var.b(mysterable, z9);
    }

    @JvmOverloads
    public final void a(@m8.g Mysterable anon) {
        Intrinsics.checkNotNullParameter(anon, "anon");
        c(this, anon, false, 2, null);
    }

    @JvmOverloads
    public final void b(@m8.g Mysterable anon, boolean z9) {
        Intrinsics.checkNotNullParameter(anon, "anon");
        if (!z9 && this.f54889b.F()) {
            Object mysteryUid = anon.getMysteryUid();
            String str = (mysteryUid == null || (str = mysteryUid.toString()) == null) ? "null" : "null";
            Context context = this.f54888a;
            h1.e(context, str, null, context.getString(R.string.user_id_clip_success), 2, null);
            return;
        }
        com.qennnsad.aknkaksd.util.toast.a.m(R.string.msg_mystery_profile_hidden, false, 2, null);
    }
}
