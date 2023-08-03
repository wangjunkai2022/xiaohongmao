package com.im.freechat.ui.chatlist;

import androidx.recyclerview.widget.DiffUtil;
import com.im.freechat.shared.entities.chat.Chat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ChatAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/im/freechat/ui/chatlist/a;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/im/freechat/shared/entities/chat/Chat;", "oldItem", "newItem", "", "b", "a", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a extends DiffUtil.ItemCallback<Chat> {
    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    /* renamed from: a */
    public boolean areContentsTheSame(@m8.g Chat oldItem, @m8.g Chat newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return Intrinsics.areEqual(oldItem, newItem) && Intrinsics.areEqual(oldItem.getTypings().keySet(), newItem.getTypings().keySet());
    }

    @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
    /* renamed from: b */
    public boolean areItemsTheSame(@m8.g Chat oldItem, @m8.g Chat newItem) {
        Intrinsics.checkNotNullParameter(oldItem, "oldItem");
        Intrinsics.checkNotNullParameter(newItem, "newItem");
        return oldItem.getChatId() == newItem.getChatId();
    }
}
