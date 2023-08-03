package s4;

import android.graphics.BitmapFactory;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import m8.g;

/* compiled from: BitmapSampleSizeCalculator.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u001e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¨\u0006\n"}, d2 = {"Ls4/a;", "", "Landroid/graphics/BitmapFactory$Options;", "options", "", "reqWidth", "reqHeight", "a", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f93274a = new a();

    private a() {
    }

    public final int a(@g BitmapFactory.Options options, int i4, int i10) {
        Pair pair = TuplesKt.to(Integer.valueOf(options.outHeight), Integer.valueOf(options.outWidth));
        int intValue = ((Number) pair.component1()).intValue();
        int intValue2 = ((Number) pair.component2()).intValue();
        int i11 = 1;
        if (i10 > 0 && i4 > 0 && (intValue > i10 || intValue2 > i4)) {
            int i12 = intValue / 2;
            int i13 = intValue2 / 2;
            while (i12 / i11 >= i10 && i13 / i11 >= i4) {
                i11 *= 2;
            }
        }
        return i11;
    }
}
