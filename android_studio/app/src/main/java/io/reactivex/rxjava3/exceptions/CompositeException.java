package io.reactivex.rxjava3.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import p7.e;

/* loaded from: classes4.dex */
public final class CompositeException extends RuntimeException {

    /* renamed from: d  reason: collision with root package name */
    private static final long f76161d = 3026362227162912146L;

    /* renamed from: a  reason: collision with root package name */
    private final List<Throwable> f76162a;

    /* renamed from: b  reason: collision with root package name */
    private final String f76163b;

    /* renamed from: c  reason: collision with root package name */
    private Throwable f76164c;

    /* loaded from: classes4.dex */
    static final class a extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        private static final long f76165a = 3875212506787802066L;

        a(String message) {
            super(message);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static abstract class b {
        b() {
        }

        abstract void a(Object o9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class c extends b {

        /* renamed from: a  reason: collision with root package name */
        private final PrintStream f76166a;

        c(PrintStream printStream) {
            this.f76166a = printStream;
        }

        @Override // io.reactivex.rxjava3.exceptions.CompositeException.b
        void a(Object o9) {
            this.f76166a.println(o9);
        }
    }

    /* loaded from: classes4.dex */
    static final class d extends b {

        /* renamed from: a  reason: collision with root package name */
        private final PrintWriter f76167a;

        d(PrintWriter printWriter) {
            this.f76167a = printWriter;
        }

        @Override // io.reactivex.rxjava3.exceptions.CompositeException.b
        void a(Object o9) {
            this.f76167a.println(o9);
        }
    }

    public CompositeException(@e Throwable... exceptions) {
        this(exceptions == null ? Collections.singletonList(new NullPointerException("exceptions was null")) : Arrays.asList(exceptions));
    }

    private void a(StringBuilder b10, Throwable ex, String prefix) {
        StackTraceElement[] stackTrace;
        b10.append(prefix);
        b10.append(ex);
        b10.append('\n');
        for (StackTraceElement stackTraceElement : ex.getStackTrace()) {
            b10.append("\t\tat ");
            b10.append(stackTraceElement);
            b10.append('\n');
        }
        if (ex.getCause() != null) {
            b10.append("\tCaused by: ");
            a(b10, ex.getCause(), "");
        }
    }

    private void b(b s9) {
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
        for (Throwable th : this.f76162a) {
            sb.append("  ComposedException ");
            sb.append(i4);
            sb.append(" :\n");
            a(sb, th, "\t");
            i4++;
        }
        s9.a(sb.toString());
    }

    @Override // java.lang.Throwable
    @e
    public synchronized Throwable getCause() {
        int i4;
        String[] split;
        if (this.f76164c == null) {
            String property = System.getProperty("line.separator");
            if (this.f76162a.size() > 1) {
                IdentityHashMap identityHashMap = new IdentityHashMap();
                StringBuilder sb = new StringBuilder();
                sb.append("Multiple exceptions (");
                sb.append(this.f76162a.size());
                sb.append(")");
                sb.append(property);
                for (Throwable th : this.f76162a) {
                    int i10 = 0;
                    while (true) {
                        if (th != null) {
                            for (int i11 = 0; i11 < i10; i11++) {
                                sb.append("  ");
                            }
                            sb.append("|-- ");
                            sb.append(th.getClass().getCanonicalName());
                            sb.append(": ");
                            String message = th.getMessage();
                            if (message != null && message.contains(property)) {
                                sb.append(property);
                                for (String str : message.split(property)) {
                                    for (int i12 = 0; i12 < i10 + 2; i12++) {
                                        sb.append("  ");
                                    }
                                    sb.append(str);
                                    sb.append(property);
                                }
                            } else {
                                sb.append(message);
                                sb.append(property);
                            }
                            int i13 = 0;
                            while (true) {
                                i4 = i10 + 2;
                                if (i13 >= i4) {
                                    break;
                                }
                                sb.append("  ");
                                i13++;
                            }
                            StackTraceElement[] stackTrace = th.getStackTrace();
                            if (stackTrace.length > 0) {
                                sb.append("at ");
                                sb.append(stackTrace[0]);
                                sb.append(property);
                            }
                            if (!identityHashMap.containsKey(th)) {
                                identityHashMap.put(th, Boolean.TRUE);
                                th = th.getCause();
                                i10++;
                            } else {
                                Throwable cause = th.getCause();
                                if (cause != null) {
                                    for (int i14 = 0; i14 < i4; i14++) {
                                        sb.append("  ");
                                    }
                                    sb.append("|-- ");
                                    sb.append("(cause not expanded again) ");
                                    sb.append(cause.getClass().getCanonicalName());
                                    sb.append(": ");
                                    sb.append(cause.getMessage());
                                    sb.append(property);
                                }
                            }
                        }
                    }
                }
                this.f76164c = new a(sb.toString().trim());
            } else {
                this.f76164c = this.f76162a.get(0);
            }
        }
        return this.f76164c;
    }

    @e
    public List<Throwable> getExceptions() {
        return this.f76162a;
    }

    @Override // java.lang.Throwable
    @e
    public String getMessage() {
        return this.f76163b;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public int size() {
        return this.f76162a.size();
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream s9) {
        b(new c(s9));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter s9) {
        b(new d(s9));
    }

    public CompositeException(@e Iterable<? extends Throwable> errors) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (errors != null) {
            for (Throwable th : errors) {
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
            List<Throwable> unmodifiableList = Collections.unmodifiableList(new ArrayList(linkedHashSet));
            this.f76162a = unmodifiableList;
            this.f76163b = unmodifiableList.size() + " exceptions occurred. ";
            return;
        }
        throw new IllegalArgumentException("errors is empty");
    }
}
