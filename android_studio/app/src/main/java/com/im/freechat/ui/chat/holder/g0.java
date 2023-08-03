package com.im.freechat.ui.chat.holder;

import android.content.Context;
import android.text.Layout;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseChatHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\u000bB\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/ui/chat/holder/g0;", "Landroid/text/method/LinkMovementMethod;", "Landroid/widget/TextView;", "widget", "Landroid/text/Spannable;", "buffer", "Landroid/view/MotionEvent;", "event", "", "onTouchEvent", "Lcom/im/freechat/ui/chat/holder/g0$a;", "a", "Lcom/im/freechat/ui/chat/holder/g0$a;", "mOnLinkClickedListener", "<init>", "(Lcom/im/freechat/ui/chat/holder/g0$a;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class g0 extends LinkMovementMethod {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final a f42999a;

    /* compiled from: BaseChatHolder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H&¨\u0006\b"}, d2 = {"Lcom/im/freechat/ui/chat/holder/g0$a;", "", "Landroid/content/Context;", "context", "", "url", "", "a", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public interface a {
        boolean a(@m8.h Context context, @m8.h String str);
    }

    public g0(@m8.g a mOnLinkClickedListener) {
        Intrinsics.checkNotNullParameter(mOnLinkClickedListener, "mOnLinkClickedListener");
        this.f42999a = mOnLinkClickedListener;
    }

    @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
    public boolean onTouchEvent(@m8.g TextView widget, @m8.g Spannable buffer, @m8.g MotionEvent event) {
        Intrinsics.checkNotNullParameter(widget, "widget");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() == 1) {
            int x9 = ((int) event.getX()) - widget.getTotalPaddingLeft();
            int y9 = ((int) event.getY()) - widget.getTotalPaddingTop();
            int scrollX = x9 + widget.getScrollX();
            int scrollY = y9 + widget.getScrollY();
            Layout layout = widget.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            URLSpan[] link = (URLSpan[]) buffer.getSpans(offsetForHorizontal, offsetForHorizontal, URLSpan.class);
            Intrinsics.checkNotNullExpressionValue(link, "link");
            if (!(link.length == 0)) {
                if (this.f42999a.a(widget.getContext(), link[0].getURL())) {
                    return true;
                }
                return super.onTouchEvent(widget, buffer, event);
            }
        }
        return super.onTouchEvent(widget, buffer, event);
    }
}
