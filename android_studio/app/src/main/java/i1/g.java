package i1;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: MultiUriHelper.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class g {
    @r7.h
    public static <T> Uri a(@r7.h T mainRequest, @r7.h T lowResRequest, @r7.h T[] firstAvailableRequest, com.facebook.common.internal.g<T, Uri> requestToUri) {
        Uri apply;
        Uri apply2;
        if (mainRequest == null || (apply2 = requestToUri.apply(mainRequest)) == null) {
            if (firstAvailableRequest == null || firstAvailableRequest.length <= 0 || firstAvailableRequest[0] == null || (apply = requestToUri.apply(firstAvailableRequest[0])) == null) {
                if (lowResRequest != null) {
                    return requestToUri.apply(lowResRequest);
                }
                return null;
            }
            return apply;
        }
        return apply2;
    }
}
