package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SidePanelButtonAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0011B)\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u0010\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u0014¢\u0006\u0004\b#\u0010$J\u001c\u0010\u0007\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001c\u0010\u000b\u001a\u00020\n2\n\u0010\b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010\"\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006%"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "h", "holder", "position", "", "g", "getItemCount", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "item", "k", "", "a", "Ljava/util/List;", "list", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "onItemClick", "", "c", "Z", "e", "()Z", "j", "(Z)V", "circular", "f", "()I", "itemWithIndicatorToFreezeAutoSwipe", "<init>", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class v1 extends RecyclerView.Adapter<a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final List<t1> f54005a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<t1, Unit> f54006b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f54007c;

    /* compiled from: SidePanelButtonAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/t1;", "item", "", "b", "Le5/w2;", "binding", "Le5/w2;", "c", "()Le5/w2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/v1;Le5/w2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final e5.w2 f54008a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ v1 f54009b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g v1 v1Var, e5.w2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f54009b = v1Var;
            this.f54008a = binding;
        }

        public final void b(@m8.g t1 item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.f54008a.f63278b.setImageResource(item.a());
            TextView textView = this.f54008a.f63279c;
            Intrinsics.checkNotNullExpressionValue(textView, "binding.tvIndicator");
            textView.setVisibility(item.b() != 0 ? 0 : 8);
            this.f54008a.f63279c.setText(String.valueOf(item.b()));
        }

        @m8.g
        public final e5.w2 c() {
            return this.f54008a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v1(@m8.g List<t1> list, @m8.g Function1<? super t1, Unit> onItemClick) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
        this.f54005a = list;
        this.f54006b = onItemClick;
        this.f54007c = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(v1 this$0, a this_apply, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this$0.f54006b.invoke(this$0.f54005a.get(this_apply.getBindingAdapterPosition() % this$0.f54005a.size()));
    }

    public final boolean e() {
        return this.f54007c;
    }

    public final int f() {
        int i4 = 0;
        for (t1 t1Var : this.f54005a) {
            if (t1Var.b() > 0) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        t1 t1Var;
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (this.f54007c) {
            List<t1> list = this.f54005a;
            t1Var = list.get(i4 % list.size());
        } else {
            t1Var = this.f54005a.get(i4);
        }
        holder.b(t1Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.f54007c) {
            if (this.f54005a.isEmpty()) {
                return 0;
            }
            return this.f54005a.size() * 20;
        }
        return this.f54005a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: h */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        e5.w2 d4 = e5.w2.d(com.qennnsad.aknkaksd.util.s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        final a aVar = new a(this, d4);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.player.u1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                v1.i(v1.this, aVar, view);
            }
        });
        return aVar;
    }

    public final void j(boolean z9) {
        this.f54007c = z9;
    }

    public final void k(@m8.g t1 item) {
        Intrinsics.checkNotNullParameter(item, "item");
        int i4 = 0;
        for (Object obj : this.f54005a) {
            int i10 = i4 + 1;
            if (i4 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            t1 t1Var = (t1) obj;
            if (!Intrinsics.areEqual(t1Var.getClass().getSimpleName(), item.getClass().getSimpleName())) {
                t1Var = null;
            }
            if (t1Var != null) {
                this.f54005a.set(i4, item);
                notifyItemChanged(i4);
            }
            i4 = i10;
        }
    }
}
