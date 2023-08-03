package p2;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.google.android.datatransport.Priority;
import java.util.HashMap;

/* compiled from: PriorityMapping.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static SparseArray<Priority> f93076a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static HashMap<Priority, Integer> f93077b;

    static {
        HashMap<Priority, Integer> hashMap = new HashMap<>();
        f93077b = hashMap;
        hashMap.put(Priority.DEFAULT, 0);
        f93077b.put(Priority.VERY_LOW, 1);
        f93077b.put(Priority.HIGHEST, 2);
        for (Priority priority : f93077b.keySet()) {
            f93076a.append(f93077b.get(priority).intValue(), priority);
        }
    }

    public static int a(@NonNull Priority priority) {
        Integer num = f93077b.get(priority);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + priority);
    }

    @NonNull
    public static Priority b(int i4) {
        Priority priority = f93076a.get(i4);
        if (priority != null) {
            return priority;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i4);
    }
}
