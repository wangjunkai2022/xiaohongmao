package com.giphy.sdk.ui.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.giphy.sdk.ui.p;
import com.google.android.gms.common.internal.x;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GPHSuggestionsView.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0017"}, d2 = {"Lcom/giphy/sdk/ui/views/h;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "Lcom/giphy/sdk/ui/h;", "suggestions", "", "a", "Ljava/util/List;", "Lcom/giphy/sdk/ui/views/f;", "b", "Lcom/giphy/sdk/ui/views/f;", "suggestionsAdapter", "Li2/e;", "theme", "Li2/e;", "getTheme", "()Li2/e;", "Landroid/content/Context;", "context", "Lkotlin/Function1;", x.a.f29212a, "<init>", "(Landroid/content/Context;Li2/e;Lkotlin/jvm/functions/Function1;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class h extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.giphy.sdk.ui.h> f19182a;

    /* renamed from: b  reason: collision with root package name */
    private f f19183b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final i2.e f19184c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(@m8.h Context context, @m8.g i2.e theme, @m8.g Function1<? super com.giphy.sdk.ui.h, Unit> listener) {
        super(context);
        List<com.giphy.sdk.ui.h> emptyList;
        Intrinsics.checkNotNullParameter(theme, "theme");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f19184c = theme;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.f19182a = emptyList;
        LayoutInflater.from(context).inflate(p.m.f18122q0, (ViewGroup) this, true);
        RecyclerView recyclerView = (RecyclerView) findViewById(p.j.M4);
        this.f19183b = new f(emptyList, theme, listener);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context);
        linearLayoutManager.setOrientation(0);
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setItemAnimator(new DefaultItemAnimator());
        recyclerView.setAdapter(this.f19183b);
        this.f19183b.notifyDataSetChanged();
    }

    public final void a(@m8.g List<com.giphy.sdk.ui.h> suggestions) {
        Intrinsics.checkNotNullParameter(suggestions, "suggestions");
        this.f19183b.i(suggestions);
        this.f19183b.notifyDataSetChanged();
    }

    @m8.g
    public final i2.e getTheme() {
        return this.f19184c;
    }
}
