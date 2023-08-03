package dagger.hilt.android.flags;

import android.content.Context;
import d6.h;
import d7.g;
import dagger.hilt.e;
import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
import java.util.Set;
import q6.f;
import u7.d;

/* compiled from: FragmentGetContextFix.java */
/* loaded from: classes3.dex */
public final class a {

    /* compiled from: FragmentGetContextFix.java */
    @Target({ElementType.METHOD, ElementType.PARAMETER, ElementType.FIELD})
    @d
    /* renamed from: dagger.hilt.android.flags.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public @interface InterfaceC0503a {
    }

    /* compiled from: FragmentGetContextFix.java */
    @e({p6.a.class})
    @dagger.hilt.b
    /* loaded from: classes3.dex */
    public interface b {
        @InterfaceC0503a
        Set<Boolean> d();
    }

    /* compiled from: FragmentGetContextFix.java */
    @e({p6.a.class})
    @h
    /* loaded from: classes3.dex */
    static abstract class c {
        c() {
        }

        @g
        @InterfaceC0503a
        abstract Set<Boolean> a();
    }

    private a() {
    }

    public static boolean a(Context context) {
        Set<Boolean> d4 = ((b) dagger.hilt.android.e.d(context, b.class)).d();
        f.d(d4.size() <= 1, "Cannot bind the flag @DisableFragmentGetContextFix more than once.", new Object[0]);
        if (d4.isEmpty()) {
            return true;
        }
        return d4.iterator().next().booleanValue();
    }
}
