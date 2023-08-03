package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.ListAdapter;
import com.qennnsad.aknkaksd.data.bean.room.BlacklistedUserBean;
import e5.f2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: BlacklistAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR0\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00118\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/room/BlacklistedUserBean;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/g;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "f", "holder", "position", "", "e", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "", "b", "Lkotlin/jvm/functions/Function1;", "d", "()Lkotlin/jvm/functions/Function1;", "g", "(Lkotlin/jvm/functions/Function1;)V", "itemClickListener", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends ListAdapter<BlacklistedUserBean, g> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.data.repository.m f53196a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super String, Unit> f53197b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlacklistAdapter.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.main.setting.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0440a extends Lambda implements Function1<String, Unit> {
        C0440a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            Function1<String, Unit> d4 = a.this.d();
            if (d4 != null) {
                d4.invoke(it);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public a(@m8.g com.qennnsad.aknkaksd.data.repository.m r2) {
        /*
            r1 = this;
            java.lang.String r0 = "sourceFactory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            com.qennnsad.aknkaksd.presentation.ui.main.setting.b$a r0 = com.qennnsad.aknkaksd.presentation.ui.main.setting.b.a()
            r1.<init>(r0)
            r1.f53196a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.main.setting.a.<init>(com.qennnsad.aknkaksd.data.repository.m):void");
    }

    @m8.h
    public final Function1<String, Unit> d() {
        return this.f53197b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@m8.g g holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.g(new C0440a());
        BlacklistedUserBean item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.c(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: f */
    public g onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        com.qennnsad.aknkaksd.data.repository.m mVar = this.f53196a;
        f2 d4 = f2.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        return new g(mVar, d4);
    }

    public final void g(@m8.h Function1<? super String, Unit> function1) {
        this.f53197b = function1;
    }
}
