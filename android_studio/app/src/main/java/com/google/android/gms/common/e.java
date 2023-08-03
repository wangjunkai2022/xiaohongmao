package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.internal.b2;
import com.google.android.gms.common.api.internal.c2;
import com.google.android.gms.common.api.internal.i2;
import io.sentry.protocol.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import t2.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class e extends f {
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public static final String f28993i = "com.google.android.gms";
    @GuardedBy("mLock")

    /* renamed from: g  reason: collision with root package name */
    private String f28996g;

    /* renamed from: j  reason: collision with root package name */
    private static final Object f28994j = new Object();

    /* renamed from: k  reason: collision with root package name */
    private static final e f28995k = new e();

    /* renamed from: h  reason: collision with root package name */
    public static final int f28992h = f.f29004a;

    @NonNull
    public static final com.google.android.gms.tasks.k<Map<com.google.android.gms.common.api.internal.c<?>, String>> M(@NonNull com.google.android.gms.common.api.j<?> jVar, @NonNull com.google.android.gms.common.api.j<?>... jVarArr) {
        com.google.android.gms.common.internal.u.l(jVar, "Requested API must not be null.");
        for (com.google.android.gms.common.api.j<?> jVar2 : jVarArr) {
            com.google.android.gms.common.internal.u.l(jVar2, "Requested API must not be null.");
        }
        ArrayList arrayList = new ArrayList(jVarArr.length + 1);
        arrayList.add(jVar);
        arrayList.addAll(Arrays.asList(jVarArr));
        return com.google.android.gms.common.api.internal.i.y().B(arrayList);
    }

    @NonNull
    public static e x() {
        return f28995k;
    }

    public boolean A(@NonNull Activity activity, int i4, int i10) {
        return B(activity, i4, i10, null);
    }

    public boolean B(@NonNull Activity activity, int i4, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog t9 = t(activity, i4, i10, onCancelListener);
        if (t9 == null) {
            return false;
        }
        H(activity, t9, g.f29010k, onCancelListener);
        return true;
    }

    public void C(@NonNull Context context, int i4) {
        I(context, i4, null, g(context, i4, 0, "n"));
    }

    public void D(@NonNull Context context, @NonNull ConnectionResult connectionResult) {
        I(context, connectionResult.getErrorCode(), null, w(context, connectionResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final Dialog E(@NonNull Context context, int i4, com.google.android.gms.common.internal.n0 n0Var, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (i4 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.j0.d(context, i4));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String c10 = com.google.android.gms.common.internal.j0.c(context, i4);
        if (c10 != null) {
            builder.setPositiveButton(c10, n0Var);
        }
        String g4 = com.google.android.gms.common.internal.j0.g(context, i4);
        if (g4 != null) {
            builder.setTitle(g4);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i4)), new IllegalArgumentException());
        return builder.create();
    }

    @NonNull
    public final Dialog F(@NonNull Activity activity, @NonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.j0.d(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        H(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    @Nullable
    public final c2 G(Context context, b2 b2Var) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme(r.b.f83833i);
        c2 c2Var = new c2(b2Var);
        context.registerReceiver(c2Var, intentFilter);
        c2Var.a(context);
        if (n(context, "com.google.android.gms")) {
            return c2Var;
        }
        b2Var.a();
        c2Var.b();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void H(Activity activity, Dialog dialog, String str, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                o.V(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.b(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    final void I(Context context, int i4, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        int i10;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i4), null), new IllegalArgumentException());
        if (i4 == 18) {
            J(context);
        } else if (pendingIntent == null) {
            if (i4 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
            }
        } else {
            String f10 = com.google.android.gms.common.internal.j0.f(context, i4);
            String e4 = com.google.android.gms.common.internal.j0.e(context, i4);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) com.google.android.gms.common.internal.u.k(context.getSystemService("notification"));
            NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(f10).setStyle(new NotificationCompat.BigTextStyle().bigText(e4));
            if (y2.l.k(context)) {
                com.google.android.gms.common.internal.u.q(y2.v.i());
                style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
                if (y2.l.l(context)) {
                    style.addAction(a.c.f93779a, resources.getString(a.e.f93823o), pendingIntent);
                } else {
                    style.setContentIntent(pendingIntent);
                }
            } else {
                style.setSmallIcon(17301642).setTicker(resources.getString(a.e.f93816h)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(e4);
            }
            if (y2.v.n()) {
                com.google.android.gms.common.internal.u.q(y2.v.n());
                synchronized (f28994j) {
                    str2 = this.f28996g;
                }
                if (str2 == null) {
                    str2 = "com.google.android.gms.availability";
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                    String b10 = com.google.android.gms.common.internal.j0.b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", b10, 4));
                    } else if (!b10.contentEquals(notificationChannel.getName())) {
                        notificationChannel.setName(b10);
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                }
                style.setChannelId(str2);
            }
            Notification build = style.build();
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                h.f29020g.set(false);
                i10 = 10436;
            } else {
                i10 = 39789;
            }
            notificationManager.notify(i10, build);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void J(Context context) {
        new r(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean K(@NonNull Activity activity, @NonNull com.google.android.gms.common.api.internal.m mVar, int i4, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog E = E(activity, i4, com.google.android.gms.common.internal.n0.d(mVar, e(activity, i4, "d"), 2), onCancelListener);
        if (E == null) {
            return false;
        }
        H(activity, E, g.f29010k, onCancelListener);
        return true;
    }

    public final boolean L(@NonNull Context context, @NonNull ConnectionResult connectionResult, int i4) {
        PendingIntent w9;
        if (com.google.android.gms.common.wrappers.a.a(context) || (w9 = w(context, connectionResult)) == null) {
            return false;
        }
        I(context, connectionResult.getErrorCode(), null, com.google.android.gms.internal.base.l.a(context, 0, GoogleApiActivity.a(context, w9, i4, true), com.google.android.gms.internal.base.l.f29377a | 134217728));
        return true;
    }

    @Override // com.google.android.gms.common.f
    @u2.a
    @com.google.android.gms.common.internal.y
    public int c(@NonNull Context context) {
        return super.c(context);
    }

    @Override // com.google.android.gms.common.f
    @Nullable
    @u2.a
    @com.google.android.gms.common.internal.y
    public Intent e(@Nullable Context context, int i4, @Nullable String str) {
        return super.e(context, i4, str);
    }

    @Override // com.google.android.gms.common.f
    @Nullable
    public PendingIntent f(@NonNull Context context, int i4, int i10) {
        return super.f(context, i4, i10);
    }

    @Override // com.google.android.gms.common.f
    @NonNull
    public final String h(int i4) {
        return super.h(i4);
    }

    @Override // com.google.android.gms.common.f
    @com.google.android.gms.common.internal.l
    public int j(@NonNull Context context) {
        return super.j(context);
    }

    @Override // com.google.android.gms.common.f
    @u2.a
    @com.google.android.gms.common.internal.y
    public int k(@NonNull Context context, int i4) {
        return super.k(context, i4);
    }

    @Override // com.google.android.gms.common.f
    public final boolean o(int i4) {
        return super.o(i4);
    }

    @NonNull
    public com.google.android.gms.tasks.k<Void> q(@NonNull com.google.android.gms.common.api.h<?> hVar, @NonNull com.google.android.gms.common.api.h<?>... hVarArr) {
        return M(hVar, hVarArr).w(q.f29258a);
    }

    @NonNull
    public com.google.android.gms.tasks.k<Void> r(@NonNull com.google.android.gms.common.api.j<?> jVar, @NonNull com.google.android.gms.common.api.j<?>... jVarArr) {
        return M(jVar, jVarArr).w(p.f29256a);
    }

    @Nullable
    public Dialog s(@NonNull Activity activity, int i4, int i10) {
        return t(activity, i4, i10, null);
    }

    @Nullable
    public Dialog t(@NonNull Activity activity, int i4, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return E(activity, i4, com.google.android.gms.common.internal.n0.b(activity, e(activity, i4, "d"), i10), onCancelListener);
    }

    @Nullable
    public Dialog u(@NonNull Fragment fragment, int i4, int i10) {
        return v(fragment, i4, i10, null);
    }

    @Nullable
    public Dialog v(@NonNull Fragment fragment, int i4, int i10, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return E(fragment.requireContext(), i4, com.google.android.gms.common.internal.n0.c(fragment, e(fragment.requireContext(), i4, "d"), i10), onCancelListener);
    }

    @Nullable
    public PendingIntent w(@NonNull Context context, @NonNull ConnectionResult connectionResult) {
        if (connectionResult.hasResolution()) {
            return connectionResult.getResolution();
        }
        return f(context, connectionResult.getErrorCode(), 0);
    }

    @NonNull
    @MainThread
    public com.google.android.gms.tasks.k<Void> y(@NonNull Activity activity) {
        int i4 = f28992h;
        com.google.android.gms.common.internal.u.f("makeGooglePlayServicesAvailable must be called from the main thread");
        int k10 = k(activity, i4);
        if (k10 == 0) {
            return com.google.android.gms.tasks.n.g(null);
        }
        i2 u9 = i2.u(activity);
        u9.t(new ConnectionResult(k10, null), 0);
        return u9.v();
    }

    @TargetApi(26)
    public void z(@NonNull Context context, @NonNull String str) {
        if (y2.v.n()) {
            com.google.android.gms.common.internal.u.k(((NotificationManager) com.google.android.gms.common.internal.u.k(context.getSystemService("notification"))).getNotificationChannel(str));
        }
        synchronized (f28994j) {
            this.f28996g = str;
        }
    }
}
