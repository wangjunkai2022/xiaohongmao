package com.giphy.sdk.ui.universallist;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SmartViewHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&J\b\u0010\u0006\u001a\u00020\u0004H&J\u0016\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007H\u0016¨\u0006\u000f"}, d2 = {"Lcom/giphy/sdk/ui/universallist/j;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "data", "", "b", "d", "Lkotlin/Function0;", "onLoad", "", "c", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public abstract class j extends RecyclerView.ViewHolder {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@m8.g View itemView) {
        super(itemView);
        Intrinsics.checkNotNullParameter(itemView, "itemView");
    }

    public abstract void b(@m8.h Object obj);

    public boolean c(@m8.g Function0<Unit> onLoad) {
        Intrinsics.checkNotNullParameter(onLoad, "onLoad");
        return false;
    }

    public abstract void d();
}
