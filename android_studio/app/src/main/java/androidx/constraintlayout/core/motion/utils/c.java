package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* compiled from: TypedValues.java */
/* loaded from: classes.dex */
public final /* synthetic */ class c {
    static {
        String str = TypedValues.Cycle.NAME;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int a(String str) {
        char c10;
        str.hashCode();
        switch (str.hashCode()) {
            case -1310311125:
                if (str.equals("easing")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1249320804:
                if (str.equals("rotationZ")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -987906986:
                if (str.equals("pivotX")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -987906985:
                if (str.equals("pivotY")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = '\f';
                    break;
                }
                c10 = 65535;
                break;
            case 579057826:
                if (str.equals("curveFit")) {
                    c10 = '\r';
                    break;
                }
                c10 = 65535;
                break;
            case 803192288:
                if (str.equals("pathRotate")) {
                    c10 = 14;
                    break;
                }
                c10 = 65535;
                break;
            case 1941332754:
                if (str.equals("visibility")) {
                    c10 = 15;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                return TypedValues.Cycle.TYPE_EASING;
            case 1:
                return 308;
            case 2:
                return 309;
            case 3:
                return 310;
            case 4:
                return 304;
            case 5:
                return 305;
            case 6:
                return 306;
            case 7:
                return 315;
            case '\b':
                return 313;
            case '\t':
                return 314;
            case '\n':
                return 311;
            case 11:
                return 312;
            case '\f':
                return TypedValues.Cycle.TYPE_ALPHA;
            case '\r':
                return 401;
            case 14:
                return TypedValues.Cycle.TYPE_PATH_ROTATE;
            case 15:
                return TypedValues.Cycle.TYPE_VISIBILITY;
            default:
                return -1;
        }
    }

    public static int b(int i4) {
        if (i4 != 100) {
            if (i4 != 101) {
                if (i4 != 416) {
                    if (i4 == 420 || i4 == 421) {
                        return 8;
                    }
                    switch (i4) {
                        case 304:
                        case 305:
                        case 306:
                        case 307:
                        case 308:
                        case 309:
                        case 310:
                        case 311:
                        case 312:
                        case 313:
                        case 314:
                        case 315:
                            return 4;
                        default:
                            switch (i4) {
                                case 401:
                                case TypedValues.Cycle.TYPE_VISIBILITY /* 402 */:
                                    return 2;
                                case TypedValues.Cycle.TYPE_ALPHA /* 403 */:
                                    return 4;
                                default:
                                    switch (i4) {
                                        case TypedValues.Cycle.TYPE_WAVE_PERIOD /* 423 */:
                                        case TypedValues.Cycle.TYPE_WAVE_OFFSET /* 424 */:
                                        case TypedValues.Cycle.TYPE_WAVE_PHASE /* 425 */:
                                            return 4;
                                        default:
                                            return -1;
                                    }
                            }
                    }
                }
                return 4;
            }
            return 8;
        }
        return 2;
    }
}
