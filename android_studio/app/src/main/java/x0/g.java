package x0;

import com.facebook.imagepipeline.producers.b0;
import com.facebook.imagepipeline.producers.c0;
import com.facebook.imagepipeline.producers.d0;
import com.facebook.imagepipeline.producers.f0;
import com.facebook.imagepipeline.producers.g0;
import com.facebook.imagepipeline.producers.i0;
import com.facebook.imagepipeline.producers.k0;
import com.facebook.imagepipeline.producers.m0;
import com.facebook.imagepipeline.producers.n0;
import com.facebook.imagepipeline.producers.q;
import com.facebook.imagepipeline.producers.t;
import com.facebook.imagepipeline.producers.w0;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: ImageOriginUtils.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class g {
    private g() {
    }

    public static int a(final String producerName) {
        producerName.hashCode();
        char c10 = 65535;
        switch (producerName.hashCode()) {
            case -1917159454:
                if (producerName.equals(w0.f13262d)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1914072202:
                if (producerName.equals(com.facebook.imagepipeline.producers.f.f12955g)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1683996557:
                if (producerName.equals(g0.f12968d)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1579985851:
                if (producerName.equals(f0.f12957c)) {
                    c10 = 3;
                    break;
                }
                break;
            case -1307634203:
                if (producerName.equals(t.f13234d)) {
                    c10 = 4;
                    break;
                }
                break;
            case -1224383234:
                if (producerName.equals(k0.f13061d)) {
                    c10 = 5;
                    break;
                }
                break;
            case 473552259:
                if (producerName.equals(i0.f13002c)) {
                    c10 = 6;
                    break;
                }
                break;
            case 656304759:
                if (producerName.equals(q.f13191e)) {
                    c10 = 7;
                    break;
                }
                break;
            case 957714404:
                if (producerName.equals(com.facebook.imagepipeline.producers.h.f12975d)) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1019542023:
                if (producerName.equals(b0.f12904d)) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1023071510:
                if (producerName.equals(n0.f13141d)) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1721672898:
                if (producerName.equals(com.facebook.imagepipeline.producers.m.f13076c)) {
                    c10 = 11;
                    break;
                }
                break;
            case 1793127518:
                if (producerName.equals(d0.f12937e)) {
                    c10 = '\f';
                    break;
                }
                break;
            case 2109593398:
                if (producerName.equals(m0.f13077f)) {
                    c10 = '\r';
                    break;
                }
                break;
            case 2113652014:
                if (producerName.equals(c0.f12908d)) {
                    c10 = 14;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 2:
            case 3:
            case 6:
            case '\t':
            case 11:
            case '\f':
            case 14:
                return 7;
            case 1:
            case '\b':
            case '\n':
                return 5;
            case 4:
                return 4;
            case 5:
                return 2;
            case 7:
            case '\r':
                return 3;
            default:
                return 1;
        }
    }

    public static String b(int imageOrigin) {
        switch (imageOrigin) {
            case 2:
                return "network";
            case 3:
                return "disk";
            case 4:
                return "memory_encoded";
            case 5:
                return "memory_bitmap";
            case 6:
                return "memory_bitmap_shortcut";
            case 7:
                return com.google.android.gms.common.internal.q.f29166b;
            default:
                return "unknown";
        }
    }
}
