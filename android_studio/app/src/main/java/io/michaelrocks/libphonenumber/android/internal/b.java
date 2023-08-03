package io.michaelrocks.libphonenumber.android.internal;

import io.michaelrocks.libphonenumber.android.Phonemetadata;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: RegexBasedMatcher.java */
/* loaded from: classes3.dex */
public final class b implements a {

    /* renamed from: a  reason: collision with root package name */
    private final c f71036a = new c(100);

    private b() {
    }

    public static a b() {
        return new b();
    }

    private static boolean c(CharSequence number, Pattern pattern, boolean allowPrefixMatch) {
        Matcher matcher = pattern.matcher(number);
        if (matcher.lookingAt()) {
            if (matcher.matches()) {
                return true;
            }
            return allowPrefixMatch;
        }
        return false;
    }

    @Override // io.michaelrocks.libphonenumber.android.internal.a
    public boolean a(CharSequence number, Phonemetadata.PhoneNumberDesc numberDesc, boolean allowPrefixMatch) {
        String nationalNumberPattern = numberDesc.getNationalNumberPattern();
        if (nationalNumberPattern.length() == 0) {
            return false;
        }
        return c(number, this.f71036a.b(nationalNumberPattern), allowPrefixMatch);
    }
}
