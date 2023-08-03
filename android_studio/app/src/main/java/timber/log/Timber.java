package timber.log;

import android.os.Build;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import m8.f;
import m8.g;
import m8.h;

/* compiled from: Timber.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00042\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Ltimber/log/Timber;", "", "<init>", "()V", "a", "b", "c", "timber_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class Timber {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final b f93860a = new b(null);
    @g

    /* renamed from: b  reason: collision with root package name */
    private static final ArrayList<c> f93861b = new ArrayList<>();
    @g

    /* renamed from: c  reason: collision with root package name */
    private static volatile c[] f93862c = new c[0];

    /* compiled from: Timber.kt */
    @Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u000b\b\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J,\u0010\r\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\t\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014R\"\u0010\u0012\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u00040\u00040\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00048PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0019"}, d2 = {"Ltimber/log/Timber$a;", "Ltimber/log/Timber$c;", "Ljava/lang/StackTraceElement;", "element", "", "D", "", t.b.f83857b, y.b.f83916d, "message", "", "t", "", "p", "", "kotlin.jvm.PlatformType", "b", "Ljava/util/List;", "fqcnIgnore", "j", "()Ljava/lang/String;", "<init>", "()V", "c", "a", "timber_release"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static class a extends c {

        /* renamed from: d  reason: collision with root package name */
        private static final int f93864d = 4000;

        /* renamed from: e  reason: collision with root package name */
        private static final int f93865e = 23;
        @g

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f93867b = CollectionsKt.listOf((Object[]) new String[]{Timber.class.getName(), b.class.getName(), c.class.getName(), a.class.getName()});
        @g

        /* renamed from: c  reason: collision with root package name */
        public static final C0843a f93863c = new C0843a(null);

        /* renamed from: f  reason: collision with root package name */
        private static final Pattern f93866f = Pattern.compile("(\\$\\d+)+$");

        /* compiled from: Timber.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\f"}, d2 = {"Ltimber/log/Timber$a$a;", "", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "ANONYMOUS_CLASS", "Ljava/util/regex/Pattern;", "", "MAX_LOG_LENGTH", "I", "MAX_TAG_LENGTH", "<init>", "()V", "timber_release"}, k = 1, mv = {1, 5, 1})
        /* renamed from: timber.log.Timber$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        public static final class C0843a {
            private C0843a() {
            }

            public /* synthetic */ C0843a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        @h
        protected String D(@g StackTraceElement element) {
            Intrinsics.checkNotNullParameter(element, "element");
            String className = element.getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "element.className");
            String substringAfterLast$default = StringsKt.substringAfterLast$default(className, '.', (String) null, 2, (Object) null);
            Matcher matcher = f93866f.matcher(substringAfterLast$default);
            if (matcher.find()) {
                substringAfterLast$default = matcher.replaceAll("");
                Intrinsics.checkNotNullExpressionValue(substringAfterLast$default, "m.replaceAll(\"\")");
            }
            if (substringAfterLast$default.length() <= 23 || Build.VERSION.SDK_INT >= 26) {
                return substringAfterLast$default;
            }
            String substring = substringAfterLast$default.substring(0, 23);
            Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }

        @Override // timber.log.Timber.c
        @h
        public String j() {
            String j4 = super.j();
            if (j4 == null) {
                StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                Intrinsics.checkNotNullExpressionValue(stackTrace, "Throwable().stackTrace");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (!this.f93867b.contains(stackTraceElement.getClassName())) {
                        return D(stackTraceElement);
                    }
                }
                throw new NoSuchElementException("Array contains no element matching the predicate.");
            }
            return j4;
        }

        @Override // timber.log.Timber.c
        protected void p(int i4, @h String str, @g String message, @h Throwable th) {
            int min;
            Intrinsics.checkNotNullParameter(message, "message");
            if (message.length() < f93864d) {
                if (i4 == 7) {
                    Log.wtf(str, message);
                    return;
                } else {
                    Log.println(i4, str, message);
                    return;
                }
            }
            int i10 = 0;
            int length = message.length();
            while (i10 < length) {
                int indexOf$default = StringsKt.indexOf$default((CharSequence) message, '\n', i10, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    indexOf$default = length;
                }
                while (true) {
                    min = Math.min(indexOf$default, i10 + f93864d);
                    String substring = message.substring(i10, min);
                    Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    if (i4 == 7) {
                        Log.wtf(str, substring);
                    } else {
                        Log.println(i4, str, substring);
                    }
                    if (min >= indexOf$default) {
                        break;
                    }
                    i10 = min;
                }
                i10 = min + 1;
            }
        }
    }

    /* compiled from: Timber.kt */
    @Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b9\u0010:J3\u0010\b\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\b\u0010\tJ=\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J3\u0010\u000f\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u000f\u0010\tJ=\u0010\u0010\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0010\u0010\rJ\u0012\u0010\u0011\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J3\u0010\u0012\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0012\u0010\tJ=\u0010\u0013\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0013\u0010\rJ\u0012\u0010\u0014\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J3\u0010\u0015\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0015\u0010\tJ=\u0010\u0016\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0016\u0010\rJ\u0012\u0010\u0017\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J3\u0010\u0018\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0018\u0010\tJ=\u0010\u0019\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0019\u0010\rJ\u0012\u0010\u001a\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J3\u0010\u001b\u001a\u00020\u00072\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u001b\u0010\tJ=\u0010\u001c\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u001c\u0010\rJ\u0012\u0010\u001d\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J;\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001e2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b \u0010!JE\u0010\"\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0006\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00050\u0004\"\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\"\u0010#J\u001a\u0010$\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0017J,\u0010&\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010%\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014J\t\u0010'\u001a\u00020\u0001H\u0097\bJ\u0010\u0010(\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u0002H\u0007J\u0010\u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0001H\u0007J#\u0010,\u001a\u00020\u00072\u0012\u0010+\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0004\"\u00020\u0001H\u0007¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0001H\u0007J\b\u0010/\u001a\u00020\u0007H\u0007J\u000e\u00101\u001a\b\u0012\u0004\u0012\u00020\u000100H\u0007R\u0011\u00104\u001a\u00020\u001e8G¢\u0006\u0006\u001a\u0004\b2\u00103R\u001c\u00105\u001a\b\u0012\u0004\u0012\u00020\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u001a\u0010+\u001a\b\u0012\u0004\u0012\u00020\u0001078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00108¨\u0006;"}, d2 = {"Ltimber/log/Timber$b;", "Ltimber/log/Timber$c;", "", "message", "", "", "args", "", "u", "(Ljava/lang/String;[Ljava/lang/Object;)V", "", "t", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V", "v", "a", "c", "b", "k", "m", "l", y.b.f83919g, "z", y.b.f83920h, "d", "f", "e", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "C", "B", "", t.b.f83857b, "q", "(ILjava/lang/String;[Ljava/lang/Object;)V", "s", "(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V", "r", y.b.f83916d, "p", "D", "H", "tree", "F", "trees", "G", "([Ltimber/log/Timber$c;)V", "J", "K", "", ExifInterface.LONGITUDE_EAST, "I", "()I", "treeCount", "treeArray", "[Ltimber/log/Timber$c;", "Ljava/util/ArrayList;", "Ljava/util/ArrayList;", "<init>", "()V", "timber_release"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class b extends c {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void A(@h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.A(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void B(@h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.B(th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void C(@h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.C(th, str, Arrays.copyOf(args, args.length));
            }
        }

        @JvmStatic
        @g
        public c D() {
            return this;
        }

        @JvmStatic
        @g
        public final List<c> E() {
            List<c> unmodifiableList;
            synchronized (Timber.f93861b) {
                unmodifiableList = Collections.unmodifiableList(CollectionsKt.toList(Timber.f93861b));
                Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(trees.toList())");
            }
            return unmodifiableList;
        }

        @JvmStatic
        public final void F(@g c tree) {
            Intrinsics.checkNotNullParameter(tree, "tree");
            if (tree != this) {
                synchronized (Timber.f93861b) {
                    Timber.f93861b.add(tree);
                    b bVar = Timber.f93860a;
                    Object[] array = Timber.f93861b.toArray(new c[0]);
                    if (array != null) {
                        Timber.f93862c = (c[]) array;
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
                return;
            }
            throw new IllegalArgumentException("Cannot plant Timber into itself.".toString());
        }

        @JvmStatic
        public final void G(@g c... trees) {
            boolean z9;
            Intrinsics.checkNotNullParameter(trees, "trees");
            int length = trees.length;
            int i4 = 0;
            while (i4 < length) {
                c cVar = trees[i4];
                i4++;
                if (cVar == null) {
                    throw new IllegalArgumentException("trees contained null".toString());
                }
                if (cVar != this) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (!z9) {
                    throw new IllegalArgumentException("Cannot plant Timber into itself.".toString());
                }
            }
            synchronized (Timber.f93861b) {
                Collections.addAll(Timber.f93861b, Arrays.copyOf(trees, trees.length));
                b bVar = Timber.f93860a;
                Object[] array = Timber.f93861b.toArray(new c[0]);
                if (array != null) {
                    Timber.f93862c = (c[]) array;
                    Unit unit = Unit.INSTANCE;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
        }

        @JvmStatic
        @g
        public final c H(@g String tag) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            c[] cVarArr = Timber.f93862c;
            int length = cVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                c cVar = cVarArr[i4];
                i4++;
                cVar.h().set(tag);
            }
            return this;
        }

        @JvmStatic
        @JvmName(name = "treeCount")
        public final int I() {
            return Timber.f93862c.length;
        }

        @JvmStatic
        public final void J(@g c tree) {
            Intrinsics.checkNotNullParameter(tree, "tree");
            synchronized (Timber.f93861b) {
                if (Timber.f93861b.remove(tree)) {
                    b bVar = Timber.f93860a;
                    Object[] array = Timber.f93861b.toArray(new c[0]);
                    if (array != null) {
                        Timber.f93862c = (c[]) array;
                        Unit unit = Unit.INSTANCE;
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                } else {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Cannot uproot tree which is not planted: ", tree).toString());
                }
            }
        }

        @JvmStatic
        public final void K() {
            synchronized (Timber.f93861b) {
                Timber.f93861b.clear();
                b bVar = Timber.f93860a;
                Timber.f93862c = new c[0];
                Unit unit = Unit.INSTANCE;
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void a(@h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.a(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void b(@h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.b(th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void c(@h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.c(th, str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void d(@h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.d(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void e(@h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.e(th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void f(@h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.f(th, str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void k(@h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.k(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void l(@h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.l(th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void m(@h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.m(th, str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        protected void p(int i4, @h String str, @g String message, @h Throwable th) {
            Intrinsics.checkNotNullParameter(message, "message");
            throw new AssertionError();
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void q(int i4, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.q(i4, str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void r(int i4, @h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.r(i4, th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void s(int i4, @h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.s(i4, th, str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void u(@h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.u(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void v(@h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.v(th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void w(@h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.w(th, str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void x(@h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.x(str, Arrays.copyOf(args, args.length));
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void y(@h Throwable th) {
            for (c cVar : Timber.f93862c) {
                cVar.y(th);
            }
        }

        @Override // timber.log.Timber.c
        @JvmStatic
        public void z(@h Throwable th, @h @f String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            for (c cVar : Timber.f93862c) {
                cVar.z(th, str, Arrays.copyOf(args, args.length));
            }
        }
    }

    /* compiled from: Timber.kt */
    @Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b3\u00104JC\u0010\u0005\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J1\u0010\r\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\r\u0010\u000eJ;\u0010\u000f\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J1\u0010\u0012\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0012\u0010\u000eJ;\u0010\u0013\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0013\u0010\u0010J\u0012\u0010\u0014\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J1\u0010\u0015\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u000eJ;\u0010\u0016\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u0012\u0010\u0017\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J1\u0010\u0018\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0018\u0010\u000eJ;\u0010\u0019\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u0019\u0010\u0010J\u0012\u0010\u001a\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J1\u0010\u001b\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u001b\u0010\u000eJ;\u0010\u001c\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u001c\u0010\u0010J\u0012\u0010\u001d\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J1\u0010\u001e\u001a\u00020\n2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u001e\u0010\u000eJ;\u0010\u001f\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b\u001f\u0010\u0010J\u0012\u0010 \u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J9\u0010!\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b!\u0010\"JC\u0010#\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0016\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\b\"\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b#\u0010\u000bJ\u001a\u0010$\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0010\u0010&\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020\u0002H\u0015J\u001a\u0010(\u001a\u00020%2\b\u0010'\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J)\u0010)\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\t\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\bH\u0014¢\u0006\u0004\b)\u0010*J,\u0010+\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010'\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H$R \u00100\u001a\b\u0012\u0004\u0012\u00020\u00060,8@X\u0080\u0004¢\u0006\f\n\u0004\b\u0012\u0010-\u001a\u0004\b.\u0010/R\u0016\u0010'\u001a\u0004\u0018\u00010\u00068PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b1\u00102¨\u00065"}, d2 = {"Ltimber/log/Timber$c;", "", "", t.b.f83857b, "", "t", "", "message", "", "args", "", "(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V", ContextChain.TAG_INFRA, "u", "(Ljava/lang/String;[Ljava/lang/Object;)V", "w", "(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V", "v", "a", "c", "b", "k", "m", "l", y.b.f83919g, "z", y.b.f83920h, "d", "f", "e", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "C", "B", "q", "(ILjava/lang/String;[Ljava/lang/Object;)V", "s", "r", "", "n", y.b.f83916d, "o", "g", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "p", "Ljava/lang/ThreadLocal;", "Ljava/lang/ThreadLocal;", "h", "()Ljava/lang/ThreadLocal;", "explicitTag", "j", "()Ljava/lang/String;", "<init>", "()V", "timber_release"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static abstract class c {
        @g

        /* renamed from: a  reason: collision with root package name */
        private final ThreadLocal<String> f93868a = new ThreadLocal<>();

        private final String i(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            String stringWriter2 = stringWriter.toString();
            Intrinsics.checkNotNullExpressionValue(stringWriter2, "sw.toString()");
            return stringWriter2;
        }

        private final void t(int i4, Throwable th, String str, Object... objArr) {
            String j4 = j();
            if (o(j4, i4)) {
                if (!(str == null || str.length() == 0)) {
                    if (!(objArr.length == 0)) {
                        str = g(str, objArr);
                    }
                    if (th != null) {
                        str = ((Object) str) + '\n' + i(th);
                    }
                } else if (th == null) {
                    return;
                } else {
                    str = i(th);
                }
                p(i4, j4, str, th);
            }
        }

        public void A(@h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(7, null, str, Arrays.copyOf(args, args.length));
        }

        public void B(@h Throwable th) {
            t(7, th, null, new Object[0]);
        }

        public void C(@h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(7, th, str, Arrays.copyOf(args, args.length));
        }

        public void a(@h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(3, null, str, Arrays.copyOf(args, args.length));
        }

        public void b(@h Throwable th) {
            t(3, th, null, new Object[0]);
        }

        public void c(@h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(3, th, str, Arrays.copyOf(args, args.length));
        }

        public void d(@h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(6, null, str, Arrays.copyOf(args, args.length));
        }

        public void e(@h Throwable th) {
            t(6, th, null, new Object[0]);
        }

        public void f(@h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(6, th, str, Arrays.copyOf(args, args.length));
        }

        @g
        protected String g(@g String message, @g Object[] args) {
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(args, "args");
            Object[] copyOf = Arrays.copyOf(args, args.length);
            String format = String.format(message, Arrays.copyOf(copyOf, copyOf.length));
            Intrinsics.checkNotNullExpressionValue(format, "java.lang.String.format(this, *args)");
            return format;
        }

        public final /* synthetic */ ThreadLocal h() {
            return this.f93868a;
        }

        public /* synthetic */ String j() {
            String str = this.f93868a.get();
            if (str != null) {
                this.f93868a.remove();
            }
            return str;
        }

        public void k(@h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(4, null, str, Arrays.copyOf(args, args.length));
        }

        public void l(@h Throwable th) {
            t(4, th, null, new Object[0]);
        }

        public void m(@h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(4, th, str, Arrays.copyOf(args, args.length));
        }

        @Deprecated(message = "Use isLoggable(String, int)", replaceWith = @ReplaceWith(expression = "this.isLoggable(null, priority)", imports = {}))
        protected boolean n(int i4) {
            return true;
        }

        protected boolean o(@h String str, int i4) {
            return n(i4);
        }

        protected abstract void p(int i4, @h String str, @g String str2, @h Throwable th);

        public void q(int i4, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(i4, null, str, Arrays.copyOf(args, args.length));
        }

        public void r(int i4, @h Throwable th) {
            t(i4, th, null, new Object[0]);
        }

        public void s(int i4, @h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(i4, th, str, Arrays.copyOf(args, args.length));
        }

        public void u(@h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(2, null, str, Arrays.copyOf(args, args.length));
        }

        public void v(@h Throwable th) {
            t(2, th, null, new Object[0]);
        }

        public void w(@h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(2, th, str, Arrays.copyOf(args, args.length));
        }

        public void x(@h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(5, null, str, Arrays.copyOf(args, args.length));
        }

        public void y(@h Throwable th) {
            t(5, th, null, new Object[0]);
        }

        public void z(@h Throwable th, @h String str, @g Object... args) {
            Intrinsics.checkNotNullParameter(args, "args");
            t(5, th, str, Arrays.copyOf(args, args.length));
        }
    }

    private Timber() {
        throw new AssertionError();
    }

    @JvmStatic
    public static void A(@h @f String str, @g Object... objArr) {
        f93860a.x(str, objArr);
    }

    @JvmStatic
    public static void B(@h Throwable th) {
        f93860a.y(th);
    }

    @JvmStatic
    public static void C(@h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.z(th, str, objArr);
    }

    @JvmStatic
    public static void D(@h @f String str, @g Object... objArr) {
        f93860a.A(str, objArr);
    }

    @JvmStatic
    public static void E(@h Throwable th) {
        f93860a.B(th);
    }

    @JvmStatic
    public static void F(@h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.C(th, str, objArr);
    }

    @JvmStatic
    @g
    public static c d() {
        return f93860a.D();
    }

    @JvmStatic
    public static void e(@h @f String str, @g Object... objArr) {
        f93860a.a(str, objArr);
    }

    @JvmStatic
    public static void f(@h Throwable th) {
        f93860a.b(th);
    }

    @JvmStatic
    public static void g(@h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.c(th, str, objArr);
    }

    @JvmStatic
    public static void h(@h @f String str, @g Object... objArr) {
        f93860a.d(str, objArr);
    }

    @JvmStatic
    public static void i(@h Throwable th) {
        f93860a.e(th);
    }

    @JvmStatic
    public static void j(@h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.f(th, str, objArr);
    }

    @JvmStatic
    @g
    public static final List<c> k() {
        return f93860a.E();
    }

    @JvmStatic
    public static void l(@h @f String str, @g Object... objArr) {
        f93860a.k(str, objArr);
    }

    @JvmStatic
    public static void m(@h Throwable th) {
        f93860a.l(th);
    }

    @JvmStatic
    public static void n(@h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.m(th, str, objArr);
    }

    @JvmStatic
    public static void o(int i4, @h @f String str, @g Object... objArr) {
        f93860a.q(i4, str, objArr);
    }

    @JvmStatic
    public static void p(int i4, @h Throwable th) {
        f93860a.r(i4, th);
    }

    @JvmStatic
    public static void q(int i4, @h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.s(i4, th, str, objArr);
    }

    @JvmStatic
    public static final void r(@g c cVar) {
        f93860a.F(cVar);
    }

    @JvmStatic
    public static final void s(@g c... cVarArr) {
        f93860a.G(cVarArr);
    }

    @JvmStatic
    @g
    public static final c t(@g String str) {
        return f93860a.H(str);
    }

    @JvmStatic
    @JvmName(name = "treeCount")
    public static final int u() {
        return f93860a.I();
    }

    @JvmStatic
    public static final void v(@g c cVar) {
        f93860a.J(cVar);
    }

    @JvmStatic
    public static final void w() {
        f93860a.K();
    }

    @JvmStatic
    public static void x(@h @f String str, @g Object... objArr) {
        f93860a.u(str, objArr);
    }

    @JvmStatic
    public static void y(@h Throwable th) {
        f93860a.v(th);
    }

    @JvmStatic
    public static void z(@h Throwable th, @h @f String str, @g Object... objArr) {
        f93860a.w(th, str, objArr);
    }
}
