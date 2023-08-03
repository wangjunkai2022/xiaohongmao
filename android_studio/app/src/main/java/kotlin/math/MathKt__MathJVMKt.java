package kotlin.math;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.auth0.jwt.impl.i;
import com.google.android.exoplayer2.text.ttml.d;
import com.ksy.statlibrary.db.DBConstant;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MathJVM.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b7\u001a\u0011\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0087\b\u001a\u0011\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\fH\u0087\b\u001a\u0011\u0010\u0019\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0010\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0010\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0019\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0019\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0010\u0010 \u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0007\u001a\u0011\u0010 \u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010!\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010!\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\"\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\"\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010#\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010#\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010$\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010$\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010%\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010%\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010&\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010&\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0019\u0010'\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u0001H\u0087\b\u001a\u0019\u0010'\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010(\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010(\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010)\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010)\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0018\u0010*\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u0001H\u0007\u001a\u0018\u0010*\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0006H\u0007\u001a\u0011\u0010,\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010,\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0010\u0010-\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0007\u001a\u0010\u0010-\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0007\u001a\u0019\u0010.\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u0001H\u0087\b\u001a\u0019\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0087\b\u001a\u0019\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\tH\u0087\b\u001a\u0019\u0010.\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\fH\u0087\b\u001a\u0019\u00101\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u0001H\u0087\b\u001a\u0019\u00101\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0087\b\u001a\u0019\u00101\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\tH\u0087\b\u001a\u0019\u00101\u001a\u00020\f2\u0006\u0010/\u001a\u00020\f2\u0006\u00100\u001a\u00020\fH\u0087\b\u001a\u0011\u00102\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00102\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u00103\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00103\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u00104\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00104\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u00105\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00105\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u00106\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00106\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0011\u00107\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0011\u00107\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0010\u00108\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0007\u001a\u0010\u00108\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0007\u001a\u0015\u00109\u001a\u00020\u0001*\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\b\u001a\u0015\u00109\u001a\u00020\u0006*\u00020\u00062\u0006\u0010:\u001a\u00020\u0006H\u0087\b\u001a\r\u0010;\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\r\u0010;\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\u0015\u0010<\u001a\u00020\u0001*\u00020\u00012\u0006\u0010=\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010<\u001a\u00020\u0006*\u00020\u00062\u0006\u0010=\u001a\u00020\u0006H\u0087\b\u001a\r\u0010>\u001a\u00020\u0001*\u00020\u0001H\u0087\b\u001a\r\u0010>\u001a\u00020\u0006*\u00020\u0006H\u0087\b\u001a\u0015\u0010?\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010?\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0018\u001a\u00020\tH\u0087\b\u001a\u0015\u0010?\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010?\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0018\u001a\u00020\tH\u0087\b\u001a\f\u0010@\u001a\u00020\t*\u00020\u0001H\u0007\u001a\f\u0010@\u001a\u00020\t*\u00020\u0006H\u0007\u001a\f\u0010A\u001a\u00020\f*\u00020\u0001H\u0007\u001a\f\u0010A\u001a\u00020\f*\u00020\u0006H\u0007\u001a\u0015\u0010B\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b\u001a\u0015\u0010B\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\tH\u0087\b\u001a\u0015\u0010B\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b\u001a\u0015\u0010B\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0087\b\"\u001f\u0010\u0000\u001a\u00020\u0001*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u001f\u0010\u0000\u001a\u00020\u0006*\u00020\u00068Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0002\u0010\u0007\u001a\u0004\b\u0004\u0010\b\"\u001f\u0010\u0000\u001a\u00020\t*\u00020\t8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0002\u0010\n\u001a\u0004\b\u0004\u0010\u000b\"\u001f\u0010\u0000\u001a\u00020\f*\u00020\f8Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0002\u0010\r\u001a\u0004\b\u0004\u0010\u000e\"\u001f\u0010\u000f\u001a\u00020\u0001*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0003\u001a\u0004\b\u0011\u0010\u0005\"\u001f\u0010\u000f\u001a\u00020\u0006*\u00020\u00068Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0007\u001a\u0004\b\u0011\u0010\b\"\u001e\u0010\u000f\u001a\u00020\t*\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\u000b\"\u001e\u0010\u000f\u001a\u00020\t*\u00020\f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u0012\"\u001f\u0010\u0013\u001a\u00020\u0001*\u00020\u00018Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0003\u001a\u0004\b\u0015\u0010\u0005\"\u001f\u0010\u0013\u001a\u00020\u0006*\u00020\u00068Æ\u0002X\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u0007\u001a\u0004\b\u0015\u0010\b¨\u0006C"}, d2 = {"absoluteValue", "", "getAbsoluteValue$annotations", "(D)V", "getAbsoluteValue", "(D)D", "", "(F)V", "(F)F", "", "(I)V", "(I)I", "", "(J)V", "(J)J", "sign", "getSign$annotations", "getSign", "(J)I", "ulp", "getUlp$annotations", "getUlp", "abs", y.b.f83919g, "n", "acos", "acosh", "asin", "asinh", "atan", "atan2", y.b.f83920h, "atanh", "ceil", "cos", "cosh", i.f7107g, "expm1", "floor", "hypot", "ln", "ln1p", DBConstant.TABLE_NAME_LOG, d.X, "log10", "log2", "max", "a", "b", "min", "round", "sin", "sinh", "sqrt", "tan", "tanh", "truncate", "IEEErem", "divisor", "nextDown", "nextTowards", TypedValues.Transition.S_TO, "nextUp", "pow", "roundToInt", "roundToLong", "withSign", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/math/MathKt")
/* loaded from: classes4.dex */
public class MathKt__MathJVMKt extends MathKt__MathHKt {
    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double IEEErem(double d4, double d10) {
        return Math.IEEEremainder(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double abs(double d4) {
        return Math.abs(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double acos(double d4) {
        return Math.acos(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double acosh(double d4) {
        if (d4 < 1.0d) {
            return Double.NaN;
        }
        if (d4 > Constants.upper_taylor_2_bound) {
            return Math.log(d4) + Constants.LN2;
        }
        double d10 = 1;
        double d11 = d4 - d10;
        if (d11 >= Constants.taylor_n_bound) {
            return Math.log(d4 + Math.sqrt((d4 * d4) - d10));
        }
        double sqrt = Math.sqrt(d11);
        if (sqrt >= Constants.taylor_2_bound) {
            sqrt -= ((sqrt * sqrt) * sqrt) / 12;
        }
        return sqrt * Math.sqrt(2.0d);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double asin(double d4) {
        return Math.asin(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double asinh(double d4) {
        double d10 = Constants.taylor_n_bound;
        if (d4 < d10) {
            if (d4 <= (-d10)) {
                return -asinh(-d4);
            }
            return Math.abs(d4) >= Constants.taylor_2_bound ? d4 - (((d4 * d4) * d4) / 6) : d4;
        } else if (d4 > Constants.upper_taylor_n_bound) {
            if (d4 > Constants.upper_taylor_2_bound) {
                return Math.log(d4) + Constants.LN2;
            }
            double d11 = d4 * 2;
            return Math.log(d11 + (1 / d11));
        } else {
            return Math.log(d4 + Math.sqrt((d4 * d4) + 1));
        }
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double atan(double d4) {
        return Math.atan(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double atan2(double d4, double d10) {
        return Math.atan2(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    public static final double atanh(double d4) {
        if (Math.abs(d4) < Constants.taylor_n_bound) {
            return Math.abs(d4) > Constants.taylor_2_bound ? d4 + (((d4 * d4) * d4) / 3) : d4;
        }
        double d10 = 1;
        return Math.log((d10 + d4) / (d10 - d4)) / 2;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ceil(double d4) {
        return Math.ceil(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double cos(double d4) {
        return Math.cos(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double cosh(double d4) {
        return Math.cosh(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double exp(double d4) {
        return Math.exp(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double expm1(double d4) {
        return Math.expm1(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double floor(double d4) {
        return Math.floor(d4);
    }

    private static final double getAbsoluteValue(double d4) {
        return Math.abs(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(double d4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(float f10) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(int i4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getAbsoluteValue$annotations(long j4) {
    }

    private static final double getSign(double d4) {
        return Math.signum(d4);
    }

    public static int getSign(int i4) {
        if (i4 < 0) {
            return -1;
        }
        return i4 > 0 ? 1 : 0;
    }

    public static int getSign(long j4) {
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i4 < 0) {
            return -1;
        }
        return i4 > 0 ? 1 : 0;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(double d4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getSign$annotations(float f10) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(int i4) {
    }

    @SinceKotlin(version = "1.2")
    public static /* synthetic */ void getSign$annotations(long j4) {
    }

    private static final double getUlp(double d4) {
        return Math.ulp(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(double d4) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    public static /* synthetic */ void getUlp$annotations(float f10) {
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double hypot(double d4, double d10) {
        return Math.hypot(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ln(double d4) {
        return Math.log(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double ln1p(double d4) {
        return Math.log1p(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double log(double d4, double d10) {
        if (d10 > 0.0d) {
            if (d10 == 1.0d) {
                return Double.NaN;
            }
            return Math.log(d4) / Math.log(d10);
        }
        return Double.NaN;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double log10(double d4) {
        return Math.log10(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double log2(double d4) {
        return Math.log(d4) / Constants.LN2;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double max(double d4, double d10) {
        return Math.max(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double min(double d4, double d10) {
        return Math.min(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextDown(double d4) {
        return Math.nextAfter(d4, Double.NEGATIVE_INFINITY);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextTowards(double d4, double d10) {
        return Math.nextAfter(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double nextUp(double d4) {
        return Math.nextUp(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double pow(double d4, double d10) {
        return Math.pow(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double round(double d4) {
        return Math.rint(d4);
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(double d4) {
        if (Double.isNaN(d4)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        if (d4 > 2.147483647E9d) {
            return Integer.MAX_VALUE;
        }
        if (d4 < -2.147483648E9d) {
            return Integer.MIN_VALUE;
        }
        return (int) Math.round(d4);
    }

    @SinceKotlin(version = "1.2")
    public static long roundToLong(double d4) {
        if (Double.isNaN(d4)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sign(double d4) {
        return Math.signum(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sin(double d4) {
        return Math.sin(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sinh(double d4) {
        return Math.sinh(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double sqrt(double d4) {
        return Math.sqrt(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double tan(double d4) {
        return Math.tan(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double tanh(double d4) {
        return Math.tanh(d4);
    }

    @SinceKotlin(version = "1.2")
    public static final double truncate(double d4) {
        if (Double.isNaN(d4) || Double.isInfinite(d4)) {
            return d4;
        }
        if (d4 > 0.0d) {
            return Math.floor(d4);
        }
        return Math.ceil(d4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double withSign(double d4, double d10) {
        return Math.copySign(d4, d10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float IEEErem(float f10, float f11) {
        return (float) Math.IEEEremainder(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float abs(float f10) {
        return Math.abs(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float acos(float f10) {
        return (float) Math.acos(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float asin(float f10) {
        return (float) Math.asin(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atan(float f10) {
        return (float) Math.atan(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atan2(float f10, float f11) {
        return (float) Math.atan2(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ceil(float f10) {
        return (float) Math.ceil(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float cos(float f10) {
        return (float) Math.cos(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float cosh(float f10) {
        return (float) Math.cosh(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float exp(float f10) {
        return (float) Math.exp(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float expm1(float f10) {
        return (float) Math.expm1(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float floor(float f10) {
        return (float) Math.floor(f10);
    }

    private static final float getAbsoluteValue(float f10) {
        return Math.abs(f10);
    }

    private static final float getSign(float f10) {
        return Math.signum(f10);
    }

    private static final float getUlp(float f10) {
        return Math.ulp(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float hypot(float f10, float f11) {
        return (float) Math.hypot(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ln(float f10) {
        return (float) Math.log(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float ln1p(float f10) {
        return (float) Math.log1p(f10);
    }

    @SinceKotlin(version = "1.2")
    public static final float log(float f10, float f11) {
        if (f11 > 0.0f) {
            if (f11 == 1.0f) {
                return Float.NaN;
            }
            return (float) (Math.log(f10) / Math.log(f11));
        }
        return Float.NaN;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float log10(float f10) {
        return (float) Math.log10(f10);
    }

    @SinceKotlin(version = "1.2")
    public static final float log2(float f10) {
        return (float) (Math.log(f10) / Constants.LN2);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float max(float f10, float f11) {
        return Math.max(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float min(float f10, float f11) {
        return Math.min(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextDown(float f10) {
        return Math.nextAfter(f10, Double.NEGATIVE_INFINITY);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextTowards(float f10, float f11) {
        return Math.nextAfter(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float nextUp(float f10) {
        return Math.nextUp(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double pow(double d4, int i4) {
        return Math.pow(d4, i4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float round(float f10) {
        return (float) Math.rint(f10);
    }

    @SinceKotlin(version = "1.2")
    public static long roundToLong(float f10) {
        long roundToLong;
        roundToLong = roundToLong(f10);
        return roundToLong;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sign(float f10) {
        return Math.signum(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sin(float f10) {
        return (float) Math.sin(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sinh(float f10) {
        return (float) Math.sinh(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float sqrt(float f10) {
        return (float) Math.sqrt(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float tan(float f10) {
        return (float) Math.tan(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float tanh(float f10) {
        return (float) Math.tanh(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final double withSign(double d4, int i4) {
        return Math.copySign(d4, i4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int abs(int i4) {
        return Math.abs(i4);
    }

    private static final int getAbsoluteValue(int i4) {
        return Math.abs(i4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int max(int i4, int i10) {
        return Math.max(i4, i10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final int min(int i4, int i10) {
        return Math.min(i4, i10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float pow(float f10, float f11) {
        return (float) Math.pow(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float withSign(float f10, float f11) {
        return Math.copySign(f10, f11);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long abs(long j4) {
        return Math.abs(j4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float atanh(float f10) {
        return (float) atanh(f10);
    }

    private static final long getAbsoluteValue(long j4) {
        return Math.abs(j4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long max(long j4, long j10) {
        return Math.max(j4, j10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final long min(long j4, long j10) {
        return Math.min(j4, j10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float pow(float f10, int i4) {
        return (float) Math.pow(f10, i4);
    }

    @SinceKotlin(version = "1.2")
    public static int roundToInt(float f10) {
        if (Float.isNaN(f10)) {
            throw new IllegalArgumentException("Cannot round NaN value.");
        }
        return Math.round(f10);
    }

    @SinceKotlin(version = "1.2")
    public static final float truncate(float f10) {
        double ceil;
        if (Float.isNaN(f10) || Float.isInfinite(f10)) {
            return f10;
        }
        if (f10 > 0.0f) {
            ceil = Math.floor(f10);
        } else {
            ceil = Math.ceil(f10);
        }
        return (float) ceil;
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float withSign(float f10, int i4) {
        return Math.copySign(f10, i4);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float acosh(float f10) {
        return (float) acosh(f10);
    }

    @SinceKotlin(version = "1.2")
    @InlineOnly
    private static final float asinh(float f10) {
        return (float) asinh(f10);
    }
}
