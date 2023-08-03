package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.annotation.KeepName;
import com.ksyun.media.streamer.logstats.StatsConstant;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@KeepName
/* loaded from: classes2.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {
    @y2.d0

    /* renamed from: a  reason: collision with root package name */
    protected int f28518a = 0;

    @NonNull
    public static Intent a(@NonNull Context context, @NonNull PendingIntent pendingIntent, int i4, boolean z9) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i4);
        intent.putExtra("notify_manager", z9);
        return intent;
    }

    private final void b() {
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            Log.e("GoogleApiActivity", "Activity started without extras");
            finish();
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
        Integer num = (Integer) extras.get("error_code");
        if (pendingIntent == null && num == null) {
            Log.e("GoogleApiActivity", "Activity started without resolution");
            finish();
        } else if (pendingIntent != null) {
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                this.f28518a = 1;
            } catch (ActivityNotFoundException e4) {
                if (extras.getBoolean("notify_manager", true)) {
                    com.google.android.gms.common.api.internal.i.z(this).M(new ConnectionResult(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String obj = pendingIntent.toString();
                    StringBuilder sb = new StringBuilder(obj.length() + 36);
                    sb.append("Activity not found while launching ");
                    sb.append(obj);
                    sb.append(".");
                    String sb2 = sb.toString();
                    if (Build.FINGERPRINT.contains("generic")) {
                        sb2 = sb2.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                    Log.e("GoogleApiActivity", sb2, e4);
                }
                this.f28518a = 1;
                finish();
            } catch (IntentSender.SendIntentException e10) {
                Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e10);
                finish();
            }
        } else {
            com.google.android.gms.common.e.x().B(this, ((Integer) com.google.android.gms.common.internal.u.k(num)).intValue(), 2, this);
            this.f28518a = 1;
        }
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i4, int i10, @NonNull Intent intent) {
        super.onActivityResult(i4, i10, intent);
        if (i4 == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f28518a = 0;
            setResult(i10, intent);
            if (booleanExtra) {
                com.google.android.gms.common.api.internal.i z9 = com.google.android.gms.common.api.internal.i.z(this);
                if (i10 == -1) {
                    z9.b();
                } else if (i10 == 0) {
                    z9.M(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i4 == 2) {
            this.f28518a = 0;
            setResult(i10, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        this.f28518a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f28518a = bundle.getInt(StatsConstant.RESOLUTION);
        }
        if (this.f28518a != 1) {
            b();
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putInt(StatsConstant.RESOLUTION, this.f28518a);
        super.onSaveInstanceState(bundle);
    }
}
