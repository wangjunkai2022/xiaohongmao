package com.im.freechat.ui.chat.chatdetails;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.im.freechat.ui.chat.holder.BaseChatHolder;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;

/* compiled from: MediaGroupGridAdapter.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J&\u0010\u000e\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016R\"\u0010\u0015\u001a\u00020\u00018\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00168V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/ui/chat/chatdetails/a2;", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "Landroid/view/ViewGroup;", "parent", "", "viewType", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "u", "holder", "position", "", "", "payloads", "", "L", "p", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "K", "()Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "M", "(Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;)V", "outerAdapter", "", "v", "r", "()Z", "I", "(Z)V", "isSelectionModeOn", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class a2 extends com.im.freechat.ui.chat.chatdetails.messagelist.b {

    /* renamed from: p  reason: collision with root package name */
    public com.im.freechat.ui.chat.chatdetails.messagelist.b f42546p;

    @Override // com.im.freechat.ui.chat.chatdetails.messagelist.b
    public void I(boolean z9) {
        Timber.b bVar = Timber.f93860a;
        bVar.d("Unexpected set: " + z9, new Object[0]);
    }

    @m8.g
    public final com.im.freechat.ui.chat.chatdetails.messagelist.b K() {
        com.im.freechat.ui.chat.chatdetails.messagelist.b bVar = this.f42546p;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("outerAdapter");
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: L */
    public void onBindViewHolder(@m8.g BaseChatHolder holder, int i4, @m8.g List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        super.onBindViewHolder(holder, i4, payloads);
        holder.q(i4, getItemCount());
    }

    public final void M(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f42546p = bVar;
    }

    @Override // com.im.freechat.ui.chat.chatdetails.messagelist.b
    public boolean r() {
        return K().r();
    }

    @Override // com.im.freechat.ui.chat.chatdetails.messagelist.b, androidx.recyclerview.widget.RecyclerView.Adapter
    @m8.g
    /* renamed from: u */
    public BaseChatHolder onCreateViewHolder(@m8.g ViewGroup parent, int i4) {
        BaseChatHolder b0Var;
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i4 != 3 && i4 != 4) {
            switch (i4) {
                case 15:
                case 16:
                    f4.p1 d4 = f4.p1.d(LayoutInflater.from(parent.getContext()), parent, false);
                    Intrinsics.checkNotNullExpressionValue(d4, "inflate(LayoutInflater.f….context), parent, false)");
                    b0Var = new com.im.freechat.ui.chat.holder.t0(d4, false);
                    break;
                case 17:
                case 18:
                    f4.n1 d10 = f4.n1.d(LayoutInflater.from(parent.getContext()), parent, false);
                    Intrinsics.checkNotNullExpressionValue(d10, "inflate(LayoutInflater.f….context), parent, false)");
                    b0Var = new com.im.freechat.ui.chat.holder.y(d10, false);
                    break;
                default:
                    return super.onCreateViewHolder(parent, i4);
            }
        } else {
            f4.o1 d11 = f4.o1.d(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(d11, "inflate(LayoutInflater.f….context), parent, false)");
            b0Var = new com.im.freechat.ui.chat.holder.b0(d11, false);
        }
        return b0Var;
    }
}
