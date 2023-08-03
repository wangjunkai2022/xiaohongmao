package kotlin.time;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.comparisons.ComparisonsKt___ComparisonsJvmKt;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.LongRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;
import shaded.org.apache.commons.codec.language.l;

/* compiled from: Duration.kt */
@SinceKotlin(version = "1.6")
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087@\u0018\u0000 ¤\u00012\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002¤\u0001B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010D\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u0003H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bG\u0010HJ\u001b\u0010I\u001a\u00020\t2\u0006\u0010J\u001a\u00020\u0000H\u0096\u0002ø\u0001\u0000¢\u0006\u0004\bK\u0010LJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bO\u0010PJ\u001e\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\tH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bO\u0010QJ\u001b\u0010M\u001a\u00020\u000f2\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bR\u0010SJ\u001a\u0010T\u001a\u00020U2\b\u0010J\u001a\u0004\u0018\u00010VHÖ\u0003¢\u0006\u0004\bW\u0010XJ\u0010\u0010Y\u001a\u00020\tHÖ\u0001¢\u0006\u0004\bZ\u0010\rJ\r\u0010[\u001a\u00020U¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020UH\u0002¢\u0006\u0004\b_\u0010]J\u000f\u0010`\u001a\u00020UH\u0002¢\u0006\u0004\ba\u0010]J\r\u0010b\u001a\u00020U¢\u0006\u0004\bc\u0010]J\r\u0010d\u001a\u00020U¢\u0006\u0004\be\u0010]J\r\u0010f\u001a\u00020U¢\u0006\u0004\bg\u0010]J\u001b\u0010h\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bi\u0010jJ\u001b\u0010k\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000¢\u0006\u0004\bl\u0010jJ\u001e\u0010m\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u000fH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bn\u0010PJ\u001e\u0010m\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\tH\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bn\u0010QJ\u009d\u0001\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2u\u0010q\u001aq\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(u\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(v\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0rH\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010{J\u0088\u0001\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2`\u0010q\u001a\\\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(v\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0|H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010}Js\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p2K\u0010q\u001aG\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(w\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0~H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\bz\u0010\u007fJ`\u0010o\u001a\u0002Hp\"\u0004\b\u0000\u0010p27\u0010q\u001a3\u0012\u0013\u0012\u00110\u0003¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(x\u0012\u0013\u0012\u00110\t¢\u0006\f\bs\u0012\b\bt\u0012\u0004\b\b(y\u0012\u0004\u0012\u0002Hp0\u0080\u0001H\u0086\bø\u0001\u0002\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0005\bz\u0010\u0081\u0001J\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0019\u0010\u0086\u0001\u001a\u00020\t2\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u0011\u0010\u0089\u0001\u001a\u00030\u008a\u0001¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0019\u0010\u008d\u0001\u001a\u00020\u00032\u0007\u0010\u0083\u0001\u001a\u00020=¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u0011\u0010\u0090\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0091\u0001\u0010\u0005J\u0011\u0010\u0092\u0001\u001a\u00020\u0003H\u0007¢\u0006\u0005\b\u0093\u0001\u0010\u0005J\u0013\u0010\u0094\u0001\u001a\u00030\u008a\u0001H\u0016¢\u0006\u0006\b\u0095\u0001\u0010\u008c\u0001J%\u0010\u0094\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u0083\u0001\u001a\u00020=2\t\b\u0002\u0010\u0096\u0001\u001a\u00020\t¢\u0006\u0006\b\u0095\u0001\u0010\u0097\u0001J\u0018\u0010\u0098\u0001\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0005\b\u0099\u0001\u0010\u0005JK\u0010\u009a\u0001\u001a\u00030\u009b\u0001*\b0\u009c\u0001j\u0003`\u009d\u00012\u0007\u0010\u009e\u0001\u001a\u00020\t2\u0007\u0010\u009f\u0001\u001a\u00020\t2\u0007\u0010 \u0001\u001a\u00020\t2\b\u0010\u0083\u0001\u001a\u00030\u008a\u00012\u0007\u0010¡\u0001\u001a\u00020UH\u0002¢\u0006\u0006\b¢\u0001\u0010£\u0001R\u0017\u0010\u0006\u001a\u00020\u00008Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005R\u001a\u0010\b\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u000b\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0014\u0010\u000b\u001a\u0004\b\u0015\u0010\u0012R\u001a\u0010\u0016\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u000b\u001a\u0004\b\u0018\u0010\u0012R\u001a\u0010\u0019\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u001d\u0010\u000b\u001a\u0004\b\u001e\u0010\u0012R\u001a\u0010\u001f\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010\u000b\u001a\u0004\b!\u0010\u0012R\u001a\u0010\"\u001a\u00020\u000f8FX\u0087\u0004¢\u0006\f\u0012\u0004\b#\u0010\u000b\u001a\u0004\b$\u0010\u0012R\u0011\u0010%\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b&\u0010\u0005R\u0011\u0010'\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b(\u0010\u0005R\u0011\u0010)\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b*\u0010\u0005R\u0011\u0010+\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b,\u0010\u0005R\u0011\u0010-\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b.\u0010\u0005R\u0011\u0010/\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b0\u0010\u0005R\u0011\u00101\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b2\u0010\u0005R\u001a\u00103\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b4\u0010\u000b\u001a\u0004\b5\u0010\rR\u001a\u00106\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b7\u0010\u000b\u001a\u0004\b8\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00109\u001a\u00020\t8@X\u0081\u0004¢\u0006\f\u0012\u0004\b:\u0010\u000b\u001a\u0004\b;\u0010\rR\u0014\u0010<\u001a\u00020=8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?R\u0015\u0010@\u001a\u00020\t8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bA\u0010\rR\u0014\u0010B\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bC\u0010\u0005\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006¥\u0001"}, d2 = {"Lkotlin/time/Duration;", "", "rawValue", "", "constructor-impl", "(J)J", "absoluteValue", "getAbsoluteValue-UwyO8pc", "hoursComponent", "", "getHoursComponent$annotations", "()V", "getHoursComponent-impl", "(J)I", "inDays", "", "getInDays$annotations", "getInDays-impl", "(J)D", "inHours", "getInHours$annotations", "getInHours-impl", "inMicroseconds", "getInMicroseconds$annotations", "getInMicroseconds-impl", "inMilliseconds", "getInMilliseconds$annotations", "getInMilliseconds-impl", "inMinutes", "getInMinutes$annotations", "getInMinutes-impl", "inNanoseconds", "getInNanoseconds$annotations", "getInNanoseconds-impl", "inSeconds", "getInSeconds$annotations", "getInSeconds-impl", "inWholeDays", "getInWholeDays-impl", "inWholeHours", "getInWholeHours-impl", "inWholeMicroseconds", "getInWholeMicroseconds-impl", "inWholeMilliseconds", "getInWholeMilliseconds-impl", "inWholeMinutes", "getInWholeMinutes-impl", "inWholeNanoseconds", "getInWholeNanoseconds-impl", "inWholeSeconds", "getInWholeSeconds-impl", "minutesComponent", "getMinutesComponent$annotations", "getMinutesComponent-impl", "nanosecondsComponent", "getNanosecondsComponent$annotations", "getNanosecondsComponent-impl", "secondsComponent", "getSecondsComponent$annotations", "getSecondsComponent-impl", "storageUnit", "Lkotlin/time/DurationUnit;", "getStorageUnit-impl", "(J)Lkotlin/time/DurationUnit;", "unitDiscriminator", "getUnitDiscriminator-impl", "value", "getValue-impl", "addValuesMixedRanges", "thisMillis", "otherNanos", "addValuesMixedRanges-UwyO8pc", "(JJJ)J", "compareTo", "other", "compareTo-LRDsOJo", "(JJ)I", d.f25728q, "scale", "div-UwyO8pc", "(JD)J", "(JI)J", "div-LRDsOJo", "(JJ)D", "equals", "", "", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "hashCode-impl", "isFinite", "isFinite-impl", "(J)Z", "isInMillis", "isInMillis-impl", "isInNanos", "isInNanos-impl", "isInfinite", "isInfinite-impl", "isNegative", "isNegative-impl", "isPositive", "isPositive-impl", "minus", "minus-LRDsOJo", "(JJ)J", "plus", "plus-LRDsOJo", "times", "times-UwyO8pc", "toComponents", ExifInterface.GPS_DIRECTION_TRUE, com.alipay.sdk.packet.d.f6907q, "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "days", "hours", "minutes", "seconds", "nanoseconds", "toComponents-impl", "(JLkotlin/jvm/functions/Function5;)Ljava/lang/Object;", "Lkotlin/Function4;", "(JLkotlin/jvm/functions/Function4;)Ljava/lang/Object;", "Lkotlin/Function3;", "(JLkotlin/jvm/functions/Function3;)Ljava/lang/Object;", "Lkotlin/Function2;", "(JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "toDouble", "unit", "toDouble-impl", "(JLkotlin/time/DurationUnit;)D", "toInt", "toInt-impl", "(JLkotlin/time/DurationUnit;)I", "toIsoString", "", "toIsoString-impl", "(J)Ljava/lang/String;", "toLong", "toLong-impl", "(JLkotlin/time/DurationUnit;)J", "toLongMilliseconds", "toLongMilliseconds-impl", "toLongNanoseconds", "toLongNanoseconds-impl", "toString", "toString-impl", "decimals", "(JLkotlin/time/DurationUnit;I)Ljava/lang/String;", "unaryMinus", "unaryMinus-UwyO8pc", "appendFractional", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "whole", "fractional", "fractionalSize", "isoZeroes", "appendFractional-impl", "(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
@JvmInline
@WasExperimental(markerClass = {ExperimentalTime.class})
/* loaded from: classes4.dex */
public final class Duration implements Comparable<Duration> {
    private final long rawValue;
    @g
    public static final Companion Companion = new Companion(null);
    private static final long ZERO = m1411constructorimpl(0);
    private static final long INFINITE = DurationKt.access$durationOfMillis(DurationKt.MAX_MILLIS);
    private static final long NEG_INFINITE = DurationKt.access$durationOfMillis(-4611686018427387903L);

    /* compiled from: Duration.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010*\u001a\u00020\r2\u0006\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0007J\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0011J\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0014J\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0017J\u001d\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0011J\u001d\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0014J\u001d\u0010\u0018\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0017J\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0011J\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0014J\u001d\u0010\u001b\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u0010\u0017J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0011J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0014J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0017J\u001d\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0011J\u001d\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0014J\u001d\u0010!\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0017J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0011J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0014J\u001d\u0010$\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0017J\u001b\u00105\u001a\u00020\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b7\u00108J\u001b\u00109\u001a\u00020\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b:\u00108J\u001b\u0010;\u001a\u0004\u0018\u00010\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\b<J\u001b\u0010=\u001a\u0004\u0018\u00010\u00042\u0006\u0010+\u001a\u000206ø\u0001\u0001ø\u0001\u0000¢\u0006\u0002\b>J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\rH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0011J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0012H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0014J\u001d\u0010'\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\u0015H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b?\u0010\u0017R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R%\u0010\f\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R%\u0010\f\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u000e\u0010\u0013\u001a\u0004\b\u0010\u0010\u0014R%\u0010\f\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u000e\u0010\u0016\u001a\u0004\b\u0010\u0010\u0017R%\u0010\u0018\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u001a\u0010\u0011R%\u0010\u0018\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u0019\u0010\u0013\u001a\u0004\b\u001a\u0010\u0014R%\u0010\u0018\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\u0017R%\u0010\u001b\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001c\u0010\u000f\u001a\u0004\b\u001d\u0010\u0011R%\u0010\u001b\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001c\u0010\u0013\u001a\u0004\b\u001d\u0010\u0014R%\u0010\u001b\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001c\u0010\u0016\u001a\u0004\b\u001d\u0010\u0017R%\u0010\u001e\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001f\u0010\u000f\u001a\u0004\b \u0010\u0011R%\u0010\u001e\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001f\u0010\u0013\u001a\u0004\b \u0010\u0014R%\u0010\u001e\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\u001f\u0010\u0016\u001a\u0004\b \u0010\u0017R%\u0010!\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\"\u0010\u000f\u001a\u0004\b#\u0010\u0011R%\u0010!\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\"\u0010\u0013\u001a\u0004\b#\u0010\u0014R%\u0010!\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b\"\u0010\u0016\u001a\u0004\b#\u0010\u0017R%\u0010$\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b%\u0010\u000f\u001a\u0004\b&\u0010\u0011R%\u0010$\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b%\u0010\u0013\u001a\u0004\b&\u0010\u0014R%\u0010$\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b%\u0010\u0016\u001a\u0004\b&\u0010\u0017R%\u0010'\u001a\u00020\u0004*\u00020\r8Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b(\u0010\u000f\u001a\u0004\b)\u0010\u0011R%\u0010'\u001a\u00020\u0004*\u00020\u00128Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b(\u0010\u0013\u001a\u0004\b)\u0010\u0014R%\u0010'\u001a\u00020\u0004*\u00020\u00158Æ\u0002X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\f\u0012\u0004\b(\u0010\u0016\u001a\u0004\b)\u0010\u0017\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006@"}, d2 = {"Lkotlin/time/Duration$Companion;", "", "()V", "INFINITE", "Lkotlin/time/Duration;", "getINFINITE-UwyO8pc", "()J", "J", "NEG_INFINITE", "getNEG_INFINITE-UwyO8pc$kotlin_stdlib", "ZERO", "getZERO-UwyO8pc", "days", "", "getDays-UwyO8pc$annotations", "(D)V", "getDays-UwyO8pc", "(D)J", "", "(I)V", "(I)J", "", "(J)V", "(J)J", "hours", "getHours-UwyO8pc$annotations", "getHours-UwyO8pc", "microseconds", "getMicroseconds-UwyO8pc$annotations", "getMicroseconds-UwyO8pc", "milliseconds", "getMilliseconds-UwyO8pc$annotations", "getMilliseconds-UwyO8pc", "minutes", "getMinutes-UwyO8pc$annotations", "getMinutes-UwyO8pc", "nanoseconds", "getNanoseconds-UwyO8pc$annotations", "getNanoseconds-UwyO8pc", "seconds", "getSeconds-UwyO8pc$annotations", "getSeconds-UwyO8pc", "convert", "value", "sourceUnit", "Lkotlin/time/DurationUnit;", "targetUnit", "days-UwyO8pc", "hours-UwyO8pc", "microseconds-UwyO8pc", "milliseconds-UwyO8pc", "minutes-UwyO8pc", "nanoseconds-UwyO8pc", "parse", "", "parse-UwyO8pc", "(Ljava/lang/String;)J", "parseIsoString", "parseIsoString-UwyO8pc", "parseIsoStringOrNull", "parseIsoStringOrNull-FghU774", "parseOrNull", "parseOrNull-FghU774", "seconds-UwyO8pc", "kotlin-stdlib"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m1467getDaysUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.DAYS);
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1469getDaysUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1470getDaysUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getDays-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1471getDaysUwyO8pc$annotations(long j4) {
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m1473getHoursUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.HOURS);
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1475getHoursUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1476getHoursUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getHours-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1477getHoursUwyO8pc$annotations(long j4) {
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m1479getMicrosecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.MICROSECONDS);
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1481getMicrosecondsUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1482getMicrosecondsUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getMicroseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1483getMicrosecondsUwyO8pc$annotations(long j4) {
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m1485getMillisecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.MILLISECONDS);
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1487getMillisecondsUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1488getMillisecondsUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getMilliseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1489getMillisecondsUwyO8pc$annotations(long j4) {
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m1491getMinutesUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.MINUTES);
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1493getMinutesUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1494getMinutesUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getMinutes-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1495getMinutesUwyO8pc$annotations(long j4) {
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m1497getNanosecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.NANOSECONDS);
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1499getNanosecondsUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1500getNanosecondsUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getNanoseconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1501getNanosecondsUwyO8pc$annotations(long j4) {
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m1503getSecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.SECONDS);
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1505getSecondsUwyO8pc$annotations(double d4) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1506getSecondsUwyO8pc$annotations(int i4) {
        }

        @InlineOnly
        /* renamed from: getSeconds-UwyO8pc$annotations  reason: not valid java name */
        public static /* synthetic */ void m1507getSecondsUwyO8pc$annotations(long j4) {
        }

        @ExperimentalTime
        public final double convert(double d4, @g DurationUnit sourceUnit, @g DurationUnit targetUnit) {
            Intrinsics.checkNotNullParameter(sourceUnit, "sourceUnit");
            Intrinsics.checkNotNullParameter(targetUnit, "targetUnit");
            return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d4, sourceUnit, targetUnit);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m1509daysUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.DAYS);
        }

        /* renamed from: getINFINITE-UwyO8pc  reason: not valid java name */
        public final long m1511getINFINITEUwyO8pc() {
            return Duration.INFINITE;
        }

        /* renamed from: getNEG_INFINITE-UwyO8pc$kotlin_stdlib  reason: not valid java name */
        public final long m1512getNEG_INFINITEUwyO8pc$kotlin_stdlib() {
            return Duration.NEG_INFINITE;
        }

        /* renamed from: getZERO-UwyO8pc  reason: not valid java name */
        public final long m1513getZEROUwyO8pc() {
            return Duration.ZERO;
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m1515hoursUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m1518microsecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m1521millisecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m1524minutesUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m1527nanosecondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.NANOSECONDS);
        }

        /* renamed from: parse-UwyO8pc  reason: not valid java name */
        public final long m1529parseUwyO8pc(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, false);
            } catch (IllegalArgumentException e4) {
                throw new IllegalArgumentException("Invalid duration string format: '" + value + "'.", e4);
            }
        }

        /* renamed from: parseIsoString-UwyO8pc  reason: not valid java name */
        public final long m1530parseIsoStringUwyO8pc(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return DurationKt.access$parseDuration(value, true);
            } catch (IllegalArgumentException e4) {
                throw new IllegalArgumentException("Invalid ISO duration string format: '" + value + "'.", e4);
            }
        }

        @h
        /* renamed from: parseIsoStringOrNull-FghU774  reason: not valid java name */
        public final Duration m1531parseIsoStringOrNullFghU774(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m1409boximpl(DurationKt.access$parseDuration(value, true));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @h
        /* renamed from: parseOrNull-FghU774  reason: not valid java name */
        public final Duration m1532parseOrNullFghU774(@g String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            try {
                return Duration.m1409boximpl(DurationKt.access$parseDuration(value, false));
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Int.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m1534secondsUwyO8pc(int i4) {
            return DurationKt.toDuration(i4, DurationUnit.SECONDS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m1468getDaysUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.DAYS);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m1474getHoursUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.HOURS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m1480getMicrosecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m1486getMillisecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m1492getMinutesUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.MINUTES);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m1498getNanosecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m1504getSecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.SECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m1510daysUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.DAYS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m1516hoursUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m1519microsecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m1522millisecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m1525minutesUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m1528nanosecondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Long.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m1535secondsUwyO8pc(long j4) {
            return DurationKt.toDuration(j4, DurationUnit.SECONDS);
        }

        /* renamed from: getDays-UwyO8pc  reason: not valid java name */
        private final long m1466getDaysUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.DAYS);
        }

        /* renamed from: getHours-UwyO8pc  reason: not valid java name */
        private final long m1472getHoursUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.HOURS);
        }

        /* renamed from: getMicroseconds-UwyO8pc  reason: not valid java name */
        private final long m1478getMicrosecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.MICROSECONDS);
        }

        /* renamed from: getMilliseconds-UwyO8pc  reason: not valid java name */
        private final long m1484getMillisecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.MILLISECONDS);
        }

        /* renamed from: getMinutes-UwyO8pc  reason: not valid java name */
        private final long m1490getMinutesUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.MINUTES);
        }

        /* renamed from: getNanoseconds-UwyO8pc  reason: not valid java name */
        private final long m1496getNanosecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.NANOSECONDS);
        }

        /* renamed from: getSeconds-UwyO8pc  reason: not valid java name */
        private final long m1502getSecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.SECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.days' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.days", imports = {"kotlin.time.Duration.Companion.days"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: days-UwyO8pc  reason: not valid java name */
        public final long m1508daysUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.DAYS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.hours' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.hours", imports = {"kotlin.time.Duration.Companion.hours"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: hours-UwyO8pc  reason: not valid java name */
        public final long m1514hoursUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.HOURS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.microseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.microseconds", imports = {"kotlin.time.Duration.Companion.microseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: microseconds-UwyO8pc  reason: not valid java name */
        public final long m1517microsecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.MICROSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.milliseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.milliseconds", imports = {"kotlin.time.Duration.Companion.milliseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: milliseconds-UwyO8pc  reason: not valid java name */
        public final long m1520millisecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.MILLISECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.minutes' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.minutes", imports = {"kotlin.time.Duration.Companion.minutes"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: minutes-UwyO8pc  reason: not valid java name */
        public final long m1523minutesUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.MINUTES);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.nanoseconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.nanoseconds", imports = {"kotlin.time.Duration.Companion.nanoseconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: nanoseconds-UwyO8pc  reason: not valid java name */
        public final long m1526nanosecondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.NANOSECONDS);
        }

        @SinceKotlin(version = "1.5")
        @Deprecated(message = "Use 'Double.seconds' extension property from Duration.Companion instead.", replaceWith = @ReplaceWith(expression = "value.seconds", imports = {"kotlin.time.Duration.Companion.seconds"}))
        @DeprecatedSinceKotlin(warningSince = "1.6")
        @ExperimentalTime
        /* renamed from: seconds-UwyO8pc  reason: not valid java name */
        public final long m1533secondsUwyO8pc(double d4) {
            return DurationKt.toDuration(d4, DurationUnit.SECONDS);
        }
    }

    private /* synthetic */ Duration(long j4) {
        this.rawValue = j4;
    }

    /* renamed from: addValuesMixedRanges-UwyO8pc  reason: not valid java name */
    private static final long m1407addValuesMixedRangesUwyO8pc(long j4, long j10, long j11) {
        long coerceIn;
        long access$nanosToMillis = DurationKt.access$nanosToMillis(j11);
        long j12 = j10 + access$nanosToMillis;
        if (new LongRange(-4611686018426L, 4611686018426L).contains(j12)) {
            return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(j12) + (j11 - DurationKt.access$millisToNanos(access$nanosToMillis)));
        }
        coerceIn = RangesKt___RangesKt.coerceIn(j12, -4611686018427387903L, (long) DurationKt.MAX_MILLIS);
        return DurationKt.access$durationOfMillis(coerceIn);
    }

    /* renamed from: appendFractional-impl  reason: not valid java name */
    private static final void m1408appendFractionalimpl(long j4, StringBuilder sb, int i4, int i10, int i11, String str, boolean z9) {
        String padStart;
        sb.append(i4);
        if (i10 != 0) {
            sb.append('.');
            padStart = StringsKt__StringsKt.padStart(String.valueOf(i10), i11, '0');
            int i12 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i13 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        i12 = length;
                        break;
                    } else if (i13 < 0) {
                        break;
                    } else {
                        length = i13;
                    }
                }
            }
            int i14 = i12 + 1;
            if (!z9 && i14 < 3) {
                sb.append((CharSequence) padStart, 0, i14);
                Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            } else {
                sb.append((CharSequence) padStart, 0, ((i14 + 2) / 3) * 3);
                Intrinsics.checkNotNullExpressionValue(sb, "this.append(value, startIndex, endIndex)");
            }
        }
        sb.append(str);
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Duration m1409boximpl(long j4) {
        return new Duration(j4);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long m1411constructorimpl(long j4) {
        if (DurationJvmKt.getDurationAssertionsEnabled()) {
            if (m1442isInNanosimpl(j4)) {
                if (!new LongRange(-4611686018426999999L, DurationKt.MAX_NANOS).contains(m1438getValueimpl(j4))) {
                    throw new AssertionError(m1438getValueimpl(j4) + " ns is out of nanoseconds range");
                }
            } else if (new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS).contains(m1438getValueimpl(j4))) {
                if (new LongRange(-4611686018426L, 4611686018426L).contains(m1438getValueimpl(j4))) {
                    throw new AssertionError(m1438getValueimpl(j4) + " ms is denormalized");
                }
            } else {
                throw new AssertionError(m1438getValueimpl(j4) + " ms is out of milliseconds range");
            }
        }
        return j4;
    }

    /* renamed from: div-LRDsOJo  reason: not valid java name */
    public static final double m1412divLRDsOJo(long j4, long j10) {
        Comparable maxOf;
        maxOf = ComparisonsKt___ComparisonsJvmKt.maxOf(m1436getStorageUnitimpl(j4), m1436getStorageUnitimpl(j10));
        DurationUnit durationUnit = (DurationUnit) maxOf;
        return m1454toDoubleimpl(j4, durationUnit) / m1454toDoubleimpl(j10, durationUnit);
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m1414divUwyO8pc(long j4, int i4) {
        int sign;
        if (i4 == 0) {
            if (m1445isPositiveimpl(j4)) {
                return INFINITE;
            }
            if (m1444isNegativeimpl(j4)) {
                return NEG_INFINITE;
            }
            throw new IllegalArgumentException("Dividing zero duration by zero yields an undefined result.");
        } else if (m1442isInNanosimpl(j4)) {
            return DurationKt.access$durationOfNanos(m1438getValueimpl(j4) / i4);
        } else {
            if (m1443isInfiniteimpl(j4)) {
                sign = MathKt__MathJVMKt.getSign(i4);
                return m1449timesUwyO8pc(j4, sign);
            }
            long j10 = i4;
            long m1438getValueimpl = m1438getValueimpl(j4) / j10;
            if (new LongRange(-4611686018426L, 4611686018426L).contains(m1438getValueimpl)) {
                return DurationKt.access$durationOfNanos(DurationKt.access$millisToNanos(m1438getValueimpl) + (DurationKt.access$millisToNanos(m1438getValueimpl(j4) - (m1438getValueimpl * j10)) / j10));
            }
            return DurationKt.access$durationOfMillis(m1438getValueimpl);
        }
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1415equalsimpl(long j4, Object obj) {
        return (obj instanceof Duration) && j4 == ((Duration) obj).m1465unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1416equalsimpl0(long j4, long j10) {
        return j4 == j10;
    }

    /* renamed from: getAbsoluteValue-UwyO8pc  reason: not valid java name */
    public static final long m1417getAbsoluteValueUwyO8pc(long j4) {
        return m1444isNegativeimpl(j4) ? m1463unaryMinusUwyO8pc(j4) : j4;
    }

    @PublishedApi
    public static /* synthetic */ void getHoursComponent$annotations() {
    }

    /* renamed from: getHoursComponent-impl  reason: not valid java name */
    public static final int m1418getHoursComponentimpl(long j4) {
        if (m1443isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1427getInWholeHoursimpl(j4) % 24);
    }

    @Deprecated(message = "Use inWholeDays property instead or convert toDouble(DAYS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.DAYS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInDays$annotations() {
    }

    /* renamed from: getInDays-impl  reason: not valid java name */
    public static final double m1419getInDaysimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.DAYS);
    }

    @Deprecated(message = "Use inWholeHours property instead or convert toDouble(HOURS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.HOURS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInHours$annotations() {
    }

    /* renamed from: getInHours-impl  reason: not valid java name */
    public static final double m1420getInHoursimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.HOURS);
    }

    @Deprecated(message = "Use inWholeMicroseconds property instead or convert toDouble(MICROSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MICROSECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInMicroseconds$annotations() {
    }

    /* renamed from: getInMicroseconds-impl  reason: not valid java name */
    public static final double m1421getInMicrosecondsimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.MICROSECONDS);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead or convert toDouble(MILLISECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MILLISECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInMilliseconds$annotations() {
    }

    /* renamed from: getInMilliseconds-impl  reason: not valid java name */
    public static final double m1422getInMillisecondsimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.MILLISECONDS);
    }

    @Deprecated(message = "Use inWholeMinutes property instead or convert toDouble(MINUTES) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.MINUTES)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInMinutes$annotations() {
    }

    /* renamed from: getInMinutes-impl  reason: not valid java name */
    public static final double m1423getInMinutesimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.MINUTES);
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead or convert toDouble(NANOSECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.NANOSECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInNanoseconds$annotations() {
    }

    /* renamed from: getInNanoseconds-impl  reason: not valid java name */
    public static final double m1424getInNanosecondsimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.NANOSECONDS);
    }

    @Deprecated(message = "Use inWholeSeconds property instead or convert toDouble(SECONDS) if a double value is required.", replaceWith = @ReplaceWith(expression = "toDouble(DurationUnit.SECONDS)", imports = {}))
    @ExperimentalTime
    public static /* synthetic */ void getInSeconds$annotations() {
    }

    /* renamed from: getInSeconds-impl  reason: not valid java name */
    public static final double m1425getInSecondsimpl(long j4) {
        return m1454toDoubleimpl(j4, DurationUnit.SECONDS);
    }

    /* renamed from: getInWholeDays-impl  reason: not valid java name */
    public static final long m1426getInWholeDaysimpl(long j4) {
        return m1457toLongimpl(j4, DurationUnit.DAYS);
    }

    /* renamed from: getInWholeHours-impl  reason: not valid java name */
    public static final long m1427getInWholeHoursimpl(long j4) {
        return m1457toLongimpl(j4, DurationUnit.HOURS);
    }

    /* renamed from: getInWholeMicroseconds-impl  reason: not valid java name */
    public static final long m1428getInWholeMicrosecondsimpl(long j4) {
        return m1457toLongimpl(j4, DurationUnit.MICROSECONDS);
    }

    /* renamed from: getInWholeMilliseconds-impl  reason: not valid java name */
    public static final long m1429getInWholeMillisecondsimpl(long j4) {
        return (m1441isInMillisimpl(j4) && m1440isFiniteimpl(j4)) ? m1438getValueimpl(j4) : m1457toLongimpl(j4, DurationUnit.MILLISECONDS);
    }

    /* renamed from: getInWholeMinutes-impl  reason: not valid java name */
    public static final long m1430getInWholeMinutesimpl(long j4) {
        return m1457toLongimpl(j4, DurationUnit.MINUTES);
    }

    /* renamed from: getInWholeNanoseconds-impl  reason: not valid java name */
    public static final long m1431getInWholeNanosecondsimpl(long j4) {
        long m1438getValueimpl = m1438getValueimpl(j4);
        if (m1442isInNanosimpl(j4)) {
            return m1438getValueimpl;
        }
        if (m1438getValueimpl > 9223372036854L) {
            return Long.MAX_VALUE;
        }
        if (m1438getValueimpl < -9223372036854L) {
            return Long.MIN_VALUE;
        }
        return DurationKt.access$millisToNanos(m1438getValueimpl);
    }

    /* renamed from: getInWholeSeconds-impl  reason: not valid java name */
    public static final long m1432getInWholeSecondsimpl(long j4) {
        return m1457toLongimpl(j4, DurationUnit.SECONDS);
    }

    @PublishedApi
    public static /* synthetic */ void getMinutesComponent$annotations() {
    }

    /* renamed from: getMinutesComponent-impl  reason: not valid java name */
    public static final int m1433getMinutesComponentimpl(long j4) {
        if (m1443isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1430getInWholeMinutesimpl(j4) % 60);
    }

    @PublishedApi
    public static /* synthetic */ void getNanosecondsComponent$annotations() {
    }

    /* renamed from: getNanosecondsComponent-impl  reason: not valid java name */
    public static final int m1434getNanosecondsComponentimpl(long j4) {
        if (m1443isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1441isInMillisimpl(j4) ? DurationKt.access$millisToNanos(m1438getValueimpl(j4) % 1000) : m1438getValueimpl(j4) % 1000000000);
    }

    @PublishedApi
    public static /* synthetic */ void getSecondsComponent$annotations() {
    }

    /* renamed from: getSecondsComponent-impl  reason: not valid java name */
    public static final int m1435getSecondsComponentimpl(long j4) {
        if (m1443isInfiniteimpl(j4)) {
            return 0;
        }
        return (int) (m1432getInWholeSecondsimpl(j4) % 60);
    }

    /* renamed from: getStorageUnit-impl  reason: not valid java name */
    private static final DurationUnit m1436getStorageUnitimpl(long j4) {
        return m1442isInNanosimpl(j4) ? DurationUnit.NANOSECONDS : DurationUnit.MILLISECONDS;
    }

    /* renamed from: getUnitDiscriminator-impl  reason: not valid java name */
    private static final int m1437getUnitDiscriminatorimpl(long j4) {
        return ((int) j4) & 1;
    }

    /* renamed from: getValue-impl  reason: not valid java name */
    private static final long m1438getValueimpl(long j4) {
        return j4 >> 1;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1439hashCodeimpl(long j4) {
        return (int) (j4 ^ (j4 >>> 32));
    }

    /* renamed from: isFinite-impl  reason: not valid java name */
    public static final boolean m1440isFiniteimpl(long j4) {
        return !m1443isInfiniteimpl(j4);
    }

    /* renamed from: isInMillis-impl  reason: not valid java name */
    private static final boolean m1441isInMillisimpl(long j4) {
        return (((int) j4) & 1) == 1;
    }

    /* renamed from: isInNanos-impl  reason: not valid java name */
    private static final boolean m1442isInNanosimpl(long j4) {
        return (((int) j4) & 1) == 0;
    }

    /* renamed from: isInfinite-impl  reason: not valid java name */
    public static final boolean m1443isInfiniteimpl(long j4) {
        return j4 == INFINITE || j4 == NEG_INFINITE;
    }

    /* renamed from: isNegative-impl  reason: not valid java name */
    public static final boolean m1444isNegativeimpl(long j4) {
        return j4 < 0;
    }

    /* renamed from: isPositive-impl  reason: not valid java name */
    public static final boolean m1445isPositiveimpl(long j4) {
        return j4 > 0;
    }

    /* renamed from: minus-LRDsOJo  reason: not valid java name */
    public static final long m1446minusLRDsOJo(long j4, long j10) {
        return m1447plusLRDsOJo(j4, m1463unaryMinusUwyO8pc(j10));
    }

    /* renamed from: plus-LRDsOJo  reason: not valid java name */
    public static final long m1447plusLRDsOJo(long j4, long j10) {
        if (m1443isInfiniteimpl(j4)) {
            if (m1440isFiniteimpl(j10) || (j10 ^ j4) >= 0) {
                return j4;
            }
            throw new IllegalArgumentException("Summing infinite durations of different signs yields an undefined result.");
        } else if (m1443isInfiniteimpl(j10)) {
            return j10;
        } else {
            if ((((int) j4) & 1) == (((int) j10) & 1)) {
                long m1438getValueimpl = m1438getValueimpl(j4) + m1438getValueimpl(j10);
                if (m1442isInNanosimpl(j4)) {
                    return DurationKt.access$durationOfNanosNormalized(m1438getValueimpl);
                }
                return DurationKt.access$durationOfMillisNormalized(m1438getValueimpl);
            } else if (m1441isInMillisimpl(j4)) {
                return m1407addValuesMixedRangesUwyO8pc(j4, m1438getValueimpl(j4), m1438getValueimpl(j10));
            } else {
                return m1407addValuesMixedRangesUwyO8pc(j4, m1438getValueimpl(j10), m1438getValueimpl(j4));
            }
        }
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m1449timesUwyO8pc(long j4, int i4) {
        int sign;
        int sign2;
        long coerceIn;
        int sign3;
        int sign4;
        long coerceIn2;
        if (m1443isInfiniteimpl(j4)) {
            if (i4 != 0) {
                return i4 > 0 ? j4 : m1463unaryMinusUwyO8pc(j4);
            }
            throw new IllegalArgumentException("Multiplying infinite duration by zero yields an undefined result.");
        } else if (i4 == 0) {
            return ZERO;
        } else {
            long m1438getValueimpl = m1438getValueimpl(j4);
            long j10 = i4;
            long j11 = m1438getValueimpl * j10;
            if (m1442isInNanosimpl(j4)) {
                if (new LongRange(-2147483647L, 2147483647L).contains(m1438getValueimpl)) {
                    return DurationKt.access$durationOfNanos(j11);
                }
                if (j11 / j10 == m1438getValueimpl) {
                    return DurationKt.access$durationOfNanosNormalized(j11);
                }
                long access$nanosToMillis = DurationKt.access$nanosToMillis(m1438getValueimpl);
                long j12 = access$nanosToMillis * j10;
                long access$nanosToMillis2 = DurationKt.access$nanosToMillis((m1438getValueimpl - DurationKt.access$millisToNanos(access$nanosToMillis)) * j10) + j12;
                if (j12 / j10 == access$nanosToMillis && (access$nanosToMillis2 ^ j12) >= 0) {
                    coerceIn2 = RangesKt___RangesKt.coerceIn(access$nanosToMillis2, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS));
                    return DurationKt.access$durationOfMillis(coerceIn2);
                }
                sign3 = MathKt__MathJVMKt.getSign(m1438getValueimpl);
                sign4 = MathKt__MathJVMKt.getSign(i4);
                return sign3 * sign4 > 0 ? INFINITE : NEG_INFINITE;
            } else if (j11 / j10 == m1438getValueimpl) {
                coerceIn = RangesKt___RangesKt.coerceIn(j11, new LongRange(-4611686018427387903L, DurationKt.MAX_MILLIS));
                return DurationKt.access$durationOfMillis(coerceIn);
            } else {
                sign = MathKt__MathJVMKt.getSign(m1438getValueimpl);
                sign2 = MathKt__MathJVMKt.getSign(i4);
                return sign * sign2 > 0 ? INFINITE : NEG_INFINITE;
            }
        }
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1453toComponentsimpl(long j4, @g Function5<? super Long, ? super Integer, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1426getInWholeDaysimpl(j4)), Integer.valueOf(m1418getHoursComponentimpl(j4)), Integer.valueOf(m1433getMinutesComponentimpl(j4)), Integer.valueOf(m1435getSecondsComponentimpl(j4)), Integer.valueOf(m1434getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: toDouble-impl  reason: not valid java name */
    public static final double m1454toDoubleimpl(long j4, @g DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j4 == INFINITE) {
            return Double.POSITIVE_INFINITY;
        }
        if (j4 == NEG_INFINITE) {
            return Double.NEGATIVE_INFINITY;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m1438getValueimpl(j4), m1436getStorageUnitimpl(j4), unit);
    }

    /* renamed from: toInt-impl  reason: not valid java name */
    public static final int m1455toIntimpl(long j4, @g DurationUnit unit) {
        long coerceIn;
        Intrinsics.checkNotNullParameter(unit, "unit");
        coerceIn = RangesKt___RangesKt.coerceIn(m1457toLongimpl(j4, unit), -2147483648L, 2147483647L);
        return (int) coerceIn;
    }

    @g
    /* renamed from: toIsoString-impl  reason: not valid java name */
    public static final String m1456toIsoStringimpl(long j4) {
        StringBuilder sb = new StringBuilder();
        if (m1444isNegativeimpl(j4)) {
            sb.append(l.f93713d);
        }
        sb.append("PT");
        long m1417getAbsoluteValueUwyO8pc = m1417getAbsoluteValueUwyO8pc(j4);
        long m1427getInWholeHoursimpl = m1427getInWholeHoursimpl(m1417getAbsoluteValueUwyO8pc);
        int m1433getMinutesComponentimpl = m1433getMinutesComponentimpl(m1417getAbsoluteValueUwyO8pc);
        int m1435getSecondsComponentimpl = m1435getSecondsComponentimpl(m1417getAbsoluteValueUwyO8pc);
        int m1434getNanosecondsComponentimpl = m1434getNanosecondsComponentimpl(m1417getAbsoluteValueUwyO8pc);
        if (m1443isInfiniteimpl(j4)) {
            m1427getInWholeHoursimpl = 9999999999999L;
        }
        boolean z9 = true;
        boolean z10 = m1427getInWholeHoursimpl != 0;
        boolean z11 = (m1435getSecondsComponentimpl == 0 && m1434getNanosecondsComponentimpl == 0) ? false : true;
        if (m1433getMinutesComponentimpl == 0 && (!z11 || !z10)) {
            z9 = false;
        }
        if (z10) {
            sb.append(m1427getInWholeHoursimpl);
            sb.append('H');
        }
        if (z9) {
            sb.append(m1433getMinutesComponentimpl);
            sb.append('M');
        }
        if (z11 || (!z10 && !z9)) {
            m1408appendFractionalimpl(j4, sb, m1435getSecondsComponentimpl, m1434getNanosecondsComponentimpl, 9, ExifInterface.LATITUDE_SOUTH, true);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: toLong-impl  reason: not valid java name */
    public static final long m1457toLongimpl(long j4, @g DurationUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j4 == INFINITE) {
            return Long.MAX_VALUE;
        }
        if (j4 == NEG_INFINITE) {
            return Long.MIN_VALUE;
        }
        return DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(m1438getValueimpl(j4), m1436getStorageUnitimpl(j4), unit);
    }

    @Deprecated(message = "Use inWholeMilliseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeMilliseconds", imports = {}))
    @ExperimentalTime
    /* renamed from: toLongMilliseconds-impl  reason: not valid java name */
    public static final long m1458toLongMillisecondsimpl(long j4) {
        return m1429getInWholeMillisecondsimpl(j4);
    }

    @Deprecated(message = "Use inWholeNanoseconds property instead.", replaceWith = @ReplaceWith(expression = "this.inWholeNanoseconds", imports = {}))
    @ExperimentalTime
    /* renamed from: toLongNanoseconds-impl  reason: not valid java name */
    public static final long m1459toLongNanosecondsimpl(long j4) {
        return m1431getInWholeNanosecondsimpl(j4);
    }

    @g
    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1460toStringimpl(long j4) {
        if (j4 == 0) {
            return "0s";
        }
        if (j4 == INFINITE) {
            return "Infinity";
        }
        if (j4 == NEG_INFINITE) {
            return "-Infinity";
        }
        boolean m1444isNegativeimpl = m1444isNegativeimpl(j4);
        StringBuilder sb = new StringBuilder();
        if (m1444isNegativeimpl) {
            sb.append(l.f93713d);
        }
        long m1417getAbsoluteValueUwyO8pc = m1417getAbsoluteValueUwyO8pc(j4);
        long m1426getInWholeDaysimpl = m1426getInWholeDaysimpl(m1417getAbsoluteValueUwyO8pc);
        int m1418getHoursComponentimpl = m1418getHoursComponentimpl(m1417getAbsoluteValueUwyO8pc);
        int m1433getMinutesComponentimpl = m1433getMinutesComponentimpl(m1417getAbsoluteValueUwyO8pc);
        int m1435getSecondsComponentimpl = m1435getSecondsComponentimpl(m1417getAbsoluteValueUwyO8pc);
        int m1434getNanosecondsComponentimpl = m1434getNanosecondsComponentimpl(m1417getAbsoluteValueUwyO8pc);
        int i4 = 0;
        boolean z9 = m1426getInWholeDaysimpl != 0;
        boolean z10 = m1418getHoursComponentimpl != 0;
        boolean z11 = m1433getMinutesComponentimpl != 0;
        boolean z12 = (m1435getSecondsComponentimpl == 0 && m1434getNanosecondsComponentimpl == 0) ? false : true;
        if (z9) {
            sb.append(m1426getInWholeDaysimpl);
            sb.append('d');
            i4 = 1;
        }
        if (z10 || (z9 && (z11 || z12))) {
            int i10 = i4 + 1;
            if (i4 > 0) {
                sb.append(' ');
            }
            sb.append(m1418getHoursComponentimpl);
            sb.append('h');
            i4 = i10;
        }
        if (z11 || (z12 && (z10 || z9))) {
            int i11 = i4 + 1;
            if (i4 > 0) {
                sb.append(' ');
            }
            sb.append(m1433getMinutesComponentimpl);
            sb.append('m');
            i4 = i11;
        }
        if (z12) {
            int i12 = i4 + 1;
            if (i4 > 0) {
                sb.append(' ');
            }
            if (m1435getSecondsComponentimpl != 0 || z9 || z10 || z11) {
                m1408appendFractionalimpl(j4, sb, m1435getSecondsComponentimpl, m1434getNanosecondsComponentimpl, 9, "s", false);
            } else if (m1434getNanosecondsComponentimpl >= 1000000) {
                m1408appendFractionalimpl(j4, sb, m1434getNanosecondsComponentimpl / DurationKt.NANOS_IN_MILLIS, m1434getNanosecondsComponentimpl % DurationKt.NANOS_IN_MILLIS, 6, "ms", false);
            } else if (m1434getNanosecondsComponentimpl >= 1000) {
                m1408appendFractionalimpl(j4, sb, m1434getNanosecondsComponentimpl / 1000, m1434getNanosecondsComponentimpl % 1000, 3, "us", false);
            } else {
                sb.append(m1434getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i4 = i12;
        }
        if (m1444isNegativeimpl && i4 > 1) {
            sb.insert(1, '(').append(')');
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    /* renamed from: toString-impl$default  reason: not valid java name */
    public static /* synthetic */ String m1462toStringimpl$default(long j4, DurationUnit durationUnit, int i4, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i4 = 0;
        }
        return m1461toStringimpl(j4, durationUnit, i4);
    }

    /* renamed from: unaryMinus-UwyO8pc  reason: not valid java name */
    public static final long m1463unaryMinusUwyO8pc(long j4) {
        return DurationKt.access$durationOf(-m1438getValueimpl(j4), ((int) j4) & 1);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Duration duration) {
        return m1464compareToLRDsOJo(duration.m1465unboximpl());
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public int m1464compareToLRDsOJo(long j4) {
        return m1410compareToLRDsOJo(this.rawValue, j4);
    }

    public boolean equals(Object obj) {
        return m1415equalsimpl(this.rawValue, obj);
    }

    public int hashCode() {
        return m1439hashCodeimpl(this.rawValue);
    }

    @g
    public String toString() {
        return m1460toStringimpl(this.rawValue);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long m1465unboximpl() {
        return this.rawValue;
    }

    /* renamed from: compareTo-LRDsOJo  reason: not valid java name */
    public static int m1410compareToLRDsOJo(long j4, long j10) {
        long j11 = j4 ^ j10;
        if (j11 < 0 || (((int) j11) & 1) == 0) {
            return Intrinsics.compare(j4, j10);
        }
        int i4 = (((int) j4) & 1) - (((int) j10) & 1);
        return m1444isNegativeimpl(j4) ? -i4 : i4;
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1452toComponentsimpl(long j4, @g Function4<? super Long, ? super Integer, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1427getInWholeHoursimpl(j4)), Integer.valueOf(m1433getMinutesComponentimpl(j4)), Integer.valueOf(m1435getSecondsComponentimpl(j4)), Integer.valueOf(m1434getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1451toComponentsimpl(long j4, @g Function3<? super Long, ? super Integer, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1430getInWholeMinutesimpl(j4)), Integer.valueOf(m1435getSecondsComponentimpl(j4)), Integer.valueOf(m1434getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: toComponents-impl  reason: not valid java name */
    public static final <T> T m1450toComponentsimpl(long j4, @g Function2<? super Long, ? super Integer, ? extends T> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return action.invoke(Long.valueOf(m1432getInWholeSecondsimpl(j4)), Integer.valueOf(m1434getNanosecondsComponentimpl(j4)));
    }

    /* renamed from: div-UwyO8pc  reason: not valid java name */
    public static final long m1413divUwyO8pc(long j4, double d4) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d4);
        if ((((double) roundToInt) == d4) && roundToInt != 0) {
            return m1414divUwyO8pc(j4, roundToInt);
        }
        DurationUnit m1436getStorageUnitimpl = m1436getStorageUnitimpl(j4);
        return DurationKt.toDuration(m1454toDoubleimpl(j4, m1436getStorageUnitimpl) / d4, m1436getStorageUnitimpl);
    }

    /* renamed from: times-UwyO8pc  reason: not valid java name */
    public static final long m1448timesUwyO8pc(long j4, double d4) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(d4);
        if (((double) roundToInt) == d4) {
            return m1449timesUwyO8pc(j4, roundToInt);
        }
        DurationUnit m1436getStorageUnitimpl = m1436getStorageUnitimpl(j4);
        return DurationKt.toDuration(m1454toDoubleimpl(j4, m1436getStorageUnitimpl) * d4, m1436getStorageUnitimpl);
    }

    @g
    /* renamed from: toString-impl  reason: not valid java name */
    public static final String m1461toStringimpl(long j4, @g DurationUnit unit, int i4) {
        int coerceAtMost;
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (i4 >= 0) {
            double m1454toDoubleimpl = m1454toDoubleimpl(j4, unit);
            if (Double.isInfinite(m1454toDoubleimpl)) {
                return String.valueOf(m1454toDoubleimpl);
            }
            StringBuilder sb = new StringBuilder();
            coerceAtMost = RangesKt___RangesKt.coerceAtMost(i4, 12);
            sb.append(DurationJvmKt.formatToExactDecimals(m1454toDoubleimpl, coerceAtMost));
            sb.append(DurationUnitKt__DurationUnitKt.shortName(unit));
            return sb.toString();
        }
        throw new IllegalArgumentException(("decimals must be not negative, but was " + i4).toString());
    }
}
