package com.im.freechat.ui.chat.history;

import android.view.View;
import b4.b;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.AudioAttachment;
import f4.i1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0018\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R&\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00040\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/ui/chat/history/c;", "Lcom/im/freechat/ui/chat/history/g;", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "", "b", "Lkotlin/Function2;", "Lcom/im/freechat/shared/entities/message/AudioAttachment;", "", "c", "Lkotlin/jvm/functions/Function2;", "onSeek", "Lf4/i1;", "binding", "<init>", "(Lf4/i1;Lkotlin/jvm/functions/Function2;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class c extends g {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final i1 f42891b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function2<AudioAttachment, Integer, Unit> f42892c;

    /* compiled from: HistoryMediaAdapter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "it", "", "a", "(I)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function1<Integer, Unit> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Attachment f42894b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Attachment attachment) {
            super(1);
            this.f42894b = attachment;
        }

        public final void a(int i4) {
            c.this.f42892c.invoke(this.f42894b, Integer.valueOf(i4));
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
    public c(@m8.g f4.i1 r3, @m8.g kotlin.jvm.functions.Function2<? super com.im.freechat.shared.entities.message.AudioAttachment, ? super java.lang.Integer, kotlin.Unit> r4) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "onSeek"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            r2.f42891b = r3
            r2.f42892c = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.history.c.<init>(f4.i1, kotlin.jvm.functions.Function2):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(c this$0, com.im.freechat.ui.chat.history.a attachmentWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(attachmentWrapper, "$attachmentWrapper");
        Function1<com.im.freechat.ui.chat.history.a, Unit> c10 = this$0.c();
        if (c10 != null) {
            c10.invoke(attachmentWrapper);
        }
    }

    @Override // com.im.freechat.ui.chat.history.g
    public void b(@m8.g final com.im.freechat.ui.chat.history.a attachmentWrapper) {
        Intrinsics.checkNotNullParameter(attachmentWrapper, "attachmentWrapper");
        if (attachmentWrapper.h() instanceof AudioAttachment) {
            i1 i1Var = this.f42891b;
            i1Var.f65582g.setText(attachmentWrapper.l().getDisplayName());
            Attachment h4 = attachmentWrapper.h();
            AudioAttachment audioAttachment = (AudioAttachment) h4;
            i1Var.f65579d.setImageResource(audioAttachment.getPlaying() ? b.h.A4 : b.h.B4);
            float curPosition = audioAttachment.getPlaying() ? audioAttachment.getCurPosition() : 1.0f;
            i1Var.f65577b.a(a5.a.a(audioAttachment.getMessageId()), audioAttachment.getDuration());
            i1Var.f65577b.setOnSeek(new a(h4));
            i1Var.f65577b.setCurPos(curPosition);
            i1Var.f65581f.setText(com.im.freechat.extend.m.h(audioAttachment.getDuration()));
            i1Var.f65579d.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.history.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.h(c.this, attachmentWrapper, view);
                }
            });
        }
    }
}
