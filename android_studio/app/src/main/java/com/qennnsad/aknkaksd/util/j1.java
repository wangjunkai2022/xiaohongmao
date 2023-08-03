package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.text.style.UpdateAppearance;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.text.HtmlCompat;
import io.sentry.protocol.u;
import io.sentry.protocol.y;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Spans.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0005\n\u0007\u0016\u0014\u0019B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J7\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0005\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\bJA\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0005\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\n\u0010\u000bJ.\u0010\u0014\u001a\u00020\u00132\u0006\u0010\r\u001a\u00020\f2\b\b\u0001\u0010\u000f\u001a\u00020\u000e2\b\b\u0001\u0010\u0010\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007J\f\u0010\u0016\u001a\u00020\u0015*\u00020\u0011H\u0007¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1;", "", "", "content", "suffix", "", u.b.f83875d, "b", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;", "prefix", "a", "(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;", "Landroid/widget/TextView;", "tv", "", "startColorRes", "endColorRes", "", "text", "", "d", "Landroid/text/Spanned;", "c", "<init>", "()V", "e", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final j1 f54763a = new j1();

    /* compiled from: Spans.kt */
    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0019\u0010\u001aJP\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0014\u0010\u0014\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u001b"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1$a;", "Landroid/text/style/ImageSpan;", "Landroid/graphics/Canvas;", "canvas", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, com.google.android.exoplayer2.text.ttml.d.f25727p0, "", y.b.f83919g, "top", y.b.f83920h, "bottom", "Landroid/graphics/Paint;", "paint", "", "draw", "a", "I", "extraOffsetY", "Landroid/content/Context;", "context", "Landroid/graphics/Bitmap;", "b", "<init>", "(Landroid/content/Context;Landroid/graphics/Bitmap;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends ImageSpan {

        /* renamed from: a  reason: collision with root package name */
        private final int f54764a;

        @JvmOverloads
        public a(@m8.h Context context, @m8.h Bitmap bitmap) {
            this(context, bitmap, 0, 4, null);
        }

        public /* synthetic */ a(Context context, Bitmap bitmap, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(context, bitmap, (i10 & 4) != 0 ? 0 : i4);
        }

        @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
        public void draw(@m8.g Canvas canvas, @m8.g CharSequence text, int i4, int i10, float f10, int i11, int i12, int i13, @m8.g Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(paint, "paint");
            Drawable drawable = getDrawable();
            Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
            canvas.save();
            canvas.translate(f10, (this.f54764a + ((((fontMetricsInt.descent + i12) + i12) + fontMetricsInt.ascent) / 2)) - (drawable.getBounds().bottom / 2));
            drawable.draw(canvas);
            canvas.restore();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @JvmOverloads
        public a(@m8.h Context context, @m8.h Bitmap bitmap, int i4) {
            super(context, bitmap);
            Intrinsics.checkNotNull(context);
            Intrinsics.checkNotNull(bitmap);
            this.f54764a = i4;
        }
    }

    /* compiled from: Spans.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0013\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\b¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1$b;", "Lcom/qennnsad/aknkaksd/util/j1$c;", "", com.google.android.exoplayer2.text.ttml.d.f25716h0, "<init>", "(Z)V", "", "color", "(IZ)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class b extends c {
        @JvmOverloads
        public b() {
            this(false, 1, null);
        }

        @JvmOverloads
        public b(boolean z9) {
            super(Color.parseColor("#F3DE65"), z9);
        }

        public /* synthetic */ b(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? false : z9);
        }

        public b(int i4, boolean z9) {
            super(i4, z9);
        }
    }

    /* compiled from: Spans.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\f\u001a\u00020\u00068\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\r8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u000e\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1$c;", "Landroid/text/style/ClickableSpan;", "Landroid/text/TextPaint;", "ds", "", "updateDrawState", "", "a", "I", "()I", "c", "(I)V", "color", "", "b", "Z", "()Z", "d", "(Z)V", com.google.android.exoplayer2.text.ttml.d.f25716h0, "<init>", "(IZ)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class c extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        private int f54765a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f54766b;

        @JvmOverloads
        public c() {
            this(0, false, 3, null);
        }

        @JvmOverloads
        public c(int i4) {
            this(i4, false, 2, null);
        }

        public /* synthetic */ c(int i4, boolean z9, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? -1 : i4, (i10 & 2) != 0 ? false : z9);
        }

        protected final int a() {
            return this.f54765a;
        }

        protected final boolean b() {
            return this.f54766b;
        }

        protected final void c(int i4) {
            this.f54765a = i4;
        }

        protected final void d(boolean z9) {
            this.f54766b = z9;
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@m8.g TextPaint ds) {
            Intrinsics.checkNotNullParameter(ds, "ds");
            super.updateDrawState(ds);
            int i4 = this.f54765a;
            if (i4 != -1) {
                ds.setColor(i4);
            }
            ds.setUnderlineText(this.f54766b);
        }

        @JvmOverloads
        public c(int i4, boolean z9) {
            this.f54765a = i4;
            this.f54766b = z9;
        }
    }

    /* compiled from: Spans.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u00012\u00020\u0002B'\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0014\u0010\u0010\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1$d;", "Landroid/text/style/CharacterStyle;", "Landroid/text/style/UpdateAppearance;", "Landroid/text/TextPaint;", "tp", "", "updateDrawState", "", "a", "I", "startColor", "b", "endColor", "c", "lineWidth", "d", "lineHeight", "<init>", "(IIII)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class d extends CharacterStyle implements UpdateAppearance {

        /* renamed from: a  reason: collision with root package name */
        private final int f54767a;

        /* renamed from: b  reason: collision with root package name */
        private final int f54768b;

        /* renamed from: c  reason: collision with root package name */
        private final int f54769c;

        /* renamed from: d  reason: collision with root package name */
        private final int f54770d;

        public d(int i4, int i10, int i11, int i12) {
            this.f54767a = i4;
            this.f54768b = i10;
            this.f54769c = i11;
            this.f54770d = i12;
        }

        @Override // android.text.style.CharacterStyle
        public void updateDrawState(@m8.g TextPaint tp) {
            Intrinsics.checkNotNullParameter(tp, "tp");
            tp.setShader(new LinearGradient(0.0f, 0.0f, this.f54769c, this.f54770d, this.f54767a, this.f54768b, Shader.TileMode.REPEAT));
        }
    }

    /* compiled from: Spans.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u000bB!\b\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u000f\u0012\u0006\u0010\u000e\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u000e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u000e\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0016¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1$e;", "", "", "e", "Landroid/text/SpannableStringBuilder;", "buffer", "", "b", TypedValues.Custom.S_STRING, "d", "c", "a", "Ljava/lang/CharSequence;", "mSource", "mReplacement", "Ljava/util/regex/Matcher;", "Ljava/util/regex/Matcher;", "mMatcher", "", "I", "mAppendPosition", "", "Z", "mIsSpannable", "matcher", "<init>", "(Ljava/lang/CharSequence;Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "f", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class e {
        @m8.g

        /* renamed from: f  reason: collision with root package name */
        public static final a f54771f = new a(null);
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        private final CharSequence f54772a;
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f54773b;
        @m8.g

        /* renamed from: c  reason: collision with root package name */
        private final Matcher f54774c;

        /* renamed from: d  reason: collision with root package name */
        private int f54775d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean f54776e;

        /* compiled from: Spans.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u001c\u0010\u0006\u001a\u00020\u0002*\u00020\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u0002¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/util/j1$e$a;", "", "", "", "regex", "replacement", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @m8.g
            public final CharSequence a(@m8.g CharSequence charSequence, @m8.h String str, @m8.g CharSequence replacement) {
                Intrinsics.checkNotNullParameter(charSequence, "<this>");
                Intrinsics.checkNotNullParameter(replacement, "replacement");
                Pattern compile = Pattern.compile(str);
                Intrinsics.checkNotNullExpressionValue(compile, "compile(regex)");
                Matcher matcher = compile.matcher(charSequence);
                Intrinsics.checkNotNullExpressionValue(matcher, "pattern.matcher(this)");
                return new e(charSequence, matcher, replacement, null).e();
            }
        }

        private e(CharSequence charSequence, Matcher matcher, CharSequence charSequence2) {
            this.f54772a = charSequence;
            this.f54773b = charSequence2;
            this.f54774c = matcher;
            this.f54775d = 0;
            this.f54776e = charSequence2 instanceof Spannable;
        }

        public /* synthetic */ e(CharSequence charSequence, Matcher matcher, CharSequence charSequence2, DefaultConstructorMarker defaultConstructorMarker) {
            this(charSequence, matcher, charSequence2);
        }

        private final void b(SpannableStringBuilder spannableStringBuilder) {
            spannableStringBuilder.append(this.f54772a.subSequence(this.f54775d, this.f54774c.start()));
            spannableStringBuilder.append(this.f54776e ? d(this.f54773b) : this.f54773b);
            this.f54775d = this.f54774c.end();
        }

        private final CharSequence d(CharSequence charSequence) {
            Parcel obtain = Parcel.obtain();
            Intrinsics.checkNotNullExpressionValue(obtain, "obtain()");
            try {
                TextUtils.writeToParcel(charSequence, obtain, 0);
                obtain.setDataPosition(0);
                Object createFromParcel = TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(obtain);
                Intrinsics.checkNotNullExpressionValue(createFromParcel, "{\n                TextUt…cel(parcel)\n            }");
                return (CharSequence) createFromParcel;
            } finally {
                obtain.recycle();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final CharSequence e() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            while (this.f54774c.find()) {
                b(spannableStringBuilder);
            }
            return c(spannableStringBuilder);
        }

        @m8.g
        public final SpannableStringBuilder c(@m8.g SpannableStringBuilder buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            CharSequence charSequence = this.f54772a;
            buffer.append(charSequence.subSequence(this.f54775d, charSequence.length()));
            return buffer;
        }
    }

    private j1() {
    }

    @JvmStatic
    @m8.g
    public static final CharSequence a(@m8.g CharSequence prefix, @m8.g CharSequence content, @m8.h CharSequence charSequence, @m8.g Object... spans) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(spans, "spans");
        if (spans.length != 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            int length = spannableStringBuilder.append(prefix).length();
            int length2 = spannableStringBuilder.append(content).length();
            spannableStringBuilder.append(charSequence);
            for (Object obj : spans) {
                spannableStringBuilder.setSpan(obj, length, length2, 33);
            }
            return spannableStringBuilder;
        }
        throw new IllegalArgumentException("At lease one span object is required!".toString());
    }

    @JvmStatic
    @m8.g
    public static final CharSequence b(@m8.g CharSequence content, @m8.g CharSequence suffix, @m8.g Object... spans) {
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        Intrinsics.checkNotNullParameter(spans, "spans");
        if (spans.length != 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            int length = spannableStringBuilder.append(content).length();
            int length2 = spannableStringBuilder.append(suffix).length();
            for (Object obj : spans) {
                spannableStringBuilder.setSpan(obj, length, length2, 33);
            }
            return spannableStringBuilder;
        }
        throw new IllegalArgumentException("At lease one span object is required!".toString());
    }

    @JvmStatic
    @m8.g
    public static final Spanned c(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Spanned fromHtml = HtmlCompat.fromHtml(str, 0);
        Intrinsics.checkNotNullExpressionValue(fromHtml, "fromHtml(this, HtmlCompat.FROM_HTML_MODE_LEGACY)");
        return fromHtml;
    }

    @JvmStatic
    public static final void d(@m8.g TextView tv2, @ColorRes int i4, @ColorRes int i10, @m8.h String str) {
        Intrinsics.checkNotNullParameter(tv2, "tv");
        Context context = tv2.getContext();
        d dVar = new d(context.getResources().getColor(i4), context.getResources().getColor(i10), 200, (int) (tv2.getLineHeight() * 1.8f));
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(dVar, 0, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) spannableString);
        tv2.setText(spannableStringBuilder);
    }
}
