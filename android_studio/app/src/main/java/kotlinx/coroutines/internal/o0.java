package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.h4;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.e2;

/* compiled from: StackTraceRecovery.kt */
@Metadata(bv = {}, d1 = {"\u0000`\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\u001a!\u0010\u0003\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u001d\u0010\u0005\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0004\u001a.\u0010\b\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006H\u0080\b¢\u0006\u0004\b\b\u0010\t\u001a-\u0010\f\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u00002\n\u0010\u0007\u001a\u00060\nj\u0002`\u000bH\u0002¢\u0006\u0004\b\f\u0010\r\u001a#\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000e\u0010\u0004\u001a;\u0010\u0015\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00028\u00002\u0010\u0010\u0014\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016\u001a3\u0010\u0019\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u000e\u0012\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00180\u0017\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00028\u0000H\u0002¢\u0006\u0004\b\u0019\u0010\u001a\u001a3\u0010\u001d\u001a\u00020\u001c2\u0010\u0010\u001b\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00182\u0010\u0010\u0010\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u0011H\u0002¢\u0006\u0004\b\u001d\u0010\u001e\u001a\u001b\u0010 \u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u0000H\u0080Hø\u0001\u0000¢\u0006\u0004\b \u0010!\u001a\"\u0010\"\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0080\b¢\u0006\u0004\b\"\u0010\u0004\u001a!\u0010#\u001a\u00028\u0000\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00028\u0000H\u0000¢\u0006\u0004\b#\u0010\u0004\u001a\u001e\u0010$\u001a\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00112\n\u0010\u0007\u001a\u00060\nj\u0002`\u000bH\u0002\u001a\u0014\u0010'\u001a\u00060\u0012j\u0002`\u00132\u0006\u0010&\u001a\u00020%H\u0007\u001a\u0010\u0010)\u001a\u00020(*\u00060\u0012j\u0002`\u0013H\u0000\u001a%\u0010,\u001a\u00020+*\f\u0012\b\u0012\u00060\u0012j\u0002`\u00130\u00182\u0006\u0010*\u001a\u00020%H\u0002¢\u0006\u0004\b,\u0010-\u001a\u001c\u0010.\u001a\u00020(*\u00060\u0012j\u0002`\u00132\n\u0010\u0019\u001a\u00060\u0012j\u0002`\u0013H\u0002\u001a\u0014\u0010/\u001a\u00020\u001c*\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0000H\u0000\"\u0014\u00102\u001a\u00020%8\u0002X\u0082T¢\u0006\u0006\n\u0004\b0\u00101\"\u0014\u00104\u001a\u00020%8\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u00101\"\u001c\u00107\u001a\n 5*\u0004\u0018\u00010%0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00101\"\u001c\u00108\u001a\n 5*\u0004\u0018\u00010%0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u00101*\f\b\u0000\u00109\"\u00020\n2\u00020\n*\f\b\u0000\u0010:\"\u00020\u00122\u00020\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006;"}, d2 = {"", ExifInterface.LONGITUDE_EAST, h4.b.f83287e, "p", "(Ljava/lang/Throwable;)Ljava/lang/Throwable;", "r", "Lkotlin/coroutines/Continuation;", "continuation", "q", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "Lkotlinx/coroutines/internal/CoroutineStackFrame;", "o", "(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;", "s", "cause", "result", "Ljava/util/ArrayDeque;", "Ljava/lang/StackTraceElement;", "Lkotlinx/coroutines/internal/StackTraceElement;", "resultStackTrace", "f", "(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/ArrayDeque;)Ljava/lang/Throwable;", "Lkotlin/Pair;", "", "e", "(Ljava/lang/Throwable;)Lkotlin/Pair;", "recoveredStacktrace", "", "l", "([Ljava/lang/StackTraceElement;Ljava/util/ArrayDeque;)V", "", "m", "(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "t", "u", "g", "", "message", "d", "", "k", "methodName", "", ContextChain.TAG_INFRA, "([Ljava/lang/StackTraceElement;Ljava/lang/String;)I", "h", "j", "a", "Ljava/lang/String;", "baseContinuationImplClass", "b", "stackTraceRecoveryClass", "kotlin.jvm.PlatformType", "c", "baseContinuationImplClassName", "stackTraceRecoveryClassName", "CoroutineStackFrame", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class o0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final String f86283a = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private static final String f86284b = "kotlinx.coroutines.internal.StackTraceRecoveryKt";

    /* renamed from: c  reason: collision with root package name */
    private static final String f86285c;

    /* renamed from: d  reason: collision with root package name */
    private static final String f86286d;

    static {
        Object m70constructorimpl;
        Object m70constructorimpl2;
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(Class.forName(f86283a).getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m73exceptionOrNullimpl(m70constructorimpl) != null) {
            m70constructorimpl = f86283a;
        }
        f86285c = (String) m70constructorimpl;
        try {
            Result.Companion companion3 = Result.Companion;
            m70constructorimpl2 = Result.m70constructorimpl(o0.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.Companion;
            m70constructorimpl2 = Result.m70constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m73exceptionOrNullimpl(m70constructorimpl2) != null) {
            m70constructorimpl2 = f86284b;
        }
        f86286d = (String) m70constructorimpl2;
    }

    public static /* synthetic */ void a() {
    }

    public static /* synthetic */ void b() {
    }

    @m8.g
    @e2
    public static final StackTraceElement d(@m8.g String str) {
        return new StackTraceElement(Intrinsics.stringPlus("\b\b\b(", str), "\b", "\b", -1);
    }

    private static final <E extends Throwable> Pair<E, StackTraceElement[]> e(E e4) {
        boolean z9;
        Throwable cause = e4.getCause();
        if (cause != null && Intrinsics.areEqual(cause.getClass(), e4.getClass())) {
            StackTraceElement[] stackTrace = e4.getStackTrace();
            int length = stackTrace.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    z9 = false;
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i4];
                i4++;
                if (k(stackTraceElement)) {
                    z9 = true;
                    break;
                }
            }
            if (z9) {
                return TuplesKt.to(cause, stackTrace);
            }
            return TuplesKt.to(e4, new StackTraceElement[0]);
        }
        return TuplesKt.to(e4, new StackTraceElement[0]);
    }

    private static final <E extends Throwable> E f(E e4, E e10, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(d("Coroutine boundary"));
        StackTraceElement[] stackTrace = e4.getStackTrace();
        int i4 = i(stackTrace, f86285c);
        int i10 = 0;
        if (i4 == -1) {
            Object[] array = arrayDeque.toArray(new StackTraceElement[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            e10.setStackTrace((StackTraceElement[]) array);
            return e10;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + i4];
        for (int i11 = 0; i11 < i4; i11++) {
            stackTraceElementArr[i11] = stackTrace[i11];
        }
        Iterator<StackTraceElement> it = arrayDeque.iterator();
        while (it.hasNext()) {
            int i12 = i10 + 1;
            stackTraceElementArr[i10 + i4] = it.next();
            i10 = i12;
        }
        e10.setStackTrace(stackTraceElementArr);
        return e10;
    }

    private static final ArrayDeque<StackTraceElement> g(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    private static final boolean h(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int i(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        int i4 = 0;
        while (i4 < length) {
            int i10 = i4 + 1;
            if (Intrinsics.areEqual(str, stackTraceElementArr[i4].getClassName())) {
                return i4;
            }
            i4 = i10;
        }
        return -1;
    }

    public static final void j(@m8.g Throwable th, @m8.g Throwable th2) {
        th.initCause(th2);
    }

    public static final boolean k(@m8.g StackTraceElement stackTraceElement) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "\b\b\b", false, 2, null);
        return startsWith$default;
    }

    private static final void l(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                i4 = -1;
                break;
            }
            int i10 = i4 + 1;
            if (k(stackTraceElementArr[i4])) {
                break;
            }
            i4 = i10;
        }
        int i11 = i4 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i11 > length2) {
            return;
        }
        while (true) {
            int i12 = length2 - 1;
            if (h(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i11) {
                return;
            }
            length2 = i12;
        }
    }

    @m8.h
    public static final Object m(@m8.g Throwable th, @m8.g Continuation<?> continuation) {
        throw th;
    }

    private static final Object n(Throwable th, Continuation<?> continuation) {
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E o(E e4, CoroutineStackFrame coroutineStackFrame) {
        Pair e10 = e(e4);
        Throwable th = (Throwable) e10.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) e10.component2();
        Throwable s9 = s(th);
        if (s9 == null) {
            return e4;
        }
        ArrayDeque<StackTraceElement> g4 = g(coroutineStackFrame);
        if (g4.isEmpty()) {
            return e4;
        }
        if (th != e4) {
            l(stackTraceElementArr, g4);
        }
        return (E) f(th, s9, g4);
    }

    @m8.g
    public static final <E extends Throwable> E p(@m8.g E e4) {
        return e4;
    }

    @m8.g
    public static final <E extends Throwable> E q(@m8.g E e4, @m8.g Continuation<?> continuation) {
        return e4;
    }

    private static final <E extends Throwable> E r(E e4) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = e4.getStackTrace();
        int length = stackTrace.length;
        int i4 = i(stackTrace, f86286d);
        int i10 = i4 + 1;
        int i11 = i(stackTrace, f86285c);
        int i12 = (length - i4) - (i11 == -1 ? 0 : length - i11);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i12];
        for (int i13 = 0; i13 < i12; i13++) {
            if (i13 == 0) {
                stackTraceElement = d("Coroutine boundary");
            } else {
                stackTraceElement = stackTrace[(i10 + i13) - 1];
            }
            stackTraceElementArr[i13] = stackTraceElement;
        }
        e4.setStackTrace(stackTraceElementArr);
        return e4;
    }

    private static final <E extends Throwable> E s(E e4) {
        E e10 = (E) ExceptionsConstructorKt.h(e4);
        if (e10 == null) {
            return null;
        }
        if ((e4 instanceof kotlinx.coroutines.l0) || Intrinsics.areEqual(e10.getMessage(), e4.getMessage())) {
            return e10;
        }
        return null;
    }

    @m8.g
    public static final <E extends Throwable> E t(@m8.g E e4) {
        return e4;
    }

    @m8.g
    public static final <E extends Throwable> E u(@m8.g E e4) {
        E e10 = (E) e4.getCause();
        if (e10 != null && Intrinsics.areEqual(e10.getClass(), e4.getClass())) {
            StackTraceElement[] stackTrace = e4.getStackTrace();
            int length = stackTrace.length;
            boolean z9 = false;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                }
                StackTraceElement stackTraceElement = stackTrace[i4];
                i4++;
                if (k(stackTraceElement)) {
                    z9 = true;
                    break;
                }
            }
            if (z9) {
                return e10;
            }
        }
        return e4;
    }
}
