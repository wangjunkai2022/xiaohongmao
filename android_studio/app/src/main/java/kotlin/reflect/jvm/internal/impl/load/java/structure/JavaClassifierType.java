package kotlin.reflect.jvm.internal.impl.load.java.structure;

import java.util.List;
import m8.g;
import m8.h;

/* compiled from: javaTypes.kt */
/* loaded from: classes4.dex */
public interface JavaClassifierType extends JavaType {
    @h
    JavaClassifier getClassifier();

    @g
    String getClassifierQualifiedName();

    @g
    String getPresentableText();

    @g
    List<JavaType> getTypeArguments();

    boolean isRaw();
}
