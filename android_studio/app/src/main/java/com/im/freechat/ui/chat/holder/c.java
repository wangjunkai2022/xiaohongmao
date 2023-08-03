package com.im.freechat.ui.chat.holder;

import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.exifinterface.media.ExifInterface;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.utils.AudioView;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AudioMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0001\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010(\u001a\u00020'\u0012\u0018\u0010-\u001a\u0014\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020,0)\u0012\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101R\u001a\u0010\b\u001a\u00020\u00038\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010 \u001a\u0004\u0018\u00010\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u001c\u0010#\u001a\u0004\u0018\u00010\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\u001d\u001a\u0004\b\"\u0010\u001fR\u001c\u0010&\u001a\u0004\u0018\u00010\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b$\u0010\u001d\u001a\u0004\b%\u0010\u001f¨\u00062"}, d2 = {"Lcom/im/freechat/ui/chat/holder/c;", "Lcom/im/freechat/ui/chat/holder/b;", "Lcom/im/freechat/ui/chat/holder/j0;", "Landroid/widget/ImageButton;", "u", "Landroid/widget/ImageButton;", "C0", "()Landroid/widget/ImageButton;", "btnCancelOrPlay", "Lcom/im/freechat/utils/AudioView;", "v", "Lcom/im/freechat/utils/AudioView;", "B0", "()Lcom/im/freechat/utils/AudioView;", "audioView", "Landroid/widget/TextView;", "w", "Landroid/widget/TextView;", "D0", "()Landroid/widget/TextView;", "tvAudioTime", "Landroidx/cardview/widget/CardView;", y.b.f83919g, "Landroidx/cardview/widget/CardView;", "F0", "()Landroidx/cardview/widget/CardView;", "messageContent", "", y.b.f83920h, "Ljava/lang/Void;", "H0", "()Ljava/lang/Void;", "tvTextContent", "z", "G0", "tvEditTag", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "E0", "ivPreview", "Lf4/b0;", "binding", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/AudioAttachment;", "", "", "onSeek", "", "isGroup", "<init>", "(Lf4/b0;Lkotlin/jvm/functions/Function2;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends b implements j0 {
    @m8.h
    private final Void A;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private final ImageButton f42967u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final AudioView f42968v;
    @m8.g

    /* renamed from: w  reason: collision with root package name */
    private final TextView f42969w;
    @m8.g

    /* renamed from: x  reason: collision with root package name */
    private final CardView f42970x;
    @m8.h

    /* renamed from: y  reason: collision with root package name */
    private final Void f42971y;
    @m8.h

    /* renamed from: z  reason: collision with root package name */
    private final Void f42972z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@m8.g f4.b0 binding, @m8.g Function2<? super AudioAttachment, ? super Integer, Unit> onSeek, boolean z9) {
        super(binding, onSeek, z9);
        Intrinsics.checkNotNullParameter(binding, "binding");
        Intrinsics.checkNotNullParameter(onSeek, "onSeek");
        ImageButton imageButton = binding.f65423c;
        Intrinsics.checkNotNullExpressionValue(imageButton, "binding.btnCancelOrPlay");
        this.f42967u = imageButton;
        AudioView audioView = binding.f65422b;
        Intrinsics.checkNotNullExpressionValue(audioView, "binding.audioView");
        this.f42968v = audioView;
        TextView textView = binding.f65426f;
        Intrinsics.checkNotNullExpressionValue(textView, "binding.tvAudioTime");
        this.f42969w = textView;
        CardView cardView = binding.f65425e;
        Intrinsics.checkNotNullExpressionValue(cardView, "binding.messageContent");
        this.f42970x = cardView;
    }

    @Override // com.im.freechat.ui.chat.holder.b
    @m8.g
    protected AudioView B0() {
        return this.f42968v;
    }

    @Override // com.im.freechat.ui.chat.holder.b
    @m8.g
    protected ImageButton C0() {
        return this.f42967u;
    }

    @Override // com.im.freechat.ui.chat.holder.b
    @m8.g
    protected TextView D0() {
        return this.f42969w;
    }

    @m8.h
    public Void E0() {
        return this.A;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @m8.g
    /* renamed from: F0 */
    public CardView U() {
        return this.f42970x;
    }

    @m8.h
    public Void G0() {
        return this.f42972z;
    }

    @m8.h
    public Void H0() {
        return this.f42971y;
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ ImageView O() {
        return (ImageView) E0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView X() {
        return (TextView) G0();
    }

    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public /* bridge */ /* synthetic */ TextView Y() {
        return (TextView) H0();
    }
}
