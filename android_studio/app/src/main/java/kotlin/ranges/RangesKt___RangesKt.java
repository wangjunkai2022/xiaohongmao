package kotlin.ranges;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import java.util.NoSuchElementException;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.RandomKt;
import kotlin.ranges.CharProgression;
import kotlin.ranges.IntProgression;
import kotlin.ranges.LongProgression;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Ranges.kt */
@Metadata(d1 = {"\u0000p\n\u0002\b\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001d\u001a'\u0010\u0000\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\u0006\u0010\u0003\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005\u001a\u0012\u0010\u0000\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006\u001a\u0012\u0010\u0000\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0007\u001a\u0012\u0010\u0000\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\b\u001a\u0012\u0010\u0000\u001a\u00020\t*\u00020\t2\u0006\u0010\u0003\u001a\u00020\t\u001a\u0012\u0010\u0000\u001a\u00020\n*\u00020\n2\u0006\u0010\u0003\u001a\u00020\n\u001a'\u0010\u000b\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\u0006\u0010\f\u001a\u0002H\u0001¢\u0006\u0002\u0010\u0004\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006\u001a\u0012\u0010\u000b\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007\u001a\u0012\u0010\u000b\u001a\u00020\b*\u00020\b2\u0006\u0010\f\u001a\u00020\b\u001a\u0012\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a\u0012\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a3\u0010\r\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\b\u0010\u0003\u001a\u0004\u0018\u0001H\u00012\b\u0010\f\u001a\u0004\u0018\u0001H\u0001¢\u0006\u0002\u0010\u000e\u001a/\u0010\r\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0010H\u0007¢\u0006\u0002\u0010\u0011\u001a-\u0010\r\u001a\u0002H\u0001\"\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u0002H\u00012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00010\u0012¢\u0006\u0002\u0010\u0013\u001a\u001a\u0010\r\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0005\u001a\u001a\u0010\r\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0006\u001a\u001a\u0010\r\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007\u001a\u001a\u0010\r\u001a\u00020\b*\u00020\b2\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b\u001a\u0018\u0010\r\u001a\u00020\b*\u00020\b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0012\u001a\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a\u0018\u0010\r\u001a\u00020\t*\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\u0012\u001a\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0003\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0087\n¢\u0006\u0002\u0010\u0019\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00050\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001b\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00060\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001c\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\u00070\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001d\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\b0\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001e\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\t0\u00122\u0006\u0010\u001a\u001a\u00020\nH\u0087\u0002¢\u0006\u0002\b\u001f\u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0005H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0006H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0087\u0002¢\u0006\u0002\b \u001a \u0010\u0014\u001a\u00020\u0015*\b\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u001a\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b \u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020!2\b\u0010\u0017\u001a\u0004\u0018\u00010\bH\u0087\n¢\u0006\u0002\u0010\"\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020#2\b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u0087\n¢\u0006\u0002\u0010$\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\u00052\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\u00052\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020)*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\b2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\b2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\t2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020(*\u00020\n2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010%\u001a\u00020&*\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\f\u0010*\u001a\u00020\u0018*\u00020)H\u0007\u001a\f\u0010*\u001a\u00020\b*\u00020&H\u0007\u001a\f\u0010*\u001a\u00020\t*\u00020(H\u0007\u001a\u0013\u0010+\u001a\u0004\u0018\u00010\u0018*\u00020)H\u0007¢\u0006\u0002\u0010,\u001a\u0013\u0010+\u001a\u0004\u0018\u00010\b*\u00020&H\u0007¢\u0006\u0002\u0010-\u001a\u0013\u0010+\u001a\u0004\u0018\u00010\t*\u00020(H\u0007¢\u0006\u0002\u0010.\u001a\f\u0010/\u001a\u00020\u0018*\u00020)H\u0007\u001a\f\u0010/\u001a\u00020\b*\u00020&H\u0007\u001a\f\u0010/\u001a\u00020\t*\u00020(H\u0007\u001a\u0013\u00100\u001a\u0004\u0018\u00010\u0018*\u00020)H\u0007¢\u0006\u0002\u0010,\u001a\u0013\u00100\u001a\u0004\u0018\u00010\b*\u00020&H\u0007¢\u0006\u0002\u0010-\u001a\u0013\u00100\u001a\u0004\u0018\u00010\t*\u00020(H\u0007¢\u0006\u0002\u0010.\u001a\r\u00101\u001a\u00020\u0018*\u00020\u0016H\u0087\b\u001a\u0014\u00101\u001a\u00020\u0018*\u00020\u00162\u0006\u00101\u001a\u000202H\u0007\u001a\r\u00101\u001a\u00020\b*\u00020!H\u0087\b\u001a\u0014\u00101\u001a\u00020\b*\u00020!2\u0006\u00101\u001a\u000202H\u0007\u001a\r\u00101\u001a\u00020\t*\u00020#H\u0087\b\u001a\u0014\u00101\u001a\u00020\t*\u00020#2\u0006\u00101\u001a\u000202H\u0007\u001a\u0014\u00103\u001a\u0004\u0018\u00010\u0018*\u00020\u0016H\u0087\b¢\u0006\u0002\u00104\u001a\u001b\u00103\u001a\u0004\u0018\u00010\u0018*\u00020\u00162\u0006\u00101\u001a\u000202H\u0007¢\u0006\u0002\u00105\u001a\u0014\u00103\u001a\u0004\u0018\u00010\b*\u00020!H\u0087\b¢\u0006\u0002\u00106\u001a\u001b\u00103\u001a\u0004\u0018\u00010\b*\u00020!2\u0006\u00101\u001a\u000202H\u0007¢\u0006\u0002\u00107\u001a\u0014\u00103\u001a\u0004\u0018\u00010\t*\u00020#H\u0087\b¢\u0006\u0002\u00108\u001a\u001b\u00103\u001a\u0004\u0018\u00010\t*\u00020#2\u0006\u00101\u001a\u000202H\u0007¢\u0006\u0002\u00109\u001a\n\u0010:\u001a\u00020)*\u00020)\u001a\n\u0010:\u001a\u00020&*\u00020&\u001a\n\u0010:\u001a\u00020(*\u00020(\u001a\u0015\u0010;\u001a\u00020)*\u00020)2\u0006\u0010;\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010;\u001a\u00020&*\u00020&2\u0006\u0010;\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010;\u001a\u00020(*\u00020(2\u0006\u0010;\u001a\u00020\tH\u0086\u0004\u001a\u0013\u0010<\u001a\u0004\u0018\u00010\u0005*\u00020\u0006H\u0000¢\u0006\u0002\u0010=\u001a\u0013\u0010<\u001a\u0004\u0018\u00010\u0005*\u00020\u0007H\u0000¢\u0006\u0002\u0010>\u001a\u0013\u0010<\u001a\u0004\u0018\u00010\u0005*\u00020\bH\u0000¢\u0006\u0002\u0010?\u001a\u0013\u0010<\u001a\u0004\u0018\u00010\u0005*\u00020\tH\u0000¢\u0006\u0002\u0010@\u001a\u0013\u0010<\u001a\u0004\u0018\u00010\u0005*\u00020\nH\u0000¢\u0006\u0002\u0010A\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\b*\u00020\u0006H\u0000¢\u0006\u0002\u0010C\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\b*\u00020\u0007H\u0000¢\u0006\u0002\u0010D\u001a\u0013\u0010B\u001a\u0004\u0018\u00010\b*\u00020\tH\u0000¢\u0006\u0002\u0010E\u001a\u0013\u0010F\u001a\u0004\u0018\u00010\t*\u00020\u0006H\u0000¢\u0006\u0002\u0010G\u001a\u0013\u0010F\u001a\u0004\u0018\u00010\t*\u00020\u0007H\u0000¢\u0006\u0002\u0010H\u001a\u0013\u0010I\u001a\u0004\u0018\u00010\n*\u00020\u0006H\u0000¢\u0006\u0002\u0010J\u001a\u0013\u0010I\u001a\u0004\u0018\u00010\n*\u00020\u0007H\u0000¢\u0006\u0002\u0010K\u001a\u0013\u0010I\u001a\u0004\u0018\u00010\n*\u00020\bH\u0000¢\u0006\u0002\u0010L\u001a\u0013\u0010I\u001a\u0004\u0018\u00010\n*\u00020\tH\u0000¢\u0006\u0002\u0010M\u001a\u0015\u0010N\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\u00052\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\u00052\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020\u0016*\u00020\u00182\u0006\u0010'\u001a\u00020\u0018H\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\b2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\b2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\t2\u0006\u0010'\u001a\u00020\nH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\u0005H\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\bH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020#*\u00020\n2\u0006\u0010'\u001a\u00020\tH\u0086\u0004\u001a\u0015\u0010N\u001a\u00020!*\u00020\n2\u0006\u0010'\u001a\u00020\nH\u0086\u0004¨\u0006O"}, d2 = {"coerceAtLeast", ExifInterface.GPS_DIRECTION_TRUE, "", "minimumValue", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "", "", "", "", "", "", "coerceAtMost", "maximumValue", "coerceIn", "(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;", "range", "Lkotlin/ranges/ClosedFloatingPointRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedFloatingPointRange;)Ljava/lang/Comparable;", "Lkotlin/ranges/ClosedRange;", "(Ljava/lang/Comparable;Lkotlin/ranges/ClosedRange;)Ljava/lang/Comparable;", "contains", "", "Lkotlin/ranges/CharRange;", "element", "", "(Lkotlin/ranges/CharRange;Ljava/lang/Character;)Z", "value", "byteRangeContains", "doubleRangeContains", "floatRangeContains", "intRangeContains", "longRangeContains", "shortRangeContains", "Lkotlin/ranges/IntRange;", "(Lkotlin/ranges/IntRange;Ljava/lang/Integer;)Z", "Lkotlin/ranges/LongRange;", "(Lkotlin/ranges/LongRange;Ljava/lang/Long;)Z", "downTo", "Lkotlin/ranges/IntProgression;", TypedValues.Transition.S_TO, "Lkotlin/ranges/LongProgression;", "Lkotlin/ranges/CharProgression;", "first", "firstOrNull", "(Lkotlin/ranges/CharProgression;)Ljava/lang/Character;", "(Lkotlin/ranges/IntProgression;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongProgression;)Ljava/lang/Long;", "last", "lastOrNull", "random", "Lkotlin/random/Random;", "randomOrNull", "(Lkotlin/ranges/CharRange;)Ljava/lang/Character;", "(Lkotlin/ranges/CharRange;Lkotlin/random/Random;)Ljava/lang/Character;", "(Lkotlin/ranges/IntRange;)Ljava/lang/Integer;", "(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)Ljava/lang/Integer;", "(Lkotlin/ranges/LongRange;)Ljava/lang/Long;", "(Lkotlin/ranges/LongRange;Lkotlin/random/Random;)Ljava/lang/Long;", "reversed", "step", "toByteExactOrNull", "(D)Ljava/lang/Byte;", "(F)Ljava/lang/Byte;", "(I)Ljava/lang/Byte;", "(J)Ljava/lang/Byte;", "(S)Ljava/lang/Byte;", "toIntExactOrNull", "(D)Ljava/lang/Integer;", "(F)Ljava/lang/Integer;", "(J)Ljava/lang/Integer;", "toLongExactOrNull", "(D)Ljava/lang/Long;", "(F)Ljava/lang/Long;", "toShortExactOrNull", "(D)Ljava/lang/Short;", "(F)Ljava/lang/Short;", "(I)Ljava/lang/Short;", "(J)Ljava/lang/Short;", "until", "kotlin-stdlib"}, k = 5, mv = {1, 7, 1}, xi = 49, xs = "kotlin/ranges/RangesKt")
/* loaded from: classes4.dex */
public class RangesKt___RangesKt extends RangesKt__RangesKt {
    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, double d4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(d4);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    public static final byte coerceAtLeast(byte b10, byte b11) {
        return b10 < b11 ? b11 : b10;
    }

    public static final double coerceAtLeast(double d4, double d10) {
        return d4 < d10 ? d10 : d4;
    }

    public static final float coerceAtLeast(float f10, float f11) {
        return f10 < f11 ? f11 : f10;
    }

    public static int coerceAtLeast(int i4, int i10) {
        return i4 < i10 ? i10 : i4;
    }

    public static long coerceAtLeast(long j4, long j10) {
        return j4 < j10 ? j10 : j4;
    }

    @g
    public static final <T extends Comparable<? super T>> T coerceAtLeast(@g T t9, @g T minimumValue) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        Intrinsics.checkNotNullParameter(minimumValue, "minimumValue");
        return t9.compareTo(minimumValue) < 0 ? minimumValue : t9;
    }

    public static final short coerceAtLeast(short s9, short s10) {
        return s9 < s10 ? s10 : s9;
    }

    public static final byte coerceAtMost(byte b10, byte b11) {
        return b10 > b11 ? b11 : b10;
    }

    public static final double coerceAtMost(double d4, double d10) {
        return d4 > d10 ? d10 : d4;
    }

    public static float coerceAtMost(float f10, float f11) {
        return f10 > f11 ? f11 : f10;
    }

    public static int coerceAtMost(int i4, int i10) {
        return i4 > i10 ? i10 : i4;
    }

    public static long coerceAtMost(long j4, long j10) {
        return j4 > j10 ? j10 : j4;
    }

    @g
    public static final <T extends Comparable<? super T>> T coerceAtMost(@g T t9, @g T maximumValue) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        Intrinsics.checkNotNullParameter(maximumValue, "maximumValue");
        return t9.compareTo(maximumValue) > 0 ? maximumValue : t9;
    }

    public static final short coerceAtMost(short s9, short s10) {
        return s9 > s10 ? s10 : s9;
    }

    @g
    public static final <T extends Comparable<? super T>> T coerceIn(@g T t9, @h T t10, @h T t11) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        if (t10 != null && t11 != null) {
            if (t10.compareTo(t11) <= 0) {
                if (t9.compareTo(t10) < 0) {
                    return t10;
                }
                if (t9.compareTo(t11) > 0) {
                    return t11;
                }
            } else {
                throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + t11 + " is less than minimum " + t10 + '.');
            }
        } else if (t10 != null && t9.compareTo(t10) < 0) {
            return t10;
        } else {
            if (t11 != null && t9.compareTo(t11) > 0) {
                return t11;
            }
        }
        return t9;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(IntRange intRange, Integer num) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return num != null && intRange.contains(num.intValue());
    }

    @g
    public static final IntProgression downTo(int i4, byte b10) {
        return IntProgression.Companion.fromClosedRange(i4, b10, -1);
    }

    @SinceKotlin(version = "1.7")
    public static final int first(@g IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (!intProgression.isEmpty()) {
            return intProgression.getFirst();
        }
        throw new NoSuchElementException("Progression " + intProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final Integer firstOrNull(@g IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getFirst());
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@g ClosedRange<Integer> closedRange, byte b10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Integer.valueOf(b10));
    }

    @SinceKotlin(version = "1.7")
    public static final int last(@g IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (!intProgression.isEmpty()) {
            return intProgression.getLast();
        }
        throw new NoSuchElementException("Progression " + intProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final Integer lastOrNull(@g IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        if (intProgression.isEmpty()) {
            return null;
        }
        return Integer.valueOf(intProgression.getLast());
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@g ClosedRange<Long> closedRange, byte b10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(b10));
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final int random(IntRange intRange) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return random(intRange, Random.Default);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final Integer randomOrNull(IntRange intRange) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        return randomOrNull(intRange, Random.Default);
    }

    @g
    public static final IntProgression reversed(@g IntProgression intProgression) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        return IntProgression.Companion.fromClosedRange(intProgression.getLast(), intProgression.getFirst(), -intProgression.getStep());
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@g ClosedRange<Short> closedRange, byte b10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Short.valueOf(b10));
    }

    @g
    public static IntProgression step(@g IntProgression intProgression, int i4) {
        Intrinsics.checkNotNullParameter(intProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(i4 > 0, Integer.valueOf(i4));
        IntProgression.Companion companion = IntProgression.Companion;
        int first = intProgression.getFirst();
        int last = intProgression.getLast();
        if (intProgression.getStep() <= 0) {
            i4 = -i4;
        }
        return companion.fromClosedRange(first, last, i4);
    }

    @h
    public static final Byte toByteExactOrNull(int i4) {
        if (new IntRange(-128, 127).contains(i4)) {
            return Byte.valueOf((byte) i4);
        }
        return null;
    }

    @h
    public static final Integer toIntExactOrNull(long j4) {
        if (new LongRange(-2147483648L, 2147483647L).contains(j4)) {
            return Integer.valueOf((int) j4);
        }
        return null;
    }

    @h
    public static final Long toLongExactOrNull(double d4) {
        boolean z9 = false;
        if (d4 <= 9.223372036854776E18d && -9.223372036854776E18d <= d4) {
            z9 = true;
        }
        if (z9) {
            return Long.valueOf((long) d4);
        }
        return null;
    }

    @h
    public static final Short toShortExactOrNull(int i4) {
        if (new IntRange(-32768, 32767).contains(i4)) {
            return Short.valueOf((short) i4);
        }
        return null;
    }

    @g
    public static final IntRange until(int i4, byte b10) {
        return new IntRange(i4, b10 - 1);
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "byteRangeContains")
    public static final /* synthetic */ boolean byteRangeContains(ClosedRange closedRange, float f10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(f10);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(LongRange longRange, Long l10) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return l10 != null && longRange.contains(l10.longValue());
    }

    @JvmName(name = "doubleRangeContains")
    public static final boolean doubleRangeContains(@g ClosedRange<Double> closedRange, float f10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Double.valueOf(f10));
    }

    @g
    public static final LongProgression downTo(long j4, byte b10) {
        return LongProgression.Companion.fromClosedRange(j4, b10, -1L);
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final Long firstOrNull(@g LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getFirst());
    }

    @JvmName(name = "floatRangeContains")
    public static final boolean floatRangeContains(@g ClosedRange<Float> closedRange, double d4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Float.valueOf((float) d4));
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, double d4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(d4);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final Long lastOrNull(@g LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (longProgression.isEmpty()) {
            return null;
        }
        return Long.valueOf(longProgression.getLast());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, double d4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Long longExactOrNull = toLongExactOrNull(d4);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final long random(LongRange longRange) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return random(longRange, Random.Default);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final Long randomOrNull(LongRange longRange) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        return randomOrNull(longRange, Random.Default);
    }

    @g
    public static final LongProgression reversed(@g LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        return LongProgression.Companion.fromClosedRange(longProgression.getLast(), longProgression.getFirst(), -longProgression.getStep());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, double d4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(d4);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @h
    public static final Byte toByteExactOrNull(long j4) {
        if (new LongRange(-128L, 127L).contains(j4)) {
            return Byte.valueOf((byte) j4);
        }
        return null;
    }

    @h
    public static final Integer toIntExactOrNull(double d4) {
        boolean z9 = false;
        if (d4 <= 2.147483647E9d && -2.147483648E9d <= d4) {
            z9 = true;
        }
        if (z9) {
            return Integer.valueOf((int) d4);
        }
        return null;
    }

    @h
    public static final Long toLongExactOrNull(float f10) {
        boolean z9 = false;
        if (f10 <= 9.223372E18f && -9.223372E18f <= f10) {
            z9 = true;
        }
        if (z9) {
            return Long.valueOf(f10);
        }
        return null;
    }

    @h
    public static final Short toShortExactOrNull(long j4) {
        if (new LongRange(-32768L, 32767L).contains(j4)) {
            return Short.valueOf((short) j4);
        }
        return null;
    }

    @g
    public static final LongRange until(long j4, byte b10) {
        return new LongRange(j4, b10 - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@g ClosedRange<Byte> closedRange, int i4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(i4);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final boolean contains(CharRange charRange, Character ch) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        return ch != null && charRange.contains(ch.charValue());
    }

    @g
    public static final IntProgression downTo(byte b10, byte b11) {
        return IntProgression.Companion.fromClosedRange(b10, b11, -1);
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final Character firstOrNull(@g CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getFirst());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "intRangeContains")
    public static final /* synthetic */ boolean intRangeContains(ClosedRange closedRange, float f10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(f10);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    @h
    public static final Character lastOrNull(@g CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (charProgression.isEmpty()) {
            return null;
        }
        return Character.valueOf(charProgression.getLast());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "longRangeContains")
    public static final /* synthetic */ boolean longRangeContains(ClosedRange closedRange, float f10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Long longExactOrNull = toLongExactOrNull(f10);
        if (longExactOrNull != null) {
            return closedRange.contains(longExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.3")
    @InlineOnly
    private static final char random(CharRange charRange) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        return random(charRange, Random.Default);
    }

    @SinceKotlin(version = "1.4")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    private static final Character randomOrNull(CharRange charRange) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        return randomOrNull(charRange, Random.Default);
    }

    @g
    public static final CharProgression reversed(@g CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        return CharProgression.Companion.fromClosedRange(charProgression.getLast(), charProgression.getFirst(), -charProgression.getStep());
    }

    @Deprecated(message = "This `contains` operation mixing integer and floating point arguments has ambiguous semantics and is going to be removed.")
    @DeprecatedSinceKotlin(errorSince = "1.4", hiddenSince = "1.5", warningSince = "1.3")
    @JvmName(name = "shortRangeContains")
    public static final /* synthetic */ boolean shortRangeContains(ClosedRange closedRange, float f10) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(f10);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @g
    public static final LongProgression step(@g LongProgression longProgression, long j4) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(j4 > 0, Long.valueOf(j4));
        LongProgression.Companion companion = LongProgression.Companion;
        long first = longProgression.getFirst();
        long last = longProgression.getLast();
        if (longProgression.getStep() <= 0) {
            j4 = -j4;
        }
        return companion.fromClosedRange(first, last, j4);
    }

    @h
    public static final Byte toByteExactOrNull(short s9) {
        if (intRangeContains((ClosedRange<Integer>) new IntRange(-128, 127), s9)) {
            return Byte.valueOf((byte) s9);
        }
        return null;
    }

    @h
    public static final Integer toIntExactOrNull(float f10) {
        boolean z9 = false;
        if (f10 <= 2.14748365E9f && -2.14748365E9f <= f10) {
            z9 = true;
        }
        if (z9) {
            return Integer.valueOf((int) f10);
        }
        return null;
    }

    @h
    public static final Short toShortExactOrNull(double d4) {
        boolean z9 = false;
        if (d4 <= 32767.0d && -32768.0d <= d4) {
            z9 = true;
        }
        if (z9) {
            return Short.valueOf((short) d4);
        }
        return null;
    }

    @g
    public static final IntRange until(byte b10, byte b11) {
        return new IntRange(b10, b11 - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@g ClosedRange<Byte> closedRange, long j4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(j4);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @g
    public static final IntProgression downTo(short s9, byte b10) {
        return IntProgression.Companion.fromClosedRange(s9, b10, -1);
    }

    @SinceKotlin(version = "1.7")
    public static final long first(@g LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (!longProgression.isEmpty()) {
            return longProgression.getFirst();
        }
        throw new NoSuchElementException("Progression " + longProgression + " is empty.");
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@g ClosedRange<Integer> closedRange, long j4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Integer intExactOrNull = toIntExactOrNull(j4);
        if (intExactOrNull != null) {
            return closedRange.contains(intExactOrNull);
        }
        return false;
    }

    @SinceKotlin(version = "1.7")
    public static final long last(@g LongProgression longProgression) {
        Intrinsics.checkNotNullParameter(longProgression, "<this>");
        if (!longProgression.isEmpty()) {
            return longProgression.getLast();
        }
        throw new NoSuchElementException("Progression " + longProgression + " is empty.");
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@g ClosedRange<Long> closedRange, int i4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(i4));
    }

    @SinceKotlin(version = "1.3")
    public static final int random(@g IntRange intRange, @g Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return RandomKt.nextInt(random, intRange);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @h
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final Integer randomOrNull(@g IntRange intRange, @g Random random) {
        Intrinsics.checkNotNullParameter(intRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (intRange.isEmpty()) {
            return null;
        }
        return Integer.valueOf(RandomKt.nextInt(random, intRange));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@g ClosedRange<Short> closedRange, int i4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(i4);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @h
    public static final Byte toByteExactOrNull(double d4) {
        boolean z9 = false;
        if (d4 <= 127.0d && -128.0d <= d4) {
            z9 = true;
        }
        if (z9) {
            return Byte.valueOf((byte) d4);
        }
        return null;
    }

    @h
    public static final Short toShortExactOrNull(float f10) {
        boolean z9 = false;
        if (f10 <= 32767.0f && -32768.0f <= f10) {
            z9 = true;
        }
        if (z9) {
            return Short.valueOf((short) f10);
        }
        return null;
    }

    @g
    public static final IntRange until(short s9, byte b10) {
        return new IntRange(s9, b10 - 1);
    }

    @JvmName(name = "byteRangeContains")
    public static final boolean byteRangeContains(@g ClosedRange<Byte> closedRange, short s9) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Byte byteExactOrNull = toByteExactOrNull(s9);
        if (byteExactOrNull != null) {
            return closedRange.contains(byteExactOrNull);
        }
        return false;
    }

    @g
    public static final CharProgression downTo(char c10, char c11) {
        return CharProgression.Companion.fromClosedRange(c10, c11, -1);
    }

    @JvmName(name = "intRangeContains")
    public static final boolean intRangeContains(@g ClosedRange<Integer> closedRange, short s9) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Integer.valueOf(s9));
    }

    @JvmName(name = "longRangeContains")
    public static final boolean longRangeContains(@g ClosedRange<Long> closedRange, short s9) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        return closedRange.contains(Long.valueOf(s9));
    }

    @JvmName(name = "shortRangeContains")
    public static final boolean shortRangeContains(@g ClosedRange<Short> closedRange, long j4) {
        Intrinsics.checkNotNullParameter(closedRange, "<this>");
        Short shortExactOrNull = toShortExactOrNull(j4);
        if (shortExactOrNull != null) {
            return closedRange.contains(shortExactOrNull);
        }
        return false;
    }

    @g
    public static final CharProgression step(@g CharProgression charProgression, int i4) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        RangesKt__RangesKt.checkStepIsPositive(i4 > 0, Integer.valueOf(i4));
        CharProgression.Companion companion = CharProgression.Companion;
        char first = charProgression.getFirst();
        char last = charProgression.getLast();
        if (charProgression.getStep() <= 0) {
            i4 = -i4;
        }
        return companion.fromClosedRange(first, last, i4);
    }

    @h
    public static final Byte toByteExactOrNull(float f10) {
        boolean z9 = false;
        if (f10 <= 127.0f && -128.0f <= f10) {
            z9 = true;
        }
        if (z9) {
            return Byte.valueOf((byte) f10);
        }
        return null;
    }

    @g
    public static final CharRange until(char c10, char c11) {
        return Intrinsics.compare((int) c11, 0) <= 0 ? CharRange.Companion.getEMPTY() : new CharRange(c10, (char) (c11 - 1));
    }

    @g
    public static IntProgression downTo(int i4, int i10) {
        return IntProgression.Companion.fromClosedRange(i4, i10, -1);
    }

    @SinceKotlin(version = "1.3")
    public static final long random(@g LongRange longRange, @g Random random) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return RandomKt.nextLong(random, longRange);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @h
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final Long randomOrNull(@g LongRange longRange, @g Random random) {
        Intrinsics.checkNotNullParameter(longRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (longRange.isEmpty()) {
            return null;
        }
        return Long.valueOf(RandomKt.nextLong(random, longRange));
    }

    public static final byte coerceIn(byte b10, byte b11, byte b12) {
        if (b11 <= b12) {
            return b10 < b11 ? b11 : b10 > b12 ? b12 : b10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) b12) + " is less than minimum " + ((int) b11) + '.');
    }

    @g
    public static final LongProgression downTo(long j4, int i4) {
        return LongProgression.Companion.fromClosedRange(j4, i4, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final char first(@g CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (!charProgression.isEmpty()) {
            return charProgression.getFirst();
        }
        throw new NoSuchElementException("Progression " + charProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    public static final char last(@g CharProgression charProgression) {
        Intrinsics.checkNotNullParameter(charProgression, "<this>");
        if (!charProgression.isEmpty()) {
            return charProgression.getLast();
        }
        throw new NoSuchElementException("Progression " + charProgression + " is empty.");
    }

    @g
    public static IntRange until(int i4, int i10) {
        if (i10 <= Integer.MIN_VALUE) {
            return IntRange.Companion.getEMPTY();
        }
        return new IntRange(i4, i10 - 1);
    }

    public static final short coerceIn(short s9, short s10, short s11) {
        if (s10 <= s11) {
            return s9 < s10 ? s10 : s9 > s11 ? s11 : s9;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((int) s11) + " is less than minimum " + ((int) s10) + '.');
    }

    @g
    public static final IntProgression downTo(byte b10, int i4) {
        return IntProgression.Companion.fromClosedRange(b10, i4, -1);
    }

    @SinceKotlin(version = "1.3")
    public static final char random(@g CharRange charRange, @g Random random) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        try {
            return (char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1);
        } catch (IllegalArgumentException e4) {
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @SinceKotlin(version = "1.4")
    @h
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final Character randomOrNull(@g CharRange charRange, @g Random random) {
        Intrinsics.checkNotNullParameter(charRange, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (charRange.isEmpty()) {
            return null;
        }
        return Character.valueOf((char) random.nextInt(charRange.getFirst(), charRange.getLast() + 1));
    }

    public static int coerceIn(int i4, int i10, int i11) {
        if (i10 <= i11) {
            return i4 < i10 ? i10 : i4 > i11 ? i11 : i4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i11 + " is less than minimum " + i10 + '.');
    }

    @g
    public static final IntProgression downTo(short s9, int i4) {
        return IntProgression.Companion.fromClosedRange(s9, i4, -1);
    }

    @g
    public static final LongRange until(long j4, int i4) {
        return new LongRange(j4, i4 - 1);
    }

    public static long coerceIn(long j4, long j10, long j11) {
        if (j10 <= j11) {
            return j4 < j10 ? j10 : j4 > j11 ? j11 : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j11 + " is less than minimum " + j10 + '.');
    }

    @g
    public static final LongProgression downTo(int i4, long j4) {
        return LongProgression.Companion.fromClosedRange(i4, j4, -1L);
    }

    @g
    public static final IntRange until(byte b10, int i4) {
        if (i4 <= Integer.MIN_VALUE) {
            return IntRange.Companion.getEMPTY();
        }
        return new IntRange(b10, i4 - 1);
    }

    public static final float coerceIn(float f10, float f11, float f12) {
        if (f11 <= f12) {
            return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + f12 + " is less than minimum " + f11 + '.');
    }

    @g
    public static final LongProgression downTo(long j4, long j10) {
        return LongProgression.Companion.fromClosedRange(j4, j10, -1L);
    }

    public static final double coerceIn(double d4, double d10, double d11) {
        if (d10 <= d11) {
            return d4 < d10 ? d10 : d4 > d11 ? d11 : d4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + d11 + " is less than minimum " + d10 + '.');
    }

    @g
    public static final LongProgression downTo(byte b10, long j4) {
        return LongProgression.Companion.fromClosedRange(b10, j4, -1L);
    }

    @g
    public static final IntRange until(short s9, int i4) {
        if (i4 <= Integer.MIN_VALUE) {
            return IntRange.Companion.getEMPTY();
        }
        return new IntRange(s9, i4 - 1);
    }

    @SinceKotlin(version = "1.1")
    @g
    public static final <T extends Comparable<? super T>> T coerceIn(@g T t9, @g ClosedFloatingPointRange<T> range) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (!range.isEmpty()) {
            return (!range.lessThanOrEquals(t9, range.getStart()) || range.lessThanOrEquals(range.getStart(), t9)) ? (!range.lessThanOrEquals(range.getEndInclusive(), t9) || range.lessThanOrEquals(t9, range.getEndInclusive())) ? t9 : range.getEndInclusive() : range.getStart();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @g
    public static final LongProgression downTo(short s9, long j4) {
        return LongProgression.Companion.fromClosedRange(s9, j4, -1L);
    }

    @g
    public static final IntProgression downTo(int i4, short s9) {
        return IntProgression.Companion.fromClosedRange(i4, s9, -1);
    }

    @g
    public static final LongRange until(int i4, long j4) {
        if (j4 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(i4, j4 - 1);
    }

    @g
    public static final LongProgression downTo(long j4, short s9) {
        return LongProgression.Companion.fromClosedRange(j4, s9, -1L);
    }

    @g
    public static final IntProgression downTo(byte b10, short s9) {
        return IntProgression.Companion.fromClosedRange(b10, s9, -1);
    }

    @g
    public static final LongRange until(long j4, long j10) {
        if (j10 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(j4, j10 - 1);
    }

    @g
    public static final <T extends Comparable<? super T>> T coerceIn(@g T t9, @g ClosedRange<T> range) {
        Intrinsics.checkNotNullParameter(t9, "<this>");
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return (T) coerceIn((Comparable) t9, (ClosedFloatingPointRange) range);
        }
        if (!range.isEmpty()) {
            return t9.compareTo(range.getStart()) < 0 ? range.getStart() : t9.compareTo(range.getEndInclusive()) > 0 ? range.getEndInclusive() : t9;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @g
    public static final IntProgression downTo(short s9, short s10) {
        return IntProgression.Companion.fromClosedRange(s9, s10, -1);
    }

    @g
    public static final LongRange until(byte b10, long j4) {
        if (j4 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(b10, j4 - 1);
    }

    @g
    public static final LongRange until(short s9, long j4) {
        if (j4 <= Long.MIN_VALUE) {
            return LongRange.Companion.getEMPTY();
        }
        return new LongRange(s9, j4 - 1);
    }

    @g
    public static final IntRange until(int i4, short s9) {
        return new IntRange(i4, s9 - 1);
    }

    public static int coerceIn(int i4, @g ClosedRange<Integer> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Integer.valueOf(i4), (ClosedFloatingPointRange<Integer>) range)).intValue();
        }
        if (!range.isEmpty()) {
            return i4 < range.getStart().intValue() ? range.getStart().intValue() : i4 > range.getEndInclusive().intValue() ? range.getEndInclusive().intValue() : i4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }

    @g
    public static final LongRange until(long j4, short s9) {
        return new LongRange(j4, s9 - 1);
    }

    @g
    public static final IntRange until(byte b10, short s9) {
        return new IntRange(b10, s9 - 1);
    }

    @g
    public static final IntRange until(short s9, short s10) {
        return new IntRange(s9, s10 - 1);
    }

    public static long coerceIn(long j4, @g ClosedRange<Long> range) {
        Intrinsics.checkNotNullParameter(range, "range");
        if (range instanceof ClosedFloatingPointRange) {
            return ((Number) coerceIn(Long.valueOf(j4), (ClosedFloatingPointRange<Long>) range)).longValue();
        }
        if (!range.isEmpty()) {
            return j4 < range.getStart().longValue() ? range.getStart().longValue() : j4 > range.getEndInclusive().longValue() ? range.getEndInclusive().longValue() : j4;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + range + '.');
    }
}
