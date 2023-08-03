package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class GlideException extends Exception {

    /* renamed from: g  reason: collision with root package name */
    private static final long f8596g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final StackTraceElement[] f8597h = new StackTraceElement[0];

    /* renamed from: a  reason: collision with root package name */
    private final List<Throwable> f8598a;

    /* renamed from: b  reason: collision with root package name */
    private com.bumptech.glide.load.c f8599b;

    /* renamed from: c  reason: collision with root package name */
    private DataSource f8600c;

    /* renamed from: d  reason: collision with root package name */
    private Class<?> f8601d;

    /* renamed from: e  reason: collision with root package name */
    private String f8602e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Exception f8603f;

    public GlideException(String str) {
        this(str, Collections.emptyList());
    }

    private void a(Throwable th, List<Throwable> list) {
        if (th instanceof GlideException) {
            for (Throwable th2 : ((GlideException) th).getCauses()) {
                a(th2, list);
            }
            return;
        }
        list.add(th);
    }

    private static void b(List<Throwable> list, Appendable appendable) {
        try {
            c(list, appendable);
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    private static void c(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i4 = 0;
        while (i4 < size) {
            int i10 = i4 + 1;
            appendable.append("Cause (").append(String.valueOf(i10)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i4);
            if (th instanceof GlideException) {
                ((GlideException) th).e(appendable);
            } else {
                d(th, appendable);
            }
            i4 = i10;
        }
    }

    private static void d(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    private void e(Appendable appendable) {
        d(this, appendable);
        b(getCauses(), new a(appendable));
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }

    public List<Throwable> getCauses() {
        return this.f8598a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.f8602e);
        sb.append(this.f8601d != null ? ", " + this.f8601d : "");
        sb.append(this.f8600c != null ? ", " + this.f8600c : "");
        sb.append(this.f8599b != null ? ", " + this.f8599b : "");
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            sb.append(" root causes:");
        }
        for (Throwable th : rootCauses) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Nullable
    public Exception getOrigin() {
        return this.f8603f;
    }

    public List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(com.bumptech.glide.load.c cVar, DataSource dataSource) {
        i(cVar, dataSource, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(com.bumptech.glide.load.c cVar, DataSource dataSource, Class<?> cls) {
        this.f8599b = cVar;
        this.f8600c = dataSource;
        this.f8601d = cls;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i4 = 0;
        while (i4 < size) {
            StringBuilder sb = new StringBuilder();
            sb.append("Root cause (");
            int i10 = i4 + 1;
            sb.append(i10);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i(str, sb.toString(), rootCauses.get(i4));
            i4 = i10;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void setOrigin(@Nullable Exception exc) {
        this.f8603f = exc;
    }

    public GlideException(String str, Throwable th) {
        this(str, Collections.singletonList(th));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        e(printStream);
    }

    public GlideException(String str, List<Throwable> list) {
        this.f8602e = str;
        setStackTrace(f8597h);
        this.f8598a = list;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        e(printWriter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements Appendable {

        /* renamed from: c  reason: collision with root package name */
        private static final String f8604c = "";

        /* renamed from: d  reason: collision with root package name */
        private static final String f8605d = "  ";

        /* renamed from: a  reason: collision with root package name */
        private final Appendable f8606a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f8607b = true;

        a(Appendable appendable) {
            this.f8606a = appendable;
        }

        @NonNull
        private CharSequence a(@Nullable CharSequence charSequence) {
            return charSequence == null ? "" : charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c10) throws IOException {
            if (this.f8607b) {
                this.f8607b = false;
                this.f8606a.append(f8605d);
            }
            this.f8607b = c10 == '\n';
            this.f8606a.append(c10);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence a10 = a(charSequence);
            return append(a10, 0, a10.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i4, int i10) throws IOException {
            CharSequence a10 = a(charSequence);
            boolean z9 = false;
            if (this.f8607b) {
                this.f8607b = false;
                this.f8606a.append(f8605d);
            }
            if (a10.length() > 0 && a10.charAt(i10 - 1) == '\n') {
                z9 = true;
            }
            this.f8607b = z9;
            this.f8606a.append(a10, i4, i10);
            return this;
        }
    }
}
