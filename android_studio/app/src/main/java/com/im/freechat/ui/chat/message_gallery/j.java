package com.im.freechat.ui.chat.message_gallery;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MessageGalleryLayoutManager.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a:\u0010\b\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¨\u0006\t"}, d2 = {"Landroidx/recyclerview/widget/RecyclerView;", "Landroidx/recyclerview/widget/SnapHelper;", "snapHelper", "Lkotlin/Function1;", "", "", "onPositionScroll", "onPositionIdle", "a", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j {
    public static final void a(@m8.g RecyclerView recyclerView, @m8.g SnapHelper snapHelper, @m8.g Function1<? super Integer, Unit> onPositionScroll, @m8.g Function1<? super Integer, Unit> onPositionIdle) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(snapHelper, "snapHelper");
        Intrinsics.checkNotNullParameter(onPositionScroll, "onPositionScroll");
        Intrinsics.checkNotNullParameter(onPositionIdle, "onPositionIdle");
        snapHelper.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new k(snapHelper, onPositionScroll, onPositionIdle));
    }
}
