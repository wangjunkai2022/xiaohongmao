package screenstreamer.capture;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.projection.MediaProjectionManager;
import screenstreamer.capture.ScreenCapture;

/* compiled from: ScreenBroadcastReceiver.java */
/* loaded from: classes5.dex */
public class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    ScreenCapture f93323a;

    public a(ScreenCapture screenCapture) {
        this.f93323a = screenCapture;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equalsIgnoreCase(ScreenCapture.f93293z)) {
            ScreenCapture screenCapture = this.f93323a;
            ScreenCapture.ScreenCaptureAssistantActivity screenCaptureAssistantActivity = ScreenCapture.B;
            if (screenCaptureAssistantActivity != null) {
                screenCaptureAssistantActivity.f93318a = screenCapture;
                if (screenCapture.f93296c == null) {
                    screenCapture.f93296c = (MediaProjectionManager) screenCaptureAssistantActivity.getSystemService("media_projection");
                }
                screenCaptureAssistantActivity.startActivityForResult(screenCaptureAssistantActivity.f93318a.f93296c.createScreenCaptureIntent(), 1001);
            }
        }
    }
}
