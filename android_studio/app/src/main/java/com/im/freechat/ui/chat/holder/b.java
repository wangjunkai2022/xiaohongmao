package com.im.freechat.ui.chat.holder;

import android.annotation.SuppressLint;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import b4.b;
import com.im.freechat.shared.entities.message.AudioAttachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.utils.AudioView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AudioMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\f\u0012\u0006\u0010\u001f\u001a\u00020\b¢\u0006\u0004\b \u0010!J*\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0015R&\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, d2 = {"Lcom/im/freechat/ui/chat/holder/b;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "", "F", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/AudioAttachment;", "t", "Lkotlin/jvm/functions/Function2;", "onSeek", "Landroid/widget/ImageButton;", "C0", "()Landroid/widget/ImageButton;", "btnCancelOrPlay", "Lcom/im/freechat/utils/AudioView;", "B0", "()Lcom/im/freechat/utils/AudioView;", "audioView", "Landroid/widget/TextView;", "D0", "()Landroid/widget/TextView;", "tvAudioTime", "Landroidx/viewbinding/ViewBinding;", "binding", "isGroup", "<init>", "(Landroidx/viewbinding/ViewBinding;Lkotlin/jvm/functions/Function2;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class b extends BaseChatHolder {
    @m8.g

    /* renamed from: t  reason: collision with root package name */
    private final Function2<AudioAttachment, Integer, Unit> f42960t;

    /* compiled from: AudioMessageHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AudioAttachment f42962b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(AudioAttachment audioAttachment) {
            super(1);
            this.f42962b = audioAttachment;
        }

        public final void a(int i4) {
            b.this.f42960t.invoke(this.f42962b, Integer.valueOf(i4));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
            a(num.intValue());
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public b(@m8.g androidx.viewbinding.ViewBinding r2, @m8.g kotlin.jvm.functions.Function2<? super com.im.freechat.shared.entities.message.AudioAttachment, ? super java.lang.Integer, kotlin.Unit> r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "onSeek"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            android.view.View r2 = r2.getRoot()
            java.lang.String r0 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2, r4)
            r1.f42960t = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.b.<init>(androidx.viewbinding.ViewBinding, kotlin.jvm.functions.Function2, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(b this$0, com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(messageWrapper, "$messageWrapper");
        Function1<com.im.freechat.ui.chat.chatdetails.messagelist.d, Unit> K = this$0.K();
        if (K != null) {
            K.invoke(messageWrapper);
        }
    }

    @m8.g
    protected abstract AudioView B0();

    @m8.g
    protected abstract ImageButton C0();

    @m8.g
    protected abstract TextView D0();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    @SuppressLint({"DefaultLocale"})
    public void F(@m8.g final com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        AudioAttachment D = com.im.freechat.extend.p.D(messageWrapper.i());
        C0().setImageResource(D.getPlaying() ? b.h.A4 : b.h.B4);
        float curPosition = D.getPlaying() ? D.getCurPosition() : 1.0f;
        B0().a(a5.a.a(D.getMessageId()), D.getDuration());
        B0().setOnSeek(new a(D));
        B0().setCurPos(curPosition);
        D0().setText(com.im.freechat.extend.m.h(D.getDuration()));
        C0().setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.holder.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                b.A0(b.this, messageWrapper, view);
            }
        });
    }
}
