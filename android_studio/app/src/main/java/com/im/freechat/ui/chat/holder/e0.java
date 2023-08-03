package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.im.freechat.ui.widget.TextMessageView;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006!"}, d2 = {"Lcom/im/freechat/ui/chat/holder/e0;", "Lcom/im/freechat/ui/chat/holder/d0;", "Lcom/im/freechat/ui/chat/holder/j0;", "Landroidx/cardview/widget/CardView;", "w", "Landroidx/cardview/widget/CardView;", "C0", "()Landroidx/cardview/widget/CardView;", "messageContent", "Landroid/widget/ImageView;", y.b.f83919g, "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", "Lcom/im/freechat/ui/widget/TextMessageView;", y.b.f83920h, "Lcom/im/freechat/ui/widget/TextMessageView;", "D0", "()Lcom/im/freechat/ui/widget/TextMessageView;", "tvTextContent", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "X", "()Landroid/widget/TextView;", "tvEditTag", "Lf4/k0;", "binding", "", "isGroup", "<init>", "(Lf4/k0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class e0 extends d0 implements j0 {
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final CardView f42987w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f42988x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final TextMessageView f42989y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final TextView f42990z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(@m8.g f4.k0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        CardView cardView = binding.f65607d;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.messageContent");
        this.f42987w = cardView;
        ImageView imageView = binding.f65606c;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivPre");
        this.f42988x = imageView;
        TextMessageView textMessageView = binding.f65608e;
        Intrinsics.checkNotNullExpressionValue(textMessageView, "binding.tvDesc");
        this.f42989y = textMessageView;
        TextView textView = binding.f65609f;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvEdited");
        this.f42990z = textView;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: C0 */
    public CardView U() {
        return this.f42987w;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: D0 */
    public TextMessageView Y() {
        return this.f42989y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public ImageView O() {
        return this.f42988x;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.f42990z;
    }
}
