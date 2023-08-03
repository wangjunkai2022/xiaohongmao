package io.reactivex.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import m7.e;

/* loaded from: classes3.dex */
public final class CompositeException extends RuntimeException {

    /* renamed from: d  reason: collision with root package name */
    private static final long f71092d = 3026362227162912146L;

    /* renamed from: a  reason: collision with root package name */
    private final List<Throwable> f71093a;

    /* renamed from: b  reason: collision with root package name */
    private final String f71094b;

    /* renamed from: c  reason: collision with root package name */
    private Throwable f71095c;

    /* loaded from: classes3.dex */
    static final class a extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        private static final long f71096a = 3875212506787802066L;

        /* renamed from: b  reason: collision with root package name */
        static final String f71097b = "Chain of Causes for CompositeException In Order Received =>";

        a() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return f71097b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static abstract class b {
        b() {
        }

        abstract void a(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final PrintStream f71098a;

        c(PrintStream printStream) {
            this.f71098a = printStream;
        }

        @Override // io.reactivex.exceptions.CompositeException.b
        void a(Object obj) {
            this.f71098a.println(obj);
        }
    }

    /* loaded from: classes3.dex */
    static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        private final PrintWriter f71099a;

        d(PrintWriter printWriter) {
            this.f71099a = printWriter;
        }

        @Override // io.reactivex.exceptions.CompositeException.b
        void a(Object obj) {
            this.f71099a.println(obj);
        }
    }

    public CompositeException(@e Throwable... thArr) {
        this(thArr == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(thArr));
    }

    private void a(StringBuilder sb, Throwable th, String str) {
        StackTraceElement[] stackTrace;
        sb.append(str);
        sb.append(th);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : th.getStackTrace()) {
            sb.append("\t\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        if (th.getCause() != null) {
            sb.append("\tCaused by: ");
            a(sb, th.getCause(), "");
        }
    }

    private List<Throwable> b(Throwable th) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null && cause != th) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause2;
            }
        }
        return arrayList;
    }

    private void d(b bVar) {
        StackTraceElement[] stackTrace;
        StringBuilder sb = new StringBuilder(128);
        sb.append(this);
        sb.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb.append("\tat ");
            sb.append(stackTraceElement);
            sb.append('\n');
        }
        int i4 = 1;
        for (Throwable th : this.f71093a) {
            sb.append("  ComposedException ");
            sb.append(i4);
            sb.append(" :\n");
            a(sb, th, "\t");
            i4++;
        }
        bVar.a(sb.toString());
    }

    Throwable c(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null || th == cause) {
            return th;
        }
        while (true) {
            Throwable cause2 = cause.getCause();
            if (cause2 == null || cause2 == cause) {
                break;
            }
            cause = cause2;
        }
        return cause;
    }

    @Override // java.lang.Throwable
    @e
    public synchronized Throwable getCause() {
        if (this.f71095c == null) {
            a aVar = new a();
            HashSet hashSet = new HashSet();
            Iterator<Throwable> it = this.f71093a.iterator();
            a aVar2 = aVar;
            while (it.hasNext()) {
                Throwable next = it.next();
                if (!hashSet.contains(next)) {
                    hashSet.add(next);
                    for (Throwable th : b(next)) {
                        if (hashSet.contains(th)) {
                            next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                        } else {
                            hashSet.add(th);
                        }
                    }
                    try {
                        aVar2.initCause(next);
                    } catch (Throwable unused) {
                    }
                    aVar2 = c(aVar2);
                }
            }
            this.f71095c = aVar;
        }
        return this.f71095c;
    }

    @e
    public List<Throwable> getExceptions() {
        return this.f71093a;
    }

    @Override // java.lang.Throwable
    @e
    public String getMessage() {
        return this.f71094b;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.f71093a.size();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        d(new c(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        d(new d(printWriter));
    }

    public CompositeException(@e Iterable<? extends Throwable> iterable) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (iterable != null) {
            for (Throwable th : iterable) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException("Throwable was null!"));
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException("errors was null"));
        }
        if (!linkedHashSet.isEmpty()) {
            arrayList.addAll(linkedHashSet);
            List<Throwable> unmodifiableList = Collections.unmodifiableList(arrayList);
            this.f71093a = unmodifiableList;
            this.f71094b = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }
}
