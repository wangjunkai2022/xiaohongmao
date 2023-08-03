package com.google.android.play.core.internal;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class f1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31720a;

    public f1(Context context) {
        this.f31720a = context;
    }

    private static String b(Locale locale) {
        String concat;
        String valueOf = String.valueOf(locale.getLanguage());
        if (locale.getCountry().isEmpty()) {
            concat = "";
        } else {
            String valueOf2 = String.valueOf(locale.getCountry());
            concat = valueOf2.length() != 0 ? "_".concat(valueOf2) : new String("_");
        }
        String valueOf3 = String.valueOf(concat);
        return valueOf3.length() != 0 ? valueOf.concat(valueOf3) : new String(valueOf);
    }

    public final List a() {
        Configuration configuration = this.f31720a.getResources().getConfiguration();
        if (Build.VERSION.SDK_INT >= 24) {
            LocaleList locales = configuration.getLocales();
            ArrayList arrayList = new ArrayList(locales.size());
            for (int i4 = 0; i4 < locales.size(); i4++) {
                arrayList.add(b(locales.get(i4)));
            }
            return arrayList;
        }
        return Collections.singletonList(b(configuration.locale));
    }
}
