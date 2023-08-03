package com.im.freechat.ui.chat.holder;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.ui.chat.chatdetails.a2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MediaGroupMessageHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010)\u001a\u00020\n¢\u0006\u0004\b*\u0010+J\u0006\u0010\u0003\u001a\u00020\u0002J*\u0010\f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014J \u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016R\"\u0010\u0014\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8$X¤\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006,"}, d2 = {"Lcom/im/freechat/ui/chat/holder/l0;", "Lcom/im/freechat/ui/chat/holder/BaseChatHolder;", "", "E0", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/d;", "messageWrapper", "Lcom/im/freechat/shared/entities/message/Message;", "prev", "", "position", "", "selectionMode", "F", "z0", "t", "Z", "D0", "()Z", "G0", "(Z)V", "previousSelectionMode", "", "u", "Ljava/util/List;", "C0", "()Ljava/util/List;", "F0", "(Ljava/util/List;)V", "messages", "Lcom/im/freechat/ui/chat/chatdetails/a2;", "v", "Lcom/im/freechat/ui/chat/chatdetails/a2;", "gridAdapter", "Landroidx/recyclerview/widget/RecyclerView;", "B0", "()Landroidx/recyclerview/widget/RecyclerView;", "grid", "Landroidx/viewbinding/ViewBinding;", "binding", "Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;", "outerAdapter", "isGroup", "<init>", "(Landroidx/viewbinding/ViewBinding;Lcom/im/freechat/ui/chat/chatdetails/messagelist/b;Z)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class l0 extends BaseChatHolder {

    /* renamed from: t  reason: collision with root package name */
    private boolean f43009t;
    @m8.g

    /* renamed from: u  reason: collision with root package name */
    private List<com.im.freechat.ui.chat.chatdetails.messagelist.d> f43010u;
    @m8.g

    /* renamed from: v  reason: collision with root package name */
    private final a2 f43011v;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public l0(@m8.g androidx.viewbinding.ViewBinding r2, @m8.g com.im.freechat.ui.chat.chatdetails.messagelist.b r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "outerAdapter"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            android.view.View r2 = r2.getRoot()
            java.lang.String r0 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2, r4)
            java.util.List r2 = kotlin.collections.CollectionsKt.emptyList()
            r1.f43010u = r2
            com.im.freechat.ui.chat.chatdetails.a2 r2 = new com.im.freechat.ui.chat.chatdetails.a2
            r2.<init>()
            r2.M(r3)
            kotlin.jvm.functions.Function1 r4 = r3.g()
            r2.y(r4)
            kotlin.jvm.functions.Function2 r4 = r3.m()
            r2.G(r4)
            kotlin.jvm.functions.Function1 r3 = r3.j()
            r2.D(r3)
            r1.f43011v = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.holder.l0.<init>(androidx.viewbinding.ViewBinding, com.im.freechat.ui.chat.chatdetails.messagelist.b, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(l0 this$0, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f43009t != z9) {
            this$0.f43009t = z9;
            this$0.f43011v.notifyDataSetChanged();
        }
    }

    @m8.g
    protected abstract RecyclerView B0();

    @m8.g
    public final List<com.im.freechat.ui.chat.chatdetails.messagelist.d> C0() {
        return this.f43010u;
    }

    public final boolean D0() {
        return this.f43009t;
    }

    public final void E0() {
        RecyclerView B0 = B0();
        FlexboxLayoutManager flexboxLayoutManager = new FlexboxLayoutManager(B0().getContext());
        flexboxLayoutManager.setFlexDirection(0);
        flexboxLayoutManager.setFlexWrap(1);
        flexboxLayoutManager.setAlignItems(4);
        flexboxLayoutManager.setJustifyContent(5);
        B0.setLayoutManager(flexboxLayoutManager);
        B0.setAdapter(this.f43011v);
        B0.setClipToPadding(true);
        RecyclerView.ItemAnimator itemAnimator = B0.getItemAnimator();
        Intrinsics.checkNotNull(itemAnimator, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
        ((SimpleItemAnimator) itemAnimator).setSupportsChangeAnimations(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.im.freechat.ui.chat.holder.BaseChatHolder
    public void F(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, @m8.h Message message, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        super.F(messageWrapper, message, i4, z9);
        z0(messageWrapper, i4, z9);
    }

    public final void F0(@m8.g List<com.im.freechat.ui.chat.chatdetails.messagelist.d> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f43010u = list;
    }

    public final void G0(boolean z9) {
        this.f43009t = z9;
    }

    public void z0(@m8.g com.im.freechat.ui.chat.chatdetails.messagelist.d messageWrapper, int i4, final boolean z9) {
        int collectionSizeOrDefault;
        List listOf;
        Message copy;
        Intrinsics.checkNotNullParameter(messageWrapper, "messageWrapper");
        Message i10 = messageWrapper.i();
        List<Attachment> attachments = i10.getAttachments();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(attachments, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i11 = 0;
        for (Object obj : attachments) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Attachment attachment = (Attachment) obj;
            long mediaId = attachment.getMediaId();
            ArrayList arrayList2 = arrayList;
            listOf = CollectionsKt__CollectionsJVMKt.listOf(attachment);
            copy = i10.copy((r36 & 1) != 0 ? i10.messageId : mediaId, (r36 & 2) != 0 ? i10.chatId : 0, (r36 & 4) != 0 ? i10.sender : null, (r36 & 8) != 0 ? i10.content : null, (r36 & 16) != 0 ? i10.sendTime : 0L, (r36 & 32) != 0 ? i10.messageStatus : null, (r36 & 64) != 0 ? i10.repliedMessage : null, (r36 & 128) != 0 ? i10.forwardMessageId : null, (r36 & 256) != 0 ? i10.forwardMessageSender : null, (r36 & 512) != 0 ? i10.forwardMessageChatId : null, (r36 & 1024) != 0 ? i10.editTime : null, (r36 & 2048) != 0 ? i10.attachments : listOf, (r36 & 4096) != 0 ? i10.mentions : null, (r36 & 8192) != 0 ? i10.mentionAll : false, (r36 & 16384) != 0 ? i10.messageStyles : null, (r36 & 32768) != 0 ? i10.isService : false);
            arrayList2.add(new com.im.freechat.ui.chat.chatdetails.messagelist.d(copy, messageWrapper.h()[i11].booleanValue(), messageWrapper.l(), null, true, 8, null));
            arrayList = arrayList2;
            i11 = i12;
        }
        this.f43011v.submitList(arrayList, new Runnable() { // from class: com.im.freechat.ui.chat.holder.k0
            @Override // java.lang.Runnable
            public final void run() {
                l0.A0(l0.this, z9);
            }
        });
    }
}
