package io.sentry.android.core.internal.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import io.sentry.SentryLevel;
import io.sentry.android.core.m0;
import io.sentry.o0;
import m8.a;

@a.c
/* loaded from: classes4.dex */
public final class ConnectivityChecker {

    /* loaded from: classes4.dex */
    public enum Status {
        CONNECTED,
        NOT_CONNECTED,
        NO_PERMISSION,
        UNKNOWN
    }

    private ConnectivityChecker() {
    }

    @m8.g
    private static Status a(@m8.g Context context, @m8.g ConnectivityManager connectivityManager, @m8.g o0 o0Var) {
        if (!i.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            o0Var.c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
            return Status.NO_PERMISSION;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.isConnected() ? Status.CONNECTED : Status.NOT_CONNECTED;
        }
        o0Var.c(SentryLevel.INFO, "NetworkInfo is null, there's no active network.", new Object[0]);
        return Status.NOT_CONNECTED;
    }

    @m8.g
    public static Status b(@m8.g Context context, @m8.g o0 o0Var) {
        ConnectivityManager d4 = d(context, o0Var);
        if (d4 == null) {
            return Status.UNKNOWN;
        }
        return a(context, d4, o0Var);
    }

    @m8.h
    @SuppressLint({"ObsoleteSdkInt", "MissingPermission", "NewApi"})
    public static String c(@m8.g Context context, @m8.g o0 o0Var, @m8.g m0 m0Var) {
        boolean z9;
        ConnectivityManager d4 = d(context, o0Var);
        if (d4 == null) {
            return null;
        }
        boolean z10 = false;
        if (!i.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            o0Var.c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
            return null;
        }
        boolean z11 = true;
        if (m0Var.d() >= 23) {
            Network activeNetwork = d4.getActiveNetwork();
            if (activeNetwork == null) {
                o0Var.c(SentryLevel.INFO, "Network is null and cannot check network status", new Object[0]);
                return null;
            }
            NetworkCapabilities networkCapabilities = d4.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null) {
                o0Var.c(SentryLevel.INFO, "NetworkCapabilities is null and cannot check network type", new Object[0]);
                return null;
            }
            boolean hasTransport = networkCapabilities.hasTransport(3);
            z9 = networkCapabilities.hasTransport(1);
            z11 = networkCapabilities.hasTransport(0);
            z10 = hasTransport;
        } else {
            NetworkInfo activeNetworkInfo = d4.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                o0Var.c(SentryLevel.INFO, "NetworkInfo is null, there's no active network.", new Object[0]);
                return null;
            }
            int type = activeNetworkInfo.getType();
            if (type != 0) {
                if (type == 1) {
                    z9 = true;
                } else if (type != 9) {
                    z9 = false;
                } else {
                    z9 = false;
                    z10 = true;
                }
                z11 = false;
            } else {
                z9 = false;
            }
        }
        if (z10) {
            return "ethernet";
        }
        if (z9) {
            return "wifi";
        }
        if (z11) {
            return "cellular";
        }
        return null;
    }

    @m8.h
    private static ConnectivityManager d(@m8.g Context context, @m8.g o0 o0Var) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            o0Var.c(SentryLevel.INFO, "ConnectivityManager is null and cannot check network status", new Object[0]);
        }
        return connectivityManager;
    }
}
