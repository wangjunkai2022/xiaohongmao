package com.im.freechat.ui.settings.data_usage;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.im.freechat.domain.CacheFileType;
import com.im.freechat.domain.r;
import com.im.freechat.ui.settings.data_usage.o;
import f4.s1;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StorageUsageAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/o;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/im/freechat/domain/r;", "Lcom/im/freechat/ui/settings/data_usage/o$a;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "e", "holder", "position", "", "d", "<init>", "()V", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class o extends ListAdapter<r, a> {

    /* compiled from: StorageUsageAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/o$a;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/im/freechat/domain/CacheFileType;", "filesType", "", "g", "Lcom/im/freechat/domain/r;", "item", "", "d", "Lf4/s1;", "binding", "<init>", "(Lf4/s1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends RecyclerView.ViewHolder {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final s1 f43673a;

        /* compiled from: StorageUsageAdapter.kt */
        @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.im.freechat.ui.settings.data_usage.o$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public /* synthetic */ class C0372a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CacheFileType.values().length];
                iArr[CacheFileType.IMAGE.ordinal()] = 1;
                iArr[CacheFileType.AUDIO.ordinal()] = 2;
                iArr[CacheFileType.VIDEO.ordinal()] = 3;
                iArr[CacheFileType.OTHER.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@m8.g s1 binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f43673a = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(r item, CompoundButton compoundButton, boolean z9) {
            Intrinsics.checkNotNullParameter(item, "$item");
            item.i(!item.g());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(a this$0, View view) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            CheckBox checkBox = this$0.f43673a.f65750b;
            checkBox.setChecked(!checkBox.isChecked());
        }

        private final int g(CacheFileType cacheFileType) {
            int i4 = C0372a.$EnumSwitchMapping$0[cacheFileType.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            return b.s.Q4;
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return b.s.R4;
                }
                return b.s.O4;
            }
            return b.s.P4;
        }

        public final void d(@m8.g final r item) {
            Intrinsics.checkNotNullParameter(item, "item");
            this.f43673a.f65750b.setChecked(item.g());
            this.f43673a.f65751c.setText(g(item.f()));
            this.f43673a.f65752d.setText(com.im.freechat.extend.n.c(item.h()));
            this.f43673a.f65750b.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.im.freechat.ui.settings.data_usage.n
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
                    o.a.e(r.this, compoundButton, z9);
                }
            });
            this.f43673a.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.data_usage.m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    o.a.f(o.a.this, view);
                }
            });
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public o() {
        /*
            r1 = this;
            com.im.freechat.ui.settings.data_usage.p$a r0 = com.im.freechat.ui.settings.data_usage.p.a()
            r1.<init>(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.settings.data_usage.o.<init>():void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: d */
    public void onBindViewHolder(@m8.g a holder, int i4) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        r item = getItem(i4);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(position)");
        holder.d(item);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: e */
    public a onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        s1 d4 = s1.d(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
        return new a(d4);
    }
}
