package androidx.core.util;

import androidx.annotation.NonNull;
import com.alipay.sdk.util.i;

/* loaded from: classes.dex */
public class Pair<F, S> {
    public final F first;
    public final S second;

    public Pair(F f10, S s9) {
        this.first = f10;
        this.second = s9;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(A a10, B b10) {
        return new Pair<>(a10, b10);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return ObjectsCompat.equals(pair.first, this.first) && ObjectsCompat.equals(pair.second, this.second);
        }
        return false;
    }

    public int hashCode() {
        F f10 = this.first;
        int hashCode = f10 == null ? 0 : f10.hashCode();
        S s9 = this.second;
        return hashCode ^ (s9 != null ? s9.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "Pair{" + this.first + " " + this.second + i.f6967d;
    }
}
