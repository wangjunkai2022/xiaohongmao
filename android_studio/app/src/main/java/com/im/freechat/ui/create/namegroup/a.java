package com.im.freechat.ui.create.namegroup;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.im.freechat.extend.m;
import com.im.freechat.extend.r;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.utils.v;
import f4.h1;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: MemberAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016R\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/ui/create/namegroup/a;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "Lcom/im/freechat/ui/create/namegroup/a$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "f", "holder", "position", "", "e", "Landroid/content/res/Resources;", "a", "Landroid/content/res/Resources;", "d", "()Landroid/content/res/Resources;", "resources", "<init>", "(Landroid/content/res/Resources;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends ListAdapter<UserModel, C0370a> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Resources f43565a;

    /* compiled from: MemberAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\f"}, d2 = {"Lcom/im/freechat/ui/create/namegroup/a$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "contact", "", "position", "", "b", "Lf4/h1;", "binding", "<init>", "(Lf4/h1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* renamed from: com.im.freechat.ui.create.namegroup.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0370a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final h1 f43566a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0370a(@m8.g h1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43566a = binding;
        }

        @SuppressLint({"DefaultLocale"})
        public final void b(@m8.g UserModel contact, int i4) {
            char first;
            Intrinsics.checkNotNullParameter(contact, "contact");
            h1 h1Var = this.f43566a;
            String displayName = contact.getDisplayName();
            TextView textView = h1Var.f65544f;
            first = StringsKt___StringsKt.first(displayName);
            textView.setText(String.valueOf(first));
            textView.setBackgroundTintList(ColorStateList.valueOf(r.a(displayName)));
            if (contact.getAvatar() != null) {
                ImageView ivIcon = h1Var.f65542d;
                Intrinsics.checkNotNullExpressionValue(ivIcon, "ivIcon");
                ivIcon.setVisibility(0);
                ImageView ivIcon2 = h1Var.f65542d;
                Intrinsics.checkNotNullExpressionValue(ivIcon2, "ivIcon");
                m.o(ivIcon2, contact.getAvatar());
            } else {
                ImageView ivIcon3 = h1Var.f65542d;
                Intrinsics.checkNotNullExpressionValue(ivIcon3, "ivIcon");
                ivIcon3.setVisibility(8);
            }
            TextView textView2 = h1Var.f65545g;
            textView2.setText(displayName + " (" + contact.getUserId() + ')');
            Intrinsics.checkNotNullExpressionValue(textView2, "");
            v.d(textView2, m.m(contact.getManagementRole()), false, false, true, false, 22, null);
            TextView tvRole = h1Var.f65546h;
            Intrinsics.checkNotNullExpressionValue(tvRole, "tvRole");
            tvRole.setVisibility(i4 == 0 ? 0 : 8);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public a(@m8.g android.content.res.Resources r2) {
        /*
            r1 = this;
            java.lang.String r0 = "resources"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            com.im.freechat.ui.create.namegroup.b$a r0 = com.im.freechat.ui.create.namegroup.b.a()
            r1.<init>(r0)
            r1.f43565a = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.create.namegroup.a.<init>(android.content.res.Resources):void");
    }

    @m8.g
    public final Resources d() {
        return this.f43565a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: e */
    public void onBindViewHolder(@m8.g C0370a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        UserModel item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.b(item, i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: f */
    public C0370a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        h1 d4 = h1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
        return new C0370a(d4);
    }
}
