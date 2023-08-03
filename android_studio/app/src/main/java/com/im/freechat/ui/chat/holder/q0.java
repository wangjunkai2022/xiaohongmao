package com.im.freechat.ui.chat.holder;

import android.view.View;
import b4.b;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J*\u0010\u000e\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0002H\u0014¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/ui/chat/holder/q0;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "", "nextMessageSenderIsTheSame", "isFromCurrentUser", "", "y0", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "selectionMode", "F", "Landroidx/viewbinding/ViewBinding;", "binding", "isGroup", "<init>", "(Landroidx/viewbinding/ViewBinding;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class q0 extends BaseChatHolder {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public q0(@m8.g androidx.viewbinding.ViewBinding r2, boolean r3) {
        /*
            r1 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            android.view.View r2 = r2.getRoot()
            java.lang.String r0 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.q0.<init>(androidx.viewbinding.ViewBinding, boolean):void");
    }

    private final void y0(boolean z9, boolean z10) {
        int i4;
        View U = U();
        if (z9) {
            i4 = b.h.D6;
        } else if (z10) {
            i4 = b.h.F6;
        } else {
            i4 = !z10 ? b.h.E6 : 0;
        }
        U.setBackgroundResource(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        y0(messageWrapper.l(), messageWrapper.i().getSender().isCurrentUser());
    }
}
