package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: PurchaseItemAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB)\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\u0012¢\u0006\u0004\b\u001c\u0010\u001dJ\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0005H\u0016J\b\u0010\f\u001a\u00020\u0005H\u0016R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n0\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", ContextChain.TAG_INFRA, "holder", "position", "", "h", "getItemCount", "", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "a", "Ljava/util/List;", "itemsList", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "onItemSelected", "c", "I", "selected", "g", "()Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "selectedItem", "<init>", "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends RecyclerView.Adapter<a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final List<ItemTypeAttrs> f53396a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<Integer, Unit> f53397b;

    /* renamed from: c  reason: collision with root package name */
    private int f53398c;

    /* compiled from: PurchaseItemAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0019\u0010\u001aJ\"\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004J\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/purchase/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/item/ItemTypeAttrs;", "data", "Lkotlin/Function1;", "", "", "onSelect", "c", "", "isSelected", "isYellowBg", "g", "Landroid/view/View;", "a", "Landroid/view/View;", "e", "()Landroid/view/View;", "itemView", "Landroid/widget/TextView;", "b", "Landroid/widget/TextView;", "f", "()Landroid/widget/TextView;", "tvTitle", "<init>", "(Landroid/view/View;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final View f53399a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final TextView f53400b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.f53399a = itemView;
            View findViewById = itemView.findViewById(R.id.tvTitle);
            Intrinsics.checkNotNullExpressionValue(findViewById, "itemView.findViewById(R.id.tvTitle)");
            this.f53400b = (TextView) findViewById;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(Function1 onSelect, a this$0, View view) {
            Intrinsics.checkNotNullParameter(onSelect, "$onSelect");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            onSelect.invoke(Integer.valueOf(this$0.getAbsoluteAdapterPosition()));
        }

        public final void c(@m8.g ItemTypeAttrs data, @m8.g final Function1<? super Integer, Unit> onSelect) {
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(onSelect, "onSelect");
            View view = this.f53399a;
            view.setBackgroundResource(data.getBgPurchaseResId());
            view.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    c.a.d(Function1.this, this, view2);
                }
            });
            TextView textView = this.f53400b;
            Context context = textView.getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            textView.setText(k5.a.a(data, context));
        }

        @m8.g
        public final View e() {
            return this.f53399a;
        }

        @m8.g
        public final TextView f() {
            return this.f53400b;
        }

        public final void g(boolean z9, boolean z10) {
            Typeface typeface;
            int i4 = z10 ? R.color.color_pin_purcgase_title_for_yellow : R.color.md_grey_200;
            int i10 = z10 ? R.color.md_red_900 : R.color.white;
            TextView textView = this.f53400b;
            Context context = textView.getContext();
            if (z9) {
                i4 = i10;
            }
            textView.setTextColor(ContextCompat.getColor(context, i4));
            if (z9) {
                typeface = Typeface.DEFAULT_BOLD;
            } else {
                typeface = Typeface.DEFAULT;
            }
            textView.setTypeface(typeface);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PurchaseItemAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function1<Integer, Unit> {
        b() {
            super(1);
        }

        public final void a(int i4) {
            c.this.f53398c = i4;
            c.this.notifyDataSetChanged();
            c.this.f53397b.invoke(Integer.valueOf(c.this.f53398c));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@m8.g List<? extends ItemTypeAttrs> itemsList, @m8.g Function1<? super Integer, Unit> onItemSelected) {
        Intrinsics.checkNotNullParameter(itemsList, "itemsList");
        Intrinsics.checkNotNullParameter(onItemSelected, "onItemSelected");
        this.f53396a = itemsList;
        this.f53397b = onItemSelected;
        this.f53398c = -1;
    }

    @m8.h
    public final ItemTypeAttrs g() {
        int i4 = this.f53398c;
        if (i4 == -1) {
            return null;
        }
        return this.f53396a.get(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f53396a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: h */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ItemTypeAttrs itemTypeAttrs = this.f53396a.get(i4);
        holder.c(itemTypeAttrs, new b());
        holder.g(this.f53398c == i4, itemTypeAttrs.getType() == 6);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: i */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.pinned_msg_purchase_iteview, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …e_iteview, parent, false)");
        return new a(inflate);
    }
}
