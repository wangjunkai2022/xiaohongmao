package com.ksyun.media.streamer.capture.camera;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import com.ksyun.media.streamer.capture.CameraCapture;
import com.ksyun.media.streamer.capture.camera.b;
import io.sentry.protocol.y;
import java.util.List;

/* compiled from: CameraUtil.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45856a = "CameraUtil";

    private static boolean a(String str, List list) {
        return list != null && list.indexOf(str) >= 0;
    }

    public static void b(Camera.Parameters parameters) {
        if (parameters == null) {
            return;
        }
        if (a("auto", parameters.getSupportedWhiteBalance())) {
            parameters.setWhiteBalance("auto");
        } else {
            Log.e(f45856a, "Auto white balance not found!");
        }
    }

    public static void c(Camera.Parameters parameters) {
        if (parameters != null && parameters.isVideoStabilizationSupported()) {
            parameters.setVideoStabilization(true);
        }
    }

    public static void d(Camera.Parameters parameters) {
        if (parameters != null && a("auto", parameters.getSupportedAntibanding())) {
            parameters.setAntibanding("auto");
        }
    }

    public static String a(Camera.Parameters parameters) {
        if (parameters == null) {
            return null;
        }
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String focusMode = parameters.getFocusMode();
        if (a("continuous-video", supportedFocusModes)) {
            focusMode = "continuous-video";
        } else if (a("continuous-picture", supportedFocusModes)) {
            focusMode = "continuous-picture";
        } else if (a("auto", supportedFocusModes)) {
            focusMode = "auto";
        }
        parameters.setFocusMode(focusMode);
        return focusMode;
    }

    private static void a(Context context) {
        if (((DevicePolicyManager) context.getSystemService("device_policy")).getCameraDisabled(null)) {
            throw new CameraDisabledException();
        }
    }

    public static b.C0390b a(Context context, int i4) {
        a(context);
        try {
            return a.a().a(i4);
        } catch (CameraHardwareException e4) {
            if ("eng".equals(Build.TYPE)) {
                throw new RuntimeException("openCamera failed", e4);
            }
            throw e4;
        }
    }

    public static float a(Camera.Parameters parameters, float f10, boolean z9) {
        if (parameters == null) {
            return 0.0f;
        }
        int i4 = (int) (f10 * 1000.0f);
        int[] iArr = new int[2];
        int i10 = Integer.MAX_VALUE;
        List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
        for (int[] iArr2 : supportedPreviewFpsRange) {
            Log.d(f45856a, iArr2[0] + "-" + iArr2[1]);
        }
        for (int[] iArr3 : supportedPreviewFpsRange) {
            if (i4 >= iArr3[0] && i4 <= iArr3[1] && (z9 || iArr3[0] != iArr3[1])) {
                if (z9) {
                    iArr[0] = i4;
                    iArr[1] = i4;
                } else {
                    iArr[0] = iArr3[0];
                    iArr[1] = iArr3[1];
                }
                parameters.setPreviewFpsRange(iArr[0], iArr[1]);
                return iArr[1] / 1000.0f;
            }
            for (int i11 : iArr3) {
                int abs = Math.abs(i11 - i4);
                if (abs <= i10) {
                    if (z9) {
                        iArr[0] = i11;
                        iArr[1] = i11;
                    } else {
                        iArr[0] = iArr3[0];
                        iArr[1] = iArr3[1];
                    }
                    i10 = abs;
                }
            }
        }
        parameters.setPreviewFpsRange(iArr[0], iArr[1]);
        return iArr[1] / 1000.0f;
    }

    public static CameraCapture.b a(Camera.Parameters parameters, CameraCapture.b bVar) {
        if (parameters == null || bVar == null) {
            return null;
        }
        int i4 = Integer.MAX_VALUE;
        int i10 = Integer.MAX_VALUE;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (Camera.Size size : parameters.getSupportedPreviewSizes()) {
            Log.d(f45856a, "==== Camera Support: " + size.width + y.b.f83919g + size.height);
            int i15 = size.width;
            int i16 = bVar.f45684a;
            int i17 = size.height;
            int i18 = bVar.f45685b;
            int i19 = ((i15 - i16) * (i15 - i16)) + ((i17 - i18) * (i17 - i18));
            if (i19 < i4) {
                i14 = i17;
                i13 = i15;
                i4 = i19;
            }
            if (i15 >= i16 && i17 >= i18 && i19 < i10) {
                i12 = i17;
                i11 = i15;
                i10 = i19;
            }
        }
        if (i11 == 0 || i12 == 0) {
            i11 = i13;
            i12 = i14;
        }
        parameters.setPreviewSize(i11, i12);
        return new CameraCapture.b(i11, i12);
    }

    public static int a(int i4, int i10) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i10, cameraInfo);
        if (cameraInfo.facing == 1) {
            return (360 - ((cameraInfo.orientation + i4) % 360)) % 360;
        }
        return ((cameraInfo.orientation - i4) + 360) % 360;
    }
}
