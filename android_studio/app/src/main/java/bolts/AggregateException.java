package bolts;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class AggregateException extends Exception {

    /* renamed from: b  reason: collision with root package name */
    private static final long f3013b = 1;

    /* renamed from: c  reason: collision with root package name */
    private static final String f3014c = "There were multiple errors.";

    /* renamed from: a  reason: collision with root package name */
    private List<Throwable> f3015a;

    public AggregateException(String str, Throwable[] thArr) {
        this(str, Arrays.asList(thArr));
    }

    @Deprecated
    public Throwable[] getCauses() {
        List<Throwable> list = this.f3015a;
        return (Throwable[]) list.toArray(new Throwable[list.size()]);
    }

    @Deprecated
    public List<Exception> getErrors() {
        ArrayList arrayList = new ArrayList();
        List<Throwable> list = this.f3015a;
        if (list == null) {
            return arrayList;
        }
        for (Throwable th : list) {
            if (th instanceof Exception) {
                arrayList.add((Exception) th);
            } else {
                arrayList.add(new Exception(th));
            }
        }
        return arrayList;
    }

    public List<Throwable> getInnerThrowables() {
        return this.f3015a;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        super.printStackTrace(printStream);
        int i4 = -1;
        for (Throwable th : this.f3015a) {
            printStream.append("\n");
            printStream.append("  Inner throwable #");
            i4++;
            printStream.append((CharSequence) Integer.toString(i4));
            printStream.append(": ");
            th.printStackTrace(printStream);
            printStream.append("\n");
        }
    }

    public AggregateException(String str, List<? extends Throwable> list) {
        super(str, (list == null || list.size() <= 0) ? null : list.get(0));
        this.f3015a = Collections.unmodifiableList(list);
    }

    public AggregateException(List<? extends Throwable> list) {
        this(f3014c, list);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        super.printStackTrace(printWriter);
        int i4 = -1;
        for (Throwable th : this.f3015a) {
            printWriter.append("\n");
            printWriter.append("  Inner throwable #");
            i4++;
            printWriter.append((CharSequence) Integer.toString(i4));
            printWriter.append(": ");
            th.printStackTrace(printWriter);
            printWriter.append("\n");
        }
    }
}
