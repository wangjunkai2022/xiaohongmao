package com.qennnsad.aknkaksd.util.extentions;

import android.widget.ImageButton;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.didi.live.spring.R;
import e5.f3;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: PlayerBindingExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u001a\u0010\b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005¨\u0006\t"}, d2 = {"Le5/f3;", "", "statusBarHeight", "", "b", "", "enabled", "isPinnedEnabled", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b {
    public static final void a(@g f3 f3Var, boolean z9, boolean z10) {
        Intrinsics.checkNotNullParameter(f3Var, "<this>");
        ImageButton imageButton = f3Var.f62410g.f63027d;
        Intrinsics.checkNotNullExpressionValue(imageButton, "liveOperation.roomImgbtnScale");
        imageButton.setVisibility(z9 ? 0 : 8);
        ImageButton imageButton2 = f3Var.f62410g.f63031h;
        Intrinsics.checkNotNullExpressionValue(imageButton2, "liveOperation.rotatePlayerView");
        imageButton2.setVisibility(z9 ? 0 : 8);
        ImageButton imageButton3 = f3Var.f62410g.f63032i;
        Intrinsics.checkNotNullExpressionValue(imageButton3, "liveOperation.translationView");
        imageButton3.setVisibility(z9 ? 0 : 8);
        ImageButton imageButton4 = f3Var.f62410g.f63030g;
        Intrinsics.checkNotNullExpressionValue(imageButton4, "liveOperation.roomPinnedMsg");
        imageButton4.setVisibility(z9 && z10 ? 0 : 8);
    }

    public static final void b(@g f3 f3Var, int i4) {
        Intrinsics.checkNotNullParameter(f3Var, "<this>");
        f3Var.f62416m.setPadding(0, i4, 0, 0);
        f3Var.f62422s.f63110o.setLayoutManager(new LinearLayoutManager(f3Var.getRoot().getContext(), 0, false));
        f3Var.f62422s.f63110o.addItemDecoration(com.github.magiepooh.recycleritemdecoration.c.a(f3Var.getRoot().getContext()).g(0, R.drawable.divider_decoration_transparent_w5).a());
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(f3Var.getRoot().getContext());
        linearLayoutManager.setStackFromEnd(true);
        f3Var.f62420q.setLayoutManager(linearLayoutManager);
        f3Var.f62420q.setNestedScrollingEnabled(true);
    }
}
