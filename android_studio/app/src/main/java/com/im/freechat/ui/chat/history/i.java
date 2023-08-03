package com.im.freechat.ui.chat.history;

import android.view.View;
import android.widget.ImageView;
import com.im.freechat.shared.entities.message.Attachment;
import com.im.freechat.shared.entities.message.ImageAttachment;
import f4.k1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/im/freechat/ui/chat/history/i;", "Lcom/im/freechat/ui/chat/history/g;", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "", "b", "Lf4/k1;", "binding", "<init>", "(Lf4/k1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class i extends g {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final k1 f42902b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public i(@m8.g f4.k1 r3) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            r2.f42902b = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.history.i.<init>(f4.k1):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(i this$0, a attachmentWrapper, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(attachmentWrapper, "$attachmentWrapper");
        Function1<a, Unit> c10 = this$0.c();
        if (c10 != null) {
            c10.invoke(attachmentWrapper);
        }
    }

    @Override // com.im.freechat.ui.chat.history.g
    public void b(@m8.g final a attachmentWrapper) {
        Intrinsics.checkNotNullParameter(attachmentWrapper, "attachmentWrapper");
        Attachment h4 = attachmentWrapper.h();
        if (h4 instanceof ImageAttachment) {
            ImageView imageView = this.f42902b.f65612c;
            Intrinsics.checkNotNullExpressionValue(imageView, "");
            com.im.freechat.extend.m.s(imageView, com.im.freechat.extend.p.l((ImageAttachment) h4), 0.4f, true, 0, 8, null);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.chat.history.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    i.g(i.this, attachmentWrapper, view);
                }
            });
        }
    }
}
