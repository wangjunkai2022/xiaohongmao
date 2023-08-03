package androidx.media;

import android.os.Bundle;
import android.support.v4.media.MediaBrowserCompat;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class MediaBrowserCompatUtils {
    private MediaBrowserCompatUtils() {
    }

    public static boolean areSameOptions(Bundle bundle, Bundle bundle2) {
        if (bundle == bundle2) {
            return true;
        }
        return bundle == null ? bundle2.getInt(MediaBrowserCompat.f67d, -1) == -1 && bundle2.getInt(MediaBrowserCompat.f68e, -1) == -1 : bundle2 == null ? bundle.getInt(MediaBrowserCompat.f67d, -1) == -1 && bundle.getInt(MediaBrowserCompat.f68e, -1) == -1 : bundle.getInt(MediaBrowserCompat.f67d, -1) == bundle2.getInt(MediaBrowserCompat.f67d, -1) && bundle.getInt(MediaBrowserCompat.f68e, -1) == bundle2.getInt(MediaBrowserCompat.f68e, -1);
    }

    public static boolean hasDuplicatedItems(Bundle bundle, Bundle bundle2) {
        int i4;
        int i10;
        int i11;
        int i12 = bundle == null ? -1 : bundle.getInt(MediaBrowserCompat.f67d, -1);
        int i13 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowserCompat.f67d, -1);
        int i14 = bundle == null ? -1 : bundle.getInt(MediaBrowserCompat.f68e, -1);
        int i15 = bundle2 == null ? -1 : bundle2.getInt(MediaBrowserCompat.f68e, -1);
        int i16 = Integer.MAX_VALUE;
        if (i12 == -1 || i14 == -1) {
            i4 = Integer.MAX_VALUE;
            i10 = 0;
        } else {
            i10 = i12 * i14;
            i4 = (i14 + i10) - 1;
        }
        if (i13 == -1 || i15 == -1) {
            i11 = 0;
        } else {
            i11 = i13 * i15;
            i16 = (i15 + i11) - 1;
        }
        return i4 >= i11 && i16 >= i10;
    }
}
