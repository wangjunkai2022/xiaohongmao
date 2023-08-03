package iamutkarshtiwari.github.io.ananas.editimage;

import android.content.Context;
import android.content.Intent;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: ImageEditorIntentBuilder.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\u0018B/\b\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0017¢\u0006\u0004\b\u001f\u0010 J\u0006\u0010\u0002\u001a\u00020\u0000J\u0006\u0010\u0003\u001a\u00020\u0000J\u0006\u0010\u0004\u001a\u00020\u0000J\u0006\u0010\u0005\u001a\u00020\u0000J\u0006\u0010\u0006\u001a\u00020\u0000J\u0006\u0010\u0007\u001a\u00020\u0000J\u0006\u0010\b\u001a\u00020\u0000J\u0006\u0010\t\u001a\u00020\u0000J\u0006\u0010\n\u001a\u00020\u0000J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000bJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000bJ\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001aR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001cR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u001d¨\u0006!"}, d2 = {"Liamutkarshtiwari/github/io/ananas/editimage/p;", "", "d", "k", ContextChain.TAG_INFRA, "l", "g", "f", "m", "e", "o", "", MessageBundle.TITLE_ENTRY, "h", "sourcePath", "n", "outputPath", "j", "", "isForcePortrait", "b", "isVisible", "c", "Landroid/content/Intent;", "a", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Ljava/lang/String;", "Landroid/content/Intent;", "intent", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class p {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public static final a f69647e = new a(null);
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final String f69648f = "add_text_feature";
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final String f69649g = "paint_feature";
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    public static final String f69650h = "filter_feature";
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    public static final String f69651i = "rotate_feature";
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    public static final String f69652j = "crop_feature";
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    public static final String f69653k = "brightness_feature";
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final String f69654l = "saturation_feature";
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    public static final String f69655m = "beauty_feature";
    @m8.g

    /* renamed from: n  reason: collision with root package name */
    public static final String f69656n = "sticker_feature";
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    public static final String f69657o = "source_path";
    @m8.g

    /* renamed from: p  reason: collision with root package name */
    public static final String f69658p = "output_path";
    @m8.g

    /* renamed from: q  reason: collision with root package name */
    public static final String f69659q = "force_portrait";
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    public static final String f69660r = "editor_title";
    @m8.g

    /* renamed from: s  reason: collision with root package name */
    public static final String f69661s = "support_action_bar_visibility";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f69662a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private final String f69663b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private final String f69664c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Intent f69665d;

    /* compiled from: ImageEditorIntentBuilder.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Liamutkarshtiwari/github/io/ananas/editimage/p$a;", "", "", "ADD_TEXT_FEATURE", "Ljava/lang/String;", "BEAUTY_FEATURE", "BRIGHTNESS_FEATURE", "CROP_FEATURE", "EDITOR_TITLE", "FILTER_FEATURE", "FORCE_PORTRAIT", "OUTPUT_PATH", "PAINT_FEATURE", "ROTATE_FEATURE", "SATURATION_FEATURE", "SOURCE_PATH", "STICKER_FEATURE", "SUPPORT_ACTION_BAR_VISIBILITY", "<init>", "()V", "lib-ananas_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public p(@m8.g Context context, @m8.h String str, @m8.h String str2) {
        this(context, str, str2, null, 8, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @JvmOverloads
    public p(@m8.g Context context, @m8.h String str, @m8.h String str2, @m8.g Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.f69662a = context;
        this.f69663b = str;
        this.f69664c = str2;
        this.f69665d = intent;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
        if (r0 != false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    @m8.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.content.Intent a() throws java.lang.Exception {
        /*
            r5 = this;
            java.lang.String r0 = r5.f69663b
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lf
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto Ld
            goto Lf
        Ld:
            r0 = 0
            goto L10
        Lf:
            r0 = 1
        L10:
            if (r0 != 0) goto L3c
            android.content.Intent r0 = r5.f69665d
            java.lang.String r3 = r5.f69663b
            java.lang.String r4 = "source_path"
            r0.putExtra(r4, r3)
            java.lang.String r0 = r5.f69664c
            if (r0 == 0) goto L25
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto L26
        L25:
            r1 = 1
        L26:
            if (r1 != 0) goto L34
            android.content.Intent r0 = r5.f69665d
            java.lang.String r1 = r5.f69664c
            java.lang.String r2 = "output_path"
            r0.putExtra(r2, r1)
            android.content.Intent r0 = r5.f69665d
            return r0
        L34:
            java.lang.Exception r0 = new java.lang.Exception
            java.lang.String r1 = "Output image path required. Use withOutputPath(path) to provide the output image path."
            r0.<init>(r1)
            throw r0
        L3c:
            java.lang.Exception r0 = new java.lang.Exception
            java.lang.String r1 = "Source image path required. Use withSourcePath(path) to provide the output image path."
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: iamutkarshtiwari.github.io.ananas.editimage.p.a():android.content.Intent");
    }

    @m8.g
    public final p b(boolean z9) {
        this.f69665d.putExtra(f69659q, z9);
        return this;
    }

    @m8.g
    public final p c(boolean z9) {
        this.f69665d.putExtra(f69661s, z9);
        return this;
    }

    @m8.g
    public final p d() {
        this.f69665d.putExtra(f69648f, true);
        return this;
    }

    @m8.g
    public final p e() {
        this.f69665d.putExtra(f69655m, true);
        return this;
    }

    @m8.g
    public final p f() {
        this.f69665d.putExtra(f69653k, true);
        return this;
    }

    @m8.g
    public final p g() {
        this.f69665d.putExtra(f69652j, true);
        return this;
    }

    @m8.g
    public final p h(@m8.g String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f69665d.putExtra(f69660r, title);
        return this;
    }

    @m8.g
    public final p i() {
        this.f69665d.putExtra(f69650h, true);
        return this;
    }

    @m8.g
    public final p j(@m8.g String outputPath) {
        Intrinsics.checkNotNullParameter(outputPath, "outputPath");
        this.f69665d.putExtra(f69658p, outputPath);
        return this;
    }

    @m8.g
    public final p k() {
        this.f69665d.putExtra(f69649g, true);
        return this;
    }

    @m8.g
    public final p l() {
        this.f69665d.putExtra(f69651i, true);
        return this;
    }

    @m8.g
    public final p m() {
        this.f69665d.putExtra(f69654l, true);
        return this;
    }

    @m8.g
    public final p n(@m8.g String sourcePath) {
        Intrinsics.checkNotNullParameter(sourcePath, "sourcePath");
        this.f69665d.putExtra(f69657o, sourcePath);
        return this;
    }

    @m8.g
    public final p o() {
        this.f69665d.putExtra(f69656n, true);
        return this;
    }

    public /* synthetic */ p(Context context, String str, String str2, Intent intent, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, str2, (i4 & 8) != 0 ? new Intent(context, EditImageActivity.class) : intent);
    }
}
