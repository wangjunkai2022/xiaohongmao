package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.io.InputStream;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: KotlinMetadataFinder.kt */
/* loaded from: classes4.dex */
public interface KotlinMetadataFinder {
    @h
    InputStream findBuiltInsData(@g FqName fqName);
}
