package com.im.freechat.extend;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.Toast;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.exifinterface.media.ExifInterface;
import b4.b;
import io.sentry.protocol.y;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt__MathJVMKt;
import timber.log.Timber;

/* compiled from: ActivityExtends.kt */
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0012\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u0016\u0010\u000b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\t\u001a\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f\u001a\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f\u001a\u001e\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0001\u001a\n\u0010\u0016\u001a\u00020\u0015*\u00020\u0000\u001a\n\u0010\u0017\u001a\u00020\u0015*\u00020\u0000\u001a\n\u0010\u0018\u001a\u00020\u0015*\u00020\u0000\u001a\n\u0010\u0019\u001a\u00020\u0015*\u00020\u0000\u001a\u0012\u0010\u001d\u001a\u00020\u0003*\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001b\u001a\u0012\u0010\u001e\u001a\u00020\u0003*\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001b\u001a\n\u0010 \u001a\u00020\u001f*\u00020\u001a\u001a,\u0010%\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010!\u001a\u00020\u00012\b\b\u0001\u0010\"\u001a\u00020\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00030#\u001a:\u0010)\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010!\u001a\u00020\u00012\b\b\u0001\u0010&\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001f2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00030(\u001a\n\u0010*\u001a\u00020\u0003*\u00020\u0000\"\u0015\u0010-\u001a\u00020\u0001*\u00020\t8F¢\u0006\u0006\u001a\u0004\b+\u0010,¨\u0006."}, d2 = {"Landroid/app/Activity;", "", "stringRes", "", "z", "", "message", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "dp", "Landroid/content/Context;", "context", "n", "", "data", "p", "o", "Landroid/graphics/BitmapFactory$Options;", "options", "reqWidth", "reqHeight", "f", "Ljava/io/File;", "r", "s", "t", "u", "Landroid/view/View;", "Landroid/view/Window;", "window", "w", y.b.f83920h, "", y.b.f83919g, "titleRes", "msgRes", "Lkotlin/Function0;", "onResult", "g", "checkItem", "showCheckbox", "Lkotlin/Function1;", "j", "q", "v", "(Landroid/content/Context;)I", "screenHeight", "app_prodRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class f {
    public static final void A(@m8.g Activity activity, @m8.g String message) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Toast.makeText(activity, message, 0).show();
        Unit unit = Unit.INSTANCE;
        Timber.b bVar = Timber.f93860a;
        bVar.a("Toast: " + message, new Object[0]);
    }

    public static final int f(@m8.g BitmapFactory.Options options, int i4, int i10) {
        int roundToInt;
        int roundToInt2;
        Intrinsics.checkNotNullParameter(options, "options");
        int i11 = options.outHeight;
        int i12 = options.outWidth;
        if (i11 > i10 || i12 > i4) {
            roundToInt = MathKt__MathJVMKt.roundToInt(i11 / i10);
            roundToInt2 = MathKt__MathJVMKt.roundToInt(i12 / i4);
            return roundToInt < roundToInt2 ? roundToInt : roundToInt2;
        }
        return 1;
    }

    public static final void g(@m8.g Activity activity, @StringRes int i4, @StringRes int i10, @m8.g final Function0<Unit> onResult) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        AlertDialog create = new AlertDialog.Builder(activity).setTitle(i4).setMessage(i10).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.im.freechat.extend.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                f.h(Function0.this, dialogInterface, i11);
            }
        }).setNegativeButton(17039360, c.f41943a).create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(this)\n        .s…      }\n        .create()");
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Function0 onResult, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(onResult, "$onResult");
        onResult.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(DialogInterface dialogInterface, int i4) {
        dialogInterface.cancel();
    }

    public static final void j(@m8.g Activity activity, @StringRes int i4, @StringRes int i10, boolean z9, @m8.g final Function1<? super Boolean, Unit> onResult) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        AlertDialog.Builder title = new AlertDialog.Builder(activity, b.t.f2472b).setTitle(i4);
        if (z9) {
            title.setMultiChoiceItems(new String[]{activity.getString(i10)}, new boolean[]{booleanRef.element}, new DialogInterface.OnMultiChoiceClickListener() { // from class: com.im.freechat.extend.e
                @Override // android.content.DialogInterface.OnMultiChoiceClickListener
                public final void onClick(DialogInterface dialogInterface, int i11, boolean z10) {
                    f.k(Ref.BooleanRef.this, dialogInterface, i11, z10);
                }
            });
        }
        AlertDialog create = title.setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.im.freechat.extend.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i11) {
                f.l(Function1.this, booleanRef, dialogInterface, i11);
            }
        }).setNegativeButton(17039360, d.f41944a).create();
        Intrinsics.checkNotNullExpressionValue(create, "Builder(this, R.style.Al…      }\n        .create()");
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Ref.BooleanRef checked, DialogInterface dialogInterface, int i4, boolean z9) {
        Intrinsics.checkNotNullParameter(checked, "$checked");
        checked.element = z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(Function1 onResult, Ref.BooleanRef checked, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(onResult, "$onResult");
        Intrinsics.checkNotNullParameter(checked, "$checked");
        onResult.invoke(Boolean.valueOf(checked.element));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(DialogInterface dialogInterface, int i4) {
        dialogInterface.cancel();
    }

    public static final int n(int i4, @m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) TypedValue.applyDimension(1, i4, context.getResources().getDisplayMetrics());
    }

    @m8.g
    public static final String o(long j4) {
        Date date = new Date(j4);
        Date date2 = new Date(System.currentTimeMillis());
        if (date.getYear() == date2.getYear() && date.getDate() == date2.getDate() && date.getMonth() == date2.getMonth()) {
            String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(date);
            Intrinsics.checkNotNullExpressionValue(format, "{\n            SimpleDate…)).format(date)\n        }");
            return format;
        } else if (date.getYear() == date2.getYear()) {
            String format2 = new SimpleDateFormat("MM-dd", Locale.getDefault()).format(date);
            Intrinsics.checkNotNullExpressionValue(format2, "SimpleDateFormat(\"MM-dd\"…etDefault()).format(date)");
            return format2;
        } else {
            String format3 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(date);
            Intrinsics.checkNotNullExpressionValue(format3, "SimpleDateFormat(\"yyyy-M…etDefault()).format(date)");
            return format3;
        }
    }

    @m8.g
    public static final String p(long j4) {
        String format = new SimpleDateFormat("HH:mm", Locale.getDefault()).format(new Date(j4));
        Intrinsics.checkNotNullExpressionValue(format, "SimpleDateFormat(\"HH:mm\"…ult()).format(Date(data))");
        return format;
    }

    public static final void q(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController insetsController = activity.getWindow().getInsetsController();
            if (insetsController != null) {
                insetsController.hide(WindowInsets.Type.statusBars());
                return;
            }
            return;
        }
        activity.getWindow().setFlags(1024, 1024);
    }

    @m8.g
    public static final File r(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        File file = new File(t(activity).getAbsolutePath() + com.fasterxml.jackson.core.e.f13819f + System.currentTimeMillis() + ".mp4");
        if (!file.exists()) {
            file.createNewFile();
        }
        return file;
    }

    @m8.g
    public static final File s(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        File file = new File(u(activity).getAbsolutePath() + com.fasterxml.jackson.core.e.f13819f + System.currentTimeMillis() + ".jpg");
        if (!file.exists()) {
            file.createNewFile();
        }
        return file;
    }

    @m8.g
    public static final File t(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        File file = new File(activity.getCacheDir().getAbsolutePath() + "/voice");
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    @m8.g
    public static final File u(@m8.g Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        File file = new File(activity.getCacheDir().getAbsolutePath() + "/image");
        if (!file.exists()) {
            file.mkdir();
        }
        return file;
    }

    public static final int v(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static final void w(@m8.g View view, @m8.g Window window) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(window, "window");
        new WindowInsetsControllerCompat(window, view).hide(WindowInsetsCompat.Type.ime());
    }

    public static final boolean x(@m8.g View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
        return rootWindowInsets != null && rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime());
    }

    public static final void y(@m8.g View view, @m8.g Window window) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(window, "window");
        view.requestFocus();
        new WindowInsetsControllerCompat(window, view).show(WindowInsetsCompat.Type.ime());
    }

    public static final void z(@m8.g Activity activity, @StringRes int i4) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Toast.makeText(activity, i4, 0).show();
        Unit unit = Unit.INSTANCE;
        Timber.b bVar = Timber.f93860a;
        bVar.a("Toast: " + activity.getString(i4), new Object[0]);
    }
}
