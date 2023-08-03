package l1;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;

/* compiled from: AnimatedDrawableUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final int f86867a = 11;

    /* renamed from: b  reason: collision with root package name */
    private static final int f86868b = 100;

    public static boolean f(int startFrame, int endFrame, int frameNumber) {
        if (startFrame == -1 || endFrame == -1) {
            return true;
        }
        if (startFrame <= endFrame) {
            if (frameNumber < startFrame || frameNumber > endFrame) {
                return true;
            }
        } else if (frameNumber < startFrame && frameNumber > endFrame) {
            return true;
        }
        return false;
    }

    public void a(int[] frameDurationMs) {
        for (int i4 = 0; i4 < frameDurationMs.length; i4++) {
            if (frameDurationMs[i4] < 11) {
                frameDurationMs[i4] = 100;
            }
        }
    }

    public int b(int[] frameTimestampsMs, int timestampMs) {
        int binarySearch = Arrays.binarySearch(frameTimestampsMs, timestampMs);
        return binarySearch < 0 ? ((-binarySearch) - 1) - 1 : binarySearch;
    }

    public int[] c(int[] frameDurationsMs) {
        int[] iArr = new int[frameDurationsMs.length];
        int i4 = 0;
        for (int i10 = 0; i10 < frameDurationsMs.length; i10++) {
            iArr[i10] = i4;
            i4 += frameDurationsMs[i10];
        }
        return iArr;
    }

    @SuppressLint({"NewApi"})
    public int d(Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    public int e(int[] frameDurationMs) {
        int i4 = 0;
        for (int i10 : frameDurationMs) {
            i4 += i10;
        }
        return i4;
    }
}
