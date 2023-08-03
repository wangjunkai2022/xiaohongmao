package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.im.freechat.ui.widget.TextMessageView;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ImageMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006 "}, d2 = {"Lcom/im/freechat/ui/chat/holder/f0;", "Lcom/im/freechat/ui/chat/holder/d0;", "Landroidx/cardview/widget/CardView;", "w", "Landroidx/cardview/widget/CardView;", "C0", "()Landroidx/cardview/widget/CardView;", "messageContent", "Landroid/widget/ImageView;", y.b.f83919g, "Landroid/widget/ImageView;", "O", "()Landroid/widget/ImageView;", "ivPreview", "Lcom/im/freechat/ui/widget/TextMessageView;", y.b.f83920h, "Lcom/im/freechat/ui/widget/TextMessageView;", "D0", "()Lcom/im/freechat/ui/widget/TextMessageView;", "tvTextContent", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "X", "()Landroid/widget/TextView;", "tvEditTag", "Lf4/l0;", "binding", "", "isGroup", "<init>", "(Lf4/l0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f0 extends d0 {
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final CardView f42993w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final ImageView f42994x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final TextMessageView f42995y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final TextView f42996z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(@m8.g f4.l0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        CardView cardView = binding.f65627d;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.messageContent");
        this.f42993w = cardView;
        ImageView imageView = binding.f65626c;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivPre");
        this.f42994x = imageView;
        TextMessageView textMessageView = binding.f65628e;
        Intrinsics.checkNotNullExpressionValue(textMessageView, "binding.tvDesc");
        this.f42995y = textMessageView;
        TextView textView = binding.f65629f;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvEdited");
        this.f42996z = textView;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: C0 */
    public CardView U() {
        return this.f42993w;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: D0 */
    public TextMessageView Y() {
        return this.f42995y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public ImageView O() {
        return this.f42994x;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.f42996z;
    }
}
