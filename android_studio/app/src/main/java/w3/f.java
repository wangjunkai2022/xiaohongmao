package w3;

import androidx.core.view.InputDeviceCompat;
import java.io.IOException;

/* compiled from: ScalingList.java */
/* loaded from: classes2.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    public int[] f94384a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f94385b;

    public static f a(com.googlecode.mp4parser.h264.read.b bVar, int i4) throws IOException {
        f fVar = new f();
        fVar.f94384a = new int[i4];
        int i10 = 8;
        int i11 = 8;
        int i12 = 0;
        while (i12 < i4) {
            if (i10 != 0) {
                i10 = ((bVar.t("deltaScale") + i11) + 256) % 256;
                fVar.f94385b = i12 == 0 && i10 == 0;
            }
            int[] iArr = fVar.f94384a;
            if (i10 != 0) {
                i11 = i10;
            }
            iArr[i12] = i11;
            i11 = iArr[i12];
            i12++;
        }
        return fVar;
    }

    public void b(x3.b bVar) throws IOException {
        int i4 = 0;
        if (this.f94385b) {
            bVar.i(0, "SPS: ");
            return;
        }
        int i10 = 8;
        while (true) {
            int[] iArr = this.f94384a;
            if (i4 >= iArr.length) {
                return;
            }
            bVar.i((iArr[i4] - i10) + InputDeviceCompat.SOURCE_ANY, "SPS: ");
            i10 = this.f94384a[i4];
            i4++;
        }
    }

    public String toString() {
        return "ScalingList{scalingList=" + this.f94384a + ", useDefaultScalingMatrixFlag=" + this.f94385b + '}';
    }
}
