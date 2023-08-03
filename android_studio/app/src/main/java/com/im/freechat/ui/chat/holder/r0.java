package com.im.freechat.ui.chat.holder;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.im.freechat.ui.widget.TextMessageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006!"}, d2 = {"Lcom/im/freechat/ui/chat/holder/r0;", "Lcom/im/freechat/ui/chat/holder/q0;", "Lcom/im/freechat/ui/chat/holder/j0;", "Landroid/widget/TextView;", "t", "Landroid/widget/TextView;", "X", "()Landroid/widget/TextView;", "tvEditTag", "Landroidx/constraintlayout/widget/ConstraintLayout;", "u", "Landroidx/constraintlayout/widget/ConstraintLayout;", "A0", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "messageContent", "Lcom/im/freechat/ui/widget/TextMessageView;", "v", "Lcom/im/freechat/ui/widget/TextMessageView;", "B0", "()Lcom/im/freechat/ui/widget/TextMessageView;", "tvTextContent", "", "w", "Ljava/lang/Void;", "z0", "()Ljava/lang/Void;", "ivPreview", "Lf4/v0;", "binding", "", "isGroup", "<init>", "(Lf4/v0;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class r0 extends q0 implements j0 {
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final TextView f43043t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final ConstraintLayout f43044u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final TextMessageView f43045v;
    @m8.h

    /* renamed from: w  reason: collision with root package name */
    private final Void f43046w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(@m8.g f4.v0 binding, boolean z9) {
        super(binding, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        TextView textView = binding.f65803d;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvEdited");
        this.f43043t = textView;
        ConstraintLayout constraintLayout = binding.f65802c;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "binding.messageContent");
        this.f43044u = constraintLayout;
        TextMessageView textMessageView = binding.f65804e;
        Intrinsics.checkNotNullExpressionValue(textMessageView, "binding.tvMessage");
        this.f43045v = textMessageView;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: A0 */
    public ConstraintLayout U() {
        return this.f43044u;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: B0 */
    public TextMessageView Y() {
        return this.f43045v;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) z0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    public TextView X() {
        return this.f43043t;
    }

    @m8.h
    public Void z0() {
        return this.f43046w;
    }
}
