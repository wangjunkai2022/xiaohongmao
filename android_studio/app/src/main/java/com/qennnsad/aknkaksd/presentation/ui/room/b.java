package com.qennnsad.aknkaksd.presentation.ui.room;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.data.bean.websocket.AudienceInfo;
import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.presentation.ui.room.b;
import com.qennnsad.aknkaksd.util.s1;
import e5.v2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudienceAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0001\u000eB#\u0012\u0006\u0010\u0012\u001a\u00020\r\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0013¢\u0006\u0004\b\u0019\u0010\u001aJ\u001c\u0010\b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/b;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "h", "holder", "position", "", "g", "Lcom/qennnsad/aknkaksd/data/repository/m;", "a", "Lcom/qennnsad/aknkaksd/data/repository/m;", "f", "()Lcom/qennnsad/aknkaksd/data/repository/m;", "sourceFactory", "Lkotlin/Function1;", "b", "Lkotlin/jvm/functions/Function1;", "e", "()Lkotlin/jvm/functions/Function1;", "onUserClick", "<init>", "(Lcom/qennnsad/aknkaksd/data/repository/m;Lkotlin/jvm/functions/Function1;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends ListAdapter<AudienceInfo, a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final m f53285a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<AudienceInfo, Unit> f53286b;

    /* compiled from: AudienceAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;", "data", "", "b", "Le5/v2;", "binding", "Le5/v2;", "c", "()Le5/v2;", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Le5/v2;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final v2 f53287a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b f53288b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g b bVar, v2 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f53288b = bVar;
            this.f53287a = binding;
        }

        public final void b(@m8.g AudienceInfo data) {
            Intrinsics.checkNotNullParameter(data, "data");
            ImageView imageView = this.f53287a.f63220b;
            m f10 = this.f53288b.f();
            String avatar = data.getAvatar();
            if (avatar == null) {
                avatar = "";
            }
            com.qennnsad.aknkaksd.util.img.e.g(imageView, f10.j(avatar), true, R.drawable.ic_default_head_small, R.drawable.ic_default_head_small);
        }

        @m8.g
        public final v2 c() {
            return this.f53287a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(@m8.g m sourceFactory, @m8.g Function1<? super AudienceInfo, Unit> onUserClick) {
        super(c.a());
        Intrinsics.checkNotNullParameter(sourceFactory, "sourceFactory");
        Intrinsics.checkNotNullParameter(onUserClick, "onUserClick");
        this.f53285a = sourceFactory;
        this.f53286b = onUserClick;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(a this_apply, b this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this_apply.getBindingAdapterPosition() != -1) {
            Function1<AudienceInfo, Unit> function1 = this$0.f53286b;
            AudienceInfo item = this$0.getItem(this_apply.getBindingAdapterPosition());
            Intrinsics.checkNotNullExpressionValue(item, "getItem(bindingAdapterPosition)");
            function1.invoke(item);
        }
    }

    @m8.g
    public final Function1<AudienceInfo, Unit> e() {
        return this.f53286b;
    }

    @m8.g
    public final m f() {
        return this.f53285a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: g */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        AudienceInfo item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.b(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: h */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        v2 d4 = v2.d(s1.i(parent), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        final a aVar = new a(this, d4);
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.i(b.a.this, this, view);
            }
        });
        return aVar;
    }
}
