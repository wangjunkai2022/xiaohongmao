package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.internal.l0;
import kotlinx.coroutines.internal.o0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.r0;

/* compiled from: DebugProbesImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000Ê\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0003\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\"\n\u0002\b\u000f\bÀ\u0002\u0018\u00002\u00020\u0001:\u0002\u0095\u0001B\n\b\u0002¢\u0006\u0005\b\u0094\u0001\u0010\bJ\u001d\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\t\u0010\bJ;\u0010\u0013\u001a\u00020\u0004*\u00020\n2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\f0\u000b2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J@\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001a\"\b\b\u0000\u0010\u0015*\u00020\u00012\u001e\b\u0004\u0010\u0019\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00028\u00000\u0016H\u0082\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u0011*\u00020\u0001H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J%\u0010'\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\u001aH\u0002¢\u0006\u0004\b'\u0010(J5\u0010-\u001a\b\u0012\u0004\u0012\u00020%0\u001a2\u0006\u0010)\u001a\u00020\u00112\b\u0010+\u001a\u0004\u0018\u00010*2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020%0\u001aH\u0002¢\u0006\u0004\b-\u0010.J?\u00104\u001a\u000e\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020/032\u0006\u00100\u001a\u00020/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020%012\f\u0010,\u001a\b\u0012\u0004\u0012\u00020%0\u001aH\u0002¢\u0006\u0004\b4\u00105J3\u00107\u001a\u00020/2\u0006\u00106\u001a\u00020/2\f\u00102\u001a\b\u0012\u0004\u0012\u00020%012\f\u0010,\u001a\b\u0012\u0004\u0012\u00020%0\u001aH\u0002¢\u0006\u0004\b7\u00108J#\u0010;\u001a\u00020\u00042\n\u0010:\u001a\u0006\u0012\u0002\b\u0003092\u0006\u0010)\u001a\u00020\u0011H\u0002¢\u0006\u0004\b;\u0010<J\u001f\u0010\u0015\u001a\u00020\u00042\u0006\u0010:\u001a\u00020=2\u0006\u0010)\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010>J\u0016\u0010?\u001a\u0004\u0018\u00010=*\u00020=H\u0082\u0010¢\u0006\u0004\b?\u0010@J/\u0010B\u001a\u00020\u00042\n\u0010A\u001a\u0006\u0012\u0002\b\u00030\u00172\n\u0010:\u001a\u0006\u0012\u0002\b\u0003092\u0006\u0010)\u001a\u00020\u0011H\u0002¢\u0006\u0004\bB\u0010CJ\u001d\u0010D\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0017*\u0006\u0012\u0002\b\u000309H\u0002¢\u0006\u0004\bD\u0010EJ\u001a\u0010F\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0017*\u00020=H\u0082\u0010¢\u0006\u0004\bF\u0010GJ\u001b\u0010I\u001a\u0004\u0018\u00010H*\b\u0012\u0004\u0012\u00020%0\u001aH\u0002¢\u0006\u0004\bI\u0010JJ3\u0010L\u001a\b\u0012\u0004\u0012\u00028\u000009\"\u0004\b\u0000\u0010B2\f\u0010K\u001a\b\u0012\u0004\u0012\u00028\u0000092\b\u0010:\u001a\u0004\u0018\u00010HH\u0002¢\u0006\u0004\bL\u0010MJ\u001b\u0010N\u001a\u00020\u00042\n\u0010A\u001a\u0006\u0012\u0002\b\u00030\u0017H\u0002¢\u0006\u0004\bN\u0010OJ'\u0010R\u001a\b\u0012\u0004\u0012\u00020%0\u001a\"\b\b\u0000\u0010B*\u00020P2\u0006\u0010Q\u001a\u00028\u0000H\u0002¢\u0006\u0004\bR\u0010SJ\r\u0010T\u001a\u00020\u0004¢\u0006\u0004\bT\u0010\bJ\r\u0010U\u001a\u00020\u0004¢\u0006\u0004\bU\u0010\bJ\u0015\u0010W\u001a\u00020\u00112\u0006\u0010V\u001a\u00020\n¢\u0006\u0004\bW\u0010XJ\u0013\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u000101¢\u0006\u0004\bY\u0010ZJ\u0015\u0010]\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[¢\u0006\u0004\b]\u0010^J\u0013\u0010_\u001a\b\u0012\u0004\u0012\u00020[0\u001a¢\u0006\u0004\b_\u0010`J\u0013\u0010b\u001a\b\u0012\u0004\u0012\u00020a0\u001a¢\u0006\u0004\bb\u0010`J\u0015\u0010c\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\bc\u0010$J)\u0010d\u001a\b\u0012\u0004\u0012\u00020%0\u001a2\u0006\u0010\\\u001a\u00020[2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020%0\u001a¢\u0006\u0004\bd\u0010eJ\u001b\u0010f\u001a\u00020\u00042\n\u0010:\u001a\u0006\u0012\u0002\b\u000309H\u0000¢\u0006\u0004\bf\u0010gJ\u001b\u0010h\u001a\u00020\u00042\n\u0010:\u001a\u0006\u0012\u0002\b\u000309H\u0000¢\u0006\u0004\bh\u0010gJ)\u0010i\u001a\b\u0012\u0004\u0012\u00028\u000009\"\u0004\b\u0000\u0010B2\f\u0010K\u001a\b\u0012\u0004\u0012\u00028\u000009H\u0000¢\u0006\u0004\bi\u0010jR\u0014\u0010m\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\bk\u0010lR\u0014\u0010q\u001a\u00020n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010pR\u0018\u0010s\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010rR$\u0010v\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0017\u0012\u0004\u0012\u00020\u00030t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010uR\u0016\u0010w\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010?R\u0014\u0010z\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010yR#\u0010\u0080\u0001\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010{\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR%\u0010\u0083\u0001\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b#\u0010{\u001a\u0005\b\u0081\u0001\u0010}\"\u0005\b\u0082\u0001\u0010\u007fR$\u0010\u0085\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bb\u0010\u0084\u0001R!\u0010\u0086\u0001\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\f0t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010uR\"\u0010\u008a\u0001\u001a\r\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00170\u0087\u00018BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\"\u0010\u008e\u0001\u001a\u00020\u0011*\u00020\n8BX\u0082\u0004¢\u0006\u000f\u0012\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0005\b\u008b\u0001\u0010XR\u001b\u0010\u0091\u0001\u001a\u00020\u0003*\u00020%8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0016\u0010\u0093\u0001\u001a\u00020\u00038@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0092\u0001\u0010}¨\u0006\u0096\u0001"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl;", "", "Lkotlin/Function1;", "", "", "t", "()Lkotlin/jvm/functions/Function1;", "M", "()V", "N", "Lkotlinx/coroutines/j2;", "", "Lkotlinx/coroutines/debug/internal/e;", "map", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", "", "indent", "d", "(Lkotlinx/coroutines/j2;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;)V", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "Lkotlin/coroutines/CoroutineContext;", "create", "", ContextChain.TAG_INFRA, "(Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "P", "(Ljava/lang/Object;)Ljava/lang/String;", y.b.f83920h, "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;)Z", "Ljava/io/PrintStream;", "out", "j", "(Ljava/io/PrintStream;)V", "Ljava/lang/StackTraceElement;", s.b.f83844a, "D", "(Ljava/io/PrintStream;Ljava/util/List;)V", t.b.f83859d, "Ljava/lang/Thread;", "thread", "coroutineTrace", "n", "(Ljava/lang/String;Ljava/lang/Thread;Ljava/util/List;)Ljava/util/List;", "", "indexOfResumeWith", "", "actualTrace", "Lkotlin/Pair;", "o", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)Lkotlin/Pair;", "frameIndex", "p", "(I[Ljava/lang/StackTraceElement;Ljava/util/List;)I", "Lkotlin/coroutines/Continuation;", TypedValues.Attributes.S_FRAME, ExifInterface.LATITUDE_SOUTH, "(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Ljava/lang/String;)V", "I", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "owner", ExifInterface.GPS_DIRECTION_TRUE, "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;Lkotlin/coroutines/Continuation;Ljava/lang/String;)V", "B", "(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "C", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "Lkotlinx/coroutines/debug/internal/k;", "O", "(Ljava/util/List;)Lkotlinx/coroutines/debug/internal/k;", "completion", "e", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/k;)Lkotlin/coroutines/Continuation;", ExifInterface.LONGITUDE_EAST, "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;)V", "", "throwable", "J", "(Ljava/lang/Throwable;)Ljava/util/List;", y.b.f83919g, "Q", "job", "w", "(Lkotlinx/coroutines/j2;)Ljava/lang/String;", "h", "()[Ljava/lang/Object;", "Lkotlinx/coroutines/debug/internal/d;", "info", "m", "(Lkotlinx/coroutines/debug/internal/d;)Ljava/lang/String;", "g", "()Ljava/util/List;", "Lkotlinx/coroutines/debug/internal/DebuggerInfo;", "k", "f", "l", "(Lkotlinx/coroutines/debug/internal/d;Ljava/util/List;)Ljava/util/List;", "G", "(Lkotlin/coroutines/Continuation;)V", "H", "F", "(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;", "b", "Ljava/lang/String;", "ARTIFICIAL_FRAME_MESSAGE", "Ljava/text/SimpleDateFormat;", "c", "Ljava/text/SimpleDateFormat;", "dateFormat", "Ljava/lang/Thread;", "weakRefCleanerThread", "Lkotlinx/coroutines/debug/internal/b;", "Lkotlinx/coroutines/debug/internal/b;", "capturedCoroutinesMap", "installations", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "Ljava/util/concurrent/locks/ReentrantReadWriteLock;", "coroutineStateLock", "Z", "v", "()Z", "L", "(Z)V", "sanitizeStackTraces", "u", "K", "enableCreationStackTraces", "Lkotlin/jvm/functions/Function1;", "dynamicAttach", "callerInfoCache", "", "q", "()Ljava/util/Set;", "capturedCoroutines", "r", "getDebugString$annotations", "(Lkotlinx/coroutines/j2;)V", "debugString", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Ljava/lang/StackTraceElement;)Z", "isInternalMethod", "z", "isInstalled", "<init>", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class DebugProbesImpl {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final DebugProbesImpl f85154a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f85155b = "Coroutine creation stacktrace";
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final SimpleDateFormat f85156c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private static Thread f85157d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private static final kotlinx.coroutines.debug.internal.b<a<?>, Boolean> f85158e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ g f85159f;

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f85160g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private static final ReentrantReadWriteLock f85161h;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f85162i;
    private static volatile int installations;

    /* renamed from: j  reason: collision with root package name */
    private static boolean f85163j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private static final Function1<Boolean, Unit> f85164k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private static final kotlinx.coroutines.debug.internal.b<CoroutineStackFrame, kotlinx.coroutines.debug.internal.e> f85165l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DebugProbesImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B'\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J \u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u000bH\u0016R\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0013\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "", "toString", "a", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/debug/internal/e;", "b", "Lkotlinx/coroutines/debug/internal/e;", "info", "c", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", TypedValues.Attributes.S_FRAME, "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "callerFrame", "<init>", "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/debug/internal/e;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a<T> implements Continuation<T>, CoroutineStackFrame {
        @JvmField
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public final Continuation<T> f85166a;
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public final kotlinx.coroutines.debug.internal.e f85167b;
        @m8.h

        /* renamed from: c  reason: collision with root package name */
        private final CoroutineStackFrame f85168c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@m8.g Continuation<? super T> continuation, @m8.g kotlinx.coroutines.debug.internal.e eVar, @m8.h CoroutineStackFrame coroutineStackFrame) {
            this.f85166a = continuation;
            this.f85167b = eVar;
            this.f85168c = coroutineStackFrame;
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @m8.h
        public CoroutineStackFrame getCallerFrame() {
            CoroutineStackFrame coroutineStackFrame = this.f85168c;
            if (coroutineStackFrame == null) {
                return null;
            }
            return coroutineStackFrame.getCallerFrame();
        }

        @Override // kotlin.coroutines.Continuation
        @m8.g
        public CoroutineContext getContext() {
            return this.f85166a.getContext();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @m8.h
        public StackTraceElement getStackTraceElement() {
            CoroutineStackFrame coroutineStackFrame = this.f85168c;
            if (coroutineStackFrame == null) {
                return null;
            }
            return coroutineStackFrame.getStackTraceElement();
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@m8.g Object obj) {
            DebugProbesImpl.f85154a.E(this);
            this.f85166a.resumeWith(obj);
        }

        @m8.g
        public String toString() {
            return this.f85166a.toString();
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((a) t9).f85167b.f85216b), Long.valueOf(((a) t10).f85167b.f85216b));
            return compareValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DebugProbesImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\n\u0010\u0001\u001a\u0006\u0012\u0002\b\u00030\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;", "it", "", "a", "(Lkotlinx/coroutines/debug/internal/DebugProbesImpl$a;)Ljava/lang/Boolean;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class c extends Lambda implements Function1<a<?>, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f85169a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.g
        /* renamed from: a */
        public final Boolean invoke(@m8.g a<?> aVar) {
            return Boolean.valueOf(!DebugProbesImpl.f85154a.y(aVar));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "a", "kotlin.jvm.PlatformType", "b", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class d<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t9, T t10) {
            int compareValues;
            compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((a) t9).f85167b.f85216b), Long.valueOf(((a) t10).f85167b.f85216b));
            return compareValues;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DebugProbesImpl.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class e extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final e f85171a = new e();

        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            DebugProbesImpl.f85165l.f();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.debug.internal.g] */
    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        f85154a = debugProbesImpl;
        f85156c = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        f85158e = new kotlinx.coroutines.debug.internal.b<>(false, 1, null);
        f85159f = new Object(0L) { // from class: kotlinx.coroutines.debug.internal.g
            volatile long sequenceNumber;

            {
                this.sequenceNumber = r1;
            }
        };
        f85161h = new ReentrantReadWriteLock();
        f85162i = true;
        f85163j = true;
        f85164k = debugProbesImpl.t();
        f85165l = new kotlinx.coroutines.debug.internal.b<>(true);
        f85160g = AtomicLongFieldUpdater.newUpdater(g.class, "sequenceNumber");
    }

    private DebugProbesImpl() {
    }

    private final boolean A(StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, null);
        return startsWith$default;
    }

    private final a<?> B(Continuation<?> continuation) {
        CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
        if (coroutineStackFrame == null) {
            return null;
        }
        return C(coroutineStackFrame);
    }

    private final a<?> C(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof a)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (a) coroutineStackFrame;
    }

    private final void D(PrintStream printStream, List<StackTraceElement> list) {
        for (StackTraceElement stackTraceElement : list) {
            printStream.print(Intrinsics.stringPlus("\n\tat ", stackTraceElement));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(a<?> aVar) {
        f85158e.remove(aVar);
        CoroutineStackFrame f10 = aVar.f85167b.f();
        CoroutineStackFrame I = f10 == null ? null : I(f10);
        if (I == null) {
            return;
        }
        f85165l.remove(I);
    }

    private final CoroutineStackFrame I(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    private final <T extends Throwable> List<StackTraceElement> J(T t9) {
        StackTraceElement[] stackTrace = t9.getStackTrace();
        int length = stackTrace.length;
        int i4 = -1;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i10 = length2 - 1;
                if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                    i4 = length2;
                    break;
                } else if (i10 < 0) {
                    break;
                } else {
                    length2 = i10;
                }
            }
        }
        if (!f85162i) {
            int i11 = length - i4;
            ArrayList arrayList = new ArrayList(i11);
            int i12 = 0;
            while (i12 < i11) {
                int i13 = i12 + 1;
                arrayList.add(i12 == 0 ? o0.d(f85155b) : stackTrace[i12 + i4]);
                i12 = i13;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i4) + 1);
        arrayList2.add(o0.d(f85155b));
        while (true) {
            i4++;
            while (i4 < length) {
                if (A(stackTrace[i4])) {
                    arrayList2.add(stackTrace[i4]);
                    int i14 = i4 + 1;
                    while (i14 < length && A(stackTrace[i14])) {
                        i14++;
                    }
                    int i15 = i14 - 1;
                    int i16 = i15;
                    while (i16 > i4 && stackTrace[i16].getFileName() == null) {
                        i16--;
                    }
                    if (i16 > i4 && i16 < i15) {
                        arrayList2.add(stackTrace[i16]);
                    }
                    arrayList2.add(stackTrace[i15]);
                    i4 = i14;
                }
            }
            return arrayList2;
            arrayList2.add(stackTrace[i4]);
        }
    }

    private final void M() {
        Thread thread;
        thread = ThreadsKt.thread((r12 & 1) != 0, (r12 & 2) != 0 ? false : true, (r12 & 4) != 0 ? null : null, (r12 & 8) != 0 ? null : "Coroutines Debugger Cleaner", (r12 & 16) != 0 ? -1 : 0, e.f85171a);
        f85157d = thread;
    }

    private final void N() {
        Thread thread = f85157d;
        if (thread == null) {
            return;
        }
        f85157d = null;
        thread.interrupt();
        thread.join();
    }

    private final k O(List<StackTraceElement> list) {
        k kVar = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                kVar = new k(kVar, listIterator.previous());
            }
        }
        return kVar;
    }

    private final String P(Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append('\"');
        sb.append(obj);
        sb.append('\"');
        return sb.toString();
    }

    private final void R(CoroutineStackFrame coroutineStackFrame, String str) {
        ReentrantReadWriteLock.ReadLock readLock = f85161h.readLock();
        readLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                kotlinx.coroutines.debug.internal.b<CoroutineStackFrame, kotlinx.coroutines.debug.internal.e> bVar = f85165l;
                kotlinx.coroutines.debug.internal.e remove = bVar.remove(coroutineStackFrame);
                if (remove == null) {
                    a<?> C = debugProbesImpl.C(coroutineStackFrame);
                    CoroutineStackFrame coroutineStackFrame2 = null;
                    remove = C == null ? null : C.f85167b;
                    if (remove == null) {
                        return;
                    }
                    CoroutineStackFrame f10 = remove.f();
                    if (f10 != null) {
                        coroutineStackFrame2 = debugProbesImpl.I(f10);
                    }
                    if (coroutineStackFrame2 != null) {
                        bVar.remove(coroutineStackFrame2);
                    }
                }
                remove.j(str, (Continuation) coroutineStackFrame);
                CoroutineStackFrame I = debugProbesImpl.I(coroutineStackFrame);
                if (I == null) {
                    return;
                }
                bVar.put(I, remove);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }

    private final void S(Continuation<?> continuation, String str) {
        if (z()) {
            if (Intrinsics.areEqual(str, f.f85232b) && KotlinVersion.CURRENT.isAtLeast(1, 3, 30)) {
                CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
                if (coroutineStackFrame == null) {
                    return;
                }
                R(coroutineStackFrame, str);
                return;
            }
            a<?> B = B(continuation);
            if (B == null) {
                return;
            }
            T(B, continuation, str);
        }
    }

    private final void T(a<?> aVar, Continuation<?> continuation, String str) {
        ReentrantReadWriteLock.ReadLock readLock = f85161h.readLock();
        readLock.lock();
        try {
            if (f85154a.z()) {
                aVar.f85167b.j(str, continuation);
                Unit unit = Unit.INSTANCE;
            }
        } finally {
            readLock.unlock();
        }
    }

    private final void d(j2 j2Var, Map<j2, kotlinx.coroutines.debug.internal.e> map, StringBuilder sb, String str) {
        Object firstOrNull;
        kotlinx.coroutines.debug.internal.e eVar = map.get(j2Var);
        if (eVar == null) {
            if (!(j2Var instanceof l0)) {
                sb.append(str + r(j2Var) + '\n');
                str = Intrinsics.stringPlus(str, "\t");
            }
        } else {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) eVar.h());
            String g4 = eVar.g();
            sb.append(str + r(j2Var) + ", continuation is " + g4 + " at line " + ((StackTraceElement) firstOrNull) + '\n');
            str = Intrinsics.stringPlus(str, "\t");
        }
        for (j2 j2Var2 : j2Var.getChildren()) {
            d(j2Var2, map, sb, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> Continuation<T> e(Continuation<? super T> continuation, k kVar) {
        if (z()) {
            a<?> aVar = new a<>(continuation, new kotlinx.coroutines.debug.internal.e(continuation.getContext(), kVar, f85160g.incrementAndGet(f85159f)), kVar);
            kotlinx.coroutines.debug.internal.b<a<?>, Boolean> bVar = f85158e;
            bVar.put(aVar, Boolean.TRUE);
            if (!z()) {
                bVar.clear();
            }
            return aVar;
        }
        return continuation;
    }

    private final <R> List<R> i(Function2<? super a<?>, ? super CoroutineContext, ? extends R> function2) {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.q());
                return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(asSequence, new b()), new DebugProbesImpl$dumpCoroutinesInfoImpl$1$3(function2)));
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            InlineMarker.finallyStart(1);
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
            InlineMarker.finallyEnd(1);
        }
    }

    private final void j(PrintStream printStream) {
        Sequence asSequence;
        String g4;
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                printStream.print(Intrinsics.stringPlus("Coroutines dump ", f85156c.format(Long.valueOf(System.currentTimeMillis()))));
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.q());
                for (a aVar : SequencesKt.sortedWith(SequencesKt.filter(asSequence, c.f85169a), new d())) {
                    kotlinx.coroutines.debug.internal.e eVar = aVar.f85167b;
                    List<StackTraceElement> h4 = eVar.h();
                    DebugProbesImpl debugProbesImpl2 = f85154a;
                    List<StackTraceElement> n9 = debugProbesImpl2.n(eVar.g(), eVar.f85219e, h4);
                    if (Intrinsics.areEqual(eVar.g(), f.f85232b) && n9 == h4) {
                        g4 = Intrinsics.stringPlus(eVar.g(), " (Last suspension stacktrace, not an actual stacktrace)");
                    } else {
                        g4 = eVar.g();
                    }
                    printStream.print("\n\nCoroutine " + aVar.f85166a + ", state: " + g4);
                    if (h4.isEmpty()) {
                        printStream.print(Intrinsics.stringPlus("\n\tat ", o0.d(f85155b)));
                        debugProbesImpl2.D(printStream, eVar.e());
                    } else {
                        debugProbesImpl2.D(printStream, n9);
                    }
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        }
    }

    private final List<StackTraceElement> n(String str, Thread thread, List<StackTraceElement> list) {
        Object m70constructorimpl;
        if (!Intrinsics.areEqual(str, f.f85232b) || thread == null) {
            return list;
        }
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(thread.getStackTrace());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m76isFailureimpl(m70constructorimpl)) {
            m70constructorimpl = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) m70constructorimpl;
        if (stackTraceElementArr == null) {
            return list;
        }
        int length = stackTraceElementArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                i4 = -1;
                break;
            }
            int i10 = i4 + 1;
            StackTraceElement stackTraceElement = stackTraceElementArr[i4];
            if (Intrinsics.areEqual(stackTraceElement.getClassName(), "kotlin.coroutines.jvm.internal.BaseContinuationImpl") && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i4 = i10;
        }
        Pair<Integer, Integer> o9 = o(i4, stackTraceElementArr, list);
        int intValue = o9.component1().intValue();
        int intValue2 = o9.component2().intValue();
        if (intValue == -1) {
            return list;
        }
        ArrayList arrayList = new ArrayList((((list.size() + i4) - intValue) - 1) - intValue2);
        int i11 = i4 - intValue2;
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(stackTraceElementArr[i12]);
        }
        int size = list.size();
        for (int i13 = intValue + 1; i13 < size; i13++) {
            arrayList.add(list.get(i13));
        }
        return arrayList;
    }

    private final Pair<Integer, Integer> o(int i4, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        int i10 = 0;
        while (i10 < 3) {
            int i11 = i10 + 1;
            int p9 = f85154a.p((i4 - 1) - i10, stackTraceElementArr, list);
            if (p9 != -1) {
                return TuplesKt.to(Integer.valueOf(p9), Integer.valueOf(i10));
            }
            i10 = i11;
        }
        return TuplesKt.to(-1, 0);
    }

    private final int p(int i4, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt.getOrNull(stackTraceElementArr, i4);
        if (stackTraceElement == null) {
            return -1;
        }
        int i10 = 0;
        for (StackTraceElement stackTraceElement2 : list) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    private final Set<a<?>> q() {
        return f85158e.keySet();
    }

    private final String r(j2 j2Var) {
        return j2Var instanceof q2 ? ((q2) j2Var).e1() : j2Var.toString();
    }

    private static /* synthetic */ void s(j2 j2Var) {
    }

    private final Function1<Boolean, Unit> t() {
        Object m70constructorimpl;
        Object newInstance;
        try {
            Result.Companion companion = Result.Companion;
            newInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        if (newInstance != null) {
            m70constructorimpl = Result.m70constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(newInstance, 1));
            if (Result.m76isFailureimpl(m70constructorimpl)) {
                m70constructorimpl = null;
            }
            return (Function1) m70constructorimpl;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean y(a<?> aVar) {
        CoroutineContext c10 = aVar.f85167b.c();
        j2 j2Var = c10 == null ? null : (j2) c10.get(j2.f86331k2);
        if (j2Var != null && j2Var.i()) {
            f85158e.remove(aVar);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @m8.g
    public final <T> Continuation<T> F(@m8.g Continuation<? super T> continuation) {
        if (z() && B(continuation) == null) {
            return e(continuation, f85163j ? O(J(new Exception())) : null);
        }
        return continuation;
    }

    public final void G(@m8.g Continuation<?> continuation) {
        S(continuation, f.f85232b);
    }

    public final void H(@m8.g Continuation<?> continuation) {
        S(continuation, f.f85233c);
    }

    public final void K(boolean z9) {
        f85163j = z9;
    }

    public final void L(boolean z9) {
        f85162i = z9;
    }

    public final void Q() {
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                installations--;
                if (installations != 0) {
                    return;
                }
                debugProbesImpl.N();
                f85158e.clear();
                f85165l.clear();
                if (kotlinx.coroutines.debug.internal.a.f85180a.a()) {
                    while (i4 < readHoldCount) {
                        i4++;
                        readLock.lock();
                    }
                    writeLock.unlock();
                    return;
                }
                Function1<Boolean, Unit> function1 = f85164k;
                if (function1 != null) {
                    function1.invoke(Boolean.FALSE);
                }
                Unit unit = Unit.INSTANCE;
                while (i4 < readHoldCount) {
                    i4++;
                    readLock.lock();
                }
                writeLock.unlock();
                return;
            }
            throw new IllegalStateException("Agent was not installed".toString());
        } finally {
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        }
    }

    public final void f(@m8.g PrintStream printStream) {
        synchronized (printStream) {
            f85154a.j(printStream);
            Unit unit = Unit.INSTANCE;
        }
    }

    @m8.g
    public final List<kotlinx.coroutines.debug.internal.d> g() {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.q());
                return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(asSequence, new b()), new DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1()));
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        }
    }

    @m8.g
    public final Object[] h() {
        String joinToString$default;
        String name;
        String trimIndent;
        List<kotlinx.coroutines.debug.internal.d> g4 = g();
        int size = g4.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (kotlinx.coroutines.debug.internal.d dVar : g4) {
            CoroutineContext a10 = dVar.a();
            r0 r0Var = (r0) a10.get(r0.f86391b);
            Long l10 = null;
            String P = (r0Var == null || (name = r0Var.getName()) == null) ? null : P(name);
            n0 n0Var = (n0) a10.get(n0.Key);
            String P2 = n0Var == null ? null : P(n0Var);
            StringBuilder sb = new StringBuilder();
            sb.append("\n                {\n                    \"name\": ");
            sb.append((Object) P);
            sb.append(",\n                    \"id\": ");
            q0 q0Var = (q0) a10.get(q0.f86357b);
            if (q0Var != null) {
                l10 = Long.valueOf(q0Var.s0());
            }
            sb.append(l10);
            sb.append(",\n                    \"dispatcher\": ");
            sb.append((Object) P2);
            sb.append(",\n                    \"sequenceNumber\": ");
            sb.append(dVar.f());
            sb.append(",\n                    \"state\": \"");
            sb.append(dVar.g());
            sb.append("\"\n                } \n                ");
            trimIndent = StringsKt__IndentKt.trimIndent(sb.toString());
            arrayList3.add(trimIndent);
            arrayList2.add(dVar.d());
            arrayList.add(dVar.e());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null);
        sb2.append(joinToString$default);
        sb2.append(']');
        Object[] array = arrayList.toArray(new Thread[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        Object[] array2 = arrayList2.toArray(new CoroutineStackFrame[0]);
        Objects.requireNonNull(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        Object[] array3 = g4.toArray(new kotlinx.coroutines.debug.internal.d[0]);
        Objects.requireNonNull(array3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return new Object[]{sb2.toString(), array, array2, array3};
    }

    @m8.g
    public final List<DebuggerInfo> k() {
        Sequence asSequence;
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                asSequence = CollectionsKt___CollectionsKt.asSequence(debugProbesImpl.q());
                return SequencesKt.toList(SequencesKt.mapNotNull(SequencesKt.sortedWith(asSequence, new b()), new DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1()));
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        }
    }

    @m8.g
    public final List<StackTraceElement> l(@m8.g kotlinx.coroutines.debug.internal.d dVar, @m8.g List<StackTraceElement> list) {
        return n(dVar.g(), dVar.e(), list);
    }

    @m8.g
    public final String m(@m8.g kotlinx.coroutines.debug.internal.d dVar) {
        String joinToString$default;
        String trimIndent;
        List<StackTraceElement> l10 = l(dVar, dVar.h());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : l10) {
            StringBuilder sb = new StringBuilder();
            sb.append("\n                {\n                    \"declaringClass\": \"");
            sb.append((Object) stackTraceElement.getClassName());
            sb.append("\",\n                    \"methodName\": \"");
            sb.append((Object) stackTraceElement.getMethodName());
            sb.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            sb.append((Object) (fileName == null ? null : P(fileName)));
            sb.append(",\n                    \"lineNumber\": ");
            sb.append(stackTraceElement.getLineNumber());
            sb.append("\n                }\n                ");
            trimIndent = StringsKt__IndentKt.trimIndent(sb.toString());
            arrayList.add(trimIndent);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null);
        sb2.append(joinToString$default);
        sb2.append(']');
        return sb2.toString();
    }

    public final boolean u() {
        return f85163j;
    }

    public final boolean v() {
        return f85162i;
    }

    @m8.g
    public final String w(@m8.g j2 j2Var) {
        int collectionSizeOrDefault;
        int coerceAtLeast;
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            if (debugProbesImpl.z()) {
                Set<a<?>> q9 = debugProbesImpl.q();
                ArrayList arrayList = new ArrayList();
                for (Object obj : q9) {
                    if (((a) obj).f85166a.getContext().get(j2.f86331k2) != null) {
                        arrayList.add(obj);
                    }
                }
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(MapsKt.mapCapacity(collectionSizeOrDefault), 16);
                LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
                for (Object obj2 : arrayList) {
                    linkedHashMap.put(m2.B(((a) obj2).f85166a.getContext()), ((a) obj2).f85167b);
                }
                StringBuilder sb = new StringBuilder();
                f85154a.d(j2Var, linkedHashMap, sb, "");
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
                return sb2;
            }
            throw new IllegalStateException("Debug probes are not installed".toString());
        } finally {
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        }
    }

    public final void x() {
        ReentrantReadWriteLock reentrantReadWriteLock = f85161h;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        int i4 = 0;
        int readHoldCount = reentrantReadWriteLock.getWriteHoldCount() == 0 ? reentrantReadWriteLock.getReadHoldCount() : 0;
        int i10 = 0;
        while (i10 < readHoldCount) {
            i10++;
            readLock.unlock();
        }
        ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
        writeLock.lock();
        try {
            DebugProbesImpl debugProbesImpl = f85154a;
            installations++;
            if (installations > 1) {
                return;
            }
            debugProbesImpl.M();
            if (kotlinx.coroutines.debug.internal.a.f85180a.a()) {
                while (i4 < readHoldCount) {
                    i4++;
                    readLock.lock();
                }
                writeLock.unlock();
                return;
            }
            Function1<Boolean, Unit> function1 = f85164k;
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            Unit unit = Unit.INSTANCE;
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        } finally {
            while (i4 < readHoldCount) {
                i4++;
                readLock.lock();
            }
            writeLock.unlock();
        }
    }

    public final boolean z() {
        return installations > 0;
    }
}
