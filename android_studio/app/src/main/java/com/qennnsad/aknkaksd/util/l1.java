package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TextToBitmap.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\"\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/util/l1;", "", "", "contents", "", "textSize", "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class l1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final l1 f54830a = new l1();

    private l1() {
    }

    @JvmStatic
    @m8.h
    public static final Bitmap a(@m8.g String contents, float f10, @m8.g Context context) {
        Intrinsics.checkNotNullParameter(contents, "contents");
        Intrinsics.checkNotNullParameter(context, "context");
        TextView textView = new TextView(context);
        textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        textView.setTextSize(f10);
        textView.setTypeface(Typeface.SANS_SERIF, 1);
        textView.setText(contents);
        textView.setDrawingCacheEnabled(true);
        textView.setTextColor(ContextCompat.getColor(context, R.color.md_grey_300));
        textView.setShadowLayer(10.0f, 5.0f, 5.0f, Color.parseColor("#FF000000"));
        textView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        textView.layout(0, 0, textView.getMeasuredWidth(), textView.getMeasuredHeight());
        textView.buildDrawingCache();
        return textView.getDrawingCache();
    }
}
