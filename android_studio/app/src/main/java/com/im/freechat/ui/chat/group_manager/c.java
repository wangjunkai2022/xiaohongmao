package com.im.freechat.ui.chat.group_manager;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.facebook.common.callercontext.ContextChain;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.chat.group_manager.c;
import f4.h1;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GroupManagerAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u000e\u0015B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u001c\u0010\b\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\f\u001a\u00020\u000b2\n\u0010\t\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006H\u0016R0\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R0\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011\"\u0004\b\u0017\u0010\u0013¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/ui/chat/group_manager/c;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "Lcom/im/freechat/ui/chat/group_manager/c$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "g", "holder", "position", "", "f", "Lkotlin/Function1;", "a", "Lkotlin/jvm/functions/Function1;", "e", "()Lkotlin/jvm/functions/Function1;", ContextChain.TAG_INFRA, "(Lkotlin/jvm/functions/Function1;)V", "onLongClick", "b", "d", "h", "onClick", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends ListAdapter<ChatMember, a> {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Function1<? super ChatMember, Unit> f42815a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Function1<? super ChatMember, Unit> f42816b;

    /* compiled from: GroupManagerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\n"}, d2 = {"Lcom/im/freechat/ui/chat/group_manager/c$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "member", "", "d", "Lf4/h1;", "binding", "<init>", "(Lcom/im/freechat/ui/chat/group_manager/c;Lf4/h1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final h1 f42817a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ c f42818b;

        /* compiled from: GroupManagerAdapter.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.im.freechat.ui.chat.group_manager.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public /* synthetic */ class C0351a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;

            static {
                int[] iArr = new int[ChatMember.Status.values().length];
                iArr[ChatMember.Status.BANNED.ordinal()] = 1;
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[ChatMember.Role.values().length];
                iArr2[ChatMember.Role.NORMAL.ordinal()] = 1;
                iArr2[ChatMember.Role.OWNER.ordinal()] = 2;
                iArr2[ChatMember.Role.MANAGER.ordinal()] = 3;
                $EnumSwitchMapping$1 = iArr2;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g c cVar, h1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f42818b = cVar;
            this.f42817a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean e(c this$0, ChatMember member, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(member, "$member");
            Function1<ChatMember, Unit> e4 = this$0.e();
            if (e4 != null) {
                e4.invoke(member);
                return true;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(c this$0, ChatMember member, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(member, "$member");
            Function1<ChatMember, Unit> d4 = this$0.d();
            if (d4 != null) {
                d4.invoke(member);
            }
        }

        public final void d(@m8.g final ChatMember member) {
            String str;
            Intrinsics.checkNotNullParameter(member, "member");
            UserModel contact = member.getContact();
            TextView textView = this.f42817a.f65544f;
            String substring = contact.getDisplayName().substring(0, 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            textView.setText(substring);
            textView.setBackgroundTintList(ColorStateList.valueOf(com.im.freechat.extend.r.a(contact.getDisplayName())));
            if (contact.getAvatar() != null) {
                ImageView imageView = this.f42817a.f65542d;
                Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivIcon");
                imageView.setVisibility(0);
                ImageView imageView2 = this.f42817a.f65542d;
                Intrinsics.checkNotNullExpressionValue(imageView2, "binding.ivIcon");
                com.im.freechat.extend.m.o(imageView2, contact.getAvatar());
            } else {
                ImageView imageView3 = this.f42817a.f65542d;
                Intrinsics.checkNotNullExpressionValue(imageView3, "binding.ivIcon");
                imageView3.setVisibility(8);
            }
            this.f42817a.f65545g.setText(contact.getDisplayName());
            TextView textView2 = this.f42817a.f65545g;
            Intrinsics.checkNotNullExpressionValue(textView2, "binding.tvMemberName");
            com.im.freechat.utils.v.d(textView2, com.im.freechat.extend.m.m(member.getContact().getManagementRole()), false, false, true, false, 22, null);
            this.f42817a.f65543e.setImageResource(C0351a.$EnumSwitchMapping$0[member.getStatus().ordinal()] == 1 ? b.h.f1486b4 : 0);
            TextView textView3 = this.f42817a.f65546h;
            int i4 = C0351a.$EnumSwitchMapping$1[member.getRole().ordinal()];
            if (i4 == 1) {
                str = "";
            } else if (i4 == 2) {
                str = this.itemView.getResources().getString(b.s.A1);
            } else if (i4 != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                str = this.itemView.getResources().getString(b.s.F1);
            }
            textView3.setText(str);
            View view = this.itemView;
            final c cVar = this.f42818b;
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.im.freechat.ui.chat.group_manager.b
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    boolean e4;
                    e4 = c.a.e(c.this, member, view2);
                    return e4;
                }
            });
            View view2 = this.itemView;
            final c cVar2 = this.f42818b;
            view2.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.group_manager.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    c.a.f(c.this, member, view3);
                }
            });
        }
    }

    /* compiled from: GroupManagerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/im/freechat/ui/chat/group_manager/c$b;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "oldItem", "newItem", "", "b", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b extends DiffUtil.ItemCallback<ChatMember> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a */
        public boolean areContentsTheSame(@m8.g ChatMember oldItem, @m8.g ChatMember newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b */
        public boolean areItemsTheSame(@m8.g ChatMember oldItem, @m8.g ChatMember newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return oldItem.getContact().getUserId() == newItem.getContact().getUserId();
        }
    }

    public c() {
        super(new b());
    }

    @m8.h
    public final Function1<ChatMember, Unit> d() {
        return this.f42816b;
    }

    @m8.h
    public final Function1<ChatMember, Unit> e() {
        return this.f42815a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: f */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ChatMember item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.d(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: g */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        h1 d4 = h1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(\n               …      false\n            )");
        return new a(this, d4);
    }

    public final void h(@m8.h Function1<? super ChatMember, Unit> function1) {
        this.f42816b = function1;
    }

    public final void i(@m8.h Function1<? super ChatMember, Unit> function1) {
        this.f42815a = function1;
    }
}
