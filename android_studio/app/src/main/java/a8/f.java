package a8;

import a8.c;
import androidx.exifinterface.media.ExifInterface;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.annotation.Repeatable;
import kotlin.jvm.internal.RepeatableContainer;

/* compiled from: TypeParceler.kt */
@Target({ElementType.TYPE})
@kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS, AnnotationTarget.PROPERTY})
@Retention(RetentionPolicy.SOURCE)
@kotlin.annotation.Retention(AnnotationRetention.SOURCE)
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001b\n\u0000\b\u0087\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0010\b\u0001\u0010\u0003*\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00022\u00020\u0004B\u0000¨\u0006\u0005"}, d2 = {"La8/f;", ExifInterface.GPS_DIRECTION_TRUE, "La8/c;", "P", "", "parcelize-runtime"}, k = 1, mv = {1, 7, 1})
@Repeatable
@java.lang.annotation.Repeatable(a.class)
/* loaded from: classes4.dex */
public @interface f<T, P extends c<? super T>> {

    /* compiled from: TypeParceler.kt */
    @Target({ElementType.TYPE})
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.CLASS, AnnotationTarget.PROPERTY})
    @Retention(RetentionPolicy.SOURCE)
    @kotlin.annotation.Retention(AnnotationRetention.SOURCE)
    @RepeatableContainer
    /* loaded from: classes4.dex */
    public @interface a {
        f[] value();
    }
}
