package com.im.freechat.utils;

import android.content.Context;
import android.hardware.Camera;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* compiled from: CameraPreview.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0019\u0012\u0006\u0010(\u001a\u00020'\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b)\u0010*J2\u0010\n\u001a\b\u0018\u00010\u0004R\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\b\u0012\u00060\u0004R\u00020\u0005\u0018\u00010\u00032\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u001e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0016\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0014J(\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u001aR\u001a\u0010 \u001a\u00020\u001c8\u0006X\u0086D¢\u0006\f\n\u0004\b\u0014\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006+"}, d2 = {"Lcom/im/freechat/utils/b;", "Landroid/view/SurfaceView;", "Landroid/view/SurfaceHolder$Callback;", "", "Landroid/hardware/Camera$Size;", "Landroid/hardware/Camera;", "sizes", "", "w", "h", "a", "camera", "width", "height", "", "c", "Landroid/view/SurfaceHolder;", "holder", "surfaceCreated", "surfaceDestroyed", "b", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", KSYMediaMeta.IJKM_KEY_FORMAT, "surfaceChanged", "Landroid/hardware/Camera;", "mCamera", "", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "Landroid/view/SurfaceHolder;", "mHolder", "", "d", "F", "aspectRatio", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Landroid/hardware/Camera;)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b extends SurfaceView implements SurfaceHolder.Callback {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private Camera f43740a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final String f43741b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final SurfaceHolder f43742c;

    /* renamed from: d  reason: collision with root package name */
    private float f43743d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@m8.g Context context, @m8.h Camera camera) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f43740a = camera;
        this.f43741b = "CameraPreview";
        SurfaceHolder holder = getHolder();
        holder.addCallback(this);
        holder.setType(3);
        Intrinsics.checkNotNullExpressionValue(holder, "holder.apply {\n        /…_TYPE_PUSH_BUFFERS)\n    }");
        this.f43742c = holder;
    }

    private final Camera.Size a(List<? extends Camera.Size> list, int i4, int i10) {
        double d4 = i10 / i4;
        Camera.Size size = null;
        if (list == null) {
            return null;
        }
        double d10 = Double.MAX_VALUE;
        double d11 = Double.MAX_VALUE;
        for (Camera.Size size2 : list) {
            if (Math.abs((size2.width / size2.height) - d4) <= 0.1d && Math.abs(size2.height - i10) < d11) {
                d11 = Math.abs(size2.height - i10);
                size = size2;
            }
        }
        if (size == null) {
            for (Camera.Size size3 : list) {
                if (Math.abs(size3.height - i10) < d10) {
                    d10 = Math.abs(size3.height - i10);
                    size = size3;
                }
            }
        }
        return size;
    }

    public final void b(int i4, int i10) {
        if (i4 > 0 && i10 > 0) {
            this.f43743d = i4 / i10;
            getHolder().setFixedSize(i4, i10);
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Size cannot be negative".toString());
    }

    public final void c(@m8.g Camera camera, int i4, int i10) {
        Intrinsics.checkNotNullParameter(camera, "camera");
        this.f43740a = camera;
        if (camera != null) {
            try {
                camera.setPreviewDisplay(getHolder());
                Camera.Size a10 = a(camera.getParameters().getSupportedPreviewSizes(), i4, i10);
                if (a10 != null) {
                    Camera.Parameters parameters = camera.getParameters();
                    parameters.setPreviewSize(a10.width, a10.height);
                    camera.setParameters(parameters);
                }
                camera.startPreview();
                camera.setDisplayOrientation(90);
            } catch (IOException e4) {
                String str = this.f43741b;
                Log.d(str, "Error setting camera preview: " + e4.getMessage());
            }
        }
    }

    @m8.g
    public final String getTAG() {
        return this.f43741b;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int i4, int i10) {
        super.onMeasure(i4, i10);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i10);
        float f10 = this.f43743d;
        if (f10 == 0.0f) {
            setMeasuredDimension(size, size2);
            return;
        }
        if (size <= size2) {
            f10 = 1.0f / f10;
        }
        float f11 = size;
        float f12 = size2 * f10;
        if (f11 < f12) {
            size = MathKt__MathJVMKt.roundToInt(f12);
        } else {
            size2 = MathKt__MathJVMKt.roundToInt(f11 / f10);
        }
        Log.d(this.f43741b, "Measured dimensions set: " + size + " x " + size2);
        setMeasuredDimension(size, size2);
        if (size > size2) {
            setTranslationX((size2 - size) / 2.0f);
        } else {
            setTranslationY((size - size2) / 2.0f);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(@m8.g SurfaceHolder holder, int i4, int i10, int i11) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (this.f43742c.getSurface() == null) {
            return;
        }
        try {
            Camera camera = this.f43740a;
            if (camera != null) {
                camera.stopPreview();
            }
        } catch (Exception unused) {
        }
        Camera camera2 = this.f43740a;
        if (camera2 != null) {
            try {
                camera2.setPreviewDisplay(this.f43742c);
                camera2.startPreview();
            } catch (Exception e4) {
                String str = this.f43741b;
                Log.d(str, "Error starting camera preview: " + e4.getMessage());
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(@m8.g SurfaceHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Camera camera = this.f43740a;
        if (camera != null) {
            try {
                camera.setPreviewDisplay(holder);
                camera.startPreview();
            } catch (IOException e4) {
                String str = this.f43741b;
                Log.d(str, "Error setting camera preview: " + e4.getMessage());
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(@m8.g SurfaceHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }
}
