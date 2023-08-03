package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.ConfigurationCompat;
import com.google.android.gms.common.m;
import java.util.Locale;
import t2.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class j0 {
    @s7.a("sCache")

    /* renamed from: a  reason: collision with root package name */
    private static final SimpleArrayMap<String, String> f29146a = new SimpleArrayMap<>();
    @Nullable
    @s7.a("sCache")

    /* renamed from: b  reason: collision with root package name */
    private static Locale f29147b;

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return com.google.android.gms.common.wrappers.c.a(context).d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String b(Context context) {
        return context.getResources().getString(a.e.f93815g);
    }

    @NonNull
    public static String c(Context context, int i4) {
        Resources resources = context.getResources();
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    return resources.getString(17039370);
                }
                return resources.getString(a.e.f93809a);
            }
            return resources.getString(a.e.f93818j);
        }
        return resources.getString(a.e.f93812d);
    }

    @NonNull
    public static String d(Context context, int i4) {
        Resources resources = context.getResources();
        String a10 = a(context);
        if (i4 != 1) {
            if (i4 == 2) {
                return y2.l.l(context) ? resources.getString(a.e.f93822n) : resources.getString(a.e.f93819k, a10);
            } else if (i4 != 3) {
                if (i4 != 5) {
                    if (i4 != 7) {
                        if (i4 != 9) {
                            if (i4 != 20) {
                                switch (i4) {
                                    case 16:
                                        return h(context, "common_google_play_services_api_unavailable_text", a10);
                                    case 17:
                                        return h(context, "common_google_play_services_sign_in_failed_text", a10);
                                    case 18:
                                        return resources.getString(a.e.f93821m, a10);
                                    default:
                                        return resources.getString(m.b.f29232a, a10);
                                }
                            }
                            return h(context, "common_google_play_services_restricted_profile_text", a10);
                        }
                        return resources.getString(a.e.f93817i, a10);
                    }
                    return h(context, "common_google_play_services_network_error_text", a10);
                }
                return h(context, "common_google_play_services_invalid_account_text", a10);
            } else {
                return resources.getString(a.e.f93810b, a10);
            }
        }
        return resources.getString(a.e.f93813e, a10);
    }

    @NonNull
    public static String e(Context context, int i4) {
        if (i4 != 6 && i4 != 19) {
            return d(context, i4);
        }
        return h(context, "common_google_play_services_resolution_required_text", a(context));
    }

    @NonNull
    public static String f(Context context, int i4) {
        String g4;
        if (i4 == 6) {
            g4 = i(context, "common_google_play_services_resolution_required_title");
        } else {
            g4 = g(context, i4);
        }
        return g4 == null ? context.getResources().getString(a.e.f93816h) : g4;
    }

    @Nullable
    public static String g(Context context, int i4) {
        Resources resources = context.getResources();
        switch (i4) {
            case 1:
                return resources.getString(a.e.f93814f);
            case 2:
                return resources.getString(a.e.f93820l);
            case 3:
                return resources.getString(a.e.f93811c);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return i(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return i(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i4);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return i(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return i(context, "common_google_play_services_restricted_profile_title");
        }
    }

    private static String h(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String i4 = i(context, str);
        if (i4 == null) {
            i4 = resources.getString(m.b.f29232a);
        }
        return String.format(resources.getConfiguration().locale, i4, str2);
    }

    @Nullable
    private static String i(Context context, String str) {
        String str2;
        String str3;
        SimpleArrayMap<String, String> simpleArrayMap = f29146a;
        synchronized (simpleArrayMap) {
            Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
            if (!locale.equals(f29147b)) {
                simpleArrayMap.clear();
                f29147b = locale;
            }
            String str4 = simpleArrayMap.get(str);
            if (str4 != null) {
                return str4;
            }
            Resources j4 = com.google.android.gms.common.g.j(context);
            if (j4 == null) {
                return null;
            }
            int identifier = j4.getIdentifier(str, TypedValues.Custom.S_STRING, "com.google.android.gms");
            if (identifier == 0) {
                if (str.length() != 0) {
                    str3 = "Missing resource: ".concat(str);
                } else {
                    str3 = new String("Missing resource: ");
                }
                Log.w("GoogleApiAvailability", str3);
                return null;
            }
            String string = j4.getString(identifier);
            if (!TextUtils.isEmpty(string)) {
                simpleArrayMap.put(str, string);
                return string;
            }
            if (str.length() != 0) {
                str2 = "Got empty resource: ".concat(str);
            } else {
                str2 = new String("Got empty resource: ");
            }
            Log.w("GoogleApiAvailability", str2);
            return null;
        }
    }
}
