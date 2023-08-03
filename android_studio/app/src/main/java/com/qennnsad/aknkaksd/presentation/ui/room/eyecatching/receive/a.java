package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.CountDownTimer;
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
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.item.ItemTypeAttrs;
import com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.u0;
import m8.g;
import m8.h;

/* compiled from: ReceivedPinMessageAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 <2\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002=\u001aB/\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010\u001c\u001a\u00020\u0019\u0012\u0016\b\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b\u0018\u00010\u001d¢\u0006\u0004\b:\u0010;J\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0002J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0016J\u001c\u0010\u0013\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0006H\u0016J*\u0010\u0017\u001a\u00020\b2\n\u0010\u0014\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00062\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0003H\u0016J\u001c\u0010\u0018\u001a\u00020\b2\n\u0010\u0014\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0006H\u0016R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b\u0018\u00010\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010#\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R6\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R*\u00102\u001a\u00020\n2\u0006\u0010$\u001a\u00020\n8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0016\u00104\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010-R\u001a\u00107\u001a\b\u0012\u0004\u0012\u0002050\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u0010&¨\u0006>"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;", "", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "t", "", "pos", "", "q", "", u0.f86831d, "p", "getItemCount", "position", "getItemViewType", "Landroid/view/ViewGroup;", "parent", "viewType", "o", "holder", "", "payloads", "n", "m", "Lcom/qennnsad/aknkaksd/data/repository/m;", "b", "Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "c", "Lkotlin/jvm/functions/Function1;", "onComplaintClick", "d", "I", "expandedPos", "value", "e", "Ljava/util/List;", "l", "()Ljava/util/List;", "s", "(Ljava/util/List;)V", "itemsList", "f", "Z", "k", "()Z", "r", "(Z)V", "canSendComplaint", "g", "isPk", "Landroid/os/CountDownTimer;", "h", "timers", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V", ContextChain.TAG_INFRA, "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@SuppressLint({"NotifyDataSetChanged"})
/* loaded from: classes3.dex */
public final class a extends RecyclerView.Adapter<b> {
    @g

    /* renamed from: i  reason: collision with root package name */
    public static final C0442a f53413i = new C0442a(null);

    /* renamed from: j  reason: collision with root package name */
    public static final int f53414j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f53415k = -1;

    /* renamed from: l  reason: collision with root package name */
    private static final int f53416l = -2;
    @g

    /* renamed from: a  reason: collision with root package name */
    private final g5.a f53417a;
    @g

    /* renamed from: b  reason: collision with root package name */
    private final m f53418b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private final Function1<PinnedMessageBean, Unit> f53419c;

    /* renamed from: d  reason: collision with root package name */
    private int f53420d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private List<PinnedMessageBean> f53421e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f53422f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f53423g;
    @g

    /* renamed from: h  reason: collision with root package name */
    private final List<CountDownTimer> f53424h;

    /* compiled from: ReceivedPinMessageAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$a;", "", "", "ITEM_COLLAPSED", "I", "ITEM_EXPANDED", "VISIBLE_ITEMS_MAX", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0442a {
        private C0442a() {
        }

        public /* synthetic */ C0442a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: ReceivedPinMessageAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0006\u0010\u0016\u001a\u00020\u0011¢\u0006\u0004\b'\u0010(J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0017\u0010\u0010\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0016\u001a\u00020\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\rR\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001eR\u0016\u0010\"\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001eR\u0016\u0010#\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001eR\u0016\u0010%\u001a\u0004\u0018\u00010\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001eR\u0014\u0010&\u001a\u00020\u00118BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010\u0015¨\u0006)"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "", "j", "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;", "data", "Lkotlin/Function1;", "", "onItemClick", "Landroid/view/View;", "d", "k", "a", "Landroid/view/View;", "h", "()Landroid/view/View;", "itemView", "", "b", "Z", "g", "()Z", "expanded", "c", "rootExpand", "Lcom/facebook/drawee/view/SimpleDraweeView;", "Lcom/facebook/drawee/view/SimpleDraweeView;", "ivAvatar", "Landroid/widget/TextView;", "e", "Landroid/widget/TextView;", "tvPrice", "f", "tvName", "tvContent", "tvTimer", ContextChain.TAG_INFRA, "tvComplaint", "isPkAndCollapsed", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;Landroid/view/View;Z)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class b extends RecyclerView.ViewHolder {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final View f53425a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f53426b;
        @g

        /* renamed from: c  reason: collision with root package name */
        private final View f53427c;
        @g

        /* renamed from: d  reason: collision with root package name */
        private final SimpleDraweeView f53428d;
        @g

        /* renamed from: e  reason: collision with root package name */
        private final TextView f53429e;
        @h

        /* renamed from: f  reason: collision with root package name */
        private final TextView f53430f;
        @h

        /* renamed from: g  reason: collision with root package name */
        private final TextView f53431g;
        @h

        /* renamed from: h  reason: collision with root package name */
        private final TextView f53432h;
        @h

        /* renamed from: i  reason: collision with root package name */
        private final TextView f53433i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ a f53434j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@g a aVar, View itemView, boolean z9) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
            this.f53434j = aVar;
            this.f53425a = itemView;
            this.f53426b = z9;
            View findViewById = itemView.findViewById(R.id.rootExpand);
            Intrinsics.checkNotNullExpressionValue(findViewById, "itemView.findViewById(R.id.rootExpand)");
            this.f53427c = findViewById;
            View findViewById2 = itemView.findViewById(R.id.ivAvatar);
            Intrinsics.checkNotNullExpressionValue(findViewById2, "itemView.findViewById(R.id.ivAvatar)");
            this.f53428d = (SimpleDraweeView) findViewById2;
            View findViewById3 = itemView.findViewById(R.id.tvPrice);
            Intrinsics.checkNotNullExpressionValue(findViewById3, "itemView.findViewById(R.id.tvPrice)");
            this.f53429e = (TextView) findViewById3;
            this.f53430f = (TextView) itemView.findViewById(R.id.tvName);
            this.f53431g = (TextView) itemView.findViewById(R.id.tvContent);
            this.f53432h = (TextView) itemView.findViewById(R.id.tvTimer);
            this.f53433i = (TextView) itemView.findViewById(R.id.tvComplaint);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(Function1 onItemClick, b this$0, View view) {
            Intrinsics.checkNotNullParameter(onItemClick, "$onItemClick");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            onItemClick.invoke(Integer.valueOf(this$0.getAbsoluteAdapterPosition()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(a this$0, PinnedMessageBean data, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(data, "$data");
            Function1 function1 = this$0.f53419c;
            if (function1 != null) {
                function1.invoke(data);
            }
        }

        private final boolean i() {
            return this.f53434j.f53423g && !this.f53426b;
        }

        private final void j() {
            View view = this.f53427c;
            if (i()) {
                this.f53429e.setVisibility(8);
                view.setAlpha(0.5f);
                Context context = view.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                int f10 = h1.f(context, 5);
                view.setPadding(f10, view.getPaddingTop(), f10, view.getPaddingBottom());
            }
        }

        @g
        public final View d(@g final PinnedMessageBean data, @g final Function1<? super Integer, Unit> onItemClick) {
            ItemTypeAttrs[] values;
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(onItemClick, "onItemClick");
            for (ItemTypeAttrs itemTypeAttrs : ItemTypeAttrs.values()) {
                if (itemTypeAttrs.getType() == Integer.parseInt(data.getType())) {
                    this.f53425a.setBackgroundResource(this.f53426b ? itemTypeAttrs.getBgExpandResId() : itemTypeAttrs.getBgPurchaseResId());
                    this.f53427c.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.c
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            a.b.e(Function1.this, this, view);
                        }
                    });
                    if (!this.f53434j.k()) {
                        TextView textView = this.f53433i;
                        if (textView != null) {
                            textView.setVisibility(8);
                        }
                    } else {
                        TextView textView2 = this.f53433i;
                        if (textView2 != null) {
                            textView2.setVisibility(0);
                        }
                        TextView textView3 = this.f53433i;
                        if (textView3 != null) {
                            final a aVar = this.f53434j;
                            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.receive.b
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    a.b.f(a.this, data, view);
                                }
                            });
                        }
                    }
                    this.f53428d.setImageURI(String.valueOf(this.f53434j.f53418b.j(data.getAvatar())));
                    this.f53429e.setText(String.valueOf(itemTypeAttrs.getPrice()));
                    TextView textView4 = this.f53430f;
                    if (textView4 != null) {
                        textView4.setText(TextUtils.concat(data.getNickname(), ":"));
                    }
                    TextView textView5 = this.f53431g;
                    if (textView5 != null) {
                        textView5.setText(data.getContent());
                    }
                    k(data);
                    j();
                    if (getAbsoluteAdapterPosition() > 2) {
                        this.f53425a.setVisibility(8);
                    } else {
                        this.f53425a.setVisibility(0);
                    }
                    View itemView = this.f53425a;
                    Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
                    return itemView;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }

        public final boolean g() {
            return this.f53426b;
        }

        @g
        public final View h() {
            return this.f53425a;
        }

        public final void k(@g PinnedMessageBean data) {
            Intrinsics.checkNotNullParameter(data, "data");
            long remainedMillis = data.remainedMillis(this.f53434j.f53417a.w());
            TextView textView = this.f53432h;
            if (textView == null) {
                return;
            }
            textView.setText(data.isExpired(this.f53434j.f53417a.w()) ? "..." : o.f54868a.c(remainedMillis));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReceivedPinMessageAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function1<Integer, Unit> {
        c() {
            super(1);
        }

        public final void a(int i4) {
            if (i4 == a.this.f53420d) {
                a.this.f53420d = -1;
                a.this.notifyDataSetChanged();
                return;
            }
            if (a.this.f53420d != -1) {
                a aVar = a.this;
                aVar.notifyItemChanged(aVar.f53420d);
            }
            a.this.f53420d = i4;
            a.this.notifyItemChanged(i4);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: ReceivedPinMessageAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$d", "Landroid/os/CountDownTimer;", "", "millisUntilFinished", "", "onTick", "onFinish", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List<PinnedMessageBean> f53436a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f53437b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ PinnedMessageBean f53438c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(List<PinnedMessageBean> list, a aVar, PinnedMessageBean pinnedMessageBean, long j4) {
            super(j4, 1000L);
            this.f53436a = list;
            this.f53437b = aVar;
            this.f53438c = pinnedMessageBean;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            List<PinnedMessageBean> list = this.f53436a;
            PinnedMessageBean pinnedMessageBean = this.f53438c;
            Iterator<PinnedMessageBean> it = list.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                } else if (Intrinsics.areEqual(it.next().getId(), pinnedMessageBean.getId())) {
                    break;
                } else {
                    i4++;
                }
            }
            this.f53437b.q(i4);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j4) {
            List<PinnedMessageBean> list = this.f53436a;
            PinnedMessageBean pinnedMessageBean = this.f53438c;
            Iterator<PinnedMessageBean> it = list.iterator();
            int i4 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i4 = -1;
                    break;
                } else if (Intrinsics.areEqual(it.next().getId(), pinnedMessageBean.getId())) {
                    break;
                } else {
                    i4++;
                }
            }
            this.f53437b.notifyItemChanged(i4, "Timer");
        }
    }

    public /* synthetic */ a(g5.a aVar, m mVar, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, mVar, (i4 & 4) != 0 ? null : function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(int i4) {
        int size = this.f53421e.size();
        this.f53421e.remove(i4);
        if (this.f53421e.size() == 0 || i4 == this.f53420d) {
            this.f53420d = -1;
        }
        if (size > 3) {
            notifyDataSetChanged();
        } else {
            notifyItemRemoved(i4);
        }
    }

    private final List<PinnedMessageBean> t(List<PinnedMessageBean> list) {
        List<CountDownTimer> list2 = this.f53424h;
        for (CountDownTimer countDownTimer : list2) {
            countDownTimer.cancel();
        }
        list2.clear();
        for (PinnedMessageBean pinnedMessageBean : list) {
            List<CountDownTimer> list3 = this.f53424h;
            CountDownTimer start = new d(list, this, pinnedMessageBean, pinnedMessageBean.remainedMillis(this.f53417a.w())).start();
            Intrinsics.checkNotNullExpressionValue(start, "private fun MutableList<…        return this\n    }");
            list3.add(start);
        }
        return list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f53421e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return i4 == this.f53420d ? -2 : -1;
    }

    public final boolean k() {
        return this.f53422f;
    }

    @g
    public final List<PinnedMessageBean> l() {
        return this.f53421e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: m */
    public void onBindViewHolder(@g b holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.d(this.f53421e.get(i4), new c());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: n */
    public void onBindViewHolder(@g b holder, int i4, @g List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        if (payloads.isEmpty()) {
            onBindViewHolder(holder, i4);
        } else {
            holder.k(this.f53421e.get(i4));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @g
    /* renamed from: o */
    public b onCreateViewHolder(@g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View inflate = LayoutInflater.from(parent.getContext()).inflate(i4 != -2 ? i4 != -1 ? 0 : R.layout.pinned_msg_itemview_collapsed : R.layout.pinned_msg_itemview_expanded, parent, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(parent.context)\n   …te(layout, parent, false)");
        return new b(this, inflate, i4 == -2);
    }

    public final void p(boolean z9) {
        this.f53423g = z9;
        notifyDataSetChanged();
    }

    public final void r(boolean z9) {
        int i4;
        this.f53422f = z9;
        if (!z9 || (i4 = this.f53420d) < 0) {
            return;
        }
        notifyItemChanged(i4);
    }

    public final void s(@g List<PinnedMessageBean> value) {
        Object orNull;
        List<PinnedMessageBean> mutableList;
        Intrinsics.checkNotNullParameter(value, "value");
        orNull = CollectionsKt___CollectionsKt.getOrNull(this.f53421e, this.f53420d);
        PinnedMessageBean pinnedMessageBean = (PinnedMessageBean) orNull;
        String id = pinnedMessageBean != null ? pinnedMessageBean.getId() : null;
        ArrayList arrayList = new ArrayList();
        for (Object obj : value) {
            if (!((PinnedMessageBean) obj).isExpired(this.f53417a.w())) {
                arrayList.add(obj);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        int i4 = 0;
        Iterator<PinnedMessageBean> it = mutableList.iterator();
        while (true) {
            if (!it.hasNext()) {
                i4 = -1;
                break;
            } else if (Intrinsics.areEqual(it.next().getId(), id)) {
                break;
            } else {
                i4++;
            }
        }
        this.f53420d = i4;
        Unit unit = Unit.INSTANCE;
        this.f53421e = t(mutableList);
        notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(@g g5.a localDataManager, @g m sourceFactory, @h Function1<? super PinnedMessageBean, Unit> function1) {
        List emptyList;
        List<CountDownTimer> mutableList;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        this.f53417a = localDataManager;
        this.f53418b = sourceFactory;
        this.f53419c = function1;
        this.f53420d = -1;
        this.f53421e = new ArrayList();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) emptyList);
        this.f53424h = mutableList;
    }
}
