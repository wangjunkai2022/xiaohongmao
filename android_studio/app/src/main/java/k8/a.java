package k8;

import java.lang.reflect.Type;
import org.aspectj.lang.reflect.AdviceKind;

/* compiled from: Advice.java */
/* loaded from: classes4.dex */
public interface a {
    c a();

    x b();

    c<?>[] c();

    Type[] d();

    AdviceKind getKind();

    String getName();

    c<?>[] getParameterTypes();
}
