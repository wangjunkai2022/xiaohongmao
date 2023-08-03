package com.qennnsad.aknkaksd.presentation.ui.room.stream_chat;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.DepositOption;
import com.qennnsad.aknkaksd.util.s1;
import e5.m2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: DepositOptionsAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB\u001b\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0004\b\u0011\u0010\u0012J\u001c\u0010\b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R \u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "g", "holder", "position", "", "f", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "onItemClick", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends ListAdapter<DepositOption, C0454a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Function1<DepositOption, Unit> f54260a;

    /* compiled from: DepositOptionsAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "item", "", "b", "Le5/m2;", "binding", "Le5/m2;", "c", "()Le5/m2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/a;Le5/m2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public final class C0454a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final m2 f54261a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f54262b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0454a(@m8.g a aVar, m2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f54262b = aVar;
            this.f54261a = binding;
        }

        public final void b(@m8.g DepositOption item) {
            Intrinsics.checkNotNullParameter(item, "item");
            ConstraintLayout root = this.f54261a.getRoot();
            root.setSelected(item.getSelected());
            root.setActivated(item.getHighlighted());
            TextView textView = this.f54261a.f62742b;
            Context context = textView.getContext();
            boolean selected = item.getSelected();
            int i4 = R.color.white;
            textView.setTextColor(ContextCompat.getColor(context, selected ? R.color.white : R.color.im_me_message_bubble));
            textView.setText(textView.getContext().getString(item.getCoins() == Integer.MAX_VALUE ? R.string.stream_chat_deposit_options_other_amount : R.string.stream_chat_deposit_options_coin, Integer.valueOf(item.getCoins())));
            TextView textView2 = this.f54261a.f62743c;
            if (item.getCoins() == Integer.MAX_VALUE) {
                Intrinsics.checkNotNullExpressionValue(textView2, "");
                textView2.setVisibility(8);
                return;
            }
            Intrinsics.checkNotNullExpressionValue(textView2, "");
            textView2.setVisibility(0);
            Context context2 = textView2.getContext();
            if (!item.getSelected()) {
                i4 = R.color.coin_text;
            }
            textView2.setTextColor(ContextCompat.getColor(context2, i4));
            textView2.setText(textView2.getContext().getString(R.string.stream_chat_deposit_options_yuan, Integer.valueOf(item.getYuan())));
        }

        @m8.g
        public final m2 c() {
            return this.f54261a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DepositOptionsAdapter.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0454a f54264b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(C0454a c0454a) {
            super(0);
            this.f54264b = c0454a;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            DepositOption d4 = a.d(a.this, this.f54264b.getBindingAdapterPosition());
            if (d4 != null) {
                a.this.f54260a.invoke(d4);
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public a(@m8.g kotlin.jvm.functions.Function1<? super com.qennnsad.aknkaksd.data.bean.DepositOption, kotlin.Unit> r2) {
        /*
            r1 = this;
            java.lang.String r0 = "onItemClick"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.b$a r0 = com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.b.a()
            r1.<init>(r0)
            r1.f54260a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.a.<init>(kotlin.jvm.functions.Function1):void");
    }

    public static final /* synthetic */ DepositOption d(a aVar, int i4) {
        return aVar.getItem(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g C0454a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        DepositOption item = getItem(i4);
        if (item != null) {
            holder.b(item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: g */
    public C0454a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        m2 d4 = m2.d(s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(parent.layoutInflator, parent, false)");
        C0454a c0454a = new C0454a(this, d4);
        View itemView = c0454a.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        s1.U(itemView, 0L, new b(c0454a), 1, null);
        return c0454a;
    }
}
