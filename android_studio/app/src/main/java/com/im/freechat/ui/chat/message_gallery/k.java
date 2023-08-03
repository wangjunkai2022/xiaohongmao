package com.im.freechat.ui.chat.message_gallery;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MessageGalleryLayoutManager.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u000f\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u000f¢\u0006\u0004\b\u001a\u0010\u001bJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0005H\u0016R\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\rR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R \u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0019\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/ui/chat/message_gallery/k;", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "Landroidx/recyclerview/widget/SnapHelper;", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "", "a", "dx", "dy", "", "onScrolled", "newState", "onScrollStateChanged", "Landroidx/recyclerview/widget/SnapHelper;", "snapHelper", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "onPositionScroll", "c", "onPositionIdle", "d", "I", "currentScrollPosition", "e", "currentIdlePosition", "<init>", "(Landroidx/recyclerview/widget/SnapHelper;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k extends RecyclerView.OnScrollListener {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final SnapHelper f43159a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<Integer, Unit> f43160b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<Integer, Unit> f43161c;

    /* renamed from: d  reason: collision with root package name */
    private int f43162d;

    /* renamed from: e  reason: collision with root package name */
    private int f43163e;

    /* JADX WARN: Multi-variable type inference failed */
    public k(@m8.g SnapHelper snapHelper, @m8.g Function1<? super Integer, Unit> onPositionScroll, @m8.g Function1<? super Integer, Unit> onPositionIdle) {
        Intrinsics.checkNotNullParameter(snapHelper, "snapHelper");
        Intrinsics.checkNotNullParameter(onPositionScroll, "onPositionScroll");
        Intrinsics.checkNotNullParameter(onPositionIdle, "onPositionIdle");
        this.f43159a = snapHelper;
        this.f43160b = onPositionScroll;
        this.f43161c = onPositionIdle;
        this.f43162d = -1;
        this.f43163e = -1;
    }

    private final int a(SnapHelper snapHelper, RecyclerView recyclerView) {
        View findSnapView;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null || (findSnapView = snapHelper.findSnapView(layoutManager)) == null) {
            return -1;
        }
        return layoutManager.getPosition(findSnapView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrollStateChanged(@m8.g RecyclerView recyclerView, int i4) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        if (i4 == 0) {
            int a10 = a(this.f43159a, recyclerView);
            if (this.f43163e != a10) {
                this.f43161c.invoke(Integer.valueOf(a10));
                this.f43163e = a10;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public void onScrolled(@m8.g RecyclerView recyclerView, int i4, int i10) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        int a10 = a(this.f43159a, recyclerView);
        if (this.f43162d != a10) {
            this.f43160b.invoke(Integer.valueOf(a10));
            this.f43162d = a10;
        }
    }
}
