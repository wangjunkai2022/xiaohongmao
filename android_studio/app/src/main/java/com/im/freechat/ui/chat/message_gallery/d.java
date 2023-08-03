package com.im.freechat.ui.chat.message_gallery;

import androidx.recyclerview.widget.DiffUtil;
import com.im.freechat.shared.entities.message.Attachment;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GalleryPagerAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0007\n\u0002\b\u0005*\u0001\u0000\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002¨\u0006\u0004"}, d2 = {"com/im/freechat/ui/chat/message_gallery/d$a", "a", "Lcom/im/freechat/ui/chat/message_gallery/d$a;", "diffCallback", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final a f43150a = new a();

    /* compiled from: GalleryPagerAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016J\u0018\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016¨\u0006\b"}, d2 = {"com/im/freechat/ui/chat/message_gallery/d$a", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/im/freechat/ui/chat/history/a;", "oldItem", "newItem", "", "b", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends DiffUtil.ItemCallback<com.im.freechat.ui.chat.history.a> {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: a */
        public boolean areContentsTheSame(@m8.g com.im.freechat.ui.chat.history.a oldItem, @m8.g com.im.freechat.ui.chat.history.a newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        /* renamed from: b */
        public boolean areItemsTheSame(@m8.g com.im.freechat.ui.chat.history.a oldItem, @m8.g com.im.freechat.ui.chat.history.a newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            Attachment h4 = oldItem.h();
            Long valueOf = h4 != null ? Long.valueOf(h4.getMediaId()) : null;
            Attachment h10 = newItem.h();
            return Intrinsics.areEqual(valueOf, h10 != null ? Long.valueOf(h10.getMediaId()) : null);
        }
    }
}
