package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.facebook.drawee.view.SimpleDraweeView;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.c;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HistoryItemAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0012B'\u0012\u0006\u0010\u0016\u001a\u00020\u0011\u0012\u0016\b\u0002\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0017¢\u0006\u0004\b$\u0010%J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u001c\u0010\b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H\u0016J*\u0010\u000f\u001a\u00020\u000e2\n\u0010\t\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\n\u001a\u00020\u00032\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0016J\u001c\u0010\u0010\u001a\u00020\u000e2\n\u0010\t\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0003H\u0016R\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\"\u0010\u001b\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR6\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00180\u000b2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00180\u000b8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"¨\u0006&"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;", "", "getItemCount", "Landroid/view/ViewGroup;", "parent", "viewType", "h", "holder", "position", "", "", "payloads", "", "g", "f", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "e", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "b", "Lkotlin/jvm/functions/Function1;", "onItemClick", "value", "c", "Ljava/util/List;", "d", "()Ljava/util/List;", ContextChain.TAG_INFRA, "(Ljava/util/List;)V", "itemsList", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends RecyclerView.Adapter<a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m f53330a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final Function1<PinnedMessageBean, Unit> f53331b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private List<PinnedMessageBean> f53332c;

    /* compiled from: HistoryItemAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\t\u001a\u00020\bR\u0017\u0010\u000e\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u0014¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "data", "", "pos", "Landroid/view/View;", "c", "", "f", "a", "Landroid/view/View;", "e", "()Landroid/view/View;", "itemView", "Lcom/facebook/drawee/view/SimpleDraweeView;", "b", "Lcom/facebook/drawee/view/SimpleDraweeView;", "ivAvatar", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "tvPrice", "d", "tvName", "tvContent", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/history/c;Landroid/view/View;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final View f53333a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final SimpleDraweeView f53334b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final TextView f53335c;
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final TextView f53336d;
        @m8.g

        /* renamed from: e  reason: collision with root package name */
        private final TextView f53337e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c f53338f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g c cVar, View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.f53338f = cVar;
            this.f53333a = itemView;
            View findViewById = itemView.findViewById(R.id.ivAvatar);
            Intrinsics.checkNotNullExpressionValue(findViewById, "itemView.findViewById(R.id.ivAvatar)");
            this.f53334b = (SimpleDraweeView) findViewById;
            View findViewById2 = itemView.findViewById(R.id.tvPrice);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "itemView.findViewById(R.id.tvPrice)");
            this.f53335c = (TextView) findViewById2;
            View findViewById3 = itemView.findViewById(R.id.tvName);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "itemView.findViewById(R.id.tvName)");
            this.f53336d = (TextView) findViewById3;
            View findViewById4 = itemView.findViewById(R.id.tvContent);
            Intrinsics.checkNotNullExpressionValue(findViewById4, "itemView.findViewById(R.id.tvContent)");
            this.f53337e = (TextView) findViewById4;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(c this$0, int i4, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.notifyItemChanged(i4, "payload");
        }

        @m8.g
        public final View c(@m8.g PinnedMessageBean data, final int i4) {
            ItemTypeAttrs[] values;
            Intrinsics.checkNotNullParameter(data, "data");
            for (ItemTypeAttrs itemTypeAttrs : ItemTypeAttrs.values()) {
                if (itemTypeAttrs.getType() == Integer.parseInt(data.getType())) {
                    View view = this.f53333a;
                    final c cVar = this.f53338f;
                    view.setBackgroundResource(itemTypeAttrs.getBgExpandResId());
                    view.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.b
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            c.a.d(c.this, i4, view2);
                        }
                    });
                    this.f53334b.setImageURI(String.valueOf(this.f53338f.e().j(data.getAvatar())));
                    this.f53335c.setText(TextUtils.concat(String.valueOf(itemTypeAttrs.getPrice()), this.f53335c.getContext().getString(R.string.pinned_price_unit)));
                    this.f53336d.setText(TextUtils.concat(data.getNickname(), ":"));
                    this.f53337e.setText(data.getContent());
                    View itemView = this.f53333a;
                    Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                    return itemView;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        @m8.g
        public final View e() {
            return this.f53333a;
        }

        public final void f() {
            TextView textView = this.f53337e;
            if (textView.getMaxLines() == 1) {
                textView.setMaxLines(50);
            } else {
                textView.setMaxLines(1);
            }
        }
    }

    public /* synthetic */ c(m mVar, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(mVar, (i4 & 2) != 0 ? null : function1);
    }

    @m8.g
    public final List<PinnedMessageBean> d() {
        return this.f53332c;
    }

    @m8.g
    public final m e() {
        return this.f53330a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.c(this.f53332c.get(i4), i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@m8.g a holder, int i4, @m8.g List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i4);
        } else {
            holder.f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f53332c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: h */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.pinned_msg_itemview_collapsed_history, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …d_history, parent, false)");
        return new a(this, inflate);
    }

    public final void i(@m8.g List<PinnedMessageBean> value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f53332c = value;
        notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@m8.g m sourceFactory, @m8.h Function1<? super PinnedMessageBean, Unit> function1) {
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f53330a = sourceFactory;
        this.f53331b = function1;
        this.f53332c = new ArrayList();
    }
}
