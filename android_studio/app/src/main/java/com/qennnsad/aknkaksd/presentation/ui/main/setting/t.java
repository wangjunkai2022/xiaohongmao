package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import com.qennnsad.aknkaksd.data.bean.user.SettingsBean;
import e5.d3;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: SettingsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R<\u0010\u0017\u001a\u001c\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/t;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/user/SettingsBean;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/b0;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "f", "holder", "position", "", "e", "Lkotlin/Function1;", "Lkotlin/Pair;", "", "", "a", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", "g", "(Lkotlin/jvm/functions/Function1;)V", "itemCheckListener", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t extends ListAdapter<SettingsBean, b0> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super Pair<String, Boolean>, Unit> f53238a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"Lkotlin/Pair;", "", "", "it", "", "a", "(Lkotlin/Pair;)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<Pair<? extends String, ? extends Boolean>, Unit> {
        a() {
            super(1);
        }

        public final void a(@m8.g Pair<String, Boolean> it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<Pair<String, Boolean>, Unit> d4 = t.this.d();
            if (d4 != null) {
                d4.invoke(it);
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Pair<? extends String, ? extends Boolean> pair) {
            a(pair);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public t() {
        /*
            r1 = this;
            com.qennnsad.aknkaksd.presentation.ui.main.setting.u$a r0 = com.qennnsad.aknkaksd.presentation.ui.main.setting.u.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.setting.t.<init>():void");
    }

    @m8.h
    public final Function1<Pair<String, Boolean>, Unit> d() {
        return this.f53238a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@m8.g b0 holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.e(new a());
        SettingsBean item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.c(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: f */
    public b0 onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        d3 d4 = d3.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        return new b0(d4);
    }

    public final void g(@m8.h Function1<? super Pair<String, Boolean>, Unit> function1) {
        this.f53238a = function1;
    }
}
