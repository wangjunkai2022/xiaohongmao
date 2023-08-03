package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: RegexBasedMatcher.java */
/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final c f35713a = new c(100);

    private b() {
    }

    public static a b() {
        return new b();
    }

    private static boolean c(CharSequence charSequence, Pattern pattern, boolean z9) {
        Matcher matcher = pattern.matcher(charSequence);
        if (matcher.lookingAt()) {
            if (matcher.matches()) {
                return true;
            }
            return z9;
        }
        return false;
    }

    @Override // com.google.i18n.phonenumbers.internal.a
    public boolean a(CharSequence charSequence, Phonemetadata.PhoneNumberDesc phoneNumberDesc, boolean z9) {
        String nationalNumberPattern = phoneNumberDesc.getNationalNumberPattern();
        if (nationalNumberPattern.length() == 0) {
            return false;
        }
        return c(charSequence, this.f35713a.b(nationalNumberPattern), z9);
    }
}
