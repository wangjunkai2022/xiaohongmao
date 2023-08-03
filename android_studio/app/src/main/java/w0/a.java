package w0;

import android.util.SparseIntArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DebugOverlayImageOriginColor.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseIntArray f94216a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(7);
        f94216a = sparseIntArray;
        sparseIntArray.append(1, -7829368);
        sparseIntArray.append(2, SupportMenu.CATEGORY_MASK);
        sparseIntArray.append(3, InputDeviceCompat.SOURCE_ANY);
        sparseIntArray.append(4, InputDeviceCompat.SOURCE_ANY);
        sparseIntArray.append(5, -16711936);
        sparseIntArray.append(6, -16711936);
        sparseIntArray.append(7, -16711936);
    }

    public static int a(int imageOrigin) {
        return f94216a.get(imageOrigin, -1);
    }
}
