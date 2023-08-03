package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: GraphicsUtils.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J \u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\r"}, d2 = {"Lcom/qennnsad/aknkaksd/util/m0;", "", "", "contents", "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap;", "b", "", "textSize", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class m0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final m0 f54855a = new m0();

    private m0() {
    }

    @JvmStatic
    @m8.g
    public static final Bitmap a(@m8.g String contents, float f10, @m8.g Context context) {
        Intrinsics.checkNotNullParameter(contents, "contents");
        Intrinsics.checkNotNullParameter(context, "context");
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(f10);
        textView.setTypeface(Typeface.SANS_SERIF, 1);
        textView.setText(contents);
        textView.setDrawingCacheEnabled(true);
        textView.setTextColor(context.getResources().getColor(R.color.md_grey_300));
        textView.setShadowLayer(10.0f, 5.0f, 5.0f, Color.parseColor("#FF000000"));
        textView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        textView.buildDrawingCache();
        Bitmap drawingCache = textView.getDrawingCache();
        Intrinsics.checkNotNullExpressionValue(drawingCache, "TextView(context).apply …()\n        }.drawingCache");
        return drawingCache;
    }

    @JvmStatic
    @m8.g
    public static final Bitmap b(@m8.g String contents, @m8.g Context context) {
        Intrinsics.checkNotNullParameter(contents, "contents");
        Intrinsics.checkNotNullParameter(context, "context");
        return a(contents, 15.0f, context);
    }
}
