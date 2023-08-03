package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Html.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086\b\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0004H\u0086\b¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", "flags", "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class HtmlKt {
    @g
    public static final Spanned parseAsHtml(@g String str, int i4, @h Html.ImageGetter imageGetter, @h Html.TagHandler tagHandler) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Spanned fromHtml = HtmlCompat.fromHtml(str, i4, imageGetter, tagHandler);
        Intrinsics.checkNotNullExpressionValue(fromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return fromHtml;
    }

    public static /* synthetic */ Spanned parseAsHtml$default(String str, int i4, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        if ((i10 & 2) != 0) {
            imageGetter = null;
        }
        if ((i10 & 4) != 0) {
            tagHandler = null;
        }
        Intrinsics.checkNotNullParameter(str, "<this>");
        Spanned fromHtml = HtmlCompat.fromHtml(str, i4, imageGetter, tagHandler);
        Intrinsics.checkNotNullExpressionValue(fromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return fromHtml;
    }

    @g
    public static final String toHtml(@g Spanned spanned, int i4) {
        Intrinsics.checkNotNullParameter(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, i4);
        Intrinsics.checkNotNullExpressionValue(html, "toHtml(this, option)");
        return html;
    }

    public static /* synthetic */ String toHtml$default(Spanned spanned, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        Intrinsics.checkNotNullParameter(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, i4);
        Intrinsics.checkNotNullExpressionValue(html, "toHtml(this, option)");
        return html;
    }
}
