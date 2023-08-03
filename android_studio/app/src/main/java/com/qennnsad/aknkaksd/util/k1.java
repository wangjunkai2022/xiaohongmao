package com.qennnsad.aknkaksd.util;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.widget.TextView;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.ThirdLoginPlatform;
import io.sentry.protocol.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;

/* compiled from: TextMeasurementUtil.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0016B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\u000b2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u0010\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\bJ\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\bJ\u0016\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/util/k1;", "", "", "text", "Lcom/qennnsad/aknkaksd/util/k1$a;", "params", "Landroid/text/StaticLayout;", "d", "Landroid/widget/TextView;", "textView", "c", "", "h", "", "f", "g", "e", ContextChain.TAG_INFRA, ThirdLoginPlatform.PLATFORM_LINE, "", "b", "content", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class k1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final k1 f54783a = new k1();

    /* compiled from: TextMeasurementUtil.kt */
    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u001e\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0004\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u0006\u0012\u0006\u0010\u0017\u001a\u00020\t\u0012\u0006\u0010\u0018\u001a\u00020\u000b\u0012\u0006\u0010\u0019\u001a\u00020\u000b\u0012\u0006\u0010\u001a\u001a\u00020\u000b\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u000b¢\u0006\u0004\b;\u0010<J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J\t\u0010\b\u001a\u00020\u0006HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\f\u001a\u00020\u000bHÆ\u0003J\t\u0010\r\u001a\u00020\u000bHÆ\u0003J\t\u0010\u000e\u001a\u00020\u000bHÆ\u0003J\t\u0010\u000f\u001a\u00020\tHÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\t\u0010\u0012\u001a\u00020\u000bHÆ\u0003Jy\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00062\b\b\u0002\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u000b2\b\b\u0002\u0010\u001b\u001a\u00020\t2\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u001d\u001a\u00020\u000bHÆ\u0001J\t\u0010 \u001a\u00020\u001fHÖ\u0001J\t\u0010!\u001a\u00020\u000bHÖ\u0001J\u0013\u0010#\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0014\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0011\u0010'\u001a\u0004\b(\u0010)R\u0017\u0010\u0015\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0012\u0010*\u001a\u0004\b+\u0010,R\u0017\u0010\u0016\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0005\u0010*\u001a\u0004\b-\u0010,R\u0017\u0010\u0017\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u0007\u0010.\u001a\u0004\b/\u00100R\u0017\u0010\u0018\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\b\u00101\u001a\u0004\b2\u00103R\u0017\u0010\u0019\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\n\u00101\u001a\u0004\b4\u00103R\u0017\u0010\u001a\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u00101\u001a\u0004\b5\u00103R\u0017\u0010\u001b\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\r\u0010.\u001a\u0004\b6\u00100R\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u000e\u00107\u001a\u0004\b8\u00109R\u0017\u0010\u001d\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u000f\u00101\u001a\u0004\b:\u00103¨\u0006="}, d2 = {"Lcom/qennnsad/aknkaksd/util/k1$a;", "", "Landroid/text/TextPaint;", "a", "Landroid/text/Layout$Alignment;", "d", "", "e", "f", "", "g", "", "h", ContextChain.TAG_INFRA, "j", "k", "Landroid/text/TextDirectionHeuristic;", "b", "c", "textPaint", "alignment", "lineSpacingExtra", "lineSpacingMultiplier", "includeFontPadding", "breakStrategy", "hyphenationFrequency", "justificationMode", "useFallbackLineSpacing", "textDirectionHeuristic", "width", "l", "", "toString", "hashCode", "other", "equals", "Landroid/text/TextPaint;", "v", "()Landroid/text/TextPaint;", "Landroid/text/Layout$Alignment;", "n", "()Landroid/text/Layout$Alignment;", "F", "s", "()F", "t", "Z", "q", "()Z", "I", "o", "()I", "p", "r", "w", "Landroid/text/TextDirectionHeuristic;", "u", "()Landroid/text/TextDirectionHeuristic;", y.b.f83919g, "<init>", "(Landroid/text/TextPaint;Landroid/text/Layout$Alignment;FFZIIIZLandroid/text/TextDirectionHeuristic;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final TextPaint f54784a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final Layout.Alignment f54785b;

        /* renamed from: c  reason: collision with root package name */
        private final float f54786c;

        /* renamed from: d  reason: collision with root package name */
        private final float f54787d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f54788e;

        /* renamed from: f  reason: collision with root package name */
        private final int f54789f;

        /* renamed from: g  reason: collision with root package name */
        private final int f54790g;

        /* renamed from: h  reason: collision with root package name */
        private final int f54791h;

        /* renamed from: i  reason: collision with root package name */
        private final boolean f54792i;
        @m8.h

        /* renamed from: j  reason: collision with root package name */
        private final TextDirectionHeuristic f54793j;

        /* renamed from: k  reason: collision with root package name */
        private final int f54794k;

        public a(@m8.g TextPaint textPaint, @m8.g Layout.Alignment alignment, float f10, float f11, boolean z9, int i4, int i10, int i11, boolean z10, @m8.h TextDirectionHeuristic textDirectionHeuristic, int i12) {
            Intrinsics.checkNotNullParameter(textPaint, "textPaint");
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            this.f54784a = textPaint;
            this.f54785b = alignment;
            this.f54786c = f10;
            this.f54787d = f11;
            this.f54788e = z9;
            this.f54789f = i4;
            this.f54790g = i10;
            this.f54791h = i11;
            this.f54792i = z10;
            this.f54793j = textDirectionHeuristic;
            this.f54794k = i12;
        }

        @m8.g
        public final TextPaint a() {
            return this.f54784a;
        }

        @m8.h
        public final TextDirectionHeuristic b() {
            return this.f54793j;
        }

        public final int c() {
            return this.f54794k;
        }

        @m8.g
        public final Layout.Alignment d() {
            return this.f54785b;
        }

        public final float e() {
            return this.f54786c;
        }

        public boolean equals(@m8.h Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f54784a, aVar.f54784a) && this.f54785b == aVar.f54785b && Intrinsics.areEqual((Object) Float.valueOf(this.f54786c), (Object) Float.valueOf(aVar.f54786c)) && Intrinsics.areEqual((Object) Float.valueOf(this.f54787d), (Object) Float.valueOf(aVar.f54787d)) && this.f54788e == aVar.f54788e && this.f54789f == aVar.f54789f && this.f54790g == aVar.f54790g && this.f54791h == aVar.f54791h && this.f54792i == aVar.f54792i && Intrinsics.areEqual(this.f54793j, aVar.f54793j) && this.f54794k == aVar.f54794k;
            }
            return false;
        }

        public final float f() {
            return this.f54787d;
        }

        public final boolean g() {
            return this.f54788e;
        }

        public final int h() {
            return this.f54789f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((((((this.f54784a.hashCode() * 31) + this.f54785b.hashCode()) * 31) + Float.floatToIntBits(this.f54786c)) * 31) + Float.floatToIntBits(this.f54787d)) * 31;
            boolean z9 = this.f54788e;
            int i4 = z9;
            if (z9 != 0) {
                i4 = 1;
            }
            int i10 = (((((((hashCode + i4) * 31) + this.f54789f) * 31) + this.f54790g) * 31) + this.f54791h) * 31;
            boolean z10 = this.f54792i;
            int i11 = (i10 + (z10 ? 1 : z10 ? 1 : 0)) * 31;
            TextDirectionHeuristic textDirectionHeuristic = this.f54793j;
            return ((i11 + (textDirectionHeuristic == null ? 0 : textDirectionHeuristic.hashCode())) * 31) + this.f54794k;
        }

        public final int i() {
            return this.f54790g;
        }

        public final int j() {
            return this.f54791h;
        }

        public final boolean k() {
            return this.f54792i;
        }

        @m8.g
        public final a l(@m8.g TextPaint textPaint, @m8.g Layout.Alignment alignment, float f10, float f11, boolean z9, int i4, int i10, int i11, boolean z10, @m8.h TextDirectionHeuristic textDirectionHeuristic, int i12) {
            Intrinsics.checkNotNullParameter(textPaint, "textPaint");
            Intrinsics.checkNotNullParameter(alignment, "alignment");
            return new a(textPaint, alignment, f10, f11, z9, i4, i10, i11, z10, textDirectionHeuristic, i12);
        }

        @m8.g
        public final Layout.Alignment n() {
            return this.f54785b;
        }

        public final int o() {
            return this.f54789f;
        }

        public final int p() {
            return this.f54790g;
        }

        public final boolean q() {
            return this.f54788e;
        }

        public final int r() {
            return this.f54791h;
        }

        public final float s() {
            return this.f54786c;
        }

        public final float t() {
            return this.f54787d;
        }

        @m8.g
        public String toString() {
            return "TextViewParams(textPaint=" + this.f54784a + ", alignment=" + this.f54785b + ", lineSpacingExtra=" + this.f54786c + ", lineSpacingMultiplier=" + this.f54787d + ", includeFontPadding=" + this.f54788e + ", breakStrategy=" + this.f54789f + ", hyphenationFrequency=" + this.f54790g + ", justificationMode=" + this.f54791h + ", useFallbackLineSpacing=" + this.f54792i + ", textDirectionHeuristic=" + this.f54793j + ", width=" + this.f54794k + ')';
        }

        @m8.h
        public final TextDirectionHeuristic u() {
            return this.f54793j;
        }

        @m8.g
        public final TextPaint v() {
            return this.f54784a;
        }

        public final boolean w() {
            return this.f54792i;
        }

        public final int x() {
            return this.f54794k;
        }
    }

    private k1() {
    }

    private final StaticLayout c(TextView textView) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(textView.getText(), 0, textView.getText().length(), textView.getLayout().getPaint(), textView.getWidth()).setAlignment(textView.getLayout().getAlignment()).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
            Intrinsics.checkNotNullExpressionValue(hyphenationFrequency, "obtain(\n                …iew.hyphenationFrequency)");
            if (i4 >= 26) {
                hyphenationFrequency.setJustificationMode(textView.getJustificationMode());
            }
            if (i4 >= 28) {
                hyphenationFrequency.setUseLineSpacingFromFallbacks(textView.isFallbackLineSpacing());
            }
            if (i4 >= 29) {
                hyphenationFrequency.setTextDirection(textView.getTextDirectionHeuristic());
            }
            StaticLayout build = hyphenationFrequency.build();
            Intrinsics.checkNotNullExpressionValue(build, "{\n            val builde…builder.build()\n        }");
            return build;
        }
        return new StaticLayout(textView.getText(), textView.getLayout().getPaint(), textView.getWidth(), textView.getLayout().getAlignment(), textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
    }

    private final StaticLayout d(CharSequence charSequence, a aVar) {
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 23) {
            StaticLayout.Builder hyphenationFrequency = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), aVar.v(), aVar.x()).setAlignment(aVar.n()).setLineSpacing(aVar.s(), aVar.t()).setIncludePad(aVar.q()).setBreakStrategy(aVar.o()).setHyphenationFrequency(aVar.p());
            Intrinsics.checkNotNullExpressionValue(hyphenationFrequency, "obtain(text, 0, text.len…ams.hyphenationFrequency)");
            if (i4 >= 26) {
                hyphenationFrequency.setJustificationMode(aVar.r());
            }
            if (i4 >= 28) {
                hyphenationFrequency.setUseLineSpacingFromFallbacks(aVar.w());
            }
            if (i4 >= 29) {
                TextDirectionHeuristic u9 = aVar.u();
                Intrinsics.checkNotNull(u9);
                hyphenationFrequency.setTextDirection(u9);
            }
            StaticLayout build = hyphenationFrequency.build();
            Intrinsics.checkNotNullExpressionValue(build, "{\n            val builde…builder.build()\n        }");
            return build;
        }
        return new StaticLayout(charSequence, aVar.v(), aVar.x(), aVar.n(), aVar.t(), aVar.s(), aVar.q());
    }

    public final int a(@m8.g CharSequence content, @m8.g a params) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(params, "params");
        return d(content, params).getHeight();
    }

    public final float b(@m8.g CharSequence line, @m8.g a params) {
        Intrinsics.checkNotNullParameter(line, "line");
        Intrinsics.checkNotNullParameter(params, "params");
        return d(line, params).getLineWidth(0);
    }

    public final int e(@m8.g TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        return c(textView).getLineCount();
    }

    public final int f(@m8.g CharSequence text, @m8.g a params) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(params, "params");
        return d(text, params).getLineCount();
    }

    @m8.g
    public final List<CharSequence> g(@m8.g TextView textView) {
        IntRange until;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(textView, "textView");
        StaticLayout c10 = c(textView);
        until = RangesKt___RangesKt.until(0, c10.getLineCount());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = until.iterator();
        while (it.hasNext()) {
            int nextInt = ((IntIterator) it).nextInt();
            arrayList.add(c10.getText().subSequence(c10.getLineStart(nextInt), c10.getLineEnd(nextInt)));
        }
        return arrayList;
    }

    @m8.g
    public final List<CharSequence> h(@m8.g CharSequence text, @m8.g a params) {
        IntRange until;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(params, "params");
        StaticLayout d4 = d(text, params);
        until = RangesKt___RangesKt.until(0, d4.getLineCount());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = until.iterator();
        while (it.hasNext()) {
            int nextInt = ((IntIterator) it).nextInt();
            arrayList.add(d4.getText().subSequence(d4.getLineStart(nextInt), d4.getLineEnd(nextInt)));
        }
        return arrayList;
    }

    @m8.h
    public final a i(@m8.g TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "textView");
        Layout layout = textView.getLayout();
        int width = (textView.getWidth() - textView.getCompoundPaddingLeft()) - textView.getCompoundPaddingRight();
        float lineSpacingExtra = textView.getLineSpacingExtra();
        float lineSpacingMultiplier = textView.getLineSpacingMultiplier();
        boolean includeFontPadding = textView.getIncludeFontPadding();
        int i4 = Build.VERSION.SDK_INT;
        int breakStrategy = i4 >= 23 ? textView.getBreakStrategy() : 0;
        int hyphenationFrequency = i4 >= 23 ? textView.getHyphenationFrequency() : 0;
        int justificationMode = i4 >= 26 ? textView.getJustificationMode() : 0;
        boolean isFallbackLineSpacing = i4 >= 28 ? textView.isFallbackLineSpacing() : false;
        TextDirectionHeuristic textDirectionHeuristic = i4 >= 29 ? textView.getTextDirectionHeuristic() : null;
        if (layout != null) {
            TextPaint paint = layout.getPaint();
            Intrinsics.checkNotNullExpressionValue(paint, "layout.paint");
            Layout.Alignment alignment = layout.getAlignment();
            Intrinsics.checkNotNullExpressionValue(alignment, "layout.alignment");
            return new a(paint, alignment, lineSpacingExtra, lineSpacingMultiplier, includeFontPadding, breakStrategy, hyphenationFrequency, justificationMode, isFallbackLineSpacing, textDirectionHeuristic, width);
        }
        return null;
    }
}
