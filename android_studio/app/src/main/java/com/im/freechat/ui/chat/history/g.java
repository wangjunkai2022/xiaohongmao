package com.im.freechat.ui.chat.history;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u001a\u0010\b\u001a\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00040\u0006R0\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/ui/chat/history/g;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "", "b", "Lkotlin/Function1;", "l", "e", "a", "Lkotlin/jvm/functions/Function1;", "c", "()Lkotlin/jvm/functions/Function1;", "d", "(Lkotlin/jvm/functions/Function1;)V", "itemClickCallback", "Landroid/view/View;", "v", "<init>", "(Landroid/view/View;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class g extends RecyclerView.ViewHolder {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super a, Unit> f42899a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(@m8.g View v9) {
        super(v9);
        Intrinsics.checkNotNullParameter(v9, "v");
    }

    public abstract void b(@m8.g a aVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.h
    public final Function1<a, Unit> c() {
        return this.f42899a;
    }

    protected final void d(@m8.h Function1<? super a, Unit> function1) {
        this.f42899a = function1;
    }

    public final void e(@m8.g Function1<? super a, Unit> l10) {
        Intrinsics.checkNotNullParameter(l10, "l");
        this.f42899a = l10;
    }
}
