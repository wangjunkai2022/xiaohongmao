package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.RecyclerView;
import com.im.freechat.ui.widget.TextMessageView;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaGroupMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$¢\u0006\u0004\b&\u0010'R\u001a\u0010\u0007\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\r\u001a\u00020\b8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001a\u0010\u0013\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006("}, d2 = {"Lcom/im/freechat/ui/chat/holder/n0;", "Lcom/im/freechat/ui/chat/holder/l0;", "Landroidx/cardview/widget/CardView;", "w", "Landroidx/cardview/widget/CardView;", "I0", "()Landroidx/cardview/widget/CardView;", "messageContent", "Landroidx/recyclerview/widget/RecyclerView;", y.b.f83919g, "Landroidx/recyclerview/widget/RecyclerView;", "B0", "()Landroidx/recyclerview/widget/RecyclerView;", "grid", "Lcom/im/freechat/ui/widget/TextMessageView;", y.b.f83920h, "Lcom/im/freechat/ui/widget/TextMessageView;", "J0", "()Lcom/im/freechat/ui/widget/TextMessageView;", "tvTextContent", "Landroid/widget/TextView;", "z", "Landroid/widget/TextView;", "X", "()Landroid/widget/TextView;", "tvEditTag", "", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Ljava/lang/Void;", "H0", "()Ljava/lang/Void;", "ivPreview", "Lf4/p0;", "binding", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "outerAdapter", "", "isGroup", "<init>", "(Lf4/p0;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class n0 extends l0 {
    @m8.h
    private final Void A;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final CardView f43022w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final RecyclerView f43023x;
    @m8.g

    /* renamed from: y  reason: collision with root package name */
    private final TextMessageView f43024y;
    @m8.g

    /* renamed from: z  reason: collision with root package name */
    private final TextView f43025z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(@m8.g f4.p0 binding, @m8.g com.im.freechat.ui.chat.chatdetails.messagelist.b outerAdapter, boolean z9) {
        super(binding, outerAdapter, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(outerAdapter, "outerAdapter");
        CardView cardView = binding.f65689c;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.messageContent");
        this.f43022w = cardView;
        RecyclerView recyclerView = binding.f65688b;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "binding.gridRecycler");
        this.f43023x = recyclerView;
        TextMessageView textMessageView = binding.f65690d;
        Intrinsics.checkNotNullExpressionValue(textMessageView, "binding.tvDesc");
        this.f43024y = textMessageView;
        TextView textView = binding.f65691e;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvEdited");
        this.f43025z = textView;
        E0();
    }

    @Override // com.im.freechat.ui.chat.holder.l0
    @m8.g
    protected RecyclerView B0() {
        return this.f43023x;
    }

    @m8.h
    public Void H0() {
        return this.A;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: I0 */
    public CardView U() {
        return this.f43022w;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: J0 */
    public TextMessageView Y() {
        return this.f43024y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) H0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.f43025z;
    }
}
