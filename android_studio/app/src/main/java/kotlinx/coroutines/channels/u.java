package kotlinx.coroutines.channels;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.y;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import org.bouncycastle.math.Primes;

/* compiled from: Deprecated.kt */
@Metadata(bv = {}, d1 = {"\u0000\u009e\u0001\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010#\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u001aL\u0010\n\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003j\u0002`\t2\u001a\u0010\u0002\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030\u00010\u0000\"\u0006\u0012\u0002\b\u00030\u0001H\u0001¢\u0006\u0004\b\n\u0010\u000b\u001a+\u0010\u000f\u001a\u00028\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a-\u0010\u0011\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000e\u001a\u00020\rH\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0010\u001a#\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013\u001a%\u0010\u0014\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0013\u001a+\u0010\u0016\u001a\u00020\r\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0015\u001a\u00028\u0000H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a#\u0010\u0018\u001a\u00028\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0013\u001a+\u0010\u0019\u001a\u00020\r\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0015\u001a\u00028\u0000H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0017\u001a%\u0010\u001a\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u0013\u001a#\u0010\u001b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0013\u001a%\u0010\u001c\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0013\u001a0\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001d\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u001eH\u0007\u001aV\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0007ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001aV\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010'\u001ak\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e27\u0010%\u001a3\b\u0001\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010$0(H\u0007ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001aV\u0010+\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0007ø\u0001\u0000¢\u0006\u0004\b+\u0010'\u001a$\u0010,\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\f*\u00020$*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001H\u0001\u001aC\u0010/\u001a\u00028\u0001\"\b\b\u0000\u0010\f*\u00020$\"\u0010\b\u0001\u0010\u0019*\n\u0012\u0006\b\u0000\u0012\u00028\u00000-*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00012\u0006\u0010.\u001a\u00028\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b/\u00100\u001aA\u00102\u001a\u00028\u0001\"\b\b\u0000\u0010\f*\u00020$\"\u000e\b\u0001\u0010\u0019*\b\u0012\u0004\u0012\u00028\u000001*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00012\u0006\u0010.\u001a\u00028\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b2\u00103\u001a0\u00104\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u001d\u001a\u00020\r2\b\b\u0002\u0010\u001f\u001a\u00020\u001eH\u0007\u001aV\u00105\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\"\u0010%\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0007ø\u0001\u0000¢\u0006\u0004\b5\u0010'\u001a;\u00106\u001a\u00028\u0001\"\u0004\b\u0000\u0010\f\"\u000e\b\u0001\u0010\u0019*\b\u0012\u0004\u0012\u00028\u000001*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010.\u001a\u00028\u0001H\u0081@ø\u0001\u0000¢\u0006\u0004\b6\u00103\u001a=\u00107\u001a\u00028\u0001\"\u0004\b\u0000\u0010\f\"\u0010\b\u0001\u0010\u0019*\n\u0012\u0006\b\u0000\u0012\u00028\u00000-*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010.\u001a\u00028\u0001H\u0081@ø\u0001\u0000¢\u0006\u0004\b7\u00100\u001aA\u0010<\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010;\"\u0004\b\u0000\u00108\"\u0004\b\u0001\u00109*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010:0\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\b<\u0010\u0013\u001aW\u0010?\u001a\u00028\u0002\"\u0004\b\u0000\u00108\"\u0004\b\u0001\u00109\"\u0018\b\u0002\u0010>*\u0012\u0012\u0006\b\u0000\u0012\u00028\u0000\u0012\u0006\b\u0000\u0012\u00028\u00010=*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010:0\u00012\u0006\u0010.\u001a\u00028\u0002H\u0081@ø\u0001\u0000¢\u0006\u0004\b?\u0010@\u001a)\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00000A\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\bB\u0010\u0013\u001a)\u0010D\u001a\b\u0012\u0004\u0012\u00028\u00000C\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\bD\u0010\u0013\u001ab\u0010F\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\u001c*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2(\u0010E\u001a$\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0007ø\u0001\u0000¢\u0006\u0004\bF\u0010'\u001a\\\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\u001c*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\"\u0010E\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0001ø\u0001\u0000¢\u0006\u0004\b\f\u0010'\u001aq\u0010G\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\u001c*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e27\u0010E\u001a3\b\u0001\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010$0(H\u0001ø\u0001\u0000¢\u0006\u0004\bG\u0010*\u001aw\u0010H\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\f\"\b\b\u0001\u0010\u001c*\u00020$*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e29\u0010E\u001a5\b\u0001\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00028\u0000\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010$0(H\u0007ø\u0001\u0000¢\u0006\u0004\bH\u0010*\u001ab\u00108\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001\"\u0004\b\u0000\u0010\f\"\b\b\u0001\u0010\u001c*\u00020$*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2$\u0010E\u001a \b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0007ø\u0001\u0000¢\u0006\u0004\b8\u0010'\u001a.\u0010J\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000I0\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001eH\u0007\u001a\u001e\u0010K\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a\\\u0010M\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u00108*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e2\"\u0010L\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\"\u0012\u0006\u0012\u0004\u0018\u00010$0!H\u0001ø\u0001\u0000¢\u0006\u0004\bM\u0010'\u001a)\u0010O\u001a\b\u0012\u0004\u0012\u00028\u00000N\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0081@ø\u0001\u0000¢\u0006\u0004\bO\u0010\u0013\u001a#\u0010P\u001a\u00020#\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\bP\u0010\u0013\u001a#\u0010Q\u001a\u00020\r\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\bQ\u0010\u0013\u001aA\u0010>\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010T\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000Rj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`SH\u0087@ø\u0001\u0000¢\u0006\u0004\b>\u0010U\u001aA\u0010V\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010T\u001a\u0016\u0012\u0006\b\u0000\u0012\u00028\u00000Rj\n\u0012\u0006\b\u0000\u0012\u00028\u0000`SH\u0087@ø\u0001\u0000¢\u0006\u0004\bV\u0010U\u001a#\u0010W\u001a\u00020#\"\u0004\b\u0000\u0010\f*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087@ø\u0001\u0000¢\u0006\u0004\bW\u0010\u0013\u001a$\u0010X\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001\"\b\b\u0000\u0010\f*\u00020$*\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001H\u0007\u001a?\u0010Z\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010:0\u0001\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\u001c*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00010\u0001H\u0087\u0004\u001az\u0010\\\u001a\b\u0012\u0004\u0012\u00028\u00020\u0001\"\u0004\b\u0000\u0010\f\"\u0004\b\u0001\u0010\u001c\"\u0004\b\u0002\u00109*\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010Y\u001a\b\u0012\u0004\u0012\u00028\u00010\u00012\b\b\u0002\u0010\u001f\u001a\u00020\u001e26\u0010E\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(P\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b([\u0012\u0004\u0012\u00028\u00020!H\u0001\u001a1\u0010[\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\b0\u0003j\u0002`\t*\u0006\u0012\u0002\b\u00030\u0001H\u0001\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006]"}, d2 = {"", "Lkotlinx/coroutines/channels/f0;", "channels", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "c", "([Lkotlinx/coroutines/channels/f0;)Lkotlin/jvm/functions/Function1;", ExifInterface.LONGITUDE_EAST, "", "index", "l", "(Lkotlinx/coroutines/channels/f0;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "m", "w", "(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", y.b.f83919g, "element", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Lkotlinx/coroutines/channels/f0;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "B", "C", "D", "Q", "R", "n", "Lkotlin/coroutines/CoroutineContext;", "context", "h", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "predicate", "j", "(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/f0;", "Lkotlin/Function3;", "p", "(Lkotlinx/coroutines/channels/f0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/channels/f0;", "r", "t", "", "destination", "u", "(Lkotlinx/coroutines/channels/f0;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/j0;", "v", "(Lkotlinx/coroutines/channels/f0;Lkotlinx/coroutines/channels/j0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", ExifInterface.LATITUDE_SOUTH, "U", ExifInterface.LONGITUDE_WEST, "X", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/Pair;", "", "Z", "", "M", "Y", "(Lkotlinx/coroutines/channels/f0;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "a0", "", "c0", "transform", y.b.f83920h, "G", "I", "Lkotlin/collections/IndexedValue;", "d0", "e", "selector", "f", "", "b0", "a", "d", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "comparator", "(Lkotlinx/coroutines/channels/f0;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "N", "O", "P", "other", "f0", "b", "g0", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/channels/ChannelsKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class u {

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {404}, m = shaded.org.apache.commons.codec.language.bm.c.f93573b, n = {"$this$consume$iv"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class a<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f84937a;

        /* renamed from: b */
        /* synthetic */ Object f84938b;

        /* renamed from: c */
        int f84939c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object a10;
            this.f84938b = obj;
            this.f84939c |= Integer.MIN_VALUE;
            a10 = u.a(null, this);
            return a10;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {434, 436}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes4.dex */
    public static final class a0<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f84940a;

        /* renamed from: b */
        Object f84941b;

        /* renamed from: c */
        Object f84942c;

        /* renamed from: d */
        Object f84943d;

        /* renamed from: e */
        /* synthetic */ Object f84944e;

        /* renamed from: f */
        int f84945f;

        a0(Continuation<? super a0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object N;
            this.f84944e = obj;
            this.f84945f |= Integer.MIN_VALUE;
            N = u.N(null, null, this);
            return N;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "cause", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: a */
        final /* synthetic */ kotlinx.coroutines.channels.f0<?> f84946a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlinx.coroutines.channels.f0<?> f0Var) {
            super(1);
            this.f84946a = f0Var;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke */
        public final void invoke2(@m8.h Throwable th) {
            kotlinx.coroutines.channels.r.b(this.f84946a, th);
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0}, l = {447}, m = "none", n = {"$this$consume$iv"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class b0<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f84947a;

        /* renamed from: b */
        /* synthetic */ Object f84948b;

        /* renamed from: c */
        int f84949c;

        b0(Continuation<? super b0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object O;
            this.f84948b = obj;
            this.f84949c |= Integer.MIN_VALUE;
            O = u.O(null, this);
            return O;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "cause", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class c extends Lambda implements Function1<Throwable, Unit> {

        /* renamed from: a */
        final /* synthetic */ kotlinx.coroutines.channels.f0<?>[] f84950a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(kotlinx.coroutines.channels.f0<?>[] f0VarArr) {
            super(1);
            this.f84950a = f0VarArr;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
            invoke2(th);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke */
        public final void invoke2(@m8.h Throwable th) {
            kotlinx.coroutines.channels.f0<?>[] f0VarArr = this.f84950a;
            int length = f0VarArr.length;
            Throwable th2 = null;
            int i4 = 0;
            while (i4 < length) {
                kotlinx.coroutines.channels.f0<?> f0Var = f0VarArr[i4];
                i4++;
                try {
                    kotlinx.coroutines.channels.r.b(f0Var, th);
                } catch (Throwable th3) {
                    if (th2 == null) {
                        th2 = th3;
                    } else {
                        ExceptionsKt__ExceptionsKt.addSuppressed(th2, th3);
                    }
                }
            }
            if (th2 != null) {
                throw th2;
            }
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u008a@"}, d2 = {"", ExifInterface.LONGITUDE_EAST, "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$requireNoNulls$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class c0 extends SuspendLambda implements Function2<Object, Continuation<Object>, Object> {

        /* renamed from: a */
        int f84951a;

        /* renamed from: b */
        /* synthetic */ Object f84952b;

        /* renamed from: c */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f84953c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c0(kotlinx.coroutines.channels.f0<Object> f0Var, Continuation<? super c0> continuation) {
            super(2, continuation);
            this.f84953c = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            c0 c0Var = new c0(this.f84953c, continuation);
            c0Var.f84952b = obj;
            return c0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.h Object obj, @m8.h Continuation<Object> continuation) {
            return ((c0) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f84951a == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.f84952b;
                if (obj2 != null) {
                    return obj2;
                }
                throw new IllegalArgumentException("null element found in " + this.f84953c + '.');
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "count", n = {"count", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class d<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f84954a;

        /* renamed from: b */
        Object f84955b;

        /* renamed from: c */
        Object f84956c;

        /* renamed from: d */
        /* synthetic */ Object f84957d;

        /* renamed from: e */
        int f84958e;

        d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object d4;
            this.f84957d = obj;
            this.f84958e |= Integer.MIN_VALUE;
            d4 = u.d(null, this);
            return d4;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {136, 139}, m = "single", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class d0<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f84959a;

        /* renamed from: b */
        Object f84960b;

        /* renamed from: c */
        /* synthetic */ Object f84961c;

        /* renamed from: d */
        int f84962d;

        d0(Continuation<? super d0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object Q;
            this.f84961c = obj;
            this.f84962d |= Integer.MIN_VALUE;
            Q = u.Q(null, this);
            return Q;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "it", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinct$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class e extends SuspendLambda implements Function2<Object, Continuation<Object>, Object> {

        /* renamed from: a */
        int f84963a;

        /* renamed from: b */
        /* synthetic */ Object f84964b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            e eVar = new e(continuation);
            eVar.f84964b = obj;
            return eVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(Object obj, @m8.h Continuation<Object> continuation) {
            return ((e) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f84963a == 0) {
                ResultKt.throwOnFailure(obj);
                return this.f84964b;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {149, 152}, m = "singleOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class e0<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f84965a;

        /* renamed from: b */
        Object f84966b;

        /* renamed from: c */
        /* synthetic */ Object f84967c;

        /* renamed from: d */
        int f84968d;

        e0(Continuation<? super e0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object R;
            this.f84967c = obj;
            this.f84968d |= Integer.MIN_VALUE;
            R = u.R(null, this);
            return R;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00000\u0002H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "K", "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$distinctBy$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {387, 388, 390}, m = "invokeSuspend", n = {"$this$produce", "keys", "$this$produce", "keys", "e", "$this$produce", "keys", "k"}, s = {"L$0", "L$1", "L$0", "L$1", "L$3", "L$0", "L$1", "L$3"})
    /* loaded from: classes4.dex */
    public static final class f extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super E>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f84969a;

        /* renamed from: b */
        Object f84970b;

        /* renamed from: c */
        Object f84971c;

        /* renamed from: d */
        int f84972d;

        /* renamed from: e */
        private /* synthetic */ Object f84973e;

        /* renamed from: f */
        final /* synthetic */ kotlinx.coroutines.channels.f0<E> f84974f;

        /* renamed from: g */
        final /* synthetic */ Function2<E, Continuation<? super K>, Object> f84975g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        f(kotlinx.coroutines.channels.f0<? extends E> f0Var, Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f84974f = f0Var;
            this.f84975g = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            f fVar = new f(this.f84974f, this.f84975g, continuation);
            fVar.f84973e = obj;
            return fVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super E> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x0082 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00b4  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00d2  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00d8  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x00c5 -> B:62:0x00cb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x00d2 -> B:46:0x0071). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r12) {
            /*
                Method dump skipped, instructions count: 219
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {254, 255}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "remaining"}, s = {"L$0", "I$0", "L$0", "I$0"})
    /* loaded from: classes4.dex */
    public static final class f0 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f84976a;

        /* renamed from: b */
        int f84977b;

        /* renamed from: c */
        int f84978c;

        /* renamed from: d */
        private /* synthetic */ Object f84979d;

        /* renamed from: e */
        final /* synthetic */ int f84980e;

        /* renamed from: f */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f84981f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f0(int i4, kotlinx.coroutines.channels.f0<Object> f0Var, Continuation<? super f0> continuation) {
            super(2, continuation);
            this.f84980e = i4;
            this.f84981f = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            f0 f0Var = new f0(this.f84980e, this.f84981f, continuation);
            f0Var.f84979d = obj;
            return f0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((f0) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:58:0x0060 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x006d  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0089  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0080 -> B:66:0x0082). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r9) {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r8.f84978c
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L36
                if (r1 == r3) goto L27
                if (r1 != r2) goto L1f
                int r1 = r8.f84977b
                java.lang.Object r4 = r8.f84976a
                kotlinx.coroutines.channels.o r4 = (kotlinx.coroutines.channels.o) r4
                java.lang.Object r5 = r8.f84979d
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r9)
                r9 = r5
                r5 = r8
                goto L82
            L1f:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L27:
                int r1 = r8.f84977b
                java.lang.Object r4 = r8.f84976a
                kotlinx.coroutines.channels.o r4 = (kotlinx.coroutines.channels.o) r4
                java.lang.Object r5 = r8.f84979d
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r9)
                r6 = r8
                goto L65
            L36:
                kotlin.ResultKt.throwOnFailure(r9)
                java.lang.Object r9 = r8.f84979d
                kotlinx.coroutines.channels.d0 r9 = (kotlinx.coroutines.channels.d0) r9
                int r1 = r8.f84980e
                if (r1 != 0) goto L44
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            L44:
                if (r1 < 0) goto L48
                r4 = 1
                goto L49
            L48:
                r4 = 0
            L49:
                if (r4 == 0) goto L8c
                kotlinx.coroutines.channels.f0<java.lang.Object> r4 = r8.f84981f
                kotlinx.coroutines.channels.o r4 = r4.iterator()
                r5 = r8
            L52:
                r5.f84979d = r9
                r5.f84976a = r4
                r5.f84977b = r1
                r5.f84978c = r3
                java.lang.Object r6 = r4.b(r5)
                if (r6 != r0) goto L61
                return r0
            L61:
                r7 = r5
                r5 = r9
                r9 = r6
                r6 = r7
            L65:
                java.lang.Boolean r9 = (java.lang.Boolean) r9
                boolean r9 = r9.booleanValue()
                if (r9 == 0) goto L89
                java.lang.Object r9 = r4.next()
                r6.f84979d = r5
                r6.f84976a = r4
                r6.f84977b = r1
                r6.f84978c = r2
                java.lang.Object r9 = r5.send(r9, r6)
                if (r9 != r0) goto L80
                return r0
            L80:
                r9 = r5
                r5 = r6
            L82:
                int r1 = r1 + (-1)
                if (r1 != 0) goto L52
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            L89:
                kotlin.Unit r9 = kotlin.Unit.INSTANCE
                return r9
            L8c:
                java.lang.StringBuilder r9 = new java.lang.StringBuilder
                r9.<init>()
                java.lang.String r0 = "Requested element count "
                r9.append(r0)
                r9.append(r1)
                java.lang.String r0 = " is less than zero."
                r9.append(r0)
                java.lang.String r9 = r9.toString()
                java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
                java.lang.String r9 = r9.toString()
                r0.<init>(r9)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.f0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {164, 169, 170}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
    /* loaded from: classes4.dex */
    public static final class g extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f84982a;

        /* renamed from: b */
        int f84983b;

        /* renamed from: c */
        int f84984c;

        /* renamed from: d */
        private /* synthetic */ Object f84985d;

        /* renamed from: e */
        final /* synthetic */ int f84986e;

        /* renamed from: f */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f84987f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(int i4, kotlinx.coroutines.channels.f0<Object> f0Var, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f84986e = i4;
            this.f84987f = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            g gVar = new g(this.f84986e, this.f84987f, continuation);
            gVar.f84985d = obj;
            return gVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:67:0x0076 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00ab A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x00ac  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x00b7  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x00ca  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:68:0x0077 -> B:69:0x007e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x00c8 -> B:78:0x009f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 237
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.g.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$takeWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {269, com.facebook.imagepipeline.common.e.f12206f, 271}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    /* loaded from: classes4.dex */
    public static final class g0 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f84988a;

        /* renamed from: b */
        Object f84989b;

        /* renamed from: c */
        int f84990c;

        /* renamed from: d */
        private /* synthetic */ Object f84991d;

        /* renamed from: e */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f84992e;

        /* renamed from: f */
        final /* synthetic */ Function2<Object, Continuation<? super Boolean>, Object> f84993f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public g0(kotlinx.coroutines.channels.f0<Object> f0Var, Function2<Object, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super g0> continuation) {
            super(2, continuation);
            this.f84992e = f0Var;
            this.f84993f = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            g0 g0Var = new g0(this.f84992e, this.f84993f, continuation);
            g0Var.f84991d = obj;
            return g0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((g0) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x0063 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0064  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00ac  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x00a7 -> B:48:0x0057). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f84990c
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L48
                if (r1 == r4) goto L38
                if (r1 == r3) goto L25
                if (r1 != r2) goto L1d
                java.lang.Object r1 = r9.f84988a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r9.f84991d
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r10)
                goto L56
            L1d:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L25:
                java.lang.Object r1 = r9.f84989b
                java.lang.Object r5 = r9.f84988a
                kotlinx.coroutines.channels.o r5 = (kotlinx.coroutines.channels.o) r5
                java.lang.Object r6 = r9.f84991d
                kotlinx.coroutines.channels.d0 r6 = (kotlinx.coroutines.channels.d0) r6
                kotlin.ResultKt.throwOnFailure(r10)
                r7 = r6
                r6 = r5
                r5 = r1
                r1 = r0
                r0 = r9
                goto L8c
            L38:
                java.lang.Object r1 = r9.f84988a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r9.f84991d
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r10)
                r6 = r5
                r5 = r1
                r1 = r0
                r0 = r9
                goto L6a
            L48:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.f84991d
                kotlinx.coroutines.channels.d0 r10 = (kotlinx.coroutines.channels.d0) r10
                kotlinx.coroutines.channels.f0<java.lang.Object> r1 = r9.f84992e
                kotlinx.coroutines.channels.o r1 = r1.iterator()
                r5 = r10
            L56:
                r10 = r9
            L57:
                r10.f84991d = r5
                r10.f84988a = r1
                r10.f84990c = r4
                java.lang.Object r6 = r1.b(r10)
                if (r6 != r0) goto L64
                return r0
            L64:
                r8 = r0
                r0 = r10
                r10 = r6
                r6 = r5
                r5 = r1
                r1 = r8
            L6a:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto Lac
                java.lang.Object r10 = r5.next()
                kotlin.jvm.functions.Function2<java.lang.Object, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r7 = r0.f84993f
                r0.f84991d = r6
                r0.f84988a = r5
                r0.f84989b = r10
                r0.f84990c = r3
                java.lang.Object r7 = r7.invoke(r10, r0)
                if (r7 != r1) goto L87
                return r1
            L87:
                r8 = r5
                r5 = r10
                r10 = r7
                r7 = r6
                r6 = r8
            L8c:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 != 0) goto L97
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            L97:
                r0.f84991d = r7
                r0.f84988a = r6
                r10 = 0
                r0.f84989b = r10
                r0.f84990c = r2
                java.lang.Object r10 = r7.send(r5, r0)
                if (r10 != r1) goto La7
                return r1
            La7:
                r10 = r0
                r0 = r1
                r1 = r6
                r5 = r7
                goto L57
            Lac:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.g0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$dropWhile$1", f = "Deprecated.kt", i = {0, 1, 1, 2, 3, 4}, l = {181, 182, 183, 187, 188}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$0"})
    /* loaded from: classes4.dex */
    public static final class h extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f84994a;

        /* renamed from: b */
        Object f84995b;

        /* renamed from: c */
        int f84996c;

        /* renamed from: d */
        private /* synthetic */ Object f84997d;

        /* renamed from: e */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f84998e;

        /* renamed from: f */
        final /* synthetic */ Function2<Object, Continuation<? super Boolean>, Object> f84999f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public h(kotlinx.coroutines.channels.f0<Object> f0Var, Function2<Object, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f84998e = f0Var;
            this.f84999f = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            h hVar = new h(this.f84998e, this.f84999f, continuation);
            hVar.f84997d = obj;
            return hVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((h) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x008d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x008e  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x009c  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x00e5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x0104  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x00b1 -> B:74:0x00b5). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x0102 -> B:82:0x00d9). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 263
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.h.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {487, 278}, m = "toChannel", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class h0<E, C extends kotlinx.coroutines.channels.j0<? super E>> extends ContinuationImpl {

        /* renamed from: a */
        Object f85000a;

        /* renamed from: b */
        Object f85001b;

        /* renamed from: c */
        Object f85002c;

        /* renamed from: d */
        /* synthetic */ Object f85003d;

        /* renamed from: e */
        int f85004e;

        h0(Continuation<? super h0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85003d = obj;
            this.f85004e |= Integer.MIN_VALUE;
            return kotlinx.coroutines.channels.r.e0(null, null, this);
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {38}, m = "elementAt", n = {"$this$consume$iv", "index", "count"}, s = {"L$0", "I$0", "I$1"})
    /* loaded from: classes4.dex */
    public static final class i<E> extends ContinuationImpl {

        /* renamed from: a */
        int f85005a;

        /* renamed from: b */
        int f85006b;

        /* renamed from: c */
        Object f85007c;

        /* renamed from: d */
        Object f85008d;

        /* renamed from: e */
        /* synthetic */ Object f85009e;

        /* renamed from: f */
        int f85010f;

        i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object l10;
            this.f85009e = obj;
            this.f85010f |= Integer.MIN_VALUE;
            l10 = u.l(null, 0, this);
            return l10;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "toCollection", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class i0<E, C extends Collection<? super E>> extends ContinuationImpl {

        /* renamed from: a */
        Object f85011a;

        /* renamed from: b */
        Object f85012b;

        /* renamed from: c */
        Object f85013c;

        /* renamed from: d */
        /* synthetic */ Object f85014d;

        /* renamed from: e */
        int f85015e;

        i0(Continuation<? super i0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85014d = obj;
            this.f85015e |= Integer.MIN_VALUE;
            return kotlinx.coroutines.channels.r.f0(null, null, this);
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {53}, m = "elementAtOrNull", n = {"$this$consume$iv", "index", "count"}, s = {"L$0", "I$0", "I$1"})
    /* loaded from: classes4.dex */
    public static final class j<E> extends ContinuationImpl {

        /* renamed from: a */
        int f85016a;

        /* renamed from: b */
        int f85017b;

        /* renamed from: c */
        Object f85018c;

        /* renamed from: d */
        Object f85019d;

        /* renamed from: e */
        /* synthetic */ Object f85020e;

        /* renamed from: f */
        int f85021f;

        j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object m9;
            this.f85020e = obj;
            this.f85021f |= Integer.MIN_VALUE;
            m9 = u.m(null, 0, this);
            return m9;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "toMap", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class j0<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {

        /* renamed from: a */
        Object f85022a;

        /* renamed from: b */
        Object f85023b;

        /* renamed from: c */
        Object f85024c;

        /* renamed from: d */
        /* synthetic */ Object f85025d;

        /* renamed from: e */
        int f85026e;

        j0(Continuation<? super j0> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85025d = obj;
            this.f85026e |= Integer.MIN_VALUE;
            return kotlinx.coroutines.channels.r.h0(null, null, this);
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filter$1", f = "Deprecated.kt", i = {0, 1, 1, 2}, l = {198, 199, 199}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "e", "$this$produce"}, s = {"L$0", "L$0", "L$2", "L$0"})
    /* loaded from: classes4.dex */
    public static final class k extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super E>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85027a;

        /* renamed from: b */
        Object f85028b;

        /* renamed from: c */
        int f85029c;

        /* renamed from: d */
        private /* synthetic */ Object f85030d;

        /* renamed from: e */
        final /* synthetic */ kotlinx.coroutines.channels.f0<E> f85031e;

        /* renamed from: f */
        final /* synthetic */ Function2<E, Continuation<? super Boolean>, Object> f85032f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        k(kotlinx.coroutines.channels.f0<? extends E> f0Var, Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f85031e = f0Var;
            this.f85032f = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            k kVar = new k(this.f85031e, this.f85032f, continuation);
            kVar.f85030d = obj;
            return kVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super E> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((k) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x0065 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0095  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00a9  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x00a4 -> B:46:0x0057). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.f85029c
                r2 = 0
                r3 = 3
                r4 = 2
                r5 = 1
                if (r1 == 0) goto L48
                if (r1 == r5) goto L38
                if (r1 == r4) goto L26
                if (r1 != r3) goto L1e
                java.lang.Object r1 = r10.f85027a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r6 = r10.f85030d
                kotlinx.coroutines.channels.d0 r6 = (kotlinx.coroutines.channels.d0) r6
                kotlin.ResultKt.throwOnFailure(r11)
                goto L56
            L1e:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L26:
                java.lang.Object r1 = r10.f85028b
                java.lang.Object r6 = r10.f85027a
                kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
                java.lang.Object r7 = r10.f85030d
                kotlinx.coroutines.channels.d0 r7 = (kotlinx.coroutines.channels.d0) r7
                kotlin.ResultKt.throwOnFailure(r11)
                r8 = r7
                r7 = r1
                r1 = r0
                r0 = r10
                goto L8d
            L38:
                java.lang.Object r1 = r10.f85027a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r6 = r10.f85030d
                kotlinx.coroutines.channels.d0 r6 = (kotlinx.coroutines.channels.d0) r6
                kotlin.ResultKt.throwOnFailure(r11)
                r7 = r6
                r6 = r1
                r1 = r0
                r0 = r10
                goto L6c
            L48:
                kotlin.ResultKt.throwOnFailure(r11)
                java.lang.Object r11 = r10.f85030d
                kotlinx.coroutines.channels.d0 r11 = (kotlinx.coroutines.channels.d0) r11
                kotlinx.coroutines.channels.f0<E> r1 = r10.f85031e
                kotlinx.coroutines.channels.o r1 = r1.iterator()
                r6 = r11
            L56:
                r11 = r10
            L57:
                r11.f85030d = r6
                r11.f85027a = r1
                r11.f85028b = r2
                r11.f85029c = r5
                java.lang.Object r7 = r1.b(r11)
                if (r7 != r0) goto L66
                return r0
            L66:
                r9 = r0
                r0 = r11
                r11 = r7
                r7 = r6
                r6 = r1
                r1 = r9
            L6c:
                java.lang.Boolean r11 = (java.lang.Boolean) r11
                boolean r11 = r11.booleanValue()
                if (r11 == 0) goto La9
                java.lang.Object r11 = r6.next()
                kotlin.jvm.functions.Function2<E, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r8 = r0.f85032f
                r0.f85030d = r7
                r0.f85027a = r6
                r0.f85028b = r11
                r0.f85029c = r4
                java.lang.Object r8 = r8.invoke(r11, r0)
                if (r8 != r1) goto L89
                return r1
            L89:
                r9 = r7
                r7 = r11
                r11 = r8
                r8 = r9
            L8d:
                java.lang.Boolean r11 = (java.lang.Boolean) r11
                boolean r11 = r11.booleanValue()
                if (r11 == 0) goto La4
                r0.f85030d = r8
                r0.f85027a = r6
                r0.f85028b = r2
                r0.f85029c = r3
                java.lang.Object r11 = r8.send(r7, r0)
                if (r11 != r1) goto La4
                return r1
            La4:
                r11 = r0
                r0 = r1
                r1 = r6
                r6 = r8
                goto L57
            La9:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.k.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00020\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "Lkotlin/collections/IndexedValue;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$withIndex$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {370, 371}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0"})
    /* loaded from: classes4.dex */
    public static final class k0 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super IndexedValue<Object>>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85033a;

        /* renamed from: b */
        int f85034b;

        /* renamed from: c */
        int f85035c;

        /* renamed from: d */
        private /* synthetic */ Object f85036d;

        /* renamed from: e */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f85037e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k0(kotlinx.coroutines.channels.f0<Object> f0Var, Continuation<? super k0> continuation) {
            super(2, continuation);
            this.f85037e = f0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            k0 k0Var = new k0(this.f85037e, continuation);
            k0Var.f85036d = obj;
            return k0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super IndexedValue<Object>> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((k0) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:38:0x0051 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:42:0x005e  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x007c  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x0078 -> B:36:0x0043). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r10.f85035c
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L34
                if (r1 == r3) goto L25
                if (r1 != r2) goto L1d
                int r1 = r10.f85034b
                java.lang.Object r4 = r10.f85033a
                kotlinx.coroutines.channels.o r4 = (kotlinx.coroutines.channels.o) r4
                java.lang.Object r5 = r10.f85036d
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r11)
                r11 = r5
                goto L42
            L1d:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L25:
                int r1 = r10.f85034b
                java.lang.Object r4 = r10.f85033a
                kotlinx.coroutines.channels.o r4 = (kotlinx.coroutines.channels.o) r4
                java.lang.Object r5 = r10.f85036d
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r11)
                r6 = r10
                goto L56
            L34:
                kotlin.ResultKt.throwOnFailure(r11)
                java.lang.Object r11 = r10.f85036d
                kotlinx.coroutines.channels.d0 r11 = (kotlinx.coroutines.channels.d0) r11
                r1 = 0
                kotlinx.coroutines.channels.f0<java.lang.Object> r4 = r10.f85037e
                kotlinx.coroutines.channels.o r4 = r4.iterator()
            L42:
                r5 = r10
            L43:
                r5.f85036d = r11
                r5.f85033a = r4
                r5.f85034b = r1
                r5.f85035c = r3
                java.lang.Object r6 = r4.b(r5)
                if (r6 != r0) goto L52
                return r0
            L52:
                r9 = r5
                r5 = r11
                r11 = r6
                r6 = r9
            L56:
                java.lang.Boolean r11 = (java.lang.Boolean) r11
                boolean r11 = r11.booleanValue()
                if (r11 == 0) goto L7c
                java.lang.Object r11 = r4.next()
                kotlin.collections.IndexedValue r7 = new kotlin.collections.IndexedValue
                int r8 = r1 + 1
                r7.<init>(r1, r11)
                r6.f85036d = r5
                r6.f85033a = r4
                r6.f85034b = r8
                r6.f85035c = r2
                java.lang.Object r11 = r5.send(r7, r6)
                if (r11 != r0) goto L78
                return r0
            L78:
                r11 = r5
                r5 = r6
                r1 = r8
                goto L43
            L7c:
                kotlin.Unit r11 = kotlin.Unit.INSTANCE
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.k0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {Primes.SMALL_FACTOR_LIMIT, 212, 212}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "e", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
    /* loaded from: classes4.dex */
    public static final class l extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85038a;

        /* renamed from: b */
        Object f85039b;

        /* renamed from: c */
        int f85040c;

        /* renamed from: d */
        int f85041d;

        /* renamed from: e */
        private /* synthetic */ Object f85042e;

        /* renamed from: f */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f85043f;

        /* renamed from: g */
        final /* synthetic */ Function3<Integer, Object, Continuation<? super Boolean>, Object> f85044g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public l(kotlinx.coroutines.channels.f0<Object> f0Var, Function3<? super Integer, Object, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super l> continuation) {
            super(2, continuation);
            this.f85043f = f0Var;
            this.f85044g = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            l lVar = new l(this.f85043f, this.f85044g, continuation);
            lVar.f85042e = obj;
            return lVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((l) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:50:0x0072 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x00ab  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00c1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x00bc -> B:48:0x0062). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 196
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.l.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u00022\u0006\u0010\u0005\u001a\u0002H\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", "Lkotlin/Pair;", ExifInterface.LONGITUDE_EAST, "R", "t1", "t2", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class l0 extends Lambda implements Function2<Object, Object, Pair<Object, Object>> {

        /* renamed from: a */
        public static final l0 f85045a = new l0();

        l0() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.g
        public final Pair<Object, Object> invoke(Object obj, Object obj2) {
            return TuplesKt.to(obj, obj2);
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNot$1", f = "Deprecated.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class m extends SuspendLambda implements Function2<Object, Continuation<? super Boolean>, Object> {

        /* renamed from: a */
        int f85046a;

        /* renamed from: b */
        /* synthetic */ Object f85047b;

        /* renamed from: c */
        final /* synthetic */ Function2<Object, Continuation<? super Boolean>, Object> f85048c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public m(Function2<Object, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super m> continuation) {
            super(2, continuation);
            this.f85048c = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            m mVar = new m(this.f85048c, continuation);
            mVar.f85047b = obj;
            return mVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(Object obj, @m8.h Continuation<? super Boolean> continuation) {
            return ((m) create(obj, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85046a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.f85047b;
                Function2<Object, Continuation<? super Boolean>, Object> function2 = this.f85048c;
                this.f85046a = 1;
                obj = function2.invoke(obj2, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Boxing.boxBoolean(!((Boolean) obj).booleanValue());
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$zip$2", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1, 2, 2, 2}, l = {487, 469, 471}, m = "invokeSuspend", n = {"$this$produce", "otherIterator", "$this$consume$iv$iv", "$this$produce", "otherIterator", "$this$consume$iv$iv", "element1", "$this$produce", "otherIterator", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$3", "L$0", "L$1", "L$3", "L$5", "L$0", "L$1", "L$3"})
    /* loaded from: classes4.dex */
    public static final class m0 extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super V>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85049a;

        /* renamed from: b */
        Object f85050b;

        /* renamed from: c */
        Object f85051c;

        /* renamed from: d */
        Object f85052d;

        /* renamed from: e */
        Object f85053e;

        /* renamed from: f */
        int f85054f;

        /* renamed from: g */
        private /* synthetic */ Object f85055g;

        /* renamed from: h */
        final /* synthetic */ kotlinx.coroutines.channels.f0<R> f85056h;

        /* renamed from: i */
        final /* synthetic */ kotlinx.coroutines.channels.f0<E> f85057i;

        /* renamed from: j */
        final /* synthetic */ Function2<E, R, V> f85058j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        m0(kotlinx.coroutines.channels.f0<? extends R> f0Var, kotlinx.coroutines.channels.f0<? extends E> f0Var2, Function2<? super E, ? super R, ? extends V> function2, Continuation<? super m0> continuation) {
            super(2, continuation);
            this.f85056h = f0Var;
            this.f85057i = f0Var2;
            this.f85058j = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            m0 m0Var = new m0(this.f85056h, this.f85057i, this.f85058j, continuation);
            m0Var.f85055g = obj;
            return m0Var;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super V> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((m0) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:84:0x00b9 A[Catch: all -> 0x0056, TRY_LEAVE, TryCatch #2 {all -> 0x0056, blocks: (B:82:0x00b1, B:84:0x00b9, B:96:0x0109, B:69:0x004a), top: B:108:0x004a }] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x00e9 A[Catch: all -> 0x0106, TRY_LEAVE, TryCatch #1 {all -> 0x0106, blocks: (B:88:0x00d9, B:91:0x00e9), top: B:106:0x00d9 }] */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0109 A[Catch: all -> 0x0056, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0056, blocks: (B:82:0x00b1, B:84:0x00b9, B:96:0x0109, B:69:0x004a), top: B:108:0x004a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x00e1 -> B:78:0x0093). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r14) {
            /*
                Method dump skipped, instructions count: 278
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.m0.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\u0010\u0002\u001a\u0004\u0018\u00018\u0000H\u008a@"}, d2 = {"", ExifInterface.LONGITUDE_EAST, "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterNotNull$1", f = "Deprecated.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class n extends SuspendLambda implements Function2<E, Continuation<? super Boolean>, Object> {

        /* renamed from: a */
        int f85059a;

        /* renamed from: b */
        /* synthetic */ Object f85060b;

        n(Continuation<? super n> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            n nVar = new n(continuation);
            nVar.f85060b = obj;
            return nVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Boolean> continuation) {
            return invoke2((n) obj, continuation);
        }

        @m8.h
        /* renamed from: invoke */
        public final Object invoke2(@m8.h E e4, @m8.h Continuation<? super Boolean> continuation) {
            return ((n) create(e4, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f85059a == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(this.f85060b != null);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {487}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class o<E, C extends Collection<? super E>> extends ContinuationImpl {

        /* renamed from: a */
        Object f85061a;

        /* renamed from: b */
        Object f85062b;

        /* renamed from: c */
        Object f85063c;

        /* renamed from: d */
        /* synthetic */ Object f85064d;

        /* renamed from: e */
        int f85065e;

        o(Continuation<? super o> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object u9;
            this.f85064d = obj;
            this.f85065e |= Integer.MIN_VALUE;
            u9 = u.u(null, null, this);
            return u9;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {487, 242}, m = "filterNotNullTo", n = {"destination", "$this$consume$iv$iv", "destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class p<E, C extends kotlinx.coroutines.channels.j0<? super E>> extends ContinuationImpl {

        /* renamed from: a */
        Object f85066a;

        /* renamed from: b */
        Object f85067b;

        /* renamed from: c */
        Object f85068c;

        /* renamed from: d */
        /* synthetic */ Object f85069d;

        /* renamed from: e */
        int f85070e;

        p(Continuation<? super p> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object v9;
            this.f85069d = obj;
            this.f85070e |= Integer.MIN_VALUE;
            v9 = u.v(null, null, this);
            return v9;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {65}, m = "first", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class q<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85071a;

        /* renamed from: b */
        Object f85072b;

        /* renamed from: c */
        /* synthetic */ Object f85073c;

        /* renamed from: d */
        int f85074d;

        q(Continuation<? super q> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object w9;
            this.f85073c = obj;
            this.f85074d |= Integer.MIN_VALUE;
            w9 = u.w(null, this);
            return w9;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {75}, m = "firstOrNull", n = {"$this$consume$iv", "iterator"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class r<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85075a;

        /* renamed from: b */
        Object f85076b;

        /* renamed from: c */
        /* synthetic */ Object f85077c;

        /* renamed from: d */
        int f85078d;

        r(Continuation<? super r> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object x9;
            this.f85077c = obj;
            this.f85078d |= Integer.MIN_VALUE;
            x9 = u.x(null, this);
            return x9;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$flatMap$1", f = "Deprecated.kt", i = {0, 1, 2}, l = {321, 322, 322}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
    /* loaded from: classes4.dex */
    public static final class s extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<Object>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85079a;

        /* renamed from: b */
        int f85080b;

        /* renamed from: c */
        private /* synthetic */ Object f85081c;

        /* renamed from: d */
        final /* synthetic */ kotlinx.coroutines.channels.f0<Object> f85082d;

        /* renamed from: e */
        final /* synthetic */ Function2<Object, Continuation<? super kotlinx.coroutines.channels.f0<Object>>, Object> f85083e;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public s(kotlinx.coroutines.channels.f0<Object> f0Var, Function2<Object, ? super Continuation<? super kotlinx.coroutines.channels.f0<Object>>, ? extends Object> function2, Continuation<? super s> continuation) {
            super(2, continuation);
            this.f85082d = f0Var;
            this.f85083e = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            s sVar = new s(this.f85082d, this.f85083e, continuation);
            sVar.f85081c = obj;
            return sVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<Object> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((s) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x0060 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0090 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0096  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0091 -> B:43:0x0054). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f85080b
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L45
                if (r1 == r4) goto L35
                if (r1 == r3) goto L25
                if (r1 != r2) goto L1d
                java.lang.Object r1 = r9.f85079a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r9.f85081c
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r10)
                goto L53
            L1d:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L25:
                java.lang.Object r1 = r9.f85079a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r9.f85081c
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r10)
                r6 = r5
                r5 = r1
                r1 = r0
                r0 = r9
                goto L82
            L35:
                java.lang.Object r1 = r9.f85079a
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r9.f85081c
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                kotlin.ResultKt.throwOnFailure(r10)
                r6 = r5
                r5 = r1
                r1 = r0
                r0 = r9
                goto L67
            L45:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.f85081c
                kotlinx.coroutines.channels.d0 r10 = (kotlinx.coroutines.channels.d0) r10
                kotlinx.coroutines.channels.f0<java.lang.Object> r1 = r9.f85082d
                kotlinx.coroutines.channels.o r1 = r1.iterator()
                r5 = r10
            L53:
                r10 = r9
            L54:
                r10.f85081c = r5
                r10.f85079a = r1
                r10.f85080b = r4
                java.lang.Object r6 = r1.b(r10)
                if (r6 != r0) goto L61
                return r0
            L61:
                r8 = r0
                r0 = r10
                r10 = r6
                r6 = r5
                r5 = r1
                r1 = r8
            L67:
                java.lang.Boolean r10 = (java.lang.Boolean) r10
                boolean r10 = r10.booleanValue()
                if (r10 == 0) goto L96
                java.lang.Object r10 = r5.next()
                kotlin.jvm.functions.Function2<java.lang.Object, kotlin.coroutines.Continuation<? super kotlinx.coroutines.channels.f0<java.lang.Object>>, java.lang.Object> r7 = r0.f85083e
                r0.f85081c = r6
                r0.f85079a = r5
                r0.f85080b = r3
                java.lang.Object r10 = r7.invoke(r10, r0)
                if (r10 != r1) goto L82
                return r1
            L82:
                kotlinx.coroutines.channels.f0 r10 = (kotlinx.coroutines.channels.f0) r10
                r0.f85081c = r6
                r0.f85079a = r5
                r0.f85080b = r2
                java.lang.Object r10 = kotlinx.coroutines.channels.r.e0(r10, r6, r0)
                if (r10 != r1) goto L91
                return r1
            L91:
                r10 = r0
                r0 = r1
                r1 = r5
                r5 = r6
                goto L54
            L96:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.s.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {487}, m = "indexOf", n = {"element", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
    /* loaded from: classes4.dex */
    public static final class t<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85084a;

        /* renamed from: b */
        Object f85085b;

        /* renamed from: c */
        Object f85086c;

        /* renamed from: d */
        Object f85087d;

        /* renamed from: e */
        /* synthetic */ Object f85088e;

        /* renamed from: f */
        int f85089f;

        t(Continuation<? super t> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object A;
            this.f85088e = obj;
            this.f85089f |= Integer.MIN_VALUE;
            A = u.A(null, null, this);
            return A;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {97, 100}, m = "last", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    /* renamed from: kotlinx.coroutines.channels.u$u */
    /* loaded from: classes4.dex */
    public static final class C0729u<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85090a;

        /* renamed from: b */
        Object f85091b;

        /* renamed from: c */
        Object f85092c;

        /* renamed from: d */
        /* synthetic */ Object f85093d;

        /* renamed from: e */
        int f85094e;

        C0729u(Continuation<? super C0729u> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object B;
            this.f85093d = obj;
            this.f85094e |= Integer.MIN_VALUE;
            B = u.B(null, this);
            return B;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {487}, m = "lastIndexOf", n = {"element", "lastIndex", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes4.dex */
    public static final class v<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85095a;

        /* renamed from: b */
        Object f85096b;

        /* renamed from: c */
        Object f85097c;

        /* renamed from: d */
        Object f85098d;

        /* renamed from: e */
        Object f85099e;

        /* renamed from: f */
        /* synthetic */ Object f85100f;

        /* renamed from: g */
        int f85101g;

        v(Continuation<? super v> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object C;
            this.f85100f = obj;
            this.f85101g |= Integer.MIN_VALUE;
            C = u.C(null, null, this);
            return C;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {123, 126}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
    /* loaded from: classes4.dex */
    public static final class w<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85102a;

        /* renamed from: b */
        Object f85103b;

        /* renamed from: c */
        Object f85104c;

        /* renamed from: d */
        /* synthetic */ Object f85105d;

        /* renamed from: e */
        int f85106e;

        w(Continuation<? super w> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object D;
            this.f85105d = obj;
            this.f85106e |= Integer.MIN_VALUE;
            D = u.D(null, this);
            return D;
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$map$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {487, 333, 333}, m = "invokeSuspend", n = {"$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv", "$this$produce", "$this$consume$iv$iv"}, s = {"L$0", "L$2", "L$0", "L$2", "L$0", "L$2"})
    /* loaded from: classes4.dex */
    public static final class x extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super R>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85107a;

        /* renamed from: b */
        Object f85108b;

        /* renamed from: c */
        Object f85109c;

        /* renamed from: d */
        Object f85110d;

        /* renamed from: e */
        int f85111e;

        /* renamed from: f */
        private /* synthetic */ Object f85112f;

        /* renamed from: g */
        final /* synthetic */ kotlinx.coroutines.channels.f0<E> f85113g;

        /* renamed from: h */
        final /* synthetic */ Function2<E, Continuation<? super R>, Object> f85114h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        x(kotlinx.coroutines.channels.f0<? extends E> f0Var, Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super x> continuation) {
            super(2, continuation);
            this.f85113g = f0Var;
            this.f85114h = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            x xVar = new x(this.f85113g, this.f85114h, continuation);
            xVar.f85112f = obj;
            return xVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super R> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((x) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:78:0x0093 A[Catch: all -> 0x00cf, TRY_LEAVE, TryCatch #2 {all -> 0x00cf, blocks: (B:58:0x0022, B:72:0x0076, B:76:0x008b, B:78:0x0093, B:86:0x00c9, B:68:0x005e, B:71:0x006e), top: B:98:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x00c2 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x00c9 A[Catch: all -> 0x00cf, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x00cf, blocks: (B:58:0x0022, B:72:0x0076, B:76:0x008b, B:78:0x0093, B:86:0x00c9, B:68:0x005e, B:71:0x006e), top: B:98:0x000a }] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x00c3 -> B:72:0x0076). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 214
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.x.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.LONGITUDE_EAST, "R", "Lkotlinx/coroutines/channels/d0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$mapIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 2, 2}, l = {344, 345, 345}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "I$0", "L$0", "I$0"})
    /* loaded from: classes4.dex */
    public static final class y extends SuspendLambda implements Function2<kotlinx.coroutines.channels.d0<? super R>, Continuation<? super Unit>, Object> {

        /* renamed from: a */
        Object f85115a;

        /* renamed from: b */
        Object f85116b;

        /* renamed from: c */
        int f85117c;

        /* renamed from: d */
        int f85118d;

        /* renamed from: e */
        private /* synthetic */ Object f85119e;

        /* renamed from: f */
        final /* synthetic */ kotlinx.coroutines.channels.f0<E> f85120f;

        /* renamed from: g */
        final /* synthetic */ Function3<Integer, E, Continuation<? super R>, Object> f85121g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        y(kotlinx.coroutines.channels.f0<? extends E> f0Var, Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super y> continuation) {
            super(2, continuation);
            this.f85120f = f0Var;
            this.f85121g = function3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            y yVar = new y(this.f85120f, this.f85121g, continuation);
            yVar.f85119e = obj;
            return yVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.channels.d0<? super R> d0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((y) create(d0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x0067 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0068  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00a7 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:57:0x00a8  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00ac  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00a8 -> B:44:0x0059). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r12) {
            /*
                r11 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r11.f85118d
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L4a
                if (r1 == r4) goto L3b
                if (r1 == r3) goto L28
                if (r1 != r2) goto L20
                int r1 = r11.f85117c
                java.lang.Object r5 = r11.f85115a
                kotlinx.coroutines.channels.o r5 = (kotlinx.coroutines.channels.o) r5
                java.lang.Object r6 = r11.f85119e
                kotlinx.coroutines.channels.d0 r6 = (kotlinx.coroutines.channels.d0) r6
                kotlin.ResultKt.throwOnFailure(r12)
                r12 = r6
                goto L58
            L20:
                java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r12.<init>(r0)
                throw r12
            L28:
                int r1 = r11.f85117c
                java.lang.Object r5 = r11.f85116b
                kotlinx.coroutines.channels.d0 r5 = (kotlinx.coroutines.channels.d0) r5
                java.lang.Object r6 = r11.f85115a
                kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
                java.lang.Object r7 = r11.f85119e
                kotlinx.coroutines.channels.d0 r7 = (kotlinx.coroutines.channels.d0) r7
                kotlin.ResultKt.throwOnFailure(r12)
                r8 = r11
                goto L96
            L3b:
                int r1 = r11.f85117c
                java.lang.Object r5 = r11.f85115a
                kotlinx.coroutines.channels.o r5 = (kotlinx.coroutines.channels.o) r5
                java.lang.Object r6 = r11.f85119e
                kotlinx.coroutines.channels.d0 r6 = (kotlinx.coroutines.channels.d0) r6
                kotlin.ResultKt.throwOnFailure(r12)
                r7 = r11
                goto L6c
            L4a:
                kotlin.ResultKt.throwOnFailure(r12)
                java.lang.Object r12 = r11.f85119e
                kotlinx.coroutines.channels.d0 r12 = (kotlinx.coroutines.channels.d0) r12
                r1 = 0
                kotlinx.coroutines.channels.f0<E> r5 = r11.f85120f
                kotlinx.coroutines.channels.o r5 = r5.iterator()
            L58:
                r6 = r11
            L59:
                r6.f85119e = r12
                r6.f85115a = r5
                r6.f85117c = r1
                r6.f85118d = r4
                java.lang.Object r7 = r5.b(r6)
                if (r7 != r0) goto L68
                return r0
            L68:
                r10 = r6
                r6 = r12
                r12 = r7
                r7 = r10
            L6c:
                java.lang.Boolean r12 = (java.lang.Boolean) r12
                boolean r12 = r12.booleanValue()
                if (r12 == 0) goto Lac
                java.lang.Object r12 = r5.next()
                kotlin.jvm.functions.Function3<java.lang.Integer, E, kotlin.coroutines.Continuation<? super R>, java.lang.Object> r8 = r7.f85121g
                int r9 = r1 + 1
                java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
                r7.f85119e = r6
                r7.f85115a = r5
                r7.f85116b = r6
                r7.f85117c = r9
                r7.f85118d = r3
                java.lang.Object r12 = r8.invoke(r1, r12, r7)
                if (r12 != r0) goto L91
                return r0
            L91:
                r8 = r7
                r1 = r9
                r7 = r6
                r6 = r5
                r5 = r7
            L96:
                r8.f85119e = r7
                r8.f85115a = r6
                r9 = 0
                r8.f85116b = r9
                r8.f85117c = r1
                r8.f85118d = r2
                java.lang.Object r12 = r5.send(r12, r8)
                if (r12 != r0) goto La8
                return r0
            La8:
                r5 = r6
                r12 = r7
                r6 = r8
                goto L59
            Lac:
                kotlin.Unit r12 = kotlin.Unit.INSTANCE
                return r12
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.y.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: Deprecated.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {TypedValues.Cycle.TYPE_EASING, TypedValues.Cycle.TYPE_CUSTOM_WAVE_SHAPE}, m = "maxWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "max"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
    /* loaded from: classes4.dex */
    public static final class z<E> extends ContinuationImpl {

        /* renamed from: a */
        Object f85122a;

        /* renamed from: b */
        Object f85123b;

        /* renamed from: c */
        Object f85124c;

        /* renamed from: d */
        Object f85125d;

        /* renamed from: e */
        /* synthetic */ Object f85126e;

        /* renamed from: f */
        int f85127f;

        z(Continuation<? super z> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object M;
            this.f85126e = obj;
            this.f85127f |= Integer.MIN_VALUE;
            M = u.M(null, null, this);
            return M;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0070 A[Catch: all -> 0x0037, TryCatch #1 {all -> 0x0037, blocks: (B:59:0x0033, B:72:0x0067, B:74:0x0070, B:76:0x007a, B:79:0x0084, B:68:0x0053, B:80:0x008b), top: B:91:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x008b A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #1 {all -> 0x0037, blocks: (B:59:0x0033, B:72:0x0067, B:74:0x0070, B:76:0x007a, B:79:0x0084, B:68:0x0053, B:80:0x008b), top: B:91:0x0033 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0064 -> B:72:0x0067). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object A(kotlinx.coroutines.channels.f0 r7, java.lang.Object r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.channels.u.t
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.channels.u$t r0 = (kotlinx.coroutines.channels.u.t) r0
            int r1 = r0.f85089f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85089f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$t r0 = new kotlinx.coroutines.channels.u$t
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f85088e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85089f
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            java.lang.Object r7 = r0.f85087d
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r8 = r0.f85086c
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r2 = r0.f85085b
            kotlin.jvm.internal.Ref$IntRef r2 = (kotlin.jvm.internal.Ref.IntRef) r2
            java.lang.Object r4 = r0.f85084a
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L37
            goto L67
        L37:
            r7 = move-exception
            goto L9a
        L3a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L42:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$IntRef r9 = new kotlin.jvm.internal.Ref$IntRef
            r9.<init>()
            kotlinx.coroutines.channels.o r2 = r7.iterator()     // Catch: java.lang.Throwable -> L96
            r6 = r8
            r8 = r7
            r7 = r2
            r2 = r9
            r9 = r6
        L53:
            r0.f85084a = r9     // Catch: java.lang.Throwable -> L37
            r0.f85085b = r2     // Catch: java.lang.Throwable -> L37
            r0.f85086c = r8     // Catch: java.lang.Throwable -> L37
            r0.f85087d = r7     // Catch: java.lang.Throwable -> L37
            r0.f85089f = r3     // Catch: java.lang.Throwable -> L37
            java.lang.Object r4 = r7.b(r0)     // Catch: java.lang.Throwable -> L37
            if (r4 != r1) goto L64
            return r1
        L64:
            r6 = r4
            r4 = r9
            r9 = r6
        L67:
            r5 = 0
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L37
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L37
            if (r9 == 0) goto L8b
            java.lang.Object r9 = r7.next()     // Catch: java.lang.Throwable -> L37
            boolean r9 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r9)     // Catch: java.lang.Throwable -> L37
            if (r9 == 0) goto L84
            int r7 = r2.element     // Catch: java.lang.Throwable -> L37
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)     // Catch: java.lang.Throwable -> L37
            kotlinx.coroutines.channels.r.b(r8, r5)
            return r7
        L84:
            int r9 = r2.element     // Catch: java.lang.Throwable -> L37
            int r9 = r9 + r3
            r2.element = r9     // Catch: java.lang.Throwable -> L37
            r9 = r4
            goto L53
        L8b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L37
            kotlinx.coroutines.channels.r.b(r8, r5)
            r7 = -1
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        L96:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L9a:
            throw r7     // Catch: java.lang.Throwable -> L9b
        L9b:
            r9 = move-exception
            kotlinx.coroutines.channels.r.b(r8, r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.A(kotlinx.coroutines.channels.f0, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x009d A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #3 {all -> 0x004e, blocks: (B:79:0x004a, B:88:0x0068, B:90:0x0070, B:103:0x009d, B:104:0x00a4), top: B:117:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0070 A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #3 {all -> 0x004e, blocks: (B:79:0x004a, B:88:0x0068, B:90:0x0070, B:103:0x009d, B:104:0x00a4), top: B:117:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0085 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0093 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #1 {all -> 0x0036, blocks: (B:72:0x0032, B:97:0x008b, B:99:0x0093), top: B:113:0x0032 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x0086 -> B:96:0x008a). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object B(kotlinx.coroutines.channels.f0 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.C0729u
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$u r0 = (kotlinx.coroutines.channels.u.C0729u) r0
            int r1 = r0.f85094e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85094e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$u r0 = new kotlinx.coroutines.channels.u$u
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f85093d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85094e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L50
            if (r2 == r4) goto L42
            if (r2 != r3) goto L3a
            java.lang.Object r7 = r0.f85092c
            java.lang.Object r2 = r0.f85091b
            kotlinx.coroutines.channels.o r2 = (kotlinx.coroutines.channels.o) r2
            java.lang.Object r4 = r0.f85090a
            kotlinx.coroutines.channels.f0 r4 = (kotlinx.coroutines.channels.f0) r4
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L36
            goto L8a
        L36:
            r7 = move-exception
            r2 = r4
            goto La8
        L3a:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L42:
            java.lang.Object r7 = r0.f85091b
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r2 = r0.f85090a
            kotlinx.coroutines.channels.f0 r2 = (kotlinx.coroutines.channels.f0) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L4e
            goto L68
        L4e:
            r7 = move-exception
            goto La8
        L50:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r7.iterator()     // Catch: java.lang.Throwable -> La5
            r0.f85090a = r7     // Catch: java.lang.Throwable -> La5
            r0.f85091b = r8     // Catch: java.lang.Throwable -> La5
            r0.f85094e = r4     // Catch: java.lang.Throwable -> La5
            java.lang.Object r2 = r8.b(r0)     // Catch: java.lang.Throwable -> La5
            if (r2 != r1) goto L64
            return r1
        L64:
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L68:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L4e
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L4e
            if (r8 == 0) goto L9d
            java.lang.Object r8 = r7.next()     // Catch: java.lang.Throwable -> L4e
            r6 = r2
            r2 = r7
            r7 = r6
        L77:
            r0.f85090a = r7     // Catch: java.lang.Throwable -> La5
            r0.f85091b = r2     // Catch: java.lang.Throwable -> La5
            r0.f85092c = r8     // Catch: java.lang.Throwable -> La5
            r0.f85094e = r3     // Catch: java.lang.Throwable -> La5
            java.lang.Object r4 = r2.b(r0)     // Catch: java.lang.Throwable -> La5
            if (r4 != r1) goto L86
            return r1
        L86:
            r6 = r4
            r4 = r7
            r7 = r8
            r8 = r6
        L8a:
            r5 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L36
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L36
            if (r8 == 0) goto L99
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L36
            r7 = r4
            goto L77
        L99:
            kotlinx.coroutines.channels.r.b(r4, r5)
            return r7
        L9d:
            java.util.NoSuchElementException r7 = new java.util.NoSuchElementException     // Catch: java.lang.Throwable -> L4e
            java.lang.String r8 = "ReceiveChannel is empty."
            r7.<init>(r8)     // Catch: java.lang.Throwable -> L4e
            throw r7     // Catch: java.lang.Throwable -> L4e
        La5:
            r8 = move-exception
            r2 = r7
            r7 = r8
        La8:
            throw r7     // Catch: java.lang.Throwable -> La9
        La9:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r2, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.B(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0071 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x007e A[Catch: all -> 0x003b, TryCatch #1 {all -> 0x003b, blocks: (B:58:0x0037, B:71:0x0075, B:73:0x007e, B:75:0x0088, B:76:0x008c, B:67:0x005f, B:77:0x0093), top: B:88:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0093 A[Catch: all -> 0x003b, TRY_LEAVE, TryCatch #1 {all -> 0x003b, blocks: (B:58:0x0037, B:71:0x0075, B:73:0x007e, B:75:0x0088, B:76:0x008c, B:67:0x005f, B:77:0x0093), top: B:88:0x0037 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0072 -> B:71:0x0075). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object C(kotlinx.coroutines.channels.f0 r8, java.lang.Object r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.channels.u.v
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.channels.u$v r0 = (kotlinx.coroutines.channels.u.v) r0
            int r1 = r0.f85101g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85101g = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$v r0 = new kotlinx.coroutines.channels.u$v
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f85100f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85101g
            r3 = 1
            if (r2 == 0) goto L46
            if (r2 != r3) goto L3e
            java.lang.Object r8 = r0.f85099e
            kotlinx.coroutines.channels.o r8 = (kotlinx.coroutines.channels.o) r8
            java.lang.Object r9 = r0.f85098d
            kotlinx.coroutines.channels.f0 r9 = (kotlinx.coroutines.channels.f0) r9
            java.lang.Object r2 = r0.f85097c
            kotlin.jvm.internal.Ref$IntRef r2 = (kotlin.jvm.internal.Ref.IntRef) r2
            java.lang.Object r4 = r0.f85096b
            kotlin.jvm.internal.Ref$IntRef r4 = (kotlin.jvm.internal.Ref.IntRef) r4
            java.lang.Object r5 = r0.f85095a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3b
            goto L75
        L3b:
            r8 = move-exception
            goto La3
        L3e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L46:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlin.jvm.internal.Ref$IntRef r10 = new kotlin.jvm.internal.Ref$IntRef
            r10.<init>()
            r2 = -1
            r10.element = r2
            kotlin.jvm.internal.Ref$IntRef r2 = new kotlin.jvm.internal.Ref$IntRef
            r2.<init>()
            kotlinx.coroutines.channels.o r4 = r8.iterator()     // Catch: java.lang.Throwable -> L9f
            r7 = r9
            r9 = r8
            r8 = r4
            r4 = r10
            r10 = r7
        L5f:
            r0.f85095a = r10     // Catch: java.lang.Throwable -> L3b
            r0.f85096b = r4     // Catch: java.lang.Throwable -> L3b
            r0.f85097c = r2     // Catch: java.lang.Throwable -> L3b
            r0.f85098d = r9     // Catch: java.lang.Throwable -> L3b
            r0.f85099e = r8     // Catch: java.lang.Throwable -> L3b
            r0.f85101g = r3     // Catch: java.lang.Throwable -> L3b
            java.lang.Object r5 = r8.b(r0)     // Catch: java.lang.Throwable -> L3b
            if (r5 != r1) goto L72
            return r1
        L72:
            r7 = r5
            r5 = r10
            r10 = r7
        L75:
            r6 = 0
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L3b
            boolean r10 = r10.booleanValue()     // Catch: java.lang.Throwable -> L3b
            if (r10 == 0) goto L93
            java.lang.Object r10 = r8.next()     // Catch: java.lang.Throwable -> L3b
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r10)     // Catch: java.lang.Throwable -> L3b
            if (r10 == 0) goto L8c
            int r10 = r2.element     // Catch: java.lang.Throwable -> L3b
            r4.element = r10     // Catch: java.lang.Throwable -> L3b
        L8c:
            int r10 = r2.element     // Catch: java.lang.Throwable -> L3b
            int r10 = r10 + r3
            r2.element = r10     // Catch: java.lang.Throwable -> L3b
            r10 = r5
            goto L5f
        L93:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L3b
            kotlinx.coroutines.channels.r.b(r9, r6)
            int r8 = r4.element
            java.lang.Integer r8 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r8)
            return r8
        L9f:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
        La3:
            throw r8     // Catch: java.lang.Throwable -> La4
        La4:
            r10 = move-exception
            kotlinx.coroutines.channels.r.b(r9, r8)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.C(kotlinx.coroutines.channels.f0, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0097 A[Catch: all -> 0x0037, TRY_LEAVE, TryCatch #2 {all -> 0x0037, blocks: (B:72:0x0033, B:98:0x008f, B:100:0x0097), top: B:114:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0075 A[Catch: all -> 0x004f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x004f, blocks: (B:79:0x004b, B:88:0x0069, B:92:0x0075), top: B:116:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x008a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x008b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x008b -> B:98:0x008f). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object D(kotlinx.coroutines.channels.f0 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.w
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$w r0 = (kotlinx.coroutines.channels.u.w) r0
            int r1 = r0.f85106e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85106e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$w r0 = new kotlinx.coroutines.channels.u$w
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f85105d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85106e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L51
            if (r2 == r4) goto L43
            if (r2 != r3) goto L3b
            java.lang.Object r7 = r0.f85104c
            java.lang.Object r2 = r0.f85103b
            kotlinx.coroutines.channels.o r2 = (kotlinx.coroutines.channels.o) r2
            java.lang.Object r4 = r0.f85102a
            kotlinx.coroutines.channels.f0 r4 = (kotlinx.coroutines.channels.f0) r4
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L37
            goto L8f
        L37:
            r7 = move-exception
            r2 = r4
            goto La4
        L3b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L43:
            java.lang.Object r7 = r0.f85103b
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r2 = r0.f85102a
            kotlinx.coroutines.channels.f0 r2 = (kotlinx.coroutines.channels.f0) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L4f
            goto L69
        L4f:
            r7 = move-exception
            goto La4
        L51:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r7.iterator()     // Catch: java.lang.Throwable -> La1
            r0.f85102a = r7     // Catch: java.lang.Throwable -> La1
            r0.f85103b = r8     // Catch: java.lang.Throwable -> La1
            r0.f85106e = r4     // Catch: java.lang.Throwable -> La1
            java.lang.Object r2 = r8.b(r0)     // Catch: java.lang.Throwable -> La1
            if (r2 != r1) goto L65
            return r1
        L65:
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L69:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L4f
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L4f
            if (r8 != 0) goto L75
            kotlinx.coroutines.channels.r.b(r2, r5)
            return r5
        L75:
            java.lang.Object r8 = r7.next()     // Catch: java.lang.Throwable -> L4f
            r6 = r2
            r2 = r7
            r7 = r6
        L7c:
            r0.f85102a = r7     // Catch: java.lang.Throwable -> La1
            r0.f85103b = r2     // Catch: java.lang.Throwable -> La1
            r0.f85104c = r8     // Catch: java.lang.Throwable -> La1
            r0.f85106e = r3     // Catch: java.lang.Throwable -> La1
            java.lang.Object r4 = r2.b(r0)     // Catch: java.lang.Throwable -> La1
            if (r4 != r1) goto L8b
            return r1
        L8b:
            r6 = r4
            r4 = r7
            r7 = r8
            r8 = r6
        L8f:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L37
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L37
            if (r8 == 0) goto L9d
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L37
            r7 = r4
            goto L7c
        L9d:
            kotlinx.coroutines.channels.r.b(r4, r5)
            return r7
        La1:
            r8 = move-exception
            r2 = r7
            r7 = r8
        La4:
            throw r7     // Catch: java.lang.Throwable -> La5
        La5:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r2, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.D(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @PublishedApi
    @m8.g
    public static final <E, R> kotlinx.coroutines.channels.f0<R> E(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new x(f0Var, function2, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 F(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        return kotlinx.coroutines.channels.r.J(f0Var, coroutineContext, function2);
    }

    @PublishedApi
    @m8.g
    public static final <E, R> kotlinx.coroutines.channels.f0<R> G(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new y(f0Var, function3, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 H(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function3 function3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        return kotlinx.coroutines.channels.r.L(f0Var, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 I(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function3 function3) {
        return kotlinx.coroutines.channels.r.y(kotlinx.coroutines.channels.r.L(f0Var, coroutineContext, function3));
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 J(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function3 function3, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 I;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        I = I(f0Var, coroutineContext, function3);
        return I;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 K(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2) {
        return kotlinx.coroutines.channels.r.y(kotlinx.coroutines.channels.r.J(f0Var, coroutineContext, function2));
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 L(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 K;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        K = K(f0Var, coroutineContext, function2);
        return K;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00ac A[Catch: all -> 0x00bf, TRY_LEAVE, TryCatch #3 {all -> 0x00bf, blocks: (B:103:0x00a4, B:105:0x00ac, B:99:0x008f, B:89:0x0063), top: B:124:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0087 A[Catch: all -> 0x005d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x005d, blocks: (B:84:0x0059, B:93:0x007b, B:97:0x0087), top: B:122:0x0059 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x00a0 -> B:78:0x003d). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object M(kotlinx.coroutines.channels.f0 r8, java.util.Comparator r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.M(kotlinx.coroutines.channels.f0, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:102:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00ac A[Catch: all -> 0x00bf, TRY_LEAVE, TryCatch #3 {all -> 0x00bf, blocks: (B:103:0x00a4, B:105:0x00ac, B:99:0x008f, B:89:0x0063), top: B:124:0x0063 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0087 A[Catch: all -> 0x005d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x005d, blocks: (B:84:0x0059, B:93:0x007b, B:97:0x0087), top: B:122:0x0059 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x00a0 -> B:78:0x003d). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object N(kotlinx.coroutines.channels.f0 r8, java.util.Comparator r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 201
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.N(kotlinx.coroutines.channels.f0, java.util.Comparator, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0051  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object O(kotlinx.coroutines.channels.f0 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.u.b0
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.u$b0 r0 = (kotlinx.coroutines.channels.u.b0) r0
            int r1 = r0.f84949c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84949c = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$b0 r0 = new kotlinx.coroutines.channels.u$b0
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f84948b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84949c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f84947a
            kotlinx.coroutines.channels.f0 r4 = (kotlinx.coroutines.channels.f0) r4
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L5a
            goto L47
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.o r5 = r4.iterator()     // Catch: java.lang.Throwable -> L5a
            r0.f84947a = r4     // Catch: java.lang.Throwable -> L5a
            r0.f84949c = r3     // Catch: java.lang.Throwable -> L5a
            java.lang.Object r5 = r5.b(r0)     // Catch: java.lang.Throwable -> L5a
            if (r5 != r1) goto L47
            return r1
        L47:
            r0 = 0
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L5a
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L5a
            if (r5 != 0) goto L51
            goto L52
        L51:
            r3 = 0
        L52:
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)     // Catch: java.lang.Throwable -> L5a
            kotlinx.coroutines.channels.r.b(r4, r0)
            return r5
        L5a:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L5c
        L5c:
            r0 = move-exception
            kotlinx.coroutines.channels.r.b(r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.O(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x006c A[Catch: all -> 0x004a, TRY_LEAVE, TryCatch #2 {all -> 0x004a, blocks: (B:77:0x0046, B:86:0x0064, B:88:0x006c, B:99:0x0096, B:100:0x009d), top: B:111:0x0046 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x008e A[Catch: all -> 0x0032, TRY_ENTER, TryCatch #1 {all -> 0x0032, blocks: (B:70:0x002e, B:93:0x0082, B:97:0x008e, B:98:0x0095), top: B:109:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0096 A[Catch: all -> 0x004a, TRY_ENTER, TryCatch #2 {all -> 0x004a, blocks: (B:77:0x0046, B:86:0x0064, B:88:0x006c, B:99:0x0096, B:100:0x009d), top: B:111:0x0046 }] */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object Q(kotlinx.coroutines.channels.f0 r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.channels.u.d0
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.channels.u$d0 r0 = (kotlinx.coroutines.channels.u.d0) r0
            int r1 = r0.f84962d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84962d = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$d0 r0 = new kotlinx.coroutines.channels.u$d0
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f84961c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84962d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3e
            if (r2 != r3) goto L36
            java.lang.Object r6 = r0.f84960b
            java.lang.Object r0 = r0.f84959a
            kotlinx.coroutines.channels.f0 r0 = (kotlinx.coroutines.channels.f0) r0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L32
            goto L81
        L32:
            r6 = move-exception
            r2 = r0
            goto La1
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3e:
            java.lang.Object r6 = r0.f84960b
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r2 = r0.f84959a
            kotlinx.coroutines.channels.f0 r2 = (kotlinx.coroutines.channels.f0) r2
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L4a
            goto L64
        L4a:
            r6 = move-exception
            goto La1
        L4c:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.o r7 = r6.iterator()     // Catch: java.lang.Throwable -> L9e
            r0.f84959a = r6     // Catch: java.lang.Throwable -> L9e
            r0.f84960b = r7     // Catch: java.lang.Throwable -> L9e
            r0.f84962d = r4     // Catch: java.lang.Throwable -> L9e
            java.lang.Object r2 = r7.b(r0)     // Catch: java.lang.Throwable -> L9e
            if (r2 != r1) goto L60
            return r1
        L60:
            r5 = r2
            r2 = r6
            r6 = r7
            r7 = r5
        L64:
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L4a
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L4a
            if (r7 == 0) goto L96
            java.lang.Object r7 = r6.next()     // Catch: java.lang.Throwable -> L4a
            r0.f84959a = r2     // Catch: java.lang.Throwable -> L4a
            r0.f84960b = r7     // Catch: java.lang.Throwable -> L4a
            r0.f84962d = r3     // Catch: java.lang.Throwable -> L4a
            java.lang.Object r6 = r6.b(r0)     // Catch: java.lang.Throwable -> L4a
            if (r6 != r1) goto L7d
            return r1
        L7d:
            r0 = r2
            r5 = r7
            r7 = r6
            r6 = r5
        L81:
            r1 = 0
            java.lang.Boolean r7 = (java.lang.Boolean) r7     // Catch: java.lang.Throwable -> L32
            boolean r7 = r7.booleanValue()     // Catch: java.lang.Throwable -> L32
            if (r7 != 0) goto L8e
            kotlinx.coroutines.channels.r.b(r0, r1)
            return r6
        L8e:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L32
            java.lang.String r7 = "ReceiveChannel has more than one element."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L32
            throw r6     // Catch: java.lang.Throwable -> L32
        L96:
            java.util.NoSuchElementException r6 = new java.util.NoSuchElementException     // Catch: java.lang.Throwable -> L4a
            java.lang.String r7 = "ReceiveChannel is empty."
            r6.<init>(r7)     // Catch: java.lang.Throwable -> L4a
            throw r6     // Catch: java.lang.Throwable -> L4a
        L9e:
            r7 = move-exception
            r2 = r6
            r6 = r7
        La1:
            throw r6     // Catch: java.lang.Throwable -> La2
        La2:
            r7 = move-exception
            kotlinx.coroutines.channels.r.b(r2, r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.Q(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0071 A[Catch: all -> 0x004b, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x004b, blocks: (B:77:0x0047, B:86:0x0065, B:90:0x0071), top: B:112:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0092  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object R(kotlinx.coroutines.channels.f0 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.e0
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$e0 r0 = (kotlinx.coroutines.channels.u.e0) r0
            int r1 = r0.f84968d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84968d = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$e0 r0 = new kotlinx.coroutines.channels.u$e0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f84967c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84968d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4d
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r7 = r0.f84966b
            java.lang.Object r0 = r0.f84965a
            kotlinx.coroutines.channels.f0 r0 = (kotlinx.coroutines.channels.f0) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L33
            goto L86
        L33:
            r7 = move-exception
            r2 = r0
            goto L99
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3f:
            java.lang.Object r7 = r0.f84966b
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r2 = r0.f84965a
            kotlinx.coroutines.channels.f0 r2 = (kotlinx.coroutines.channels.f0) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L4b
            goto L65
        L4b:
            r7 = move-exception
            goto L99
        L4d:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r7.iterator()     // Catch: java.lang.Throwable -> L96
            r0.f84965a = r7     // Catch: java.lang.Throwable -> L96
            r0.f84966b = r8     // Catch: java.lang.Throwable -> L96
            r0.f84968d = r4     // Catch: java.lang.Throwable -> L96
            java.lang.Object r2 = r8.b(r0)     // Catch: java.lang.Throwable -> L96
            if (r2 != r1) goto L61
            return r1
        L61:
            r6 = r2
            r2 = r7
            r7 = r8
            r8 = r6
        L65:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L4b
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L4b
            if (r8 != 0) goto L71
            kotlinx.coroutines.channels.r.b(r2, r5)
            return r5
        L71:
            java.lang.Object r8 = r7.next()     // Catch: java.lang.Throwable -> L4b
            r0.f84965a = r2     // Catch: java.lang.Throwable -> L4b
            r0.f84966b = r8     // Catch: java.lang.Throwable -> L4b
            r0.f84968d = r3     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r7 = r7.b(r0)     // Catch: java.lang.Throwable -> L4b
            if (r7 != r1) goto L82
            return r1
        L82:
            r0 = r2
            r6 = r8
            r8 = r7
            r7 = r6
        L86:
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L33
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L33
            if (r8 == 0) goto L92
            kotlinx.coroutines.channels.r.b(r0, r5)
            return r5
        L92:
            kotlinx.coroutines.channels.r.b(r0, r5)
            return r7
        L96:
            r8 = move-exception
            r2 = r7
            r7 = r8
        L99:
            throw r7     // Catch: java.lang.Throwable -> L9a
        L9a:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r2, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.R(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 S(kotlinx.coroutines.channels.f0 f0Var, int i4, CoroutineContext coroutineContext) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new f0(i4, f0Var, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 T(kotlinx.coroutines.channels.f0 f0Var, int i4, CoroutineContext coroutineContext, int i10, Object obj) {
        kotlinx.coroutines.channels.f0 S;
        if ((i10 & 2) != 0) {
            coroutineContext = i1.g();
        }
        S = S(f0Var, i4, coroutineContext);
        return S;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 U(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new g0(f0Var, function2, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 V(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 U;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        U = U(f0Var, coroutineContext, function2);
        return U;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x006a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0079 A[Catch: all -> 0x0053, TryCatch #1 {all -> 0x0053, blocks: (B:62:0x0034, B:78:0x0071, B:80:0x0079, B:83:0x008c, B:67:0x004f), top: B:94:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x008c A[Catch: all -> 0x0053, TRY_LEAVE, TryCatch #1 {all -> 0x0053, blocks: (B:62:0x0034, B:78:0x0071, B:80:0x0079, B:83:0x008c, B:67:0x004f), top: B:94:0x0022 }] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v14, types: [kotlinx.coroutines.channels.f0] */
    /* JADX WARN: Type inference failed for: r8v2, types: [kotlinx.coroutines.channels.f0] */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v5, types: [kotlinx.coroutines.channels.f0, java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x0089 -> B:63:0x0037). Please submit an issue!!! */
    @m8.h
    @kotlin.PublishedApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <E, C extends kotlinx.coroutines.channels.j0<? super E>> java.lang.Object W(@m8.g kotlinx.coroutines.channels.f0<? extends E> r7, @m8.g C r8, @m8.g kotlin.coroutines.Continuation<? super C> r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.channels.u.h0
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.channels.u$h0 r0 = (kotlinx.coroutines.channels.u.h0) r0
            int r1 = r0.f85004e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85004e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$h0 r0 = new kotlinx.coroutines.channels.u$h0
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f85003d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85004e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L55
            if (r2 == r4) goto L43
            if (r2 != r3) goto L3b
            java.lang.Object r7 = r0.f85002c
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r8 = r0.f85001b
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r2 = r0.f85000a
            kotlinx.coroutines.channels.j0 r2 = (kotlinx.coroutines.channels.j0) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L53
        L37:
            r9 = r7
            r7 = r8
            r8 = r2
            goto L5c
        L3b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L43:
            java.lang.Object r7 = r0.f85002c
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r8 = r0.f85001b
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r2 = r0.f85000a
            kotlinx.coroutines.channels.j0 r2 = (kotlinx.coroutines.channels.j0) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L53
            goto L70
        L53:
            r7 = move-exception
            goto L96
        L55:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.channels.o r9 = r7.iterator()     // Catch: java.lang.Throwable -> L92
        L5c:
            r0.f85000a = r8     // Catch: java.lang.Throwable -> L92
            r0.f85001b = r7     // Catch: java.lang.Throwable -> L92
            r0.f85002c = r9     // Catch: java.lang.Throwable -> L92
            r0.f85004e = r4     // Catch: java.lang.Throwable -> L92
            java.lang.Object r2 = r9.b(r0)     // Catch: java.lang.Throwable -> L92
            if (r2 != r1) goto L6b
            return r1
        L6b:
            r6 = r8
            r8 = r7
            r7 = r9
            r9 = r2
            r2 = r6
        L70:
            r5 = 0
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L53
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L53
            if (r9 == 0) goto L8c
            java.lang.Object r9 = r7.next()     // Catch: java.lang.Throwable -> L53
            r0.f85000a = r2     // Catch: java.lang.Throwable -> L53
            r0.f85001b = r8     // Catch: java.lang.Throwable -> L53
            r0.f85002c = r7     // Catch: java.lang.Throwable -> L53
            r0.f85004e = r3     // Catch: java.lang.Throwable -> L53
            java.lang.Object r9 = r2.send(r9, r0)     // Catch: java.lang.Throwable -> L53
            if (r9 != r1) goto L37
            return r1
        L8c:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L53
            kotlinx.coroutines.channels.r.b(r8, r5)
            return r2
        L92:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        L96:
            throw r7     // Catch: java.lang.Throwable -> L97
        L97:
            r9 = move-exception
            kotlinx.coroutines.channels.r.b(r8, r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.W(kotlinx.coroutines.channels.f0, kotlinx.coroutines.channels.j0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0065 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:55:0x0031, B:68:0x005c, B:70:0x0065, B:64:0x004a, B:71:0x006e), top: B:82:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x006e A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:55:0x0031, B:68:0x005c, B:70:0x0065, B:64:0x004a, B:71:0x006e), top: B:82:0x0031 }] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.Collection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0059 -> B:68:0x005c). Please submit an issue!!! */
    @m8.h
    @kotlin.PublishedApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <E, C extends java.util.Collection<? super E>> java.lang.Object X(@m8.g kotlinx.coroutines.channels.f0<? extends E> r6, @m8.g C r7, @m8.g kotlin.coroutines.Continuation<? super C> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.i0
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$i0 r0 = (kotlinx.coroutines.channels.u.i0) r0
            int r1 = r0.f85015e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85015e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$i0 r0 = new kotlinx.coroutines.channels.u$i0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f85014d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85015e
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r6 = r0.f85013c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f85012b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f85011a
            java.util.Collection r2 = (java.util.Collection) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L5c
        L35:
            r6 = move-exception
            goto L78
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L74
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r5
        L4a:
            r0.f85011a = r8     // Catch: java.lang.Throwable -> L35
            r0.f85012b = r7     // Catch: java.lang.Throwable -> L35
            r0.f85013c = r6     // Catch: java.lang.Throwable -> L35
            r0.f85015e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L59
            return r1
        L59:
            r5 = r2
            r2 = r8
            r8 = r5
        L5c:
            r4 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L6e
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L35
            r2.add(r8)     // Catch: java.lang.Throwable -> L35
            r8 = r2
            goto L4a
        L6e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            kotlinx.coroutines.channels.r.b(r7, r4)
            return r2
        L74:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L78:
            throw r6     // Catch: java.lang.Throwable -> L79
        L79:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.X(kotlinx.coroutines.channels.f0, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0065 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:55:0x0031, B:68:0x005c, B:70:0x0065, B:64:0x004a, B:71:0x0078), top: B:82:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0078 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:55:0x0031, B:68:0x005c, B:70:0x0065, B:64:0x004a, B:71:0x0078), top: B:82:0x0031 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0059 -> B:68:0x005c). Please submit an issue!!! */
    @m8.h
    @kotlin.PublishedApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <K, V, M extends java.util.Map<? super K, ? super V>> java.lang.Object Y(@m8.g kotlinx.coroutines.channels.f0<? extends kotlin.Pair<? extends K, ? extends V>> r6, @m8.g M r7, @m8.g kotlin.coroutines.Continuation<? super M> r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.j0
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$j0 r0 = (kotlinx.coroutines.channels.u.j0) r0
            int r1 = r0.f85026e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85026e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$j0 r0 = new kotlinx.coroutines.channels.u$j0
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f85025d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85026e
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r6 = r0.f85024c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f85023b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f85022a
            java.util.Map r2 = (java.util.Map) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L5c
        L35:
            r6 = move-exception
            goto L82
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L7e
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r5
        L4a:
            r0.f85022a = r8     // Catch: java.lang.Throwable -> L35
            r0.f85023b = r7     // Catch: java.lang.Throwable -> L35
            r0.f85024c = r6     // Catch: java.lang.Throwable -> L35
            r0.f85026e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L59
            return r1
        L59:
            r5 = r2
            r2 = r8
            r8 = r5
        L5c:
            r4 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L78
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L35
            kotlin.Pair r8 = (kotlin.Pair) r8     // Catch: java.lang.Throwable -> L35
            java.lang.Object r4 = r8.getFirst()     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.getSecond()     // Catch: java.lang.Throwable -> L35
            r2.put(r4, r8)     // Catch: java.lang.Throwable -> L35
            r8 = r2
            goto L4a
        L78:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            kotlinx.coroutines.channels.r.b(r7, r4)
            return r2
        L7e:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L82:
            throw r6     // Catch: java.lang.Throwable -> L83
        L83:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.Y(kotlinx.coroutines.channels.f0, java.util.Map, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0035  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object a(kotlinx.coroutines.channels.f0 r4, kotlin.coroutines.Continuation r5) {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.channels.u.a
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.channels.u$a r0 = (kotlinx.coroutines.channels.u.a) r0
            int r1 = r0.f84939c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84939c = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$a r0 = new kotlinx.coroutines.channels.u$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f84938b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84939c
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r4 = r0.f84937a
            kotlinx.coroutines.channels.f0 r4 = (kotlinx.coroutines.channels.f0) r4
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L4c
            goto L47
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.o r5 = r4.iterator()     // Catch: java.lang.Throwable -> L4c
            r0.f84937a = r4     // Catch: java.lang.Throwable -> L4c
            r0.f84939c = r3     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r5 = r5.b(r0)     // Catch: java.lang.Throwable -> L4c
            if (r5 != r1) goto L47
            return r1
        L47:
            r0 = 0
            kotlinx.coroutines.channels.r.b(r4, r0)
            return r5
        L4c:
            r5 = move-exception
            throw r5     // Catch: java.lang.Throwable -> L4e
        L4e:
            r0 = move-exception
            kotlinx.coroutines.channels.r.b(r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.a(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @PublishedApi
    @m8.g
    public static final Function1<Throwable, Unit> b(@m8.g kotlinx.coroutines.channels.f0<?> f0Var) {
        return new b(f0Var);
    }

    @m8.h
    @PublishedApi
    public static final <E> Object b0(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var, @m8.g Continuation<? super Set<E>> continuation) {
        return kotlinx.coroutines.channels.r.f0(f0Var, new LinkedHashSet(), continuation);
    }

    @PublishedApi
    @m8.g
    public static final Function1<Throwable, Unit> c(@m8.g kotlinx.coroutines.channels.f0<?>... f0VarArr) {
        return new c(f0VarArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0069 A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:60:0x0031, B:74:0x0061, B:76:0x0069, B:77:0x0073), top: B:90:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0073 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #1 {all -> 0x0035, blocks: (B:60:0x0031, B:74:0x0061, B:76:0x0069, B:77:0x0073), top: B:90:0x0031 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x005d -> B:73:0x0060). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object d(kotlinx.coroutines.channels.f0 r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.d
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$d r0 = (kotlinx.coroutines.channels.u.d) r0
            int r1 = r0.f84958e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f84958e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$d r0 = new kotlinx.coroutines.channels.u$d
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f84957d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f84958e
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r7 = r0.f84956c
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r2 = r0.f84955b
            kotlinx.coroutines.channels.f0 r2 = (kotlinx.coroutines.channels.f0) r2
            java.lang.Object r4 = r0.f84954a
            kotlin.jvm.internal.Ref$IntRef r4 = (kotlin.jvm.internal.Ref.IntRef) r4
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L60
        L35:
            r7 = move-exception
            goto L85
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$IntRef r8 = new kotlin.jvm.internal.Ref$IntRef
            r8.<init>()
            kotlinx.coroutines.channels.o r2 = r7.iterator()     // Catch: java.lang.Throwable -> L82
            r4 = r8
            r8 = r7
            r7 = r2
        L4e:
            r0.f84954a = r4     // Catch: java.lang.Throwable -> L7f
            r0.f84955b = r8     // Catch: java.lang.Throwable -> L7f
            r0.f84956c = r7     // Catch: java.lang.Throwable -> L7f
            r0.f84958e = r3     // Catch: java.lang.Throwable -> L7f
            java.lang.Object r2 = r7.b(r0)     // Catch: java.lang.Throwable -> L7f
            if (r2 != r1) goto L5d
            return r1
        L5d:
            r6 = r2
            r2 = r8
            r8 = r6
        L60:
            r5 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L73
            r7.next()     // Catch: java.lang.Throwable -> L35
            int r8 = r4.element     // Catch: java.lang.Throwable -> L35
            int r8 = r8 + r3
            r4.element = r8     // Catch: java.lang.Throwable -> L35
            r8 = r2
            goto L4e
        L73:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            kotlinx.coroutines.channels.r.b(r2, r5)
            int r7 = r4.element
            java.lang.Integer r7 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r7)
            return r7
        L7f:
            r7 = move-exception
            r2 = r8
            goto L85
        L82:
            r8 = move-exception
            r2 = r7
            r7 = r8
        L85:
            throw r7     // Catch: java.lang.Throwable -> L86
        L86:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r2, r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.d(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 d0(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new k0(f0Var, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 e0(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 d02;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        d02 = d0(f0Var, coroutineContext);
        return d02;
    }

    @PublishedApi
    @m8.g
    public static final <E, K> kotlinx.coroutines.channels.f0<E> f(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new f(f0Var, function2, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 g(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        return kotlinx.coroutines.channels.r.k(f0Var, coroutineContext, function2);
    }

    @PublishedApi
    @m8.g
    public static final <E, R, V> kotlinx.coroutines.channels.f0<V> g0(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var, @m8.g kotlinx.coroutines.channels.f0<? extends R> f0Var2, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super R, ? extends V> function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.h(f0Var, f0Var2), new m0(f0Var2, f0Var, function2, null), 6, null);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 h(kotlinx.coroutines.channels.f0 f0Var, int i4, CoroutineContext coroutineContext) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new g(i4, f0Var, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 h0(kotlinx.coroutines.channels.f0 f0Var, kotlinx.coroutines.channels.f0 f0Var2, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            coroutineContext = i1.g();
        }
        return kotlinx.coroutines.channels.r.q0(f0Var, f0Var2, coroutineContext, function2);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 i(kotlinx.coroutines.channels.f0 f0Var, int i4, CoroutineContext coroutineContext, int i10, Object obj) {
        kotlinx.coroutines.channels.f0 h4;
        if ((i10 & 2) != 0) {
            coroutineContext = i1.g();
        }
        h4 = h(f0Var, i4, coroutineContext);
        return h4;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 j(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new h(f0Var, function2, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 k(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 j4;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        j4 = j(f0Var, coroutineContext, function2);
        return j4;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x005e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x006c A[Catch: all -> 0x0039, TRY_LEAVE, TryCatch #2 {all -> 0x0039, blocks: (B:62:0x0035, B:77:0x0064, B:79:0x006c, B:85:0x007b, B:86:0x0092), top: B:98:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x007b A[Catch: all -> 0x0039, TRY_ENTER, TryCatch #2 {all -> 0x0039, blocks: (B:62:0x0035, B:77:0x0064, B:79:0x006c, B:85:0x007b, B:86:0x0092), top: B:98:0x0035 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x005f -> B:76:0x0063). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object l(kotlinx.coroutines.channels.f0 r10, int r11, kotlin.coroutines.Continuation r12) {
        /*
            boolean r0 = r12 instanceof kotlinx.coroutines.channels.u.i
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.channels.u$i r0 = (kotlinx.coroutines.channels.u.i) r0
            int r1 = r0.f85010f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85010f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$i r0 = new kotlinx.coroutines.channels.u$i
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f85009e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85010f
            r3 = 46
            java.lang.String r4 = "ReceiveChannel doesn't contain element at index "
            r5 = 1
            if (r2 == 0) goto L44
            if (r2 != r5) goto L3c
            int r10 = r0.f85006b
            int r11 = r0.f85005a
            java.lang.Object r2 = r0.f85008d
            kotlinx.coroutines.channels.o r2 = (kotlinx.coroutines.channels.o) r2
            java.lang.Object r6 = r0.f85007c
            kotlinx.coroutines.channels.f0 r6 = (kotlinx.coroutines.channels.f0) r6
            kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L39
            goto L63
        L39:
            r10 = move-exception
            goto Laf
        L3c:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L44:
            kotlin.ResultKt.throwOnFailure(r12)
            if (r11 < 0) goto L97
            r12 = 0
            kotlinx.coroutines.channels.o r2 = r10.iterator()     // Catch: java.lang.Throwable -> L93
        L4e:
            r0.f85007c = r10     // Catch: java.lang.Throwable -> L93
            r0.f85008d = r2     // Catch: java.lang.Throwable -> L93
            r0.f85005a = r11     // Catch: java.lang.Throwable -> L93
            r0.f85006b = r12     // Catch: java.lang.Throwable -> L93
            r0.f85010f = r5     // Catch: java.lang.Throwable -> L93
            java.lang.Object r6 = r2.b(r0)     // Catch: java.lang.Throwable -> L93
            if (r6 != r1) goto L5f
            return r1
        L5f:
            r9 = r6
            r6 = r10
            r10 = r12
            r12 = r9
        L63:
            r7 = 0
            java.lang.Boolean r12 = (java.lang.Boolean) r12     // Catch: java.lang.Throwable -> L39
            boolean r12 = r12.booleanValue()     // Catch: java.lang.Throwable -> L39
            if (r12 == 0) goto L7b
            java.lang.Object r12 = r2.next()     // Catch: java.lang.Throwable -> L39
            int r8 = r10 + 1
            if (r11 != r10) goto L78
            kotlinx.coroutines.channels.r.b(r6, r7)
            return r12
        L78:
            r10 = r6
            r12 = r8
            goto L4e
        L7b:
            java.lang.IndexOutOfBoundsException r10 = new java.lang.IndexOutOfBoundsException     // Catch: java.lang.Throwable -> L39
            java.lang.StringBuilder r12 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L39
            r12.<init>()     // Catch: java.lang.Throwable -> L39
            r12.append(r4)     // Catch: java.lang.Throwable -> L39
            r12.append(r11)     // Catch: java.lang.Throwable -> L39
            r12.append(r3)     // Catch: java.lang.Throwable -> L39
            java.lang.String r11 = r12.toString()     // Catch: java.lang.Throwable -> L39
            r10.<init>(r11)     // Catch: java.lang.Throwable -> L39
            throw r10     // Catch: java.lang.Throwable -> L39
        L93:
            r11 = move-exception
            r6 = r10
            r10 = r11
            goto Laf
        L97:
            java.lang.IndexOutOfBoundsException r12 = new java.lang.IndexOutOfBoundsException     // Catch: java.lang.Throwable -> L93
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L93
            r0.<init>()     // Catch: java.lang.Throwable -> L93
            r0.append(r4)     // Catch: java.lang.Throwable -> L93
            r0.append(r11)     // Catch: java.lang.Throwable -> L93
            r0.append(r3)     // Catch: java.lang.Throwable -> L93
            java.lang.String r11 = r0.toString()     // Catch: java.lang.Throwable -> L93
            r12.<init>(r11)     // Catch: java.lang.Throwable -> L93
            throw r12     // Catch: java.lang.Throwable -> L93
        Laf:
            throw r10     // Catch: java.lang.Throwable -> Lb0
        Lb0:
            r11 = move-exception
            kotlinx.coroutines.channels.r.b(r6, r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.l(kotlinx.coroutines.channels.f0, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0062 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x006b A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #2 {all -> 0x007d, blocks: (B:76:0x0063, B:78:0x006b, B:73:0x0052, B:72:0x004e), top: B:96:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0079  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x0060 -> B:76:0x0063). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object m(kotlinx.coroutines.channels.f0 r8, int r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof kotlinx.coroutines.channels.u.j
            if (r0 == 0) goto L13
            r0 = r10
            kotlinx.coroutines.channels.u$j r0 = (kotlinx.coroutines.channels.u.j) r0
            int r1 = r0.f85021f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85021f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$j r0 = new kotlinx.coroutines.channels.u$j
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f85020e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85021f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L44
            if (r2 != r3) goto L3c
            int r8 = r0.f85017b
            int r9 = r0.f85016a
            java.lang.Object r2 = r0.f85019d
            kotlinx.coroutines.channels.o r2 = (kotlinx.coroutines.channels.o) r2
            java.lang.Object r5 = r0.f85018c
            kotlinx.coroutines.channels.f0 r5 = (kotlinx.coroutines.channels.f0) r5
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L3a
            r7 = r10
            r10 = r8
            r8 = r5
            r5 = r7
            goto L63
        L3a:
            r8 = move-exception
            goto L80
        L3c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L44:
            kotlin.ResultKt.throwOnFailure(r10)
            if (r9 >= 0) goto L4d
            kotlinx.coroutines.channels.r.b(r8, r4)
            return r4
        L4d:
            r10 = 0
            kotlinx.coroutines.channels.o r2 = r8.iterator()     // Catch: java.lang.Throwable -> L7d
        L52:
            r0.f85018c = r8     // Catch: java.lang.Throwable -> L7d
            r0.f85019d = r2     // Catch: java.lang.Throwable -> L7d
            r0.f85016a = r9     // Catch: java.lang.Throwable -> L7d
            r0.f85017b = r10     // Catch: java.lang.Throwable -> L7d
            r0.f85021f = r3     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r5 = r2.b(r0)     // Catch: java.lang.Throwable -> L7d
            if (r5 != r1) goto L63
            return r1
        L63:
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L7d
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L7d
            if (r5 == 0) goto L79
            java.lang.Object r5 = r2.next()     // Catch: java.lang.Throwable -> L7d
            int r6 = r10 + 1
            if (r9 != r10) goto L77
            kotlinx.coroutines.channels.r.b(r8, r4)
            return r5
        L77:
            r10 = r6
            goto L52
        L79:
            kotlinx.coroutines.channels.r.b(r8, r4)
            return r4
        L7d:
            r9 = move-exception
            r5 = r8
            r8 = r9
        L80:
            throw r8     // Catch: java.lang.Throwable -> L81
        L81:
            r9 = move-exception
            kotlinx.coroutines.channels.r.b(r5, r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.m(kotlinx.coroutines.channels.f0, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @PublishedApi
    @m8.g
    public static final <E> kotlinx.coroutines.channels.f0<E> n(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new k(f0Var, function2, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 o(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        return kotlinx.coroutines.channels.r.s(f0Var, coroutineContext, function2);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 p(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function3 function3) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new l(f0Var, function3, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 q(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function3 function3, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 p9;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        p9 = p(f0Var, coroutineContext, function3);
        return p9;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 r(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2) {
        return kotlinx.coroutines.channels.r.s(f0Var, coroutineContext, new m(function2, null));
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 s(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 r9;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        r9 = r(f0Var, coroutineContext, function2);
        return r9;
    }

    @PublishedApi
    @m8.g
    public static final <E> kotlinx.coroutines.channels.f0<E> t(@m8.g kotlinx.coroutines.channels.f0<? extends E> f0Var) {
        kotlinx.coroutines.channels.f0<E> o9;
        o9 = o(f0Var, null, new n(null), 1, null);
        return o9;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0058 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0065 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:58:0x0031, B:71:0x005c, B:73:0x0065, B:75:0x006b, B:67:0x004a, B:77:0x0070), top: B:86:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0070 A[Catch: all -> 0x0035, TRY_LEAVE, TryCatch #0 {all -> 0x0035, blocks: (B:58:0x0031, B:71:0x005c, B:73:0x0065, B:75:0x006b, B:67:0x004a, B:77:0x0070), top: B:86:0x0031 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0059 -> B:71:0x005c). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object u(kotlinx.coroutines.channels.f0 r6, java.util.Collection r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof kotlinx.coroutines.channels.u.o
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.channels.u$o r0 = (kotlinx.coroutines.channels.u.o) r0
            int r1 = r0.f85065e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85065e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$o r0 = new kotlinx.coroutines.channels.u$o
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f85064d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85065e
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r6 = r0.f85063c
            kotlinx.coroutines.channels.o r6 = (kotlinx.coroutines.channels.o) r6
            java.lang.Object r7 = r0.f85062b
            kotlinx.coroutines.channels.f0 r7 = (kotlinx.coroutines.channels.f0) r7
            java.lang.Object r2 = r0.f85061a
            java.util.Collection r2 = (java.util.Collection) r2
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L5c
        L35:
            r6 = move-exception
            goto L7a
        L37:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.channels.o r8 = r6.iterator()     // Catch: java.lang.Throwable -> L76
            r5 = r7
            r7 = r6
            r6 = r8
            r8 = r5
        L4a:
            r0.f85061a = r8     // Catch: java.lang.Throwable -> L35
            r0.f85062b = r7     // Catch: java.lang.Throwable -> L35
            r0.f85063c = r6     // Catch: java.lang.Throwable -> L35
            r0.f85065e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r2 = r6.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r2 != r1) goto L59
            return r1
        L59:
            r5 = r2
            r2 = r8
            r8 = r5
        L5c:
            r4 = 0
            java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L35
            boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L70
            java.lang.Object r8 = r6.next()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L6e
            r2.add(r8)     // Catch: java.lang.Throwable -> L35
        L6e:
            r8 = r2
            goto L4a
        L70:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L35
            kotlinx.coroutines.channels.r.b(r7, r4)
            return r2
        L76:
            r7 = move-exception
            r5 = r7
            r7 = r6
            r6 = r5
        L7a:
            throw r6     // Catch: java.lang.Throwable -> L7b
        L7b:
            r8 = move-exception
            kotlinx.coroutines.channels.r.b(r7, r6)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.u(kotlinx.coroutines.channels.f0, java.util.Collection, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:74:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x007e A[Catch: all -> 0x009d, TryCatch #2 {all -> 0x009d, blocks: (B:76:0x0062, B:80:0x0075, B:82:0x007e, B:84:0x0084, B:88:0x0097, B:75:0x005e), top: B:100:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0097 A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #2 {all -> 0x009d, blocks: (B:76:0x0062, B:80:0x0075, B:82:0x007e, B:84:0x0084, B:88:0x0097, B:75:0x005e), top: B:100:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlinx.coroutines.channels.j0] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v8, types: [kotlinx.coroutines.channels.f0] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x0093 -> B:76:0x0062). Please submit an issue!!! */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object v(kotlinx.coroutines.channels.f0 r7, kotlinx.coroutines.channels.j0 r8, kotlin.coroutines.Continuation r9) {
        /*
            boolean r0 = r9 instanceof kotlinx.coroutines.channels.u.p
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.channels.u$p r0 = (kotlinx.coroutines.channels.u.p) r0
            int r1 = r0.f85070e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85070e = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$p r0 = new kotlinx.coroutines.channels.u$p
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f85069d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85070e
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L5b
            if (r2 == r4) goto L43
            if (r2 != r3) goto L3b
            java.lang.Object r7 = r0.f85068c
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r8 = r0.f85067b
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r2 = r0.f85066a
            kotlinx.coroutines.channels.j0 r2 = (kotlinx.coroutines.channels.j0) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L59
            r9 = r7
            r7 = r8
            r8 = r2
            goto L62
        L3b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L43:
            java.lang.Object r7 = r0.f85068c
            kotlinx.coroutines.channels.o r7 = (kotlinx.coroutines.channels.o) r7
            java.lang.Object r8 = r0.f85067b
            kotlinx.coroutines.channels.f0 r8 = (kotlinx.coroutines.channels.f0) r8
            java.lang.Object r2 = r0.f85066a
            kotlinx.coroutines.channels.j0 r2 = (kotlinx.coroutines.channels.j0) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L59
            r6 = r0
            r0 = r7
            r7 = r8
            r8 = r2
        L56:
            r2 = r1
            r1 = r6
            goto L75
        L59:
            r7 = move-exception
            goto La1
        L5b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.channels.o r9 = r7.iterator()     // Catch: java.lang.Throwable -> L9d
        L62:
            r0.f85066a = r8     // Catch: java.lang.Throwable -> L9d
            r0.f85067b = r7     // Catch: java.lang.Throwable -> L9d
            r0.f85068c = r9     // Catch: java.lang.Throwable -> L9d
            r0.f85070e = r4     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r2 = r9.b(r0)     // Catch: java.lang.Throwable -> L9d
            if (r2 != r1) goto L71
            return r1
        L71:
            r6 = r0
            r0 = r9
            r9 = r2
            goto L56
        L75:
            r5 = 0
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L9d
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L9d
            if (r9 == 0) goto L97
            java.lang.Object r9 = r0.next()     // Catch: java.lang.Throwable -> L9d
            if (r9 == 0) goto L93
            r1.f85066a = r8     // Catch: java.lang.Throwable -> L9d
            r1.f85067b = r7     // Catch: java.lang.Throwable -> L9d
            r1.f85068c = r0     // Catch: java.lang.Throwable -> L9d
            r1.f85070e = r3     // Catch: java.lang.Throwable -> L9d
            java.lang.Object r9 = r8.send(r9, r1)     // Catch: java.lang.Throwable -> L9d
            if (r9 != r2) goto L93
            return r2
        L93:
            r9 = r0
            r0 = r1
            r1 = r2
            goto L62
        L97:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L9d
            kotlinx.coroutines.channels.r.b(r7, r5)
            return r8
        L9d:
            r8 = move-exception
            r6 = r8
            r8 = r7
            r7 = r6
        La1:
            throw r7     // Catch: java.lang.Throwable -> La2
        La2:
            r9 = move-exception
            kotlinx.coroutines.channels.r.b(r8, r7)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.v(kotlinx.coroutines.channels.f0, kotlinx.coroutines.channels.j0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x005c A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {all -> 0x0031, blocks: (B:54:0x002d, B:66:0x0054, B:68:0x005c, B:71:0x0064, B:72:0x006b), top: B:81:0x002d }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0064 A[Catch: all -> 0x0031, TRY_ENTER, TryCatch #1 {all -> 0x0031, blocks: (B:54:0x002d, B:66:0x0054, B:68:0x005c, B:71:0x0064, B:72:0x006b), top: B:81:0x002d }] */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object w(kotlinx.coroutines.channels.f0 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.u.q
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.u$q r0 = (kotlinx.coroutines.channels.u.q) r0
            int r1 = r0.f85074d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85074d = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$q r0 = new kotlinx.coroutines.channels.u$q
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85073c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85074d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.f85072b
            kotlinx.coroutines.channels.o r5 = (kotlinx.coroutines.channels.o) r5
            java.lang.Object r0 = r0.f85071a
            kotlinx.coroutines.channels.f0 r0 = (kotlinx.coroutines.channels.f0) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L31
            goto L53
        L31:
            r5 = move-exception
            goto L6f
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.channels.o r6 = r5.iterator()     // Catch: java.lang.Throwable -> L6c
            r0.f85071a = r5     // Catch: java.lang.Throwable -> L6c
            r0.f85072b = r6     // Catch: java.lang.Throwable -> L6c
            r0.f85074d = r3     // Catch: java.lang.Throwable -> L6c
            java.lang.Object r0 = r6.b(r0)     // Catch: java.lang.Throwable -> L6c
            if (r0 != r1) goto L4f
            return r1
        L4f:
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L53:
            r1 = 0
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> L31
            boolean r6 = r6.booleanValue()     // Catch: java.lang.Throwable -> L31
            if (r6 == 0) goto L64
            java.lang.Object r5 = r5.next()     // Catch: java.lang.Throwable -> L31
            kotlinx.coroutines.channels.r.b(r0, r1)
            return r5
        L64:
            java.util.NoSuchElementException r5 = new java.util.NoSuchElementException     // Catch: java.lang.Throwable -> L31
            java.lang.String r6 = "ReceiveChannel is empty."
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L31
            throw r5     // Catch: java.lang.Throwable -> L31
        L6c:
            r6 = move-exception
            r0 = r5
            r5 = r6
        L6f:
            throw r5     // Catch: java.lang.Throwable -> L70
        L70:
            r6 = move-exception
            kotlinx.coroutines.channels.r.b(r0, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.w(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0060 A[Catch: all -> 0x0031, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0031, blocks: (B:55:0x002d, B:66:0x0053, B:71:0x0060), top: B:80:0x002d }] */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Binary compatibility")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final /* synthetic */ java.lang.Object x(kotlinx.coroutines.channels.f0 r5, kotlin.coroutines.Continuation r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.u.r
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.u$r r0 = (kotlinx.coroutines.channels.u.r) r0
            int r1 = r0.f85078d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85078d = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.u$r r0 = new kotlinx.coroutines.channels.u$r
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f85077c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85078d
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.f85076b
            kotlinx.coroutines.channels.o r5 = (kotlinx.coroutines.channels.o) r5
            java.lang.Object r0 = r0.f85075a
            kotlinx.coroutines.channels.f0 r0 = (kotlinx.coroutines.channels.f0) r0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L31
            goto L53
        L31:
            r5 = move-exception
            goto L6b
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.channels.o r6 = r5.iterator()     // Catch: java.lang.Throwable -> L68
            r0.f85075a = r5     // Catch: java.lang.Throwable -> L68
            r0.f85076b = r6     // Catch: java.lang.Throwable -> L68
            r0.f85078d = r3     // Catch: java.lang.Throwable -> L68
            java.lang.Object r0 = r6.b(r0)     // Catch: java.lang.Throwable -> L68
            if (r0 != r1) goto L4f
            return r1
        L4f:
            r4 = r0
            r0 = r5
            r5 = r6
            r6 = r4
        L53:
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> L31
            boolean r6 = r6.booleanValue()     // Catch: java.lang.Throwable -> L31
            r1 = 0
            if (r6 != 0) goto L60
            kotlinx.coroutines.channels.r.b(r0, r1)
            return r1
        L60:
            java.lang.Object r5 = r5.next()     // Catch: java.lang.Throwable -> L31
            kotlinx.coroutines.channels.r.b(r0, r1)
            return r5
        L68:
            r6 = move-exception
            r0 = r5
            r5 = r6
        L6b:
            throw r5     // Catch: java.lang.Throwable -> L6c
        L6c:
            r6 = move-exception
            kotlinx.coroutines.channels.r.b(r0, r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.u.x(kotlinx.coroutines.channels.f0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility")
    public static final /* synthetic */ kotlinx.coroutines.channels.f0 y(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2) {
        return kotlinx.coroutines.channels.b0.g(a2.f84781a, coroutineContext, 0, null, kotlinx.coroutines.channels.r.g(f0Var), new s(f0Var, function2, null), 6, null);
    }

    public static /* synthetic */ kotlinx.coroutines.channels.f0 z(kotlinx.coroutines.channels.f0 f0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        kotlinx.coroutines.channels.f0 y9;
        if ((i4 & 1) != 0) {
            coroutineContext = i1.g();
        }
        y9 = y(f0Var, coroutineContext, function2);
        return y9;
    }
}
