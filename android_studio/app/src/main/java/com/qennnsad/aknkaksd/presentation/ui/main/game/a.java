package com.qennnsad.aknkaksd.presentation.ui.main.game;

import android.view.View;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.base.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: CasinoTrampolineFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u0000 \n2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0003\u001a\u00020\u0002H\u0014J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/b;", "", "a0", "Landroid/view/View;", "view", "", "d0", "<init>", "()V", "v", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends b {
    @g

    /* renamed from: v  reason: collision with root package name */
    public static final C0436a f52796v = new C0436a(null);

    /* renamed from: w  reason: collision with root package name */
    public static final long f52797w = 500;

    /* compiled from: CasinoTrampolineFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/game/a$a;", "", "", "TRAMPOLININE_DELAY", "J", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.main.game.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0436a {
        private C0436a() {
        }

        public /* synthetic */ C0436a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.b
    protected int a0() {
        return R.layout.fragment_simple_webview;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.b
    protected void d0(@h View view) {
        if (view != null) {
            View findViewById = view.findViewById(R.id.toolbar_refresh);
            Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<View>(R.id.toolbar_refresh)");
            findViewById.setVisibility(8);
        }
    }
}
