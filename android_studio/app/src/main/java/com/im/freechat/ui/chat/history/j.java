package com.im.freechat.ui.chat.history;

import android.content.res.ColorStateList;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.emoji2.widget.EmojiTextView;
import com.im.freechat.ui.chat.holder.g0;
import com.im.freechat.ui.chat.holder.t;
import com.im.freechat.utils.v;
import f4.l1;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: HistoryMediaAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lcom/im/freechat/ui/chat/history/j;", "Lcom/im/freechat/ui/chat/history/g;", "Lcom/im/freechat/ui/chat/history/a;", "attachmentWrapper", "", "b", "Lf4/l1;", "binding", "<init>", "(Lf4/l1;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j extends g {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final l1 f42903b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public j(@m8.g f4.l1 r3) {
        /*
            r2 = this;
            java.lang.String r0 = "binding"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            androidx.constraintlayout.widget.ConstraintLayout r0 = r3.getRoot()
            java.lang.String r1 = "binding.root"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r2.<init>(r0)
            r2.f42903b = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.chat.history.j.<init>(f4.l1):void");
    }

    @Override // com.im.freechat.ui.chat.history.g
    public void b(@m8.g a attachmentWrapper) {
        char first;
        Unit unit;
        List<String> m9;
        Intrinsics.checkNotNullParameter(attachmentWrapper, "attachmentWrapper");
        l1 l1Var = this.f42903b;
        String displayName = attachmentWrapper.l().getDisplayName();
        TextView textView = l1Var.f65634e;
        first = StringsKt___StringsKt.first(displayName);
        textView.setText(String.valueOf(Character.toTitleCase(first)));
        l1Var.f65634e.setBackgroundTintList(ColorStateList.valueOf(com.im.freechat.extend.r.a(displayName)));
        l1Var.f65636g.setText(displayName);
        TextView tvSender = l1Var.f65636g;
        Intrinsics.checkNotNullExpressionValue(tvSender, "tvSender");
        v.d(tvSender, com.im.freechat.extend.m.m(attachmentWrapper.l().getManagementRole()), false, false, true, false, 22, null);
        String avatar = attachmentWrapper.l().getAvatar();
        String str = null;
        if (avatar != null) {
            ImageView ivIcon = l1Var.f65633d;
            Intrinsics.checkNotNullExpressionValue(ivIcon, "ivIcon");
            ivIcon.setVisibility(0);
            ImageView imageView = this.f42903b.f65633d;
            Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivIcon");
            com.im.freechat.extend.m.o(imageView, avatar);
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            ImageView ivIcon2 = l1Var.f65633d;
            Intrinsics.checkNotNullExpressionValue(ivIcon2, "ivIcon");
            ivIcon2.setVisibility(8);
        }
        l1Var.f65637h.setText(com.im.freechat.extend.f.o(attachmentWrapper.k()));
        EmojiTextView emojiTextView = l1Var.f65635f;
        String j4 = attachmentWrapper.j();
        if (j4 != null && (m9 = com.im.freechat.extend.p.m(j4)) != null) {
            str = CollectionsKt___CollectionsKt.joinToString$default(m9, "\n", null, null, 0, null, null, 62, null);
        }
        emojiTextView.setText(str);
        l1Var.f65635f.setMovementMethod(new g0(t.a()));
    }
}
