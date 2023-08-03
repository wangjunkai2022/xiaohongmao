package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ui.SubtitleView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class WebViewSubtitleOutput extends FrameLayout implements SubtitleView.a {

    /* renamed from: h  reason: collision with root package name */
    private static final float f26326h = 1.2f;

    /* renamed from: i  reason: collision with root package name */
    private static final String f26327i = "default_bg";

    /* renamed from: a  reason: collision with root package name */
    private final CanvasSubtitleOutput f26328a;

    /* renamed from: b  reason: collision with root package name */
    private final WebView f26329b;

    /* renamed from: c  reason: collision with root package name */
    private List<com.google.android.exoplayer2.text.a> f26330c;

    /* renamed from: d  reason: collision with root package name */
    private e f26331d;

    /* renamed from: e  reason: collision with root package name */
    private float f26332e;

    /* renamed from: f  reason: collision with root package name */
    private int f26333f;

    /* renamed from: g  reason: collision with root package name */
    private float f26334g;

    /* loaded from: classes2.dex */
    class a extends WebView {
        a(WebViewSubtitleOutput webViewSubtitleOutput, Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // android.webkit.WebView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            super.onTouchEvent(motionEvent);
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            super.performClick();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26335a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f26335a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26335a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26335a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public WebViewSubtitleOutput(Context context) {
        this(context, null);
    }

    private static int b(int i4) {
        if (i4 != 1) {
            return i4 != 2 ? 0 : -100;
        }
        return -50;
    }

    private static String c(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return com.google.android.exoplayer2.text.ttml.d.f25721m0;
        }
        int i4 = b.f26335a[alignment.ordinal()];
        return i4 != 1 ? i4 != 2 ? com.google.android.exoplayer2.text.ttml.d.f25721m0 : com.google.android.exoplayer2.text.ttml.d.f25727p0 : com.google.android.exoplayer2.text.ttml.d.f25725o0;
    }

    private static String d(e eVar) {
        int i4 = eVar.f26363d;
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    return i4 != 4 ? "unset" : com.google.android.exoplayer2.util.z0.I("-0.05em -0.05em 0.15em %s", j.b(eVar.f26364e));
                }
                return com.google.android.exoplayer2.util.z0.I("0.06em 0.08em 0.15em %s", j.b(eVar.f26364e));
            }
            return com.google.android.exoplayer2.util.z0.I("0.1em 0.12em 0.15em %s", j.b(eVar.f26364e));
        }
        return com.google.android.exoplayer2.util.z0.I("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", j.b(eVar.f26364e));
    }

    private String e(int i4, float f10) {
        float h4 = t0.h(i4, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return h4 == -3.4028235E38f ? "unset" : com.google.android.exoplayer2.util.z0.I("%.2fpx", Float.valueOf(h4 / getContext().getResources().getDisplayMetrics().density));
    }

    private static String f(int i4) {
        return i4 != 1 ? i4 != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    private static String h(com.google.android.exoplayer2.text.a aVar) {
        float f10 = aVar.f25329q;
        if (f10 != 0.0f) {
            int i4 = aVar.f25328p;
            return com.google.android.exoplayer2.util.z0.I("%s(%.2fdeg)", (i4 == 2 || i4 == 1) ? "skewY" : "skewX", Float.valueOf(f10));
        }
        return "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0148, code lost:
        if (r13 != false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x014b, code lost:
        if (r13 != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x014d, code lost:
        r21 = com.google.android.exoplayer2.text.ttml.d.f25720l0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x014f, code lost:
        r22 = "top";
        r13 = 2;
        r23 = r21;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void i() {
        /*
            Method dump skipped, instructions count: 702
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.WebViewSubtitleOutput.i():void");
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public void a(List<com.google.android.exoplayer2.text.a> list, e eVar, float f10, int i4, float f11) {
        this.f26331d = eVar;
        this.f26332e = f10;
        this.f26333f = i4;
        this.f26334g = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.google.android.exoplayer2.text.a aVar = list.get(i10);
            if (aVar.f25316d != null) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        if (!this.f26330c.isEmpty() || !arrayList2.isEmpty()) {
            this.f26330c = arrayList2;
            i();
        }
        this.f26328a.a(arrayList, eVar, f10, i4, f11);
        invalidate();
    }

    public void g() {
        this.f26329b.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        if (!z9 || this.f26330c.isEmpty()) {
            return;
        }
        i();
    }

    public WebViewSubtitleOutput(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26330c = Collections.emptyList();
        this.f26331d = e.f26359m;
        this.f26332e = 0.0533f;
        this.f26333f = 0;
        this.f26334g = 0.08f;
        CanvasSubtitleOutput canvasSubtitleOutput = new CanvasSubtitleOutput(context, attributeSet);
        this.f26328a = canvasSubtitleOutput;
        a aVar = new a(this, context, attributeSet);
        this.f26329b = aVar;
        aVar.setBackgroundColor(0);
        addView(canvasSubtitleOutput);
        addView(aVar);
    }
}
